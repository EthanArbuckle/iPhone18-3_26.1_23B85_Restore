@interface IPInstallableState
- (IPInstallableState)initWithStateSource:(id)source isInstalling:(BOOL)installing;
@end

@implementation IPInstallableState

- (IPInstallableState)initWithStateSource:(id)source isInstalling:(BOOL)installing
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = IPInstallableState;
  v8 = [(IPInstallableState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_source, source);
    v9->_isInstalling = installing;
  }

  return v9;
}

@end