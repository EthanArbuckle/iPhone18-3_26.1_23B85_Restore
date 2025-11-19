@interface HMDSBSRemoteAlertHandleProvider
- (id)createRemoteAlertHandleWithServiceName:(id)a3 viewControllerClassName:(id)a4 userInfo:(id)a5;
@end

@implementation HMDSBSRemoteAlertHandleProvider

- (id)createRemoteAlertHandleWithServiceName:(id)a3 viewControllerClassName:(id)a4 userInfo:(id)a5
{
  v7 = MEMORY[0x277D66BD8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithServiceName:v10 viewControllerClassName:v9];

  v12 = objc_alloc_init(MEMORY[0x277D66BD0]);
  [v12 setUserInfo:v8];

  v13 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v11 configurationContext:v12];

  return v13;
}

@end