@interface IPInstallableState
- (IPInstallableState)initWithStateSource:(id)a3 isInstalling:(BOOL)a4;
@end

@implementation IPInstallableState

- (IPInstallableState)initWithStateSource:(id)a3 isInstalling:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IPInstallableState;
  v8 = [(IPInstallableState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_source, a3);
    v9->_isInstalling = a4;
  }

  return v9;
}

@end