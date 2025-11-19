@interface CNAutocompleteUIPreferences
+ (id)copyCompositionServicesPreferenceValueForKey:(id)a3;
+ (void)setCompositionServicesPreferenceValue:(id)a3 forKey:(id)a4;
@end

@implementation CNAutocompleteUIPreferences

+ (void)setCompositionServicesPreferenceValue:(id)a3 forKey:(id)a4
{
  value = a3;
  v5 = a4;
  v6 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v6)
  {
    v7 = v6;
    CFPreferencesSetAppValue(v5, value, v6);
    CFPreferencesAppSynchronize(v7);
    CFRelease(v7);
  }
}

+ (id)copyCompositionServicesPreferenceValueForKey:(id)a3
{
  v3 = a3;
  v4 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v4)
  {
    v5 = v4;
    v6 = CFPreferencesCopyAppValue(v3, v4);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end