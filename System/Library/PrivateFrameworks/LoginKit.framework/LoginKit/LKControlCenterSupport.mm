@interface LKControlCenterSupport
+ (void)enableControlCenterModule:(id)module completionHandler:(id)handler;
@end

@implementation LKControlCenterSupport

+ (void)enableControlCenterModule:(id)module completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = MEMORY[0x277CFC848];
  moduleCopy = module;
  v8 = [[v6 alloc] initWithIntent:2 moduleIdentifier:moduleCopy containerBundleIdentifier:@"com.apple.springboard" moduleSize:0];

  mEMORY[0x277CFC838] = [MEMORY[0x277CFC838] sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__LKControlCenterSupport_enableControlCenterModule_completionHandler___block_invoke;
  v11[3] = &unk_279826400;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [mEMORY[0x277CFC838] handleIconElementRequest:v8 completionHandler:v11];
}

uint64_t __70__LKControlCenterSupport_enableControlCenterModule_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end