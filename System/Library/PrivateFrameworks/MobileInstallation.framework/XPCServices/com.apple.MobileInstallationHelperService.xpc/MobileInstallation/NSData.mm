@interface NSData
- (BOOL)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:(id)metadata error:(id *)error;
@end

@implementation NSData

- (BOOL)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  fileSystemRepresentation = [metadataCopy fileSystemRepresentation];
  memset(&v26, 0, sizeof(v26));
  v8 = open(fileSystemRepresentation, 256);
  if (v8 < 0)
  {
    v14 = *__error();
    v15 = v14;
    strerror(v14);
    v13 = _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURLMatchingCurrentFileMetadata:error:]", 166, NSPOSIXErrorDomain, v15, 0, 0, @"open failed for %s : %s", v16, fileSystemRepresentation);
LABEL_6:
    v17 = 0;
    if (!error)
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
    _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURLMatchingCurrentFileMetadata:error:]", 172, NSPOSIXErrorDomain, v11, 0, 0, @"fstat failed for %s : %s", v12, fileSystemRepresentation);
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
    _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURLMatchingCurrentFileMetadata:error:]", 180, NSPOSIXErrorDomain, v23, 0, 0, @"Failed to getclass of file %s: %s", v24, fileSystemRepresentation);
    goto LABEL_4;
  }

  v21 = v20;
  close(v9);
  v25 = 0;
  v17 = [(NSData *)self MI_writeAtomicallyToURL:metadataCopy withMode:v26.st_mode owner:v26.st_uid group:v26.st_gid protectionClass:v21 error:&v25];
  v13 = v25;
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!v17)
  {
    v18 = v13;
    *error = v13;
  }

LABEL_9:

  return v17;
}

@end