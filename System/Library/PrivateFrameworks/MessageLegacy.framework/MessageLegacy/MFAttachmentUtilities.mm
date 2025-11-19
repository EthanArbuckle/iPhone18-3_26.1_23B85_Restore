@interface MFAttachmentUtilities
+ (id)_temporaryDirectoryUniqueURL;
+ (id)temporaryDirectory;
+ (id)temporaryFileURLWithExtension:(id)a3;
+ (id)temporaryFileURLWithFileName:(id)a3;
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
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [objc_msgSend(a1 "temporaryDirectory")];
  if (!v4)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];
  if (![objc_msgSend(v5 "scheme")])
  {
    return 0;
  }

  [v3 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v7];
  return v5;
}

+ (id)temporaryFileURLWithExtension:(id)a3
{
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [a1 _temporaryDirectoryUniqueURL];
  v7 = [v6 path];
  v8 = [v7 stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"XXXXX.%@", a3)}];
  if (!v6)
  {
    return 0;
  }

  v9 = strdup([v8 fileSystemRepresentation]);
  if (mkstemps(v9, [a3 length] + 1) != -1)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    [v5 createFileAtPath:v10 contents:0 attributes:0];
    v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v10 isDirectory:0];
    if (!v9)
    {
      return v11;
    }

    goto LABEL_7;
  }

  [v5 removeItemAtPath:objc_msgSend(v6 error:{"path"), 0}];
  v11 = 0;
  if (v9)
  {
LABEL_7:
    free(v9);
  }

  return v11;
}

+ (id)temporaryFileURLWithFileName:(id)a3
{
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [a1 _temporaryDirectoryUniqueURL];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [objc_msgSend(v6 "path")];
  if (![v5 createFileAtPath:v8 contents:0 attributes:0])
  {
    [v5 removeItemAtPath:objc_msgSend(v7 error:{"path"), 0}];
    return 0;
  }

  v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v8 isDirectory:0];

  return v9;
}

@end