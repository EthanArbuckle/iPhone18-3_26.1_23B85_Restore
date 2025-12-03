@interface CNAutocompleteUIPreferences
+ (id)copyCompositionServicesPreferenceValueForKey:(id)key;
+ (void)setCompositionServicesPreferenceValue:(id)value forKey:(id)key;
@end

@implementation CNAutocompleteUIPreferences

+ (void)setCompositionServicesPreferenceValue:(id)value forKey:(id)key
{
  value = value;
  keyCopy = key;
  v6 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v6)
  {
    v7 = v6;
    CFPreferencesSetAppValue(keyCopy, value, v6);
    CFPreferencesAppSynchronize(v7);
    CFRelease(v7);
  }
}

+ (id)copyCompositionServicesPreferenceValueForKey:(id)key
{
  keyCopy = key;
  v4 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v4)
  {
    v5 = v4;
    v6 = CFPreferencesCopyAppValue(keyCopy, v4);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end