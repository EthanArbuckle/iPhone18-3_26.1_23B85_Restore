@interface CCSModuleMetadata
+ (id)_requiredCapabilitiesForInfoDictionary:(id)dictionary;
+ (id)_requiredIncapabilitiesForInfoDictionary:(id)dictionary;
+ (id)_supportedDeviceFamiliesForBundleInfoDictionary:(id)dictionary;
+ (id)metadataForBundleAtURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (id)_initWithModuleIdentifier:(id)identifier supportedDeviceFamilies:(id)families requiredDeviceCapabilities:(id)capabilities requiredDeviceIncapabilities:(id)incapabilities associatedBundleIdentifier:(id)bundleIdentifier associatedBundleMinimumVersion:(id)version visibilityPreference:(unint64_t)preference moduleBundleURL:(id)self0;
- (id)description;
- (unint64_t)hash;
@end

@implementation CCSModuleMetadata

+ (id)metadataForBundleAtURL:(id)l
{
  lCopy = l;
  v5 = CFBundleCopyInfoDictionaryInDirectory(lCopy);
  v6 = [(__CFDictionary *)v5 bs_safeObjectForKey:*MEMORY[0x277CBED38] ofType:objc_opt_class()];
  if (v6)
  {
    v7 = [self _supportedDeviceFamiliesForBundleInfoDictionary:v5];
    v8 = [self _requiredCapabilitiesForInfoDictionary:v5];
    v9 = [self _requiredIncapabilitiesForInfoDictionary:v5];
    v10 = [(__CFDictionary *)v5 bs_safeObjectForKey:@"CCAssociatedBundleIdentifier" ofType:objc_opt_class()];
    v11 = [(__CFDictionary *)v5 bs_safeObjectForKey:@"CCAssociatedBundleMinimumVersion" ofType:objc_opt_class()];
    v12 = [[self alloc] _initWithModuleIdentifier:v6 supportedDeviceFamilies:v7 requiredDeviceCapabilities:v8 requiredDeviceIncapabilities:v9 associatedBundleIdentifier:v10 associatedBundleMinimumVersion:v11 visibilityPreference:CCSVisibilityPreferenceForBundleInfoDictionary(v5) moduleBundleURL:lCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_supportedDeviceFamiliesForBundleInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy bs_safeObjectForKey:@"UIDeviceFamily" ofType:objc_opt_class()];

  v5 = MEMORY[0x277CBEBF8];
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;

  v7 = [v6 bs_filter:&__block_literal_global_1];

  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];

  return v8;
}

BOOL __69__CCSModuleMetadata__supportedDeviceFamiliesForBundleInfoDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6 == v4;
}

+ (id)_requiredCapabilitiesForInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy bs_safeObjectForKey:@"UIRequiredDeviceCapabilities" ofType:objc_opt_class()];

  v5 = MEMORY[0x277CBEBF8];
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;

  v7 = [v6 bs_filter:&__block_literal_global_18];

  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];

  return v8;
}

uint64_t __60__CCSModuleMetadata__requiredCapabilitiesForInfoDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MGIsQuestionValid();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_requiredIncapabilitiesForInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy bs_safeObjectForKey:@"CCRequiredDeviceIncapabilities" ofType:objc_opt_class()];

  v5 = MEMORY[0x277CBEBF8];
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;

  v7 = [v6 bs_filter:&__block_literal_global_20];

  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];

  return v8;
}

