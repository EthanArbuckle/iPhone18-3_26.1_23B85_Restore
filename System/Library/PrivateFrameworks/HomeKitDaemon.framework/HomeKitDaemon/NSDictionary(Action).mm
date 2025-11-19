@interface NSDictionary(Action)
+ (id)hmd_dictionaryWithActionExecutionError:()Action;
@end

@implementation NSDictionary(Action)

+ (id)hmd_dictionaryWithActionExecutionError:()Action
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = @"HM.genericErrorDataKey";
    v3 = encodeRootObjectForIncomingXPCMessage(a3, 0);
    v8 = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v9 = @"HM.genericSuccessDataKey";
    v10[0] = @"Success";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end