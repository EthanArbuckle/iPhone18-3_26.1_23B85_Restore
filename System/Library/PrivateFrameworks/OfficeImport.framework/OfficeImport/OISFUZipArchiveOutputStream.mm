@interface OISFUZipArchiveOutputStream
+ (BOOL)createZipWithItemsAtPath:(id)a3 zippedPath:(id)a4 rootPathComponentName:(id)a5;
+ (unint64_t)approximateBytesForEntryHeaderWithName:(id)a3;
- (BOOL)canRemoveEntryWithName:(id)a3;
- (OISFUZipArchiveOutputStream)initWithOutputStream:(id)a3 cryptoKey:(id)a4 passphraseHint:(id)a5;
- (OISFUZipArchiveOutputStream)initWithPath:(id)a3 cryptoKey:(id)a4 passphraseHint:(id)a5;
- (id)beginUncompressedUnknownSizeEntryWithName:(id)a3;
- (id)entriesAtPath:(id)a3;
- (id)entryNames;
- (unint64_t)writeLocalFileHeaderForEntry:(id)a3;
- (unsigned)crc32ForEntry:(id)a3;
- (void)beginEntryWithName:(id)a3 isCompressed:(BOOL)a4 uncompressedSize:(unint64_t)a5;
- (void)close;
- (void)coalesceAndTruncateFreeSpace;
- (void)dealloc;
- (void)finishEntry;
- (void)moveToPath:(id)a3;
- (void)removeEntryWithName:(id)a3;
- (void)reset;
- (void)setCrc32ForCurrentEntry:(unsigned int)a3;
- (void)setEncryptedDocumentUuid:(id)a3;
- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4;
- (void)writeCentralFileHeaderUsingEntry:(id)a3 isFirstEntry:(BOOL)a4;
- (void)writeEndOfCentralDirectoryWithOffset:(int64_t)a3;
- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)a3;
- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)a3;
@end

@implementation OISFUZipArchiveOutputStream

+ (unint64_t)approximateBytesForEntryHeaderWithName:(id)a3
{
  if (a3)
  {
    v3 = strlen([a3 UTF8String]);
  }

  else
  {
    v3 = 0;
  }

  return v3 + 30;
}

- (OISFUZipArchiveOutputStream)initWithOutputStream:(id)a3 cryptoKey:(id)a4 passphraseHint:(id)a5
{
  v8 = [(OISFUZipArchiveOutputStream *)self init];
  if (v8)
  {
    v8->mOutputStream = a3;
    v8->mCryptoKey = a4;
    v8->mPassphraseHint = [OISFUCryptoUtils encodePassphraseHint:a5];
    v8->mEntries = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8->mFreeList = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = malloc_type_malloc(*"8", 0x100004077774924uLL);
    v8->mBuffer = v9;
    if (!v9)
    {
      [OISFUZipException raise:@"SFUZipOutputError" format:@"Initialization error. Could not allocate record buffer of size: %zu", *"8"];
    }
  }

  return v8;
}

- (OISFUZipArchiveOutputStream)initWithPath:(id)a3 cryptoKey:(id)a4 passphraseHint:(id)a5
{
  v8 = [[OISFUMoveableFileOutputStream alloc] initWithPath:a3];

  return [(OISFUZipArchiveOutputStream *)self initWithOutputStream:v8 cryptoKey:a4 passphraseHint:a5];
}

- (void)dealloc
{
  free(self->mBuffer);
  v3.receiver = self;
  v3.super_class = OISFUZipArchiveOutputStream;
  [(OISFUZipArchiveOutputStream *)&v3 dealloc];
}

