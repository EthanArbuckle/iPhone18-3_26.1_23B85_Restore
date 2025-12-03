@interface OISFUPackageInputBundle
- (OISFUPackageInputBundle)initWithPath:(id)path;
- (id)_existingPathForEntryName:(id)name isGz:(BOOL *)gz;
- (id)bufferedInputStreamForEntry:(id)entry;
- (id)inputStreamForEntry:(id)entry;
- (int64_t)lengthOfEntry:(id)entry;
- (unsigned)crc32ForEntry:(id)entry;
- (void)copyEntry:(id)entry toFile:(id)file;
- (void)dealloc;
@end

@implementation OISFUPackageInputBundle

- (OISFUPackageInputBundle)initWithPath:(id)path
{
  v6.receiver = self;
  v6.super_class = OISFUPackageInputBundle;
  v4 = [(OISFUPackageInputBundle *)&v6 init];
  if (v4)
  {
    v4->_rootPath = [path copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OISFUPackageInputBundle;
  [(OISFUPackageInputBundle *)&v3 dealloc];
}

- (id)_existingPathForEntryName:(id)name isGz:(BOOL *)gz
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [(NSString *)self->_rootPath stringByAppendingPathComponent:name];
  if ([defaultManager fileExistsAtPath:v8])
  {
    LOBYTE(v9) = 0;
    if (!gz)
    {
      return v8;
    }

    goto LABEL_7;
  }

  v8 = [(NSString *)v8 stringByAppendingPathExtension:@"gz"];
  v9 = [defaultManager fileExistsAtPath:v8];
  if (!v9)
  {
    v8 = 0;
  }

  if (gz)
  {
LABEL_7:
    *gz = v9;
  }

  return v8;
}

- (id)inputStreamForEntry:(id)entry
{
  v5 = 0;
  v3 = [(OISFUPackageInputBundle *)self _existingPathForEntryName:entry isGz:&v5];
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

- (id)bufferedInputStreamForEntry:(id)entry
{
  v3 = [(OISFUPackageInputBundle *)self inputStreamForEntry:entry];
  if (v3)
  {
    v3 = [[OISFUBufferedInputStream alloc] initWithStream:v3];
  }

  return v3;
}

- (int64_t)lengthOfEntry:(id)entry
{
  v12 = 0;
  v5 = [(OISFUPackageInputBundle *)self _existingPathForEntryName:entry isGz:&v12];
  if (!v5)
  {
    return 0;
  }

  if ((v12 & 1) == 0)
  {
    return [objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OISFUPackageInputBundle lengthOfEntry:]"];
  +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/SFUInputBundle.m"], 152, 0, "Asked for the length of gzipped entry %@. This is slow.", entry);
  +[OITSUAssertionHandler logBacktraceThrottled];
  v7 = [(OISFUPackageInputBundle *)self bufferedInputStreamForEntry:entry];
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

- (unsigned)crc32ForEntry:(id)entry
{
  v4 = [(OISFUPackageInputBundle *)self bufferedInputStreamForEntry:entry];
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

- (void)copyEntry:(id)entry toFile:(id)file
{
  v16 = 0;
  v7 = [(OISFUPackageInputBundle *)self _existingPathForEntryName:entry isGz:&v16];
  if (v7)
  {
    v8 = v7;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (v16)
    {
      v10 = [(OISFUPackageInputBundle *)self bufferedInputStreamForEntry:entry];
      if (v10)
      {
        v11 = [[OISFUFileOutputStream alloc] initWithPath:file];
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
      v13 = defaultManager;
      v15 = 0;
      v14 = [MEMORY[0x277CBEBC0] tsu_fileURLWithPath:v8];
      if (([v13 tsu_linkOrCopyItemAtURL:v14 toURL:objc_msgSend(MEMORY[0x277CBEBC0] error:{"tsu_fileURLWithPath:", file), &v15}] & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] tsu_raiseWithError:v15];
      }
    }
  }
}

@end