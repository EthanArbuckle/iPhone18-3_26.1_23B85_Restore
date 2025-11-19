@interface ICReaderDelegateUtilities
+ (id)fileWrapperForURL:(id)a3;
+ (id)sharedInstance;
- (id)fileWrapperForURL:(id)a3;
@end

@implementation ICReaderDelegateUtilities

+ (id)fileWrapperForURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  v5 = [v4 lowercaseString];
  v6 = [v5 isEqualToString:@"cid"];

  if (v6)
  {
    v7 = [[ICLegacyAttachmentFileWrapper alloc] initWithCIDURL:v3];
LABEL_10:
    v11 = v7;
    goto LABEL_11;
  }

  if (![v3 isFileURL])
  {
    v7 = [[ICRemoteFileWrapper alloc] initWithRemoteURL:v3];
    goto LABEL_10;
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v3 absoluteString];
  v10 = [v8 isReadableFileAtPath:v9];

  if (!v10)
  {
    v7 = [[ICLocalFileWrapper alloc] initWithLocalURL:v3];
    goto LABEL_10;
  }

  v15 = 0;
  v11 = [objc_alloc(MEMORY[0x277CCAA20]) initWithURL:v3 options:0 error:&v15];
  v12 = v15;
  v13 = v12;
  if (v12)
  {
    NSLog(&cfstr_ErrorCreatingF.isa, v3, v12);

    v11 = 0;
  }

LABEL_11:

  return v11;
}

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[ICReaderDelegateUtilities sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __43__ICReaderDelegateUtilities_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ICReaderDelegateUtilities);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

- (id)fileWrapperForURL:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() fileWrapperForURL:v3];

  return v4;
}

@end