+ (BOOL)createZipWithItemsAtPath:(id)a3 zippedPath:(id)a4 rootPathComponentName:(id)a5
{
  v39[2] = *MEMORY[0x277D85DE8];
  v7 = [[OISFUZipArchiveOutputStream alloc] initWithPath:a4];
  v29 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [MEMORY[0x277CBEBC0] tsu_fileURLWithPath:a3];
  v9 = *MEMORY[0x277CBE8F8];
  v10 = *MEMORY[0x277CBE838];
  v39[0] = *MEMORY[0x277CBE8F8];
  v39[1] = v10;
  v27 = v10;
  v11 = [v29 enumeratorAtURL:v8 includingPropertiesForKeys:objc_msgSend(MEMORY[0x277CBEA60] options:"arrayWithObjects:count:" errorHandler:{v39, 2), 0, 0}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    obj = v11;
    v13 = *v35;
    v26 = a3;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v32 = 0;
        v33 = 0;
        if ([v15 getResourceValue:&v33 forKey:v9 error:0])
        {
          v16 = [v15 getResourceValue:&v32 forKey:v27 error:0];
        }

        else
        {
          v16 = 0;
        }

        if (a5)
        {
          v17 = [a5 stringByAppendingPathComponent:{objc_msgSend(v33, "tsu_stringWithPathRelativeTo:", a3)}];
        }

        else
        {
          v17 = [v33 tsu_stringWithPathRelativeTo:{objc_msgSend(a3, "stringByDeletingLastPathComponent")}];
        }

        v18 = v17;
        if ((v16 & 1) == 0)
        {
          v24 = 0;
          goto LABEL_24;
        }

        v31 = 0;
        if ([v29 fileExistsAtPath:v33 isDirectory:&v31])
        {
          if ((v31 & 1) == 0)
          {
            -[OISFUZipArchiveOutputStream beginEntryWithName:isCompressed:uncompressedSize:](v7, "beginEntryWithName:isCompressed:uncompressedSize:", v18, 0, [v32 unsignedLongLongValue]);
            v19 = [OISFUFileDataRepresentation alloc];
            v20 = [(OISFUFileDataRepresentation *)v19 initWithPath:v33];
            v21 = [(OISFUDataRepresentation *)v20 bufferedInputStream];
            while (1)
            {
              v30 = 0;
              if (![v21 readToOwnBuffer:&v30 size:0xFFFFFFFFLL])
              {
                break;
              }

              [(OISFUZipArchiveOutputStream *)v7 writeBuffer:v30 size:?];
            }

            [v21 close];

            a3 = v26;
          }
        }

        else
        {
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[OISFUZipArchiveOutputStream createZipWithItemsAtPath:zippedPath:rootPathComponentName:]"];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"];
          [OITSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:181 isFatal:0 description:"Trying to add file that doesn't exist: %@", v33];
          +[OITSUAssertionHandler logBacktraceThrottled];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v24 = 1;
LABEL_24:
  [(OISFUZipArchiveOutputStream *)v7 close];

  return v24;
}

- (void)beginEntryWithName:(id)a3 isCompressed:(BOOL)a4 uncompressedSize:(unint64_t)a5
{
  v6 = a4;
  if (!self->mOutputStream)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveOutputStream beginEntryWithName:isCompressed:uncompressedSize:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"], 232, 0, "Zip output stream is closed.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  [(OISFUZipArchiveOutputStream *)self finishEntry];
  if (self->mCryptoKey)
  {
    a5 = [OISFUCryptoOutputStream encodedLengthForDataLength:a5 key:?];
  }

  v10 = objc_alloc_init(OISFUZipOutputEntry);
  self->mCurrentEntry = v10;
  [(NSMutableArray *)self->mEntries addObject:v10];

  self->mCurrentEntry->name = [a3 copy];
  self->mCurrentEntry->utf8NameLength = strlen([a3 UTF8String]);
  self->mCurrentEntry->isCompressed = v6;
  self->mCurrentEntry->isEncrypted = self->mCryptoKey != 0;
  self->mCurrentEntry->time = SFUZipCurrentDosTime();
  self->mCurrentEntry->is64Bit = a5 > 0xFFC2F6FF;
  if (!v6 && [(OISFUMoveableFileOutputStream *)self->mOutputStream canSeek])
  {
    mCurrentEntry = self->mCurrentEntry;
    v12 = mCurrentEntry->utf8NameLength + 30;
    v13 = mCurrentEntry->is64Bit ? 20 : 0;
    v14 = v12 + v13;
    if (!__CFADD__(a5, v12 + v13))
    {
      v15 = [(NSMutableArray *)self->mFreeList count];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = 0;
        v19 = v14 + a5;
        do
        {
          v20 = [(NSMutableArray *)self->mFreeList objectAtIndex:v17];
          v21 = *(v20 + 16);
          if (v21 == v19)
          {
            v18 = v20;
            goto LABEL_22;
          }

          if (v21 >= v19 + 47 && (!v18 || v21 < v18[2]))
          {
            v18 = v20;
          }

          ++v17;
        }

        while (v16 != v17);
        if (!v18)
        {
          goto LABEL_23;
        }

LABEL_22:
        [(OISFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:v18[1] whence:0];
        self->mCurrentFreeSpace = v18;
      }
    }
  }

LABEL_23:
  v22 = self->mCurrentEntry;
  if (!self->mCurrentFreeSpace)
  {
    self->mLastEntryInFile = v22;
  }

  self->mCurrentEntry->compressedDataOffset = self->mCurrentEntry->offset + [(OISFUZipArchiveOutputStream *)self writeLocalFileHeaderForEntry:v22];
  self->mCurrentEntry->crc = crc32(0, 0, 0);
  if (self->mCurrentEntry->isEncrypted)
  {
    v23 = [[OISFUCryptoOutputStream alloc] initForEncryptionWithOutputStream:self->mOutputStream key:self->mCryptoKey computeCrc32:1];
    if (!v6)
    {
LABEL_27:
      self->mEntryOutputStream = v23;
      return;
    }
  }

  else
  {
    v23 = self->mOutputStream;
    if (!v6)
    {
      goto LABEL_27;
    }
  }

  v24 = v23;
  self->mEntryOutputStream = [[OISFUZipDeflateOutputStream alloc] initWithOutputStream:v23];
}

- (id)beginUncompressedUnknownSizeEntryWithName:(id)a3
{
  [(OISFUZipArchiveOutputStream *)self beginUnknownSizeEntryWithName:a3 isCompressed:0];
  self->mCurrentEntry->isWrittenDirectlyToFile = 1;
  v4 = [[OISFUOffsetOutputStream alloc] initWithOutputStream:self->mEntryOutputStream];
  if (self->mCurrentEntry->isEncrypted)
  {
    v5 = [[OISFUCryptoOutputStream alloc] initForEncryptionWithOutputStream:v4 key:self->mCryptoKey computeCrc32:1];

    v4 = v5;
  }

  return v4;
}

- (void)setCrc32ForCurrentEntry:(unsigned int)a3
{
  mCurrentEntry = self->mCurrentEntry;
  if (mCurrentEntry)
  {
    if (mCurrentEntry->isWrittenDirectlyToFile)
    {
      mCurrentEntry->crc = a3;
    }
  }
}

- (void)writeBuffer:(const char *)a3 size:(unint64_t)a4
{
  if (self->mCurrentEntry)
  {
    if (!self->mOutputStream)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveOutputStream writeBuffer:size:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"], 355, 0, "Zip output stream is closed.");
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    [(SFUOutputStream *)self->mEntryOutputStream writeBuffer:a3 size:a4];
    self->mCurrentEntry->uncompressedSize += a4;
    mCurrentEntry = self->mCurrentEntry;
    if (!mCurrentEntry->isEncrypted)
    {
      if (a4 >= 0xFFFFFFFF)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveOutputStream writeBuffer:size:]"];
        +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"], 365, 0, "overflow in writeBuffer:");
        +[OITSUAssertionHandler logBacktraceThrottled];
        mCurrentEntry = self->mCurrentEntry;
      }

      self->mCurrentEntry->crc = crc32(mCurrentEntry->crc, a3, a4);
    }
  }

  else
  {

    [OISFUZipException raise:@"SFUZipOutputError" format:@"-writeBuffer:size: called when current entry is nil"];
  }
}

