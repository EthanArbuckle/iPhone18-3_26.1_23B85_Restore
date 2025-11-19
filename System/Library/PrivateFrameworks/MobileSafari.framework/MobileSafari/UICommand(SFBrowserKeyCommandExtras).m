@interface UICommand(SFBrowserKeyCommandExtras)
- (__CFString)sf_commandSource;
@end

@implementation UICommand(SFBrowserKeyCommandExtras)

- (__CFString)sf_commandSource
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = @"keyboard shortcut";
  }

  else
  {
    v0 = @"context menu";
  }

  return v0;
}

@end