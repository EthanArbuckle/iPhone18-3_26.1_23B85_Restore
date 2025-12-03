@interface HMDHPSAPIConformanceProviding
+ (BOOL)objectRespondsToHPSBooleanSettingProtocolMethods:(id)methods;
+ (BOOL)objectRespondsToHPSConstrainedNumberSettingProtocolMethods:(id)methods;
+ (BOOL)objectRespondsToHPSLanguageValueProtocolMethods:(id)methods;
+ (BOOL)objectRespondsToHPSNumberSettingProtocolMethods:(id)methods;
+ (BOOL)objectRespondsToHPSSiriAvailableLanguagesProtocolMethods:(id)methods;
+ (BOOL)objectRespondsToHPSSiriLanguageSettingProtocolMethods:(id)methods;
+ (BOOL)objectRespondsToHPSStringSettingProtocolMethods:(id)methods;
@end

@implementation HMDHPSAPIConformanceProviding

+ (BOOL)objectRespondsToHPSConstrainedNumberSettingProtocolMethods:(id)methods
{
  methodsCopy = methods;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = [self objectRespondsToHPSNumberSettingProtocolMethods:methodsCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)objectRespondsToHPSNumberSettingProtocolMethods:(id)methods
{
  methodsCopy = methods;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = [self objectRespondsToHPSSettingProtocolMethods:methodsCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)objectRespondsToHPSBooleanSettingProtocolMethods:(id)methods
{
  methodsCopy = methods;
  if (objc_opt_respondsToSelector())
  {
    v5 = [self objectRespondsToHPSSettingProtocolMethods:methodsCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)objectRespondsToHPSStringSettingProtocolMethods:(id)methods
{
  methodsCopy = methods;
  if (objc_opt_respondsToSelector())
  {
    v5 = [self objectRespondsToHPSSettingProtocolMethods:methodsCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)objectRespondsToHPSSiriLanguageSettingProtocolMethods:(id)methods
{
  methodsCopy = methods;
  if (objc_opt_respondsToSelector())
  {
    v5 = [self objectRespondsToHPSSettingProtocolMethods:methodsCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)objectRespondsToHPSLanguageValueProtocolMethods:(id)methods
{
  methodsCopy = methods;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

+ (BOOL)objectRespondsToHPSSiriAvailableLanguagesProtocolMethods:(id)methods
{
  methodsCopy = methods;
  if (objc_opt_respondsToSelector())
  {
    v5 = [self objectRespondsToHPSSettingProtocolMethods:methodsCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end