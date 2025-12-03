@interface MFAttachmentUtilities
+ (id)_temporaryDirectoryUniqueURL;
+ (id)temporaryDirectory;
+ (id)temporaryFileURLWithExtension:(id)extension;
+ (id)temporaryFileURLWithFileName:(id)name;
@end

@implementation MFAttachmentUtilities

+ (id)temporaryDirectory
{
  v2 = NSTemporaryDirectory();

  return [(NSString *)v2 stringByAppendingPathComponent:@"/MobileMailAttachments"];
}

+ (id)_temporaryDirectoryUniqueURL
{
  v7 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [objc_msgSend(self "temporaryDirectory")];
  if (!v4)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];
  if (![objc_msgSend(v5 "scheme")])
  {
    return 0;
  }

  [defaultManager createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v7];
  return v5;
}

+ (id)temporaryFileURLWithExtension:(id)extension
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _temporaryDirectoryUniqueURL = [self _temporaryDirectoryUniqueURL];
  path = [_temporaryDirectoryUniqueURL path];
  v8 = [path stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"XXXXX.%@", extension)}];
  if (!_temporaryDirectoryUniqueURL)
  {
    return 0;
  }

  v9 = strdup([v8 fileSystemRepresentation]);
  if (mkstemps(v9, [extension length] + 1) != -1)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    [defaultManager createFileAtPath:v10 contents:0 attributes:0];
    v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v10 isDirectory:0];
    if (!v9)
    {
      return v11;
    }

    goto LABEL_7;
  }

  [defaultManager removeItemAtPath:objc_msgSend(_temporaryDirectoryUniqueURL error:{"path"), 0}];
  v11 = 0;
  if (v9)
  {
LABEL_7:
    free(v9);
  }

  return v11;
}

+ (id)temporaryFileURLWithFileName:(id)name
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _temporaryDirectoryUniqueURL = [self _temporaryDirectoryUniqueURL];
  if (!_temporaryDirectoryUniqueURL)
  {
    return 0;
  }

  v7 = _temporaryDirectoryUniqueURL;
  v8 = [objc_msgSend(_temporaryDirectoryUniqueURL "path")];
  if (![defaultManager createFileAtPath:v8 contents:0 attributes:0])
  {
    [defaultManager removeItemAtPath:objc_msgSend(v7 error:{"path"), 0}];
    return 0;
  }

  v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v8 isDirectory:0];

  return v9;
}

@end