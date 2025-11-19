@interface OISFUZipArchive
+ (BOOL)isZipArchiveAtPath:(id)a3;
- (BOOL)decompressAtPath:(id)a3 wasEmpty:(BOOL *)a4;
- (OISFUZipArchive)initWithData:(id)a3 collapseCommonRootDirectory:(BOOL)a4 ignoreCase:(BOOL)a5;
- (OISFUZipArchive)initWithPath:(id)a3 collapseCommonRootDirectory:(BOOL)a4 ignoreCase:(BOOL)a5;
- (SFUZipEndOfCentralDirectory)readEndOfCentralDirectoryFromInputStream:(SEL)a3;
- (SFUZipEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromInputStream:(SEL)a3 eocdOffset:(id)a4;
- (SFUZipEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromInputStream:(SEL)a3 offset:(id)a4;
- (const)searchForEndOfCentralDirectoryFromInputStream:(id)a3 offset:(int64_t *)a4;
- (id)commonRootDirectoryIgnoringCase:(BOOL)a3;
- (id)entryWithName:(id)a3 dataLength:(int64_t)a4;
- (id)readFilenameFromBuffer:(const char *)a3 size:(unint64_t)a4;
- (void)collapseCommonRootDirectoryIgnoreCase:(BOOL)a3;
- (void)dealloc;
- (void)readEntries;
- (void)readExtraFieldFromBuffer:(const char *)a3 size:(unint64_t)a4 entry:(id)a5;
- (void)setCryptoKey:(id)a3;
@end

@implementation OISFUZipArchive

+ (BOOL)isZipArchiveAtPath:(id)a3
{
  v3 = [[OISFUZipArchiveFileDataRepresentation alloc] initWithPath:a3];
  v4 = [(OISFUZipArchiveFileDataRepresentation *)v3 inputStream];
  v6 = [v4 readToBuffer:&v8 size:4] == 4 && v8 == 67324752;
  [v4 close];

  return v6;
}

os_log_t __38__OISFUZipArchive_isZipArchiveAtPath___block_invoke()
{
  result = TSULogCreateCategory("TSUErrorCat");
  TSUErrorCat_log_t = result;
  return result;
}

- (OISFUZipArchive)initWithPath:(id)a3 collapseCommonRootDirectory:(BOOL)a4 ignoreCase:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(OISFUZipArchive *)self init];
  if (v8)
  {
    v8->mEntries = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8->mDataRepresentation = [[OISFUZipArchiveFileDataRepresentation alloc] initWithPath:a3];
    [(OISFUZipArchive *)v8 readEntries];
    if (v6)
    {
      [(OISFUZipArchive *)v8 collapseCommonRootDirectoryIgnoreCase:v5];
    }
  }

  return v8;
}

- (OISFUZipArchive)initWithData:(id)a3 collapseCommonRootDirectory:(BOOL)a4 ignoreCase:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(OISFUZipArchive *)self init];
  if (v8)
  {
    v8->mEntries = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8->mDataRepresentation = [[OISFUZipArchiveMemoryDataRepresentation alloc] initWithData:a3];
    [(OISFUZipArchive *)v8 readEntries];
    if (v6)
    {
      [(OISFUZipArchive *)v8 collapseCommonRootDirectoryIgnoreCase:v5];
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OISFUZipArchive;
  [(OISFUZipArchive *)&v3 dealloc];
}

- (id)entryWithName:(id)a3 dataLength:(int64_t)a4
{
  v5 = [(OISFUZipArchive *)self entryWithName:a3];
  v6 = v5;
  if (v5)
  {
    [v5 setDataLength:a4];
  }

  return v6;
}

- (void)setCryptoKey:(id)a3
{
  v5 = a3;

  self->mCryptoKey = a3;
  v6 = [(NSMutableDictionary *)self->mEntries allValues];
  mCryptoKey = self->mCryptoKey;

  [v6 makeObjectsPerformSelector:sel_setCryptoKey_ withObject:mCryptoKey];
}

- (BOOL)decompressAtPath:(id)a3 wasEmpty:(BOOL *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  v19 = a4;
  if ([v6 fileExistsAtPath:a3 isDirectory:&v25])
  {
    if ((v25 & 1) == 0)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchive decompressAtPath:wasEmpty:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchive.m"], 224, 0, "Can only decompress into a directory");
      +[OITSUAssertionHandler logBacktraceThrottled];
LABEL_19:
      v9 = 0;
      v16 = 0;
      goto LABEL_21;
    }
  }

  else if (([v6 createDirectoryAtPath:a3 withIntermediateDirectories:1 attributes:0 error:0] & 1) == 0)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUZipArchive decompressAtPath:wasEmpty:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v17, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUZipArchive.m"], 221, 0, "Can't create output directory");
    +[OITSUAssertionHandler logBacktraceThrottled];
    goto LABEL_19;
  }

  v8 = [-[OISFUZipArchive allEntryNames](self allEntryNames];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 length];
        v15 = [a3 stringByAppendingPathComponent:v13];
        if ([v13 characterAtIndex:v14 - 1] == 47)
        {
          v16 = [v6 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:0];
        }

        else
        {
          v16 = [v6 createDirectoryAtPath:objc_msgSend(v15 withIntermediateDirectories:"stringByDeletingLastPathComponent") attributes:1 error:{0, 0}];
          [-[OISFUZipArchive entryWithName:](self entryWithName:{v13), "copyToFile:", v15}];
          if (v9)
          {
            v9 = 1;
          }

          else
          {
            v9 = [v13 hasPrefix:@"."] ^ 1;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    v16 = 1;
  }

LABEL_21:
  if (v19)
  {
    *v19 = (v9 & 1) == 0;
  }

  return v16;
}

- (id)commonRootDirectoryIgnoringCase:(BOOL)a3
{
  v3 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [(OISFUZipArchive *)self allEntryNames];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = [objc_msgSend(v5 objectAtIndex:{v9), "pathComponents"}];
      if ([v10 count] < 2 || (objc_msgSend(objc_msgSend(v10, "objectAtIndex:", 0), "isEqualToString:", @"__MACOSX") & 1) == 0)
      {
        if (v8)
        {
          v11 = 0;
          if ([v8 count])
          {
            do
            {
              if (v11 >= [v10 count])
              {
                break;
              }

              if ([objc_msgSend(v8 objectAtIndexedSubscript:{v11), "compare:options:", objc_msgSend(v10, "objectAtIndexedSubscript:", v11), v3 | 2}])
              {
                break;
              }

              ++v11;
            }

            while (v11 < [v8 count]);
            if (v11 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }
          }

          if (v11 != [v8 count] + 1)
          {
            [v8 removeObjectsInRange:{v11, objc_msgSend(v8, "count") - v11}];
          }
        }

        else
        {
          v8 = [MEMORY[0x277CBEB18] arrayWithArray:v10];
          [v8 removeLastObject];
        }
      }

      if (++v9 == v7)
      {
        goto LABEL_17;
      }
    }
  }

  v8 = 0;
LABEL_17:
  if ([v8 count])
  {
    v12 = [MEMORY[0x277CCACA8] pathWithComponents:v8];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(context);

  return v12;
}

- (void)readEntries
{
  context = objc_autoreleasePoolPush();
  [[OISFUZipRecordInputStream alloc] initWithDataRepresentation:self->mDataRepresentation];
  [(OISFUZipArchive *)self readEndOfCentralDirectoryFromInputStream:?];
  objc_autoreleasePoolPop(context);
}

- (void)collapseCommonRootDirectoryIgnoreCase:(BOOL)a3
{
  v3 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(OISFUZipArchive *)self commonRootDirectoryIgnoringCase:v3];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](self->mEntries, "count")}];
    v9 = [v7 length];
    v10 = [(OISFUZipArchive *)self allEntryNames];
    v11 = [v10 count];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = v9 + 1;
      do
      {
        v15 = [v10 objectAtIndex:v13];
        if ([v15 length] != v14 && (objc_msgSend(v15, "hasPrefix:", @"__MACOSX") & 1) == 0)
        {
          -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", -[NSMutableDictionary objectForKey:](self->mEntries, "objectForKey:", v15), [v15 substringFromIndex:v14]);
        }

        ++v13;
      }

      while (v12 != v13);
    }

    self->mEntries = v8;
  }

  objc_autoreleasePoolPop(v5);
}

- (SFUZipEndOfCentralDirectory)readEndOfCentralDirectoryFromInputStream:(SEL)a3
{
  v14 = [(SFUZipArchiveDataRepresentation *)self->mDataRepresentation dataLength]- 22;
  result = [a4 dataAtOffset:? size:? end:?];
  v8 = (&result->var0 + 4);
  if (LODWORD(result->var0) != 101010256)
  {
    result = [(OISFUZipArchive *)self searchForEndOfCentralDirectoryFromInputStream:a4 offset:&v14];
    v8 = result;
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  if (LOWORD(v8->var0) | WORD1(v8->var0))
  {
    result = [OISFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  var0_high = HIWORD(v8->var0);
  retstr->var0 = var0_high;
  var1_low = LODWORD(v8->var1);
  retstr->var1 = var1_low;
  var1_high = HIDWORD(v8->var1);
  retstr->var2 = var1_high;
  if (var0_high == 0xFFFF || var1_low == -1 || var1_high == -1)
  {
    return [(OISFUZipArchive *)self readZip64EndOfCentralDirectoryFromInputStream:a4 eocdOffset:v14];
  }

  return result;
}

- (const)searchForEndOfCentralDirectoryFromInputStream:(id)a3 offset:(int64_t *)a4
{
  v6 = [(SFUZipArchiveDataRepresentation *)self->mDataRepresentation dataLength];
  if (v6 <= 0x10015)
  {
    v7 = v6;
  }

  else
  {
    v7 = 65557;
  }

  v8 = v6 - v7;
  v9 = [a3 dataAtOffset:v6 - v7 size:v7 end:v6];
  v10 = v7 & 0x3FF | 0x400;
  if (v10 >= v7)
  {
    v10 = v7;
  }

  v11 = (v9 + v7 - v10);
  if (v11 >= v9)
  {
    v13 = v9;
    v14 = v10 - 21;
    do
    {
      if (v14 >= 1)
      {
        v15 = &v11[v14];
        v16 = v11;
        do
        {
          v17 = memchr(v16, 80, v15 - v16);
          v18 = v15;
          if (v17)
          {
            if (v17[1] == 75 && v17[2] == 5)
            {
              v18 = v17;
              if (v17[3] == 6)
              {
                v12 = v17 + 4;
                *a4 = &v17[v8 - v13];
                return v12;
              }
            }

            else
            {
              v18 = v17;
            }
          }

          v16 = v18 + 4;
        }

        while ((v18 + 4) < v15);
      }

      v11 -= 1024;
      v14 = 1024;
    }

    while (v11 >= v13);
  }

  [OISFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"Could not find the end of central directory record"];
  return 0;
}

- (SFUZipEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromInputStream:(SEL)a3 eocdOffset:(id)a4
{
  v8 = a5 - 20;
  if (a5 < 0x14)
  {
    [OISFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"File isn't long enough for Zip64 locator"];
  }

  result = [a4 dataAtOffset:v8 size:20 end:0];
  v10 = result;
  if (LODWORD(result->var0) != 117853008)
  {
    result = [OISFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"Zip64 end of central directory locator record signature not found"];
  }

  if (HIDWORD(v10->var0))
  {
    result = [OISFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  var1 = v10->var1;
  if (LODWORD(v10->var2) != 1)
  {
    result = [OISFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  if (self)
  {

    return [(OISFUZipArchive *)self readZip64EndOfCentralDirectoryFromInputStream:a4 offset:var1];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (SFUZipEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromInputStream:(SEL)a3 offset:(id)a4
{
  result = [a4 dataAtOffset:a5 size:56 end:0];
  v7 = result;
  if (LODWORD(result->var0) != 101075792)
  {
    result = [OISFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"Zip64 end of central directory record signature not found"];
  }

  if (LODWORD(v7->var2))
  {
    result = [OISFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  if (HIDWORD(v7->var2))
  {
    result = [OISFUZipException raise:@"SFUZipEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  *&retstr->var0 = *&v7[1].var1;
  retstr->var2 = v7[2].var0;
  return result;
}

- (id)readFilenameFromBuffer:(const char *)a3 size:(unint64_t)a4
{
  result = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:a4 encoding:4];
  if (!result)
  {
    SystemEncoding = CFStringGetSystemEncoding();
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 length:a4 encoding:CFStringConvertEncodingToNSStringEncoding(SystemEncoding)];
    if (!result)
    {
      [OISFUZipException raise:@"SFUZipFilenameError" format:@"Could not read filename."];
      return 0;
    }
  }

  return result;
}

- (void)readExtraFieldFromBuffer:(const char *)a3 size:(unint64_t)a4 entry:(id)a5
{
  if (a4 >= 4)
  {
    v18 = v5;
    v19 = v6;
    v8 = a3;
    v10 = &a3[a4];
    qmemcpy(v17, "iwphiwuu", sizeof(v17));
    do
    {
      v11 = *(v8 + 1);
      v12 = v8 + 4;
      v13 = &v8[v11 + 4];
      if (v13 > v10)
      {
        break;
      }

      v14 = *v8;
      if (v14 > 0x636D)
      {
        if (v14 == 25454)
        {
          v15 = v11 >= 4 && self->mPassphraseHint == 0;
          if (v15 && *v12 == v17[0])
          {
            v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v8 + 8 length:(v11 - 4)];
            self->mPassphraseHint = [OISFUCryptoUtils decodePassphraseHint:v16];
          }
        }

        else if (v14 == 25455 && v11 >= 4 && !self->mEncryptedDocumentUuid && *v12 == v17[1])
        {
          self->mEncryptedDocumentUuid = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v8 + 8 length:(v11 - 4)];
        }
      }

      else if (v14 == 1)
      {
        [a5 readZip64ExtraField:? size:?];
      }

      else if (v14 == 25453 && v11 >= 4 && !self->mPassphraseVerifier && *v12 == 1987082089)
      {
        self->mPassphraseVerifier = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v8 + 8 length:(v11 - 4)];
      }

      v8 = v13;
    }

    while (v13 + 4 <= v10);
  }
}

@end