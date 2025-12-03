@interface NUExtensionURLHandler
- (NUExtensionURLHandler)initWithExtensionContext:(id)context;
- (void)openURL:(id)l;
- (void)openURL:(id)l options:(id)options completion:(id)completion;
@end

@implementation NUExtensionURLHandler

- (NUExtensionURLHandler)initWithExtensionContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = NUExtensionURLHandler;
  v6 = [(NUExtensionURLHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionContext, context);
  }

  return v7;
}

- (void)openURL:(id)l options:(id)options completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  extensionContext = [(NUExtensionURLHandler *)self extensionContext];
  [extensionContext openURL:lCopy completionHandler:completionCopy];
}

- (void)openURL:(id)l
{
  lCopy = l;
  extensionContext = [(NUExtensionURLHandler *)self extensionContext];
  [extensionContext openURL:lCopy completionHandler:0];
}

@end