uint64_t __62__CCSModuleMetadata__requiredIncapabilitiesForInfoDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MGIsQuestionValid();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_initWithModuleIdentifier:(id)identifier supportedDeviceFamilies:(id)families requiredDeviceCapabilities:(id)capabilities requiredDeviceIncapabilities:(id)incapabilities associatedBundleIdentifier:(id)bundleIdentifier associatedBundleMinimumVersion:(id)version visibilityPreference:(unint64_t)preference moduleBundleURL:(id)self0
{
  identifierCopy = identifier;
  familiesCopy = families;
  capabilitiesCopy = capabilities;
  incapabilitiesCopy = incapabilities;
  bundleIdentifierCopy = bundleIdentifier;
  versionCopy = version;
  lCopy = l;
  v39.receiver = self;
  v39.super_class = CCSModuleMetadata;
  v23 = [(CCSModuleMetadata *)&v39 init];
  if (v23)
  {
    v24 = [identifierCopy copy];
    moduleIdentifier = v23->_moduleIdentifier;
    v23->_moduleIdentifier = v24;

    v26 = [familiesCopy copy];
    supportedDeviceFamilies = v23->_supportedDeviceFamilies;
    v23->_supportedDeviceFamilies = v26;

    v28 = [capabilitiesCopy copy];
    requiredDeviceCapabilities = v23->_requiredDeviceCapabilities;
    v23->_requiredDeviceCapabilities = v28;

    v30 = [incapabilitiesCopy copy];
    requiredDeviceIncapabilities = v23->_requiredDeviceIncapabilities;
    v23->_requiredDeviceIncapabilities = v30;

    v32 = [bundleIdentifierCopy copy];
    associatedBundleIdentifier = v23->_associatedBundleIdentifier;
    v23->_associatedBundleIdentifier = v32;

    v34 = [versionCopy copy];
    associatedBundleMinimumVersion = v23->_associatedBundleMinimumVersion;
    v23->_associatedBundleMinimumVersion = v34;

    v23->_visibilityPreference = preference;
    v36 = [lCopy copy];
    moduleBundleURL = v23->_moduleBundleURL;
    v23->_moduleBundleURL = v36;
  }

  return v23;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  moduleIdentifier = [(CCSModuleMetadata *)self moduleIdentifier];
  v5 = [v3 appendObject:moduleIdentifier withName:@"Module Identifier"];

  supportedDeviceFamilies = [(CCSModuleMetadata *)self supportedDeviceFamilies];
  v7 = [v3 appendObject:supportedDeviceFamilies withName:@"Supported Device Families"];

  requiredDeviceCapabilities = [(CCSModuleMetadata *)self requiredDeviceCapabilities];
  v9 = [v3 appendObject:requiredDeviceCapabilities withName:@"Required Device Capabilities"];

  requiredDeviceIncapabilities = [(CCSModuleMetadata *)self requiredDeviceIncapabilities];
  if ([requiredDeviceIncapabilities count])
  {
    v11 = [v3 appendObject:requiredDeviceIncapabilities withName:@"Required Device Incapabilities"];
  }

  associatedBundleIdentifier = [(CCSModuleMetadata *)self associatedBundleIdentifier];
  v13 = [v3 appendObject:associatedBundleIdentifier withName:@"Associated Bundle Identifier"];

  associatedBundleMinimumVersion = [(CCSModuleMetadata *)self associatedBundleMinimumVersion];
  v15 = [v3 appendObject:associatedBundleMinimumVersion withName:@"Associated Bundle Minimum Version"];

  v16 = CCSModuleVisibilityPreferenceDescription(self->_visibilityPreference);
  [v3 appendString:v16 withName:@"Visibility Preference"];

  moduleBundleURL = [(CCSModuleMetadata *)self moduleBundleURL];
  v18 = [v3 appendObject:moduleBundleURL withName:@"Module Bundle URL"];

  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  moduleIdentifier = [(CCSModuleMetadata *)self moduleIdentifier];
  v5 = [builder appendObject:moduleIdentifier];

  supportedDeviceFamilies = [(CCSModuleMetadata *)self supportedDeviceFamilies];
  v7 = [builder appendObject:supportedDeviceFamilies];

  requiredDeviceCapabilities = [(CCSModuleMetadata *)self requiredDeviceCapabilities];
  v9 = [builder appendObject:requiredDeviceCapabilities];

  requiredDeviceIncapabilities = [(CCSModuleMetadata *)self requiredDeviceIncapabilities];
  v11 = [builder appendObject:requiredDeviceIncapabilities];

  associatedBundleIdentifier = [(CCSModuleMetadata *)self associatedBundleIdentifier];
  v13 = [builder appendObject:associatedBundleIdentifier];

  associatedBundleMinimumVersion = [(CCSModuleMetadata *)self associatedBundleMinimumVersion];
  v15 = [builder appendObject:associatedBundleMinimumVersion];

  v16 = [builder appendUnsignedInteger:{-[CCSModuleMetadata visibilityPreference](self, "visibilityPreference")}];
  moduleBundleURL = [(CCSModuleMetadata *)self moduleBundleURL];
  v18 = [builder appendObject:moduleBundleURL];

  v19 = [builder hash];
  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      moduleIdentifier = [(CCSModuleMetadata *)self moduleIdentifier];
      moduleIdentifier2 = [(CCSModuleMetadata *)v5 moduleIdentifier];
      if (BSEqualObjects())
      {
        supportedDeviceFamilies = [(CCSModuleMetadata *)self supportedDeviceFamilies];
        supportedDeviceFamilies2 = [(CCSModuleMetadata *)v5 supportedDeviceFamilies];
        if (BSEqualObjects())
        {
          requiredDeviceCapabilities = [(CCSModuleMetadata *)self requiredDeviceCapabilities];
          requiredDeviceCapabilities2 = [(CCSModuleMetadata *)v5 requiredDeviceCapabilities];
          if (BSEqualObjects())
          {
            requiredDeviceIncapabilities = [(CCSModuleMetadata *)self requiredDeviceIncapabilities];
            requiredDeviceIncapabilities2 = [(CCSModuleMetadata *)v5 requiredDeviceIncapabilities];
            v25 = requiredDeviceIncapabilities;
            if (BSEqualObjects())
            {
              associatedBundleIdentifier = [(CCSModuleMetadata *)self associatedBundleIdentifier];
              associatedBundleIdentifier2 = [(CCSModuleMetadata *)v5 associatedBundleIdentifier];
              v23 = associatedBundleIdentifier;
              if (BSEqualObjects())
              {
                associatedBundleMinimumVersion = [(CCSModuleMetadata *)self associatedBundleMinimumVersion];
                [(CCSModuleMetadata *)v5 associatedBundleMinimumVersion];
                v15 = v21 = associatedBundleMinimumVersion;
                if (BSEqualObjects() && (v19 = [(CCSModuleMetadata *)self visibilityPreference], v19 == [(CCSModuleMetadata *)v5 visibilityPreference]))
                {
                  moduleBundleURL = [(CCSModuleMetadata *)self moduleBundleURL];
                  moduleBundleURL2 = [(CCSModuleMetadata *)v5 moduleBundleURL];
                  v16 = BSEqualObjects();
                }

                else
                {
                  v16 = 0;
                }
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

@end