- (BOOL)canRemoveEntryWithName:(id)a3
{
  v5 = [(NSMutableArray *)self->mEntries count];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = 0;
  do
  {
    v8 = [(NSMutableArray *)self->mEntries objectAtIndex:v7];
    if ([*(v8 + 8) isEqualToString:a3])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    ++v7;
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 >= v6;
    }
  }

  while (!v10);
  if (v9)
  {
    return v9 == self->mLastEntryInFile || v9->compressedSize + v9->utf8NameLength > 0x10;
  }

LABEL_14:
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveOutputStream canRemoveEntryWithName:]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"], 382, 0, "Can't find entry named: %@", a3);
  +[OITSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (void)removeEntryWithName:(id)a3
{
  if (!self->mOutputStream)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveOutputStream removeEntryWithName:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"], 390, 0, "Zip output stream is closed.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  mCurrentEntry = self->mCurrentEntry;
  if (mCurrentEntry && [(NSString *)mCurrentEntry->name isEqualToString:a3])
  {
    v7 = self->mCurrentEntry;
    [(OISFUZipArchiveOutputStream *)self finishEntry];
  }

  else
  {
    v8 = [(NSMutableArray *)self->mEntries count];
    if (!v8)
    {
LABEL_19:
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveOutputStream removeEntryWithName:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v17, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"], 407, 0, "Can't find entry named: %@", a3);

      +[OITSUAssertionHandler logBacktraceThrottled];
      return;
    }

    v9 = v8;
    v10 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->mEntries objectAtIndex:v10];
      if (![(NSString *)v7->name isEqualToString:a3])
      {
        v7 = 0;
      }

      ++v10;
      if (v7)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 >= v9;
      }
    }

    while (!v11);
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  v12 = v7;
  [(NSMutableArray *)self->mEntries removeObject:v7];
  if (v7 == self->mLastEntryInFile)
  {
    v18 = [(OISFUMoveableFileOutputStream *)self->mOutputStream offset];
    [(OISFUMoveableFileOutputStream *)self->mOutputStream truncateToLength:v7->offset];
    if (v18 < v7->offset)
    {
      [(OISFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:v18 whence:0];
    }

    self->mLastEntryInFile = 0;
    v19 = [(NSMutableArray *)self->mEntries count];
    if (!self->mLastEntryInFile && v19)
    {
      v20 = v19 - 1;
      while (1)
      {
        v21 = [(NSMutableArray *)self->mEntries objectAtIndex:v20];
        if (v21->compressedSize + v21->compressedDataOffset == v7->offset)
        {
          break;
        }

        v11 = v20-- != 0;
        v22 = v11;
        if (self->mLastEntryInFile || (v22 & 1) == 0)
        {
          return;
        }
      }

      self->mLastEntryInFile = v21;
    }
  }

  else
  {
    v13 = objc_alloc_init(OISFUZipFreeSpaceEntry);
    v14 = v13;
    offset = v7->offset;
    v13->offset = offset;
    v16 = v7->compressedDataOffset - offset + v7->compressedSize;
    v13->length = v16;
    if (v16 >= 0x2F)
    {
      [(NSMutableArray *)self->mFreeList addObject:v13];

      self->mFreeBytes += v14->length;
    }

    else
    {

      [OISFUZipException raise:@"SFUZipOutputError" format:@"Removing entry named %@ produced free space that is too small.", a3];
    }
  }
}

- (void)setEncryptedDocumentUuid:(id)a3
{
  if (!self->mOutputStream)
  {
    [OISFUZipException raise:@"SFUZipOutputError" format:@"Tried to set encrypted document UUID after writing finished."];
  }

  v5 = a3;

  self->mEncryptedDocumentUuid = a3;
}

- (void)close
{
  if (!self->mOutputStream)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveOutputStream close]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"], 470, 0, "Zip output stream is closed.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  [(OISFUZipArchiveOutputStream *)self finishEntry];
  v4 = [(NSMutableArray *)self->mFreeList count];
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_calloc(1uLL, 0x40000uLL, 0x100004077774924uLL);
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->mFreeList objectAtIndex:v7];
      [(OISFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:*(v8 + 8) whence:0];
      v9 = objc_alloc_init(OISFUZipOutputEntry);
      self->mCurrentEntry = v9;
      [(NSMutableArray *)self->mEntries addObject:v9];

      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@".iWTrash/%08X", ++v7];
      self->mCurrentEntry->name = [v10 copy];
      self->mCurrentEntry->utf8NameLength = strlen([v10 UTF8String]);
      self->mCurrentEntry->isCompressed = 0;
      self->mCurrentEntry->isEncrypted = 0;
      self->mCurrentEntry->time = SFUZipCurrentDosTime();
      self->mCurrentEntry->compressedDataOffset = self->mCurrentEntry->offset + [(OISFUZipArchiveOutputStream *)self writeLocalFileHeaderForEntry:self->mCurrentEntry];
      self->mCurrentEntry->crc = crc32(0, 0, 0);
      self->mEntryOutputStream = self->mOutputStream;
      for (i = *(v8 + 16) - self->mCurrentEntry->compressedDataOffset + self->mCurrentEntry->offset; i; i -= v12)
      {
        if (i >= 0x40000)
        {
          v12 = 0x40000;
        }

        else
        {
          v12 = i;
        }

        [(OISFUZipArchiveOutputStream *)self writeBuffer:v6 size:v12];
      }

      [(OISFUZipArchiveOutputStream *)self finishEntry];
    }

    while (v7 != v5);
    if (v6)
    {
      free(v6);
    }
  }

  v13 = [(OISFUMoveableFileOutputStream *)self->mOutputStream offset];
  [(NSMutableArray *)self->mEntries sortUsingSelector:sel_compareByOffset_];
  v14 = [(NSMutableArray *)self->mEntries objectEnumerator];
  v15 = [v14 nextObject];
  if (v15)
  {
    [(OISFUZipArchiveOutputStream *)self writeCentralFileHeaderUsingEntry:v15 isFirstEntry:1];
  }

  v16 = [v14 nextObject];
  if (v16)
  {
    v17 = v16;
    do
    {
      [(OISFUZipArchiveOutputStream *)self writeCentralFileHeaderUsingEntry:v17 isFirstEntry:0];
      v17 = [v14 nextObject];
    }

    while (v17);
  }

  [(OISFUZipArchiveOutputStream *)self writeEndOfCentralDirectoryWithOffset:v13];

  self->mOutputStream = 0;
}

- (void)moveToPath:(id)a3
{
  if (!self->mOutputStream)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveOutputStream moveToPath:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"], 545, 0, "Zip output stream is closed.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  [(OISFUZipArchiveOutputStream *)self finishEntry];
  v6 = [(OISFUMoveableFileOutputStream *)self->mOutputStream path];
  if (![(OISFUMoveableFileOutputStream *)self->mOutputStream moveToPath:a3])
  {
    [OISFUZipException raise:@"SFUZipOutputError" format:@"Could not move output stream from %@ to %@", v6, a3];
  }
}

- (id)entryNames
{
  v3 = [(NSMutableArray *)self->mEntries count];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      [v4 addObject:{*(-[NSMutableArray objectAtIndex:](self->mEntries, "objectAtIndex:", i) + 8)}];
    }
  }

  return v4;
}

- (id)entriesAtPath:(id)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableArray count](self->mEntries, "count")}];
  v6 = [[OISFUZipArchiveFileDataRepresentation alloc] initWithPath:a3];
  v7 = [(NSMutableArray *)self->mEntries objectEnumerator];
  v8 = [v7 nextObject];
  if (v8)
  {
    v9 = v8;
    do
    {
      v10 = [[OISFUZipEntry alloc] initWithDataRepresentation:v6 compressionMethod:*(v9 + 24) compressedSize:*(v9 + 32) uncompressedSize:*(v9 + 40) offset:*(v9 + 48) crc:*(v9 + 64)];
      v11 = v10;
      if (*(v9 + 25) == 1)
      {
        [(OISFUZipEntry *)v10 setCryptoKey:self->mCryptoKey];
      }

      [v5 setObject:v11 forKey:*(v9 + 8)];

      v9 = [v7 nextObject];
    }

    while (v9);
  }

  return v5;
}

- (void)reset
{
  [(NSMutableArray *)self->mEntries removeAllObjects];
  [(NSMutableArray *)self->mFreeList removeAllObjects];
  self->mCurrentEntry = 0;
  self->mLastEntryInFile = 0;
  self->mCurrentFreeSpace = 0;
  self->mFreeBytes = 0;

  self->mEntryOutputStream = 0;
  mOutputStream = self->mOutputStream;

  [(OISFUMoveableFileOutputStream *)mOutputStream truncateToLength:0];
}

- (unsigned)crc32ForEntry:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mEntries = self->mEntries;
  v6 = [(NSMutableArray *)mEntries countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(mEntries);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if ([(NSString *)v10->name isEqualToString:a3])
        {
          if (v10 == self->mCurrentEntry)
          {
            LODWORD(v6) = 0;
          }

          else
          {
            LODWORD(v6) = v10->crc;
          }

          return v6;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [(NSMutableArray *)mEntries countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (void)finishEntry
{
  mCurrentEntry = self->mCurrentEntry;
  if (mCurrentEntry)
  {
    mEntryOutputStream = self->mEntryOutputStream;
    if (mCurrentEntry->isCompressed)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveOutputStream(Private) finishEntry]"];
        +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"], 659, 0, "Wrong output stream for compressed entry.");
        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      mEntryOutputStream = [(SFUOutputStream *)self->mEntryOutputStream closeLocalStream];
      mCurrentEntry = self->mCurrentEntry;
    }

    if (mCurrentEntry->isEncrypted)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveOutputStream(Private) finishEntry]"];
        +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"], 667, 0, "Wrong output stream type for encrypted entry.");
        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      [(SFUOutputStream *)mEntryOutputStream closeLocalStream];
      self->mCurrentEntry->crc = [(SFUOutputStream *)mEntryOutputStream crc32];
    }

    self->mEntryOutputStream = 0;
    self->mCurrentEntry->compressedSize = [(OISFUMoveableFileOutputStream *)self->mOutputStream offset]- self->mCurrentEntry->compressedDataOffset;
    v7 = self->mCurrentEntry;
    if (v7->isWrittenDirectlyToFile)
    {
      v7->uncompressedSize = v7->compressedSize;
      if (!self->mCurrentEntry->crc)
      {
        if (![(OISFUMoveableFileOutputStream *)self->mOutputStream canSeek])
        {
          [OISFUZipException raise:@"SFUZipOutputError" format:@"Entry written directly to seekable output stream, but output stream cannot be seeked for CRC calculation."];
        }

        if (![(OISFUMoveableFileOutputStream *)self->mOutputStream canCreateInputStream])
        {
          [OISFUZipException raise:@"SFUZipOutputError" format:@"Entry written directly to seekable output stream, but output stream cannot be read for CRC calculation."];
        }

        v8 = [[OISFUBufferedInputStream alloc] initWithStream:[(OISFUMoveableFileOutputStream *)self->mOutputStream inputStream]];
        if (![(OISFUBufferedInputStream *)v8 canSeek])
        {
          [(OISFUBufferedInputStream *)v8 close];

          [OISFUZipException raise:@"SFUZipOutputError" format:@"Entry written directly to seekable output stream, but input stream cannot be seeked for CRC calculation."];
          v8 = 0;
        }

        [(OISFUBufferedInputStream *)v8 seekToOffset:self->mCurrentEntry->compressedDataOffset];
        buf = 0;
        v9 = [(OISFUBufferedInputStream *)v8 readToOwnBuffer:&buf size:0xFFFFFFFFLL];
        if (v9)
        {
          LODWORD(v10) = v9;
          do
          {
            self->mCurrentEntry->crc = crc32(self->mCurrentEntry->crc, buf, v10);
            buf = 0;
            v10 = [(OISFUBufferedInputStream *)v8 readToOwnBuffer:&buf size:0xFFFFFFFFLL];
          }

          while (v10);
        }

        [(OISFUBufferedInputStream *)v8 close];
      }
    }

    if (![(OISFUMoveableFileOutputStream *)self->mOutputStream canSeek])
    {
      mBuffer = self->mBuffer;
      *mBuffer = *"PK\a\b";
      *(mBuffer + 1) = self->mCurrentEntry->crc;
      v18 = self->mCurrentEntry;
      is64Bit = v18->is64Bit;
      compressedSize = v18->compressedSize;
      if (is64Bit)
      {
        *(mBuffer + 1) = compressedSize;
        *(mBuffer + 2) = self->mCurrentEntry->uncompressedSize;
        v21 = 24;
      }

      else
      {
        *(mBuffer + 2) = compressedSize;
        *(mBuffer + 3) = self->mCurrentEntry->uncompressedSize;
        v21 = 16;
      }

      [(OISFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:&mBuffer[v21] - self->mBuffer];
      goto LABEL_50;
    }

    if (self->mCurrentFreeSpace)
    {
      v11 = [(OISFUMoveableFileOutputStream *)self->mOutputStream offset];
      v12 = self->mCurrentEntry;
      v13 = v11 - v12->offset;
      mCurrentFreeSpace = self->mCurrentFreeSpace;
      length = mCurrentFreeSpace->length;
      if (v13 > length)
      {
        [OISFUZipException raise:@"SFUZipOutputError" format:@"Wrote more bytes than we had allocated for file %@", v12->name];
        mCurrentFreeSpace = self->mCurrentFreeSpace;
        length = mCurrentFreeSpace->length;
      }

      v16 = length - v13;
      if ((length - v13) < 1)
      {
        [(NSMutableArray *)self->mFreeList removeObject:?];
      }

      else
      {
        if (v16 < 0x2F)
        {
          [OISFUZipException raise:@"SFUZipOutputError" format:@"Wrote more bytes than we had allocated for file %@", self->mCurrentEntry->name];
          mCurrentFreeSpace = self->mCurrentFreeSpace;
        }

        mCurrentFreeSpace->offset += v13;
        self->mCurrentFreeSpace->length = v16;
      }

      v22 = self->mCurrentFreeSpace;
      self->mFreeBytes -= v13;

      self->mCurrentFreeSpace = 0;
    }

    v23 = self->mBuffer;
    v24 = self->mCurrentEntry;
    v26 = v24->compressedSize;
    uncompressedSize = v24->uncompressedSize;
    *v23 = v24->crc;
    v27 = HIDWORD(v26);
    if (HIDWORD(v26))
    {
      v28 = -1;
    }

    else
    {
      v28 = self->mCurrentEntry->compressedSize;
    }

    *(v23 + 1) = v28;
    v29 = HIDWORD(uncompressedSize);
    if (HIDWORD(uncompressedSize))
    {
      *(v23 + 2) = -1;
      [(OISFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:self->mCurrentEntry->offset + 14 whence:0];
      [(OISFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:12];
    }

    else
    {
      *(v23 + 2) = self->mCurrentEntry->uncompressedSize;
      [(OISFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:self->mCurrentEntry->offset + 14 whence:0];
      [(OISFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:12];
      if (!v27)
      {
LABEL_49:
        [(OISFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:0 whence:2];
LABEL_50:
        self->mCurrentEntry = 0;
        [(OISFUZipArchiveOutputStream *)self coalesceAndTruncateFreeSpace];
        return;
      }
    }

    v30 = self->mCurrentEntry;
    if (!v30->is64Bit)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveOutputStream(Private) finishEntry]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v31, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"], 776, 0, "Wrote a zip entry that needs 64 bit sizes, but didn't create 64 bit field.");
      +[OITSUAssertionHandler logBacktraceThrottled];
      v30 = self->mCurrentEntry;
    }

    v32 = self->mBuffer;
    if (v29)
    {
      *v32 = v30->uncompressedSize;
      v32 += 8;
      v30 = self->mCurrentEntry;
    }

    if (v27)
    {
      *v32 = v30->compressedSize;
      v32 += 8;
      v30 = self->mCurrentEntry;
    }

    [(OISFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:v30->offset + v30->utf8NameLength + 34 whence:0];
    [(OISFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:v32 - self->mBuffer];
    goto LABEL_49;
  }
}

- (void)coalesceAndTruncateFreeSpace
{
  if (!self->mCurrentEntry || (v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchiveOutputStream(Private) coalesceAndTruncateFreeSpace]"], +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchiveOutputStream.m"), 820, 0, "-coalesceAndTruncateFreeSpace should not be called while an entry is being written to"), +[OITSUAssertionHandler logBacktraceThrottled](OITSUAssertionHandler, "logBacktraceThrottled"), !self->mCurrentEntry))
  {
    if ([(OISFUMoveableFileOutputStream *)self->mOutputStream canSeek]&& [(NSMutableArray *)self->mFreeList count])
    {
      [(NSMutableArray *)self->mFreeList sortUsingSelector:sel_compareByOffset_];
      v4 = [(NSMutableArray *)self->mFreeList count];
      if (v4 >= 2)
      {
        v5 = v4;
        v6 = 0;
        for (i = 1; i != v5; ++i)
        {
          v8 = [(NSMutableArray *)self->mFreeList objectAtIndex:i];
          if (v6 && (v9 = [(NSMutableArray *)v6 lastObject]) != 0 && (v10 = *(v9 + 16), *(v8 + 8) - v10 == *(v9 + 8)))
          {
            *(v9 + 16) = *(v8 + 16) + v10;
          }

          else
          {
            v11 = [(NSMutableArray *)self->mFreeList objectAtIndex:i - 1];
            v12 = *(v11 + 16);
            if (*(v8 + 8) - v12 == *(v11 + 8))
            {
              v13 = v11;
              if (!v6)
              {
                v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v12 = *(v13 + 16);
              }

              *(v13 + 16) = v12 + *(v8 + 16);
              [(NSMutableArray *)v6 addObject:v13];
            }
          }
        }

        if (v6)
        {

          self->mFreeList = v6;
        }
      }

      [(OISFUMoveableFileOutputStream *)self->mOutputStream seekToOffset:0 whence:2];
      v14 = [(OISFUMoveableFileOutputStream *)self->mOutputStream offset];
      v15 = [(NSMutableArray *)self->mFreeList lastObject];
      if (v14 - *(v15 + 16) == *(v15 + 8))
      {
        v16 = v15;
        [(OISFUMoveableFileOutputStream *)self->mOutputStream truncateToLength:?];
        self->mFreeBytes -= *(v16 + 16);
        [(NSMutableArray *)self->mFreeList removeLastObject];
        if (!self->mLastEntryInFile)
        {
          v17 = [(NSMutableArray *)self->mEntries count];
          if (!self->mLastEntryInFile)
          {
            if (v17)
            {
              v18 = v17 - 1;
              while (1)
              {
                v19 = [(NSMutableArray *)self->mEntries objectAtIndex:v18];
                if (v19->compressedSize + v19->compressedDataOffset == *(v16 + 8))
                {
                  break;
                }

                v21 = v18-- != 0;
                if (self->mLastEntryInFile || !v21)
                {
                  return;
                }
              }

              self->mLastEntryInFile = v19;
            }
          }
        }
      }
    }
  }
}

- (unint64_t)writeLocalFileHeaderForEntry:(id)a3
{
  mBuffer = self->mBuffer;
  *mBuffer = 67324752;
  *(mBuffer + 2) = 20;
  if ([(OISFUMoveableFileOutputStream *)self->mOutputStream canSeek])
  {
    v6 = 0;
  }

  else
  {
    v6 = 8;
  }

  *(mBuffer + 3) = v6;
  if (*(a3 + 24))
  {
    v7 = 25452;
  }

  else
  {
    v7 = 25451;
  }

  if (*(a3 + 24))
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  if (*(a3 + 25))
  {
    v8 = v7;
  }

  *(mBuffer + 4) = v8;
  *(mBuffer + 10) = *(a3 + 7);
  *(mBuffer + 14) = 0;
  *(mBuffer + 22) = 0;
  v9 = *(a3 + 2);
  if (v9 >= 0x10000)
  {
    [OISFUZipException raise:@"SFUZipOutputError" format:@"File name %@ is too long", *(a3 + 1)];
    v9 = *(a3 + 2);
  }

  if (v9 >= 0xFFFF)
  {
    LOWORD(v9) = -1;
  }

  *(mBuffer + 13) = v9;
  if (*(a3 + 69))
  {
    v10 = 20;
  }

  else
  {
    v10 = 0;
  }

  *(mBuffer + 14) = v10;
  *(a3 + 6) = [(OISFUMoveableFileOutputStream *)self->mOutputStream offset];
  [(OISFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:30];
  -[OISFUMoveableFileOutputStream writeBuffer:size:](self->mOutputStream, "writeBuffer:size:", [*(a3 + 1) UTF8String], *(a3 + 2));
  if (*(a3 + 69) == 1)
  {
    v11 = self->mBuffer;
    *v11 = 1048577;
    *(v11 + 12) = 0;
    *(v11 + 4) = 0;
    [(OISFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:20];
  }

  return v10 + 30 + *(a3 + 2);
}

- (void)writeCentralFileHeaderUsingEntry:(id)a3 isFirstEntry:(BOOL)a4
{
  v40 = a4;
  mBuffer = self->mBuffer;
  v7 = *(a3 + 4);
  v8 = *(a3 + 5);
  v9 = *(a3 + 2);
  v10 = *(a3 + 6);
  *mBuffer = 33639248;
  *(mBuffer + 1) = 1310782;
  if ([(OISFUMoveableFileOutputStream *)self->mOutputStream canSeek])
  {
    v11 = 0;
  }

  else
  {
    v11 = 8;
  }

  *(mBuffer + 4) = v11;
  if (*(a3 + 24))
  {
    v12 = 25452;
  }

  else
  {
    v12 = 25451;
  }

  if (*(a3 + 24))
  {
    v13 = 8;
  }

  else
  {
    v13 = 0;
  }

  if (*(a3 + 25))
  {
    v13 = v12;
  }

  *(mBuffer + 5) = v13;
  *(mBuffer + 3) = *(a3 + 7);
  *(mBuffer + 4) = *(a3 + 16);
  v14 = HIDWORD(v7);
  if (HIDWORD(v7))
  {
    v15 = -1;
  }

  else
  {
    v15 = *(a3 + 8);
  }

  *(mBuffer + 5) = v15;
  v16 = HIDWORD(v8);
  if (HIDWORD(v8))
  {
    v17 = -1;
  }

  else
  {
    v17 = *(a3 + 10);
  }

  *(mBuffer + 6) = v17;
  if (v9 >> 16)
  {
    v18 = -1;
  }

  else
  {
    v18 = *(a3 + 8);
  }

  *(mBuffer + 14) = v18;
  v19 = (v8 | v7 | v10) >> 32;
  v20 = v19 != 0;
  v21 = HIDWORD(v10);
  v22 = 8 * (v16 != 0);
  if (v14)
  {
    v22 += 8;
  }

  if (v21)
  {
    v22 += 8;
  }

  if (v19)
  {
    v23 = v22 | 4;
  }

  else
  {
    v23 = 0;
  }

  if (v19)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v38 = v24;
  if (self->mCryptoKey && v40)
  {
    v25 = [OISFUCryptoUtils generatePassphraseVerifierForKey:"generatePassphraseVerifierForKey:verifierVersion:" verifierVersion:?];
    v23 += [v25 length] + 8;
    mPassphraseHint = self->mPassphraseHint;
    v39 = mPassphraseHint;
    if (mPassphraseHint)
    {
      v23 += [(NSData *)mPassphraseHint length]+ 8;
    }

    mEncryptedDocumentUuid = self->mEncryptedDocumentUuid;
    if (mEncryptedDocumentUuid)
    {
      v28 = self->mEncryptedDocumentUuid;
      LOWORD(v23) = v23 + [(NSData *)mEncryptedDocumentUuid length]+ 8;
      goto LABEL_39;
    }
  }

  else
  {
    v25 = 0;
    v39 = 0;
  }

  v28 = 0;
LABEL_39:
  *(mBuffer + 15) = v23;
  *(mBuffer + 8) = 0;
  *(mBuffer + 18) = 0;
  *(mBuffer + 38) = 0;
  if (v21)
  {
    v29 = -1;
  }

  else
  {
    v29 = *(a3 + 12);
  }

  *(mBuffer + 42) = v29;
  [(OISFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:46];
  -[OISFUMoveableFileOutputStream writeBuffer:size:](self->mOutputStream, "writeBuffer:size:", [*(a3 + 1) UTF8String], *(a3 + 2));
  if (!v20)
  {
    goto LABEL_51;
  }

  v30 = self->mBuffer;
  *v30 = 1;
  *(v30 + 1) = v38;
  if (v16)
  {
    *(v30 + 4) = *(a3 + 5);
    v31 = v30 + 12;
    if (!v14)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v31 = v30 + 4;
  if (v14)
  {
LABEL_47:
    *v31 = *(a3 + 4);
    v31 += 8;
  }

LABEL_48:
  if (v21)
  {
    *v31 = *(a3 + 6);
    v31 += 8;
  }

  [(OISFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:v31 - self->mBuffer];
LABEL_51:
  if (self->mCryptoKey && v40)
  {
    v32 = self->mBuffer;
    *v32 = 25453;
    *(v32 + 1) = [v25 length] + 4;
    *(v32 + 1) = 1987082089;
    [OISFUMoveableFileOutputStream writeBuffer:"writeBuffer:size:" size:?];
    -[OISFUMoveableFileOutputStream writeBuffer:size:](self->mOutputStream, "writeBuffer:size:", [v25 bytes], objc_msgSend(v25, "length"));
    if (v39)
    {
      v33 = self->mBuffer;
      *v33 = 25454;
      *(v33 + 1) = [(NSData *)v39 length]+ 4;
      *(v33 + 1) = 1752201065;
      [OISFUMoveableFileOutputStream writeBuffer:"writeBuffer:size:" size:?];
      [(OISFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:[(NSData *)v39 bytes] size:[(NSData *)v39 length]];
    }

    if (v28)
    {
      v34 = self->mBuffer;
      *v34 = 25455;
      *(v34 + 1) = [(NSData *)v28 length]+ 4;
      *(v34 + 1) = *"iwuu";
      [OISFUMoveableFileOutputStream writeBuffer:"writeBuffer:size:" size:?];
      mOutputStream = self->mOutputStream;
      v36 = [(NSData *)v28 bytes];
      v37 = [(NSData *)v28 length];

      [(OISFUMoveableFileOutputStream *)mOutputStream writeBuffer:v36 size:v37];
    }
  }
}

- (void)writeEndOfCentralDirectoryWithOffset:(int64_t)a3
{
  v5 = [(OISFUMoveableFileOutputStream *)self->mOutputStream offset]- a3;
  v6 = [(NSMutableArray *)self->mEntries count];
  v7 = v6;
  if (a3 > 0xFFFFFFFFLL || (!(v6 >> 16) ? (v8 = HIDWORD(v5) == 0) : (v8 = 0), !v8))
  {
    v9 = [(OISFUMoveableFileOutputStream *)self->mOutputStream offset];
    [(OISFUZipArchiveOutputStream *)self writeZip64EndOfCentralDirectoryWithOffset:a3];
    [(OISFUZipArchiveOutputStream *)self writeZip64EndOfCentralDirectoryLocatorWithOffset:v9];
  }

  mBuffer = self->mBuffer;
  *mBuffer = 101010256;
  *(mBuffer + 1) = 0;
  v11 = -1;
  if (v7 < 0xFFFF)
  {
    v11 = v7;
  }

  *(mBuffer + 4) = v11;
  *(mBuffer + 5) = v11;
  v12 = -1;
  if (a3 > 0xFFFFFFFFLL)
  {
    v13 = -1;
  }

  else
  {
    v13 = v5;
  }

  if (a3 < 0xFFFFFFFFLL)
  {
    v12 = a3;
  }

  *(mBuffer + 3) = v13;
  *(mBuffer + 4) = v12;
  *(mBuffer + 10) = 0;
  mOutputStream = self->mOutputStream;
  v15 = self->mBuffer;

  [(OISFUMoveableFileOutputStream *)mOutputStream writeBuffer:v15 size:22];
}

- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)a3
{
  mBuffer = self->mBuffer;
  *mBuffer = 101075792;
  *(mBuffer + 4) = 44;
  *(mBuffer + 2) = 0;
  *(mBuffer + 3) = 1310782;
  v6 = [(NSMutableArray *)self->mEntries count];
  *(mBuffer + 3) = v6;
  *(mBuffer + 4) = v6;
  *(mBuffer + 5) = [(OISFUMoveableFileOutputStream *)self->mOutputStream offset]- a3;
  *(mBuffer + 6) = a3;
  mOutputStream = self->mOutputStream;
  v8 = self->mBuffer;

  [(OISFUMoveableFileOutputStream *)mOutputStream writeBuffer:v8 size:56];
}

- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)a3
{
  mBuffer = self->mBuffer;
  *mBuffer = 117853008;
  *(mBuffer + 1) = 0;
  *(mBuffer + 1) = a3;
  *(mBuffer + 4) = 1;
  [(OISFUMoveableFileOutputStream *)self->mOutputStream writeBuffer:self->mBuffer size:20];
}

@end