@interface ELSWhitelistEntry
- (ELSWhitelistEntry)initWithBundleIdentifier:(id)a3 parameterName:(id)a4 displayNameLocalizationKey:(id)a5 descriptionLocalizationKey:(id)a6 sensitiveInformationLocalizationKey:(id)a7 needsWAPIKeys:(BOOL)a8 requiresFollowup:(BOOL)a9 retry:(BOOL)a10 platforms:(id)a11;
@end

@implementation ELSWhitelistEntry

- (ELSWhitelistEntry)initWithBundleIdentifier:(id)a3 parameterName:(id)a4 displayNameLocalizationKey:(id)a5 descriptionLocalizationKey:(id)a6 sensitiveInformationLocalizationKey:(id)a7 needsWAPIKeys:(BOOL)a8 requiresFollowup:(BOOL)a9 retry:(BOOL)a10 platforms:(id)a11
{
  v11 = a8;
  v31 = a3;
  v30 = a4;
  v32 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a11;
  v33.receiver = self;
  v33.super_class = ELSWhitelistEntry;
  v21 = [(ELSWhitelistEntry *)&v33 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_bundleIdentifier, a3);
    objc_storeStrong(&v22->_parameterName, a4);
    objc_storeStrong(&v22->_platformAvailability, a11);
    if (v11 && MGGetBoolAnswer())
    {
      v23 = [v32 stringByAppendingString:@"_WAPI"];
      displayNameLocalizationKey = v22->_displayNameLocalizationKey;
      v22->_displayNameLocalizationKey = v23;

      v25 = [v18 stringByAppendingString:@"_WAPI"];
      descriptionLocalizationKey = v22->_descriptionLocalizationKey;
      v22->_descriptionLocalizationKey = v25;

      v27 = [v19 stringByAppendingString:@"_WAPI"];
    }

    else
    {
      objc_storeStrong(&v22->_displayNameLocalizationKey, a5);
      objc_storeStrong(&v22->_descriptionLocalizationKey, a6);
      v27 = v19;
    }

    sensitiveInformationLocalizationKey = v22->_sensitiveInformationLocalizationKey;
    v22->_sensitiveInformationLocalizationKey = v27;

    v22->_requiresFollowup = a9;
    v22->_retry = a10;
  }

  return v22;
}

@end