@interface Gestalt
+ (BOOL)hasAppleNeuralEngine;
+ (BOOL)internalInstall;
+ (BOOL)jasperAvailable;
+ (id)stringAnswerToQuestion:(__CFString *)a3;
@end

@implementation Gestalt

+ (BOOL)internalInstall
{
  if (internalInstall_onceToken != -1)
  {
    +[Gestalt internalInstall];
  }

  return internalInstall_internalInstall;
}

uint64_t __26__Gestalt_internalInstall__block_invoke()
{
  result = MGGetBoolAnswer();
  internalInstall_internalInstall = result;
  return result;
}

+ (BOOL)jasperAvailable
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__Gestalt_jasperAvailable__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (jasperAvailable_onceToken != -1)
  {
    dispatch_once(&jasperAvailable_onceToken, block);
  }

  return jasperAvailable_jasperAvailable;
}

uint64_t __26__Gestalt_jasperAvailable__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stringAnswerToQuestion:@"dJvRNnysMoubdy0ZCK2aRQ"];
  if (v1)
  {
    LOBYTE(v1) = [MEMORY[0x277CE53B0] supportsFrameSemantics:8];
  }

  jasperAvailable_jasperAvailable = v1;

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)hasAppleNeuralEngine
{
  if (hasAppleNeuralEngine_onceToken != -1)
  {
    +[Gestalt hasAppleNeuralEngine];
  }

  return hasAppleNeuralEngine_hasAppleNeuralEngine;
}

uint64_t __31__Gestalt_hasAppleNeuralEngine__block_invoke()
{
  result = MGGetBoolAnswer();
  hasAppleNeuralEngine_hasAppleNeuralEngine = result;
  return result;
}

+ (id)stringAnswerToQuestion:(__CFString *)a3
{
  v3 = MGGetStringAnswer();

  return v3;
}

@end