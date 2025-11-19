@interface OISFUZipEntry
- (BOOL)isReadable;
- (OISFUZipEntry)initWithDataRepresentation:(id)a3 compressionMethod:(int)a4 compressedSize:(unint64_t)a5 uncompressedSize:(unint64_t)a6 offset:(unint64_t)a7 crc:(unsigned int)a8;
- (id)backingFilePath;
- (id)data;
- (id)initFromCentralFileHeader:(const char *)a3 dataRepresentation:(id)a4;
- (id)inputStream;
- (unint64_t)backingFileDataOffset;
- (unint64_t)calculateEncodedLength;
- (unint64_t)dataOffset;
- (void)copyToFile:(id)a3;
- (void)dealloc;
- (void)readZip64ExtraField:(const char *)a3 size:(unint64_t)a4;
- (void)setCompressionFlags:(unsigned __int16)a3;
- (void)setCryptoKey:(id)a3;
- (void)setDataLength:(int64_t)a3;
@end

@implementation OISFUZipEntry

- (id)initFromCentralFileHeader:(const char *)a3 dataRepresentation:(id)a4
{
  v6 = [(OISFUZipEntry *)self init];
  if (v6)
  {
    v6->mArchiveDataRepresentation = a4;
    if (*(a3 + 2))
    {
      [OISFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Encrypted files are not supported"];
    }

    [(OISFUZipEntry *)v6 setCompressionFlags:*(a3 + 3)];
    v6->mCrc = *(a3 + 3);
    v6->mCompressedSize = *(a3 + 4);
    v6->mUncompressedSize = *(a3 + 5);
    if (*(a3 + 15))
    {
      [OISFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"No multi-disk support"];
    }

    v6->mOffset = *(a3 + 38);
  }

  return v6;
}

- (OISFUZipEntry)initWithDataRepresentation:(id)a3 compressionMethod:(int)a4 compressedSize:(unint64_t)a5 uncompressedSize:(unint64_t)a6 offset:(unint64_t)a7 crc:(unsigned int)a8
{
  v14 = [(OISFUZipEntry *)self init];
  if (v14)
  {
    v14->mArchiveDataRepresentation = a3;
    v14->mCompressionMethod = a4;
    v14->mCompressedSize = a5;
    v14->mUncompressedSize = a6;
    v14->mOffset = a7;
    v14->mCrc = a8;
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
  v3 = [(SFUZipArchiveDataRepresentation *)self->mArchiveDataRepresentation isReadable];
  if (v3)
  {
    LOBYTE(v3) = [(OISFUZipEntry *)self dataOffset]!= 0;
  }

  return v3;
}

- (id)inputStream
{
  v3 = [(OISFUZipEntry *)self dataOffset];
  if (!v3)
  {
    return v3;
  }

  if (self->mCryptoKey)
  {
    v3 = [(SFUZipArchiveDataRepresentation *)self->mArchiveDataRepresentation inputStreamWithOffset:v3 length:self->mCompressedSize];
    v4 = [[OISFUCryptoInputStream alloc] initForDecryptionWithInputStream:v3 key:self->mCryptoKey];
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

    return v3;
  }

  v7 = self->mCompressionMethod;
  if (v7 == 1)
  {
    v4 = [[OISFUZipInflateInputStream alloc] initWithOffset:v3 end:&v3[self->mCompressedSize] uncompressedSize:self->mUncompressedSize crc:self->mCrc dataRepresentation:self->mArchiveDataRepresentation];
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
  v9 = [(OISFUZipEntry *)self dataLength];

  return [(SFUZipArchiveDataRepresentation *)mArchiveDataRepresentation inputStreamWithOffset:v3 length:v9];
}

- (id)data
{
  v3 = [(OISFUZipEntry *)self dataLength];
  if (v3 < 0)
  {
    [OISFUZipException raise:@"SFUZipEntryError" format:@"Couldn't allocate NSMutableData with size: %qu", v3];
  }

  v4 = [MEMORY[0x277CBEB28] dataWithLength:v3];
  if (!v4)
  {
    [OISFUZipException raise:@"SFUZipEntryError" format:@"Couldn't allocate NSMutableData with size: %qu", v3];
  }

  v5 = objc_autoreleasePoolPush();
  if ([-[OISFUZipEntry inputStream](self "inputStream")] != v3)
  {
    [OISFUZipException raise:@"SFUZipEntryError" format:@"Couldn't read data with size: %qu", v3];
  }

  objc_autoreleasePoolPop(v5);
  return v4;
}

- (void)copyToFile:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  unlink([a3 fileSystemRepresentation]);
  v6 = SFUFileOpen(a3, "w");
  v7 = [(OISFUDataRepresentation *)self bufferedInputStream];
  while (1)
  {
    __ptr = 0;
    v8 = [v7 readToOwnBuffer:&__ptr size:-1];
    if (!v8)
    {
      break;
    }

    if (fwrite(__ptr, 1uLL, v8, v6) != v8)
    {
      [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFileWriteError" format:@"Could not write"];
    }
  }

  [v7 close];
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

- (void)readZip64ExtraField:(const char *)a3 size:(unint64_t)a4
{
  v7 = a3;
  if (self->mUncompressedSize == 0xFFFFFFFF)
  {
    if (a4 <= 7)
    {
      [OISFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Not enough room for Zip64 uncompressed size"];
    }

    v7 = a3 + 8;
    self->mUncompressedSize = *a3;
  }

  v8 = &a3[a4];
  if (self->mCompressedSize == 0xFFFFFFFF)
  {
    if (v7 + 8 > v8)
    {
      [OISFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Not enough room for Zip64 compressed size"];
    }

    self->mCompressedSize = *v7;
    v7 += 8;
  }

  if (self->mOffset == 0xFFFFFFFF)
  {
    if (v7 + 8 > v8)
    {
      [OISFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Not enough room for Zip64 offset"];
    }

    self->mOffset = *v7;
  }
}

- (void)setCompressionFlags:(unsigned __int16)a3
{
  if (a3 <= 25450)
  {
    if (a3)
    {
      if (a3 != 8)
      {
        goto LABEL_9;
      }

LABEL_8:
      self->mCompressionMethod = 1;
      return;
    }

    goto LABEL_7;
  }

  if (a3 == 25452)
  {
    goto LABEL_8;
  }

  if (a3 == 25451)
  {
LABEL_7:
    self->mCompressionMethod = 0;
    return;
  }

LABEL_9:
  [OISFUZipException raise:@"SFUZipCentralFileHeaderError" format:@"Unsupported compression method"];
}

- (void)setCryptoKey:(id)a3
{
  v5 = a3;

  self->mCryptoKey = a3;
}

- (void)setDataLength:(int64_t)a3
{
  if (self->mCryptoKey)
  {
    self->mHasEncodedLength = 0;
    self->mUncompressedSize = a3;
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