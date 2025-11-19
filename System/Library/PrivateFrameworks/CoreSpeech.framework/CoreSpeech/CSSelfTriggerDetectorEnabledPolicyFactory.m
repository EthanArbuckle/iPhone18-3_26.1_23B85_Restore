@interface CSSelfTriggerDetectorEnabledPolicyFactory
+ (id)selfTriggerDetectorEnabledPolicy;
+ (id)selfTriggerDetectorEnabledPolicyWithAudioSourceType:(unint64_t)a3;
+ (id)studioDisplaySelfTriggerEnabledPolicy;
@end

@implementation CSSelfTriggerDetectorEnabledPolicyFactory

+ (id)selfTriggerDetectorEnabledPolicyWithAudioSourceType:(unint64_t)a3
{
  if (a3 != 1)
  {
    if (!a3)
    {
      v3 = +[CSSelfTriggerDetectorEnabledPolicyFactory selfTriggerDetectorEnabledPolicy];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!+[CSUtils supportAudioTappingSelfTrigger])
  {
    goto LABEL_9;
  }

  if (CSIsIOS() && (+[CSUtils isDarwinOS]& 1) == 0)
  {
    v4 = CSSelfTriggerDetectorUseAudioTapEnabledPolicyIOS;
    goto LABEL_14;
  }

  if (!+[CSUtils isDarwinOS])
  {
LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  v4 = CSSelfTriggerDetectorEnabledPolicyDarwin;
LABEL_14:
  v3 = objc_alloc_init(v4);
LABEL_10:

  return v3;
}

+ (id)studioDisplaySelfTriggerEnabledPolicy
{
  if (+[CSUtils supportRemoteDarwinVoiceTrigger])
  {
    v2 = objc_alloc_init(CSiOSHostStudioDisplaySelfTriggerEnabledPolicy);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)selfTriggerDetectorEnabledPolicy
{
  v2 = +[CSUtils isDarwinOS];
  v3 = off_10024CBB8;
  if (!v2)
  {
    v3 = off_10024CBC0;
  }

  v4 = objc_alloc_init(*v3);

  return v4;
}

@end