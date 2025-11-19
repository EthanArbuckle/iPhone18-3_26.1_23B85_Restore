@interface IXAppInstallCoordinator
- (void)updateProgress:(double)a3;
@end

@implementation IXAppInstallCoordinator

- (void)updateProgress:(double)a3
{
  if ([(IXAppInstallCoordinator *)self conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithUserDataPromise])
  {
    v5 = [(IXAppInstallCoordinator *)self userDataPromiseWithError:0];
    if (v5)
    {
      v6 = v5;
      [v5 setPercentComplete:a3];
      v5 = v6;
    }
  }
}

@end