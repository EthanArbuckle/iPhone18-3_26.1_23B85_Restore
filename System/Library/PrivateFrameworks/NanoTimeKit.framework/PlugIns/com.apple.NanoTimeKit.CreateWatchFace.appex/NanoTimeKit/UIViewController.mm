@interface UIViewController
- (id)ntke_cancelExtensionBarButton;
- (void)_ntke_cancelExtension;
@end

@implementation UIViewController

- (id)ntke_cancelExtensionBarButton
{
  v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_ntke_cancelExtension"];

  return v2;
}

- (void)_ntke_cancelExtension
{
  extensionContext = [(UIViewController *)self extensionContext];
  v2 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  [extensionContext cancelRequestWithError:v2];
}

@end