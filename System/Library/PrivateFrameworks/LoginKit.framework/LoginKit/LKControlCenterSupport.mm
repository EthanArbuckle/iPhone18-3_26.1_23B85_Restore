@interface LKControlCenterSupport
+ (void)enableControlCenterModule:(id)a3 completionHandler:(id)a4;
@end

@implementation LKControlCenterSupport

+ (void)enableControlCenterModule:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CFC848];
  v7 = a3;
  v8 = [[v6 alloc] initWithIntent:2 moduleIdentifier:v7 containerBundleIdentifier:@"com.apple.springboard" moduleSize:0];

  v9 = [MEMORY[0x277CFC838] sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__LKControlCenterSupport_enableControlCenterModule_completionHandler___block_invoke;
  v11[3] = &unk_279826400;
  v12 = v5;
  v10 = v5;
  [v9 handleIconElementRequest:v8 completionHandler:v11];
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