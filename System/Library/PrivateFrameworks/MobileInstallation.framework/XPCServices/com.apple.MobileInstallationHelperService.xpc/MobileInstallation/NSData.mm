@interface NSData
- (BOOL)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:(id)a3 error:(id *)a4;
@end

@implementation NSData

- (BOOL)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 fileSystemRepresentation];
  memset(&v26, 0, sizeof(v26));
  v8 = open(v7, 256);
  if (v8 < 0)
  {
    v14 = *__error();
    v15 = v14;
    strerror(v14);
    v13 = _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURLMatchingCurrentFileMetadata:error:]", 166, NSPOSIXErrorDomain, v15, 0, 0, @"open failed for %s : %s", v16, v7);
LABEL_6:
    v17 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v9 = v8;
  if (fstat(v8, &v26))
  {
    v10 = *__error();
    v11 = v10;
    strerror(v10);
    _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURLMatchingCurrentFileMetadata:error:]", 172, NSPOSIXErrorDomain, v11, 0, 0, @"fstat failed for %s : %s", v12, v7);
    v13 = LABEL_4:;
    close(v9);
    goto LABEL_6;
  }

  v20 = fcntl(v9, 63);
  if ((v20 & 0x80000000) != 0)
  {
    v22 = *__error();
    v23 = *__error();
    strerror(v22);
    _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURLMatchingCurrentFileMetadata:error:]", 180, NSPOSIXErrorDomain, v23, 0, 0, @"Failed to getclass of file %s: %s", v24, v7);
    goto LABEL_4;
  }

  v21 = v20;
  close(v9);
  v25 = 0;
  v17 = [(NSData *)self MI_writeAtomicallyToURL:v6 withMode:v26.st_mode owner:v26.st_uid group:v26.st_gid protectionClass:v21 error:&v25];
  v13 = v25;
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!v17)
  {
    v18 = v13;
    *a4 = v13;
  }

LABEL_9:

  return v17;
}

@end