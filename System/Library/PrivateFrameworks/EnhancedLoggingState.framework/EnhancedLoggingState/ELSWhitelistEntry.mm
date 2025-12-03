@interface ELSWhitelistEntry
- (ELSWhitelistEntry)initWithBundleIdentifier:(id)identifier parameterName:(id)name displayNameLocalizationKey:(id)key descriptionLocalizationKey:(id)localizationKey sensitiveInformationLocalizationKey:(id)informationLocalizationKey needsWAPIKeys:(BOOL)keys requiresFollowup:(BOOL)followup retry:(BOOL)self0 platforms:(id)self1;
@end

@implementation ELSWhitelistEntry

- (ELSWhitelistEntry)initWithBundleIdentifier:(id)identifier parameterName:(id)name displayNameLocalizationKey:(id)key descriptionLocalizationKey:(id)localizationKey sensitiveInformationLocalizationKey:(id)informationLocalizationKey needsWAPIKeys:(BOOL)keys requiresFollowup:(BOOL)followup retry:(BOOL)self0 platforms:(id)self1
{
  keysCopy = keys;
  identifierCopy = identifier;
  nameCopy = name;
  keyCopy = key;
  localizationKeyCopy = localizationKey;
  informationLocalizationKeyCopy = informationLocalizationKey;
  platformsCopy = platforms;
  v33.receiver = self;
  v33.super_class = ELSWhitelistEntry;
  v21 = [(ELSWhitelistEntry *)&v33 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_bundleIdentifier, identifier);
    objc_storeStrong(&v22->_parameterName, name);
    objc_storeStrong(&v22->_platformAvailability, platforms);
    if (keysCopy && MGGetBoolAnswer())
    {
      v23 = [keyCopy stringByAppendingString:@"_WAPI"];
      displayNameLocalizationKey = v22->_displayNameLocalizationKey;
      v22->_displayNameLocalizationKey = v23;

      v25 = [localizationKeyCopy stringByAppendingString:@"_WAPI"];
      descriptionLocalizationKey = v22->_descriptionLocalizationKey;
      v22->_descriptionLocalizationKey = v25;

      v27 = [informationLocalizationKeyCopy stringByAppendingString:@"_WAPI"];
    }

    else
    {
      objc_storeStrong(&v22->_displayNameLocalizationKey, key);
      objc_storeStrong(&v22->_descriptionLocalizationKey, localizationKey);
      v27 = informationLocalizationKeyCopy;
    }

    sensitiveInformationLocalizationKey = v22->_sensitiveInformationLocalizationKey;
    v22->_sensitiveInformationLocalizationKey = v27;

    v22->_requiresFollowup = followup;
    v22->_retry = retry;
  }

  return v22;
}

@end