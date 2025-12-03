@interface _UIRemoteViewController(Compatibility)
+ (void)requestViewControllerWithParameters:()Compatibility connectionHandler:;
@end

@implementation _UIRemoteViewController(Compatibility)

+ (void)requestViewControllerWithParameters:()Compatibility connectionHandler:
{
  v10 = a4;
  v6 = a3;
  serviceViewControllerClassName = [v6 serviceViewControllerClassName];
  serviceBundleIdentifier = [v6 serviceBundleIdentifier];

  v9 = [self requestViewController:serviceViewControllerClassName fromServiceWithBundleIdentifier:serviceBundleIdentifier connectionHandler:v10];
}

@end