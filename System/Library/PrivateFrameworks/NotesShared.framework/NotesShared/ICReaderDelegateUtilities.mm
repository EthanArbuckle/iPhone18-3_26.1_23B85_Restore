@interface ICReaderDelegateUtilities
+ (id)fileWrapperForURL:(id)l;
+ (id)sharedInstance;
- (id)fileWrapperForURL:(id)l;
@end

@implementation ICReaderDelegateUtilities

+ (id)fileWrapperForURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];
  v6 = [lowercaseString isEqualToString:@"cid"];

  if (v6)
  {
    v7 = [[ICLegacyAttachmentFileWrapper alloc] initWithCIDURL:lCopy];
LABEL_10:
    v11 = v7;
    goto LABEL_11;
  }

  if (![lCopy isFileURL])
  {
    v7 = [[ICRemoteFileWrapper alloc] initWithRemoteURL:lCopy];
    goto LABEL_10;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  absoluteString = [lCopy absoluteString];
  v10 = [defaultManager isReadableFileAtPath:absoluteString];

  if (!v10)
  {
    v7 = [[ICLocalFileWrapper alloc] initWithLocalURL:lCopy];
    goto LABEL_10;
  }

  v15 = 0;
  v11 = [objc_alloc(MEMORY[0x277CCAA20]) initWithURL:lCopy options:0 error:&v15];
  v12 = v15;
  v13 = v12;
  if (v12)
  {
    NSLog(&cfstr_ErrorCreatingF.isa, lCopy, v12);

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

- (id)fileWrapperForURL:(id)l
{
  lCopy = l;
  v4 = [objc_opt_class() fileWrapperForURL:lCopy];

  return v4;
}

@end