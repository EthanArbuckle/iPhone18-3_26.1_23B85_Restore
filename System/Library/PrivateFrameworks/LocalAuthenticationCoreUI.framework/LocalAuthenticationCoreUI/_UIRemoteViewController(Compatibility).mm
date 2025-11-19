@interface _UIRemoteViewController(Compatibility)
+ (void)requestViewControllerWithParameters:()Compatibility connectionHandler:;
@end

@implementation _UIRemoteViewController(Compatibility)

+ (void)requestViewControllerWithParameters:()Compatibility connectionHandler:
{
  v10 = a4;
  v6 = a3;
  v7 = [v6 serviceViewControllerClassName];
  v8 = [v6 serviceBundleIdentifier];

  v9 = [a1 requestViewController:v7 fromServiceWithBundleIdentifier:v8 connectionHandler:v10];
}

@end