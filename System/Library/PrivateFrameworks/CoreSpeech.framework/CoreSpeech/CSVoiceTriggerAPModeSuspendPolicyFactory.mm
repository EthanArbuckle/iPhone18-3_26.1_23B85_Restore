@interface CSVoiceTriggerAPModeSuspendPolicyFactory
+ (id)policy;
@end

@implementation CSVoiceTriggerAPModeSuspendPolicyFactory

+ (id)policy
{
  v2 = +[CSUtils isDarwinOS];
  v3 = CSAlwaysDisabledPolicy_ptr;
  if (!v2)
  {
    v3 = off_10024CBC8;
  }

  v4 = objc_alloc_init(*v3);

  return v4;
}

@end