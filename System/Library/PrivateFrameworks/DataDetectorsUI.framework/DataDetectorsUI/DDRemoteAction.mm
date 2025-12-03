@interface DDRemoteAction
+ (id)viewControllerProviderClass;
- (id)createMenuHeaderView;
- (id)createViewController;
- (id)previewActions;
@end

@implementation DDRemoteAction

- (id)createViewController
{
  viewControllerProviderClass = [objc_opt_class() viewControllerProviderClass];

  if (viewControllerProviderClass)
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DDRemoteAction.m" lineNumber:73 description:@"This method should never be called in the class DDRemoteAction. This method should be overriden."];

  return 0;
}

- (id)previewActions
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DDRemoteAction.m" lineNumber:78 description:@"This method should never be called in the class DDRemoteAction. This method should be overriden."];

  return 0;
}

- (id)createMenuHeaderView
{
  menuHeaderViewProviderClass = [objc_opt_class() menuHeaderViewProviderClass];

  if (menuHeaderViewProviderClass)
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