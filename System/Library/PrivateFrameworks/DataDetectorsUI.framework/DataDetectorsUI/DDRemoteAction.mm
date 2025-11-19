@interface DDRemoteAction
+ (id)viewControllerProviderClass;
- (id)createMenuHeaderView;
- (id)createViewController;
- (id)previewActions;
@end

@implementation DDRemoteAction

- (id)createViewController
{
  v3 = [objc_opt_class() viewControllerProviderClass];

  if (v3)
  {
    v4 = [[DDRemoteActionManagerViewController alloc] initWithAction:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)viewControllerProviderClass
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"DDRemoteAction.m" lineNumber:73 description:@"This method should never be called in the class DDRemoteAction. This method should be overriden."];

  return 0;
}

- (id)previewActions
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"DDRemoteAction.m" lineNumber:78 description:@"This method should never be called in the class DDRemoteAction. This method should be overriden."];

  return 0;
}

- (id)createMenuHeaderView
{
  v3 = [objc_opt_class() menuHeaderViewProviderClass];

  if (v3)
  {
    v4 = [[DDRemoteHeaderView alloc] initWithAction:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end