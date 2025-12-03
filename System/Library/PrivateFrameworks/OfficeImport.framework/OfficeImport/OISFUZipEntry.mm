@interface OISFUZipEntry
- (BOOL)isReadable;
- (OISFUZipEntry)initWithDataRepresentation:(id)representation compressionMethod:(int)method compressedSize:(unint64_t)size uncompressedSize:(unint64_t)uncompressedSize offset:(unint64_t)offset crc:(unsigned int)crc;
- (id)backingFilePath;
- (id)data;
- (id)initFromCentralFileHeader:(const char *)header dataRepresentation:(id)representation;
- (id)inputStream;
- (unint64_t)backingFileDataOffset;
- (unint64_t)calculateEncodedLength;
- (unint64_t)dataOffset;
- (void)copyToFile:(id)file;
- (void)dealloc;
- (void)readZip64ExtraField:(const char *)field size:(unint64_t)size;
- (void)setCompressionFlags:(unsigned __int16)flags;
- (void)setCryptoKey:(id)key;
- (void)setDataLength:(int64_t)length;
@end

@implementation OISFUZipEntry

- (id)initFromCentralFileHeader:(const char *)header dataRepresentation:(id)representation
{
  v6 = [(OISFUZipEntry *)self init];
  if (v6)
  {
    v6->mArchiveDataRepresentation = representation;
    if (*(header + 2))
    {
      [OISFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Encrypted files are not supported"];
    }

    [(OISFUZipEntry *)v6 setCompressionFlags:*(header + 3)];
    v6->mCrc = *(header + 3);
    v6->mCompressedSize = *(header + 4);
    v6->mUncompressedSize = *(header + 5);
    if (*(header + 15))
    {
      [OISFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"No multi-disk support"];
    }

    v6->mOffset = *(header + 38);
  }

  return v6;
}

- (OISFUZipEntry)initWithDataRepresentation:(id)representation compressionMethod:(int)method compressedSize:(unint64_t)size uncompressedSize:(unint64_t)uncompressedSize offset:(unint64_t)offset crc:(unsigned int)crc
{
  v14 = [(OISFUZipEntry *)self init];
  if (v14)
  {
    v14->mArchiveDataRepresentation = representation;
    v14->mCompressionMethod = method;
    v14->mCompressedSize = size;
    v14->mUncompressedSize = uncompressedSize;
    v14->mOffset = offset;
    v14->mCrc = crc;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OISFUZipEntry;
  [(OISFUZipEntry *)&v3 dealloc];
}

- (BOOL)isReadable
{
  isReadable = [(SFUZipArchiveDataRepresentation *)self->mArchiveDataRepresentation isReadable];
  if (isReadable)
  {
    LOBYTE(isReadable) = [(OISFUZipEntry *)self dataOffset]!= 0;
  }

  return isReadable;
}

- (id)inputStream
{
  dataOffset = [(OISFUZipEntry *)self dataOffset];
  if (!dataOffset)
  {
    return dataOffset;
  }

  if (self->mCryptoKey)
  {
    dataOffset = [(SFUZipArchiveDataRepresentation *)self->mArchiveDataRepresentation inputStreamWithOffset:dataOffset length:self->mCompressedSize];
    v4 = [[OISFUCryptoInputStream alloc] initForDecryptionWithInputStream:dataOffset key:self->mCryptoKey];
    v5 = v4;
    mCompressionMethod = self->mCompressionMethod;
    if (mCompressionMethod == 1)
    {
      v11 = [[OISFUZipInflateInputStream alloc] initWithInput:v4];

      return v11;
    }

    if (!mCompressionMethod)
    {
      goto LABEL_14;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipEntry inputStream]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipEntry.m"], 145, 0, "Bad compression method.");
    +[OITSUAssertionHandler logBacktraceThrottled];

    return dataOffset;
  }

  v7 = self->mCompressionMethod;
  if (v7 == 1)
  {
    v4 = [[OISFUZipInflateInputStream alloc] initWithOffset:dataOffset end:&dataOffset[self->mCompressedSize] uncompressedSize:self->mUncompressedSize crc:self->mCrc dataRepresentation:self->mArchiveDataRepresentation];
LABEL_14:

    return v4;
  }

  if (v7)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipEntry inputStream]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipEntry.m"], 158, 0, "Bad compression method.");
    +[OITSUAssertionHandler logBacktraceThrottled];
    return 0;
  }

  mArchiveDataRepresentation = self->mArchiveDataRepresentation;
  dataLength = [(OISFUZipEntry *)self dataLength];

  return [(SFUZipArchiveDataRepresentation *)mArchiveDataRepresentation inputStreamWithOffset:dataOffset length:dataLength];
}

- (id)data
{
  dataLength = [(OISFUZipEntry *)self dataLength];
  if (dataLength < 0)
  {
    [OISFUZipException raise:@"SFUZipEntryError" format:@"Couldn't allocate NSMutableData with size: %qu", dataLength];
  }

  v4 = [MEMORY[0x277CBEB28] dataWithLength:dataLength];
  if (!v4)
  {
    [OISFUZipException raise:@"SFUZipEntryError" format:@"Couldn't allocate NSMutableData with size: %qu", dataLength];
  }

  v5 = objc_autoreleasePoolPush();
  if ([-[OISFUZipEntry inputStream](self "inputStream")] != dataLength)
  {
    [OISFUZipException raise:@"SFUZipEntryError" format:@"Couldn't read data with size: %qu", dataLength];
  }

  objc_autoreleasePoolPop(v5);
  return v4;
}

- (void)copyToFile:(id)file
{
  v5 = objc_autoreleasePoolPush();
  unlink([file fileSystemRepresentation]);
  v6 = SFUFileOpen(file, "w");
  bufferedInputStream = [(OISFUDataRepresentation *)self bufferedInputStream];
  while (1)
  {
    __ptr = 0;
    v8 = [bufferedInputStream readToOwnBuffer:&__ptr size:-1];
    if (!v8)
    {
      break;
    }

    if (fwrite(__ptr, 1uLL, v8, v6) != v8)
    {
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFileWriteError" format:@"Could not write"];
    }
  }

  [bufferedInputStream close];
  fclose(v6);
  objc_autoreleasePoolPop(v5);
}

- (id)backingFilePath
{
  if ([(OISFUZipEntry *)self isBackedByFile])
  {
    mArchiveDataRepresentation = self->mArchiveDataRepresentation;

    return [(SFUZipArchiveDataRepresentation *)mArchiveDataRepresentation path];
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipEntry backingFilePath]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipEntry.m"], 231, 0, "-[SFUZipEntry backingFilePath] called on an entry that is not backed by file.");
    +[OITSUAssertionHandler logBacktraceThrottled];
    return 0;
  }
}

- (unint64_t)backingFileDataOffset
{
  if ([(OISFUZipEntry *)self isBackedByFile])
  {

    return [(OISFUZipEntry *)self dataOffset];
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipEntry backingFileDataOffset]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipEntry.m"], 240, 0, "-[SFUZipEntry backingFileDataOffset] called on an entry that is not backed by file.");
    +[OITSUAssertionHandler logBacktraceThrottled];
    return 0;
  }
}

- (void)readZip64ExtraField:(const char *)field size:(unint64_t)size
{
  fieldCopy = field;
  if (self->mUncompressedSize == 0xFFFFFFFF)
  {
    if (size <= 7)
    {
      [OISFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Not enough room for Zip64 uncompressed size"];
    }

    fieldCopy = field + 8;
    self->mUncompressedSize = *field;
  }

  v8 = &field[size];
  if (self->mCompressedSize == 0xFFFFFFFF)
  {
    if (fieldCopy + 8 > v8)
    {
      [OISFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Not enough room for Zip64 compressed size"];
    }

    self->mCompressedSize = *fieldCopy;
    fieldCopy += 8;
  }

  if (self->mOffset == 0xFFFFFFFF)
  {
    if (fieldCopy + 8 > v8)
    {
      [OISFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Not enough room for Zip64 offset"];
    }

    self->mOffset = *fieldCopy;
  }
}

- (void)setCompressionFlags:(unsigned __int16)flags
{
  if (flags <= 25450)
  {
    if (flags)
    {
      if (flags != 8)
      {
        goto LABEL_9;
      }

LABEL_8:
      self->mCompressionMethod = 1;
      return;
    }

    goto LABEL_7;
  }

  if (flags == 25452)
  {
    goto LABEL_8;
  }

  if (flags == 25451)
  {
LABEL_7:
    self->mCompressionMethod = 0;
    return;
  }

LABEL_9:
  [OISFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Unsupported compression method"];
}

- (void)setCryptoKey:(id)key
{
  keyCopy = key;

  self->mCryptoKey = key;
}

- (void)setDataLength:(int64_t)length
{
  if (self->mCryptoKey)
  {
    self->mHasEncodedLength = 0;
    self->mUncompressedSize = length;
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipEntry setDataLength:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipEntry.m"], 298, 0, "Tried to call -setDataLength: on an unencrypted zip entry.");

    +[OITSUAssertionHandler logBacktraceThrottled];
  }
}

- (unint64_t)dataOffset
{
  if (!self->mHasDataOffset)
  {
    objc_sync_enter(self);
    if (!self->mHasDataOffset)
    {
      v3 = [(SFUZipArchiveDataRepresentation *)self->mArchiveDataRepresentation bufferedInputStreamWithOffset:self->mOffset length:30];
      v10 = 0;
      if ([v3 readToOwnBuffer:&v10 size:30] != 30)
      {
        [OISFUZipException raise:@"SFUZipEntryError" format:@"Could not read local header."];
      }

      v4 = v10;
      v5 = *v10++;
      if (v5 != 67324752)
      {
        __dmb(0xBu);
        self->mHasDataOffset = 1;
        [v3 close];
        objc_sync_exit(self);
        return 0;
      }

      v6 = *(v4 + 13);
      v7 = *(v4 + 14);
      mOffset = self->mOffset;
      v10 = (v4 + 30);
      self->mDataOffset = v6 + v7 + 30 + mOffset;
      __dmb(0xBu);
      self->mHasDataOffset = 1;
      [v3 close];
    }

    objc_sync_exit(self);
  }

  return self->mDataOffset;
}

- (unint64_t)calculateEncodedLength
{
  if (!self->mHasEncodedLength)
  {
    objc_sync_enter(self);
    if (!self->mHasEncodedLength)
    {
      if (self->mCryptoKey)
      {
        mUncompressedSize = [OISFUCryptoOutputStream encodedLengthForDataLength:self->mUncompressedSize key:?];
      }

      else
      {
        mUncompressedSize = self->mUncompressedSize;
      }

      self->mEncodedLength = mUncompressedSize;
      __dmb(0xBu);
      self->mHasEncodedLength = 1;
    }

    objc_sync_exit(self);
  }

  return self->mEncodedLength;
}

@end