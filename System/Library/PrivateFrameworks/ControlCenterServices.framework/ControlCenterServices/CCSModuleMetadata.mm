@interface CCSModuleMetadata
+ (id)_requiredCapabilitiesForInfoDictionary:(id)a3;
+ (id)_requiredIncapabilitiesForInfoDictionary:(id)a3;
+ (id)_supportedDeviceFamiliesForBundleInfoDictionary:(id)a3;
+ (id)metadataForBundleAtURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithModuleIdentifier:(id)a3 supportedDeviceFamilies:(id)a4 requiredDeviceCapabilities:(id)a5 requiredDeviceIncapabilities:(id)a6 associatedBundleIdentifier:(id)a7 associatedBundleMinimumVersion:(id)a8 visibilityPreference:(unint64_t)a9 moduleBundleURL:(id)a10;
- (id)description;
- (unint64_t)hash;
@end

@implementation CCSModuleMetadata

+ (id)metadataForBundleAtURL:(id)a3
{
  v4 = a3;
  v5 = CFBundleCopyInfoDictionaryInDirectory(v4);
  v6 = [(__CFDictionary *)v5 bs_safeObjectForKey:*MEMORY[0x277CBED38] ofType:objc_opt_class()];
  if (v6)
  {
    v7 = [a1 _supportedDeviceFamiliesForBundleInfoDictionary:v5];
    v8 = [a1 _requiredCapabilitiesForInfoDictionary:v5];
    v9 = [a1 _requiredIncapabilitiesForInfoDictionary:v5];
    v10 = [(__CFDictionary *)v5 bs_safeObjectForKey:@"CCAssociatedBundleIdentifier" ofType:objc_opt_class()];
    v11 = [(__CFDictionary *)v5 bs_safeObjectForKey:@"CCAssociatedBundleMinimumVersion" ofType:objc_opt_class()];
    v12 = [[a1 alloc] _initWithModuleIdentifier:v6 supportedDeviceFamilies:v7 requiredDeviceCapabilities:v8 requiredDeviceIncapabilities:v9 associatedBundleIdentifier:v10 associatedBundleMinimumVersion:v11 visibilityPreference:CCSVisibilityPreferenceForBundleInfoDictionary(v5) moduleBundleURL:v4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_supportedDeviceFamiliesForBundleInfoDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 bs_safeObjectForKey:@"UIDeviceFamily" ofType:objc_opt_class()];

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

+ (id)_requiredCapabilitiesForInfoDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 bs_safeObjectForKey:@"UIRequiredDeviceCapabilities" ofType:objc_opt_class()];

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

+ (id)_requiredIncapabilitiesForInfoDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 bs_safeObjectForKey:@"CCRequiredDeviceIncapabilities" ofType:objc_opt_class()];

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

- (id)_initWithModuleIdentifier:(id)a3 supportedDeviceFamilies:(id)a4 requiredDeviceCapabilities:(id)a5 requiredDeviceIncapabilities:(id)a6 associatedBundleIdentifier:(id)a7 associatedBundleMinimumVersion:(id)a8 visibilityPreference:(unint64_t)a9 moduleBundleURL:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  v39.receiver = self;
  v39.super_class = CCSModuleMetadata;
  v23 = [(CCSModuleMetadata *)&v39 init];
  if (v23)
  {
    v24 = [v16 copy];
    moduleIdentifier = v23->_moduleIdentifier;
    v23->_moduleIdentifier = v24;

    v26 = [v17 copy];
    supportedDeviceFamilies = v23->_supportedDeviceFamilies;
    v23->_supportedDeviceFamilies = v26;

    v28 = [v18 copy];
    requiredDeviceCapabilities = v23->_requiredDeviceCapabilities;
    v23->_requiredDeviceCapabilities = v28;

    v30 = [v19 copy];
    requiredDeviceIncapabilities = v23->_requiredDeviceIncapabilities;
    v23->_requiredDeviceIncapabilities = v30;

    v32 = [v20 copy];
    associatedBundleIdentifier = v23->_associatedBundleIdentifier;
    v23->_associatedBundleIdentifier = v32;

    v34 = [v21 copy];
    associatedBundleMinimumVersion = v23->_associatedBundleMinimumVersion;
    v23->_associatedBundleMinimumVersion = v34;

    v23->_visibilityPreference = a9;
    v36 = [v22 copy];
    moduleBundleURL = v23->_moduleBundleURL;
    v23->_moduleBundleURL = v36;
  }

  return v23;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(CCSModuleMetadata *)self moduleIdentifier];
  v5 = [v3 appendObject:v4 withName:@"Module Identifier"];

  v6 = [(CCSModuleMetadata *)self supportedDeviceFamilies];
  v7 = [v3 appendObject:v6 withName:@"Supported Device Families"];

  v8 = [(CCSModuleMetadata *)self requiredDeviceCapabilities];
  v9 = [v3 appendObject:v8 withName:@"Required Device Capabilities"];

  v10 = [(CCSModuleMetadata *)self requiredDeviceIncapabilities];
  if ([v10 count])
  {
    v11 = [v3 appendObject:v10 withName:@"Required Device Incapabilities"];
  }

  v12 = [(CCSModuleMetadata *)self associatedBundleIdentifier];
  v13 = [v3 appendObject:v12 withName:@"Associated Bundle Identifier"];

  v14 = [(CCSModuleMetadata *)self associatedBundleMinimumVersion];
  v15 = [v3 appendObject:v14 withName:@"Associated Bundle Minimum Version"];

  v16 = CCSModuleVisibilityPreferenceDescription(self->_visibilityPreference);
  [v3 appendString:v16 withName:@"Visibility Preference"];

  v17 = [(CCSModuleMetadata *)self moduleBundleURL];
  v18 = [v3 appendObject:v17 withName:@"Module Bundle URL"];

  v19 = [v3 build];

  return v19;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(CCSModuleMetadata *)self moduleIdentifier];
  v5 = [v3 appendObject:v4];

  v6 = [(CCSModuleMetadata *)self supportedDeviceFamilies];
  v7 = [v3 appendObject:v6];

  v8 = [(CCSModuleMetadata *)self requiredDeviceCapabilities];
  v9 = [v3 appendObject:v8];

  v10 = [(CCSModuleMetadata *)self requiredDeviceIncapabilities];
  v11 = [v3 appendObject:v10];

  v12 = [(CCSModuleMetadata *)self associatedBundleIdentifier];
  v13 = [v3 appendObject:v12];

  v14 = [(CCSModuleMetadata *)self associatedBundleMinimumVersion];
  v15 = [v3 appendObject:v14];

  v16 = [v3 appendUnsignedInteger:{-[CCSModuleMetadata visibilityPreference](self, "visibilityPreference")}];
  v17 = [(CCSModuleMetadata *)self moduleBundleURL];
  v18 = [v3 appendObject:v17];

  v19 = [v3 hash];
  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(CCSModuleMetadata *)self moduleIdentifier];
      v7 = [(CCSModuleMetadata *)v5 moduleIdentifier];
      if (BSEqualObjects())
      {
        v8 = [(CCSModuleMetadata *)self supportedDeviceFamilies];
        v9 = [(CCSModuleMetadata *)v5 supportedDeviceFamilies];
        if (BSEqualObjects())
        {
          v10 = [(CCSModuleMetadata *)self requiredDeviceCapabilities];
          v11 = [(CCSModuleMetadata *)v5 requiredDeviceCapabilities];
          if (BSEqualObjects())
          {
            v12 = [(CCSModuleMetadata *)self requiredDeviceIncapabilities];
            v24 = [(CCSModuleMetadata *)v5 requiredDeviceIncapabilities];
            v25 = v12;
            if (BSEqualObjects())
            {
              v13 = [(CCSModuleMetadata *)self associatedBundleIdentifier];
              v22 = [(CCSModuleMetadata *)v5 associatedBundleIdentifier];
              v23 = v13;
              if (BSEqualObjects())
              {
                v14 = [(CCSModuleMetadata *)self associatedBundleMinimumVersion];
                [(CCSModuleMetadata *)v5 associatedBundleMinimumVersion];
                v15 = v21 = v14;
                if (BSEqualObjects() && (v19 = [(CCSModuleMetadata *)self visibilityPreference], v19 == [(CCSModuleMetadata *)v5 visibilityPreference]))
                {
                  v20 = [(CCSModuleMetadata *)self moduleBundleURL];
                  v18 = [(CCSModuleMetadata *)v5 moduleBundleURL];
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