@interface CSBuiltInVoiceTriggerEnabledPolicy
+ (id)builtInVoiceTriggerEnabledPolicy;
@end

@implementation CSBuiltInVoiceTriggerEnabledPolicy

+ (id)builtInVoiceTriggerEnabledPolicy
{
  if ((+[CSUtils isDarwinOS]& 1) != 0)
  {
    v2 = off_10024CBD8;
  }

  else if (CSIsHorseman())
  {
    v2 = off_10024CBE0;
  }

  else
  {
    v3 = CSHasAOP();
    v2 = off_10024CBE8;
    if (v3)
    {
      v2 = off_10024CBD0;
    }
  }

  v4 = objc_alloc_init(*v2);

  return v4;
}

@end