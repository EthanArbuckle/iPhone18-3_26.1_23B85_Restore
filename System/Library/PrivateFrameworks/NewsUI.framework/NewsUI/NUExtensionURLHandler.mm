@interface NUExtensionURLHandler
- (NUExtensionURLHandler)initWithExtensionContext:(id)a3;
- (void)openURL:(id)a3;
- (void)openURL:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation NUExtensionURLHandler

- (NUExtensionURLHandler)initWithExtensionContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUExtensionURLHandler;
  v6 = [(NUExtensionURLHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionContext, a3);
  }

  return v7;
}

- (void)openURL:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(NUExtensionURLHandler *)self extensionContext];
  [v9 openURL:v8 completionHandler:v7];
}

- (void)openURL:(id)a3
{
  v4 = a3;
  v5 = [(NUExtensionURLHandler *)self extensionContext];
  [v5 openURL:v4 completionHandler:0];
}

@end