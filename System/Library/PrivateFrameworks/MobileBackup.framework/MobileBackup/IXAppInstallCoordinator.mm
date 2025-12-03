@interface IXAppInstallCoordinator
- (void)updateProgress:(double)progress;
@end

@implementation IXAppInstallCoordinator

- (void)updateProgress:(double)progress
{
  if ([(IXAppInstallCoordinator *)self conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithUserDataPromise])
  {
    v5 = [(IXAppInstallCoordinator *)self userDataPromiseWithError:0];
    if (v5)
    {
      v6 = v5;
      [v5 setPercentComplete:progress];
      v5 = v6;
    }
  }
}

@end