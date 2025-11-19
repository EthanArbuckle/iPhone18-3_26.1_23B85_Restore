@interface CSRemoteXPCVoiceTriggerEnabledPolicy
+ (id)remoteDarwinVoiceTriggerEnabledPolicy;
@end

@implementation CSRemoteXPCVoiceTriggerEnabledPolicy

+ (id)remoteDarwinVoiceTriggerEnabledPolicy
{
  if (CSIsOSX())
  {
    v2 = objc_alloc_init(CSVoiceTriggerEnabledPolicyMacWithRemoteDarwin);
  }

  else if (+[CSUtils supportRemoteDarwinVoiceTrigger])
  {
    v2 = +[CSBuiltInVoiceTriggerEnabledPolicy builtInVoiceTriggerEnabledPolicy];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end