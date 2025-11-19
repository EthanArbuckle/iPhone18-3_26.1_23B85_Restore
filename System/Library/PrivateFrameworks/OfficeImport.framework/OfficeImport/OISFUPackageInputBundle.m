@interface OISFUPackageInputBundle
- (OISFUPackageInputBundle)initWithPath:(id)a3;
- (id)_existingPathForEntryName:(id)a3 isGz:(BOOL *)a4;
- (id)bufferedInputStreamForEntry:(id)a3;
- (id)inputStreamForEntry:(id)a3;
- (int64_t)lengthOfEntry:(id)a3;
- (unsigned)crc32ForEntry:(id)a3;
- (void)copyEntry:(id)a3 toFile:(id)a4;
- (void)dealloc;
@end

@implementation OISFUPackageInputBundle

- (OISFUPackageInputBundle)initWithPath:(id)a3
{
  v6.receiver = self;
  v6.super_class = OISFUPackageInputBundle;
  v4 = [(OISFUPackageInputBundle *)&v6 init];
  if (v4)
  {
    v4->_rootPath = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OISFUPackageInputBundle;
  [(OISFUPackageInputBundle *)&v3 dealloc];
}

- (id)_existingPathForEntryName:(id)a3 isGz:(BOOL *)a4
{
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [(NSString *)self->_rootPath stringByAppendingPathComponent:a3];
  if ([v7 fileExistsAtPath:v8])
  {
    LOBYTE(v9) = 0;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_7;
  }

  v8 = [(NSString *)v8 stringByAppendingPathExtension:@"gz"];
  v9 = [v7 fileExistsAtPath:v8];
  if (!v9)
  {
    v8 = 0;
  }

  if (a4)
  {
LABEL_7:
    *a4 = v9;
  }

  return v8;
}

- (id)inputStreamForEntry:(id)a3
{
  v5 = 0;
  v3 = [(OISFUPackageInputBundle *)self _existingPathForEntryName:a3 isGz:&v5];
  if (v3)
  {
    if (v5 == 1)
    {
      v3 = [[OISFUGZipFileInputStream alloc] initWithPath:v3];
    }

    else
    {
      v3 = [[OISFUFileInputStream alloc] initWithPath:v3 offset:0];
    }
  }

  return v3;
}

- (id)bufferedInputStreamForEntry:(id)a3
{
  v3 = [(OISFUPackageInputBundle *)self inputStreamForEntry:a3];
  if (v3)
  {
    v3 = [[OISFUBufferedInputStream alloc] initWithStream:v3];
  }

  return v3;
}

- (int64_t)lengthOfEntry:(id)a3
{
  v12 = 0;
  v5 = [(OISFUPackageInputBundle *)self _existingPathForEntryName:a3 isGz:&v12];
  if (!v5)
  {
    return 0;
  }

  if ((v12 & 1) == 0)
  {
    return [objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUPackageInputBundle lengthOfEntry:]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUInputBundle.m"], 152, 0, "Asked for the length of gzipped entry %@. This is slow.", a3);
  +[OITSUAssertionHandler logBacktraceThrottled];
  v7 = [(OISFUPackageInputBundle *)self bufferedInputStreamForEntry:a3];
  if (v7)
  {
    v8 = 0;
    do
    {
      v11 = 0;
      v9 = [v7 readToOwnBuffer:&v11 size:-1];
      v8 += v9;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  [v7 close];
  return v8;
}

- (unsigned)crc32ForEntry:(id)a3
{
  v4 = [(OISFUPackageInputBundle *)self bufferedInputStreamForEntry:a3];
  if (v4)
  {
    for (i = 0; ; LODWORD(i) = crc32(i, buf, v3))
    {
      buf = 0;
      v3 = [v4 readToOwnBuffer:&buf size:-1];
      if (!v3)
      {
        break;
      }
    }
  }

  else
  {
    LODWORD(i) = 0;
  }

  [v4 close];
  return i;
}

- (void)copyEntry:(id)a3 toFile:(id)a4
{
  v16 = 0;
  v7 = [(OISFUPackageInputBundle *)self _existingPathForEntryName:a3 isGz:&v16];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    if (v16)
    {
      v10 = [(OISFUPackageInputBundle *)self bufferedInputStreamForEntry:a3];
      if (v10)
      {
        v11 = [[OISFUFileOutputStream alloc] initWithPath:a4];
        if (v11)
        {
          while (1)
          {
            v15 = 0;
            v12 = [v10 readToOwnBuffer:&v15 size:-1];
            if (!v12)
            {
              break;
            }

            [(OISFUFileOutputStream *)v11 writeBuffer:v15 size:v12];
          }
        }
      }

      else
      {
        v11 = 0;
      }

      [v10 close];
      [(OISFUFileOutputStream *)v11 close];
    }

    else
    {
      v13 = v9;
      v15 = 0;
      v14 = [MEMORY[0x277CBEBC0] tsu_fileURLWithPath:v8];
      if (([v13 tsu_linkOrCopyItemAtURL:v14 toURL:objc_msgSend(MEMORY[0x277CBEBC0] error:{"tsu_fileURLWithPath:", a4), &v15}] & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] tsu_raiseWithError:v15];
      }
    }
  }
}

@end