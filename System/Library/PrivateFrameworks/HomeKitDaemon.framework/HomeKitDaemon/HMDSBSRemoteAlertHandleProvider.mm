@interface HMDSBSRemoteAlertHandleProvider
- (id)createRemoteAlertHandleWithServiceName:(id)name viewControllerClassName:(id)className userInfo:(id)info;
@end

@implementation HMDSBSRemoteAlertHandleProvider

- (id)createRemoteAlertHandleWithServiceName:(id)name viewControllerClassName:(id)className userInfo:(id)info
{
  v7 = MEMORY[0x277D66BD8];
  infoCopy = info;
  classNameCopy = className;
  nameCopy = name;
  v11 = [[v7 alloc] initWithServiceName:nameCopy viewControllerClassName:classNameCopy];

  v12 = objc_alloc_init(MEMORY[0x277D66BD0]);
  [v12 setUserInfo:infoCopy];

  v13 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v11 configurationContext:v12];

  return v13;
}

@end