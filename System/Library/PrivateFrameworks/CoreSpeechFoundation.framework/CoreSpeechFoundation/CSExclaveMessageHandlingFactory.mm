@interface CSExclaveMessageHandlingFactory
+ (id)commonExclaveMessageHandler;
+ (id)exclaveSecondPassVoiceTriggerAnalyzerForFirstPassSource:(unint64_t)a3;
@end

@implementation CSExclaveMessageHandlingFactory

+ (id)commonExclaveMessageHandler
{
  if (+[CSUtils isExclaveHardware])
  {
    v2 = +[CSUtils supportsSystemDaemon];
    v3 = off_1E8659940;
    if (!v2)
    {
      v3 = off_1E8659830;
    }

    v4 = [(__objc2_class *)*v3 sharedClient];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)exclaveSecondPassVoiceTriggerAnalyzerForFirstPassSource:(unint64_t)a3
{
  if (+[CSUtils isExclaveHardware])
  {
    v4 = a3 - 11 > 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[CSExclaveMessageHandlingFactory commonExclaveMessageHandler];
  }

  return v5;
}

@end