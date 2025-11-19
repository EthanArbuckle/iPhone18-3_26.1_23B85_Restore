@interface OBPrivacyFlow
+ (OBPrivacyFlow)flowWithBundle:(id)a3;
+ (id)_modelSpecificLocalizedStringKeyForKey:(id)a3 preferredDeviceType:(unint64_t)a4;
+ (id)_splashPlistFromBundle:(id)a3 forContentName:(id)a4;
- (BOOL)_conformsToRequirement:(id)a3;
- (BOOL)_conformsToRequirements:(id)a3;
- (BOOL)_showInCombinedListWithDeviceClass:(id)a3;
- (BOOL)_supportsPlatform:(id)a3;
- (BOOL)enablesGroupingInCombinedList;
- (BOOL)isPersonallyIdentifiable;
- (BOOL)showInCombinedListForPreferredDeviceType:(unint64_t)a3;
- (BOOL)supportsPlatformForPreferredDeviceType:(unint64_t)a3;
- (OBImage)buttonIcon;
- (OBPrivacyFlow)initWithBundle:(id)a3;
- (OBPrivacyFlow)initWithSplashContent:(id)a3;
- (id)_SKU;
- (id)_bestStringConsideringGenerativeForKeyWithPrefix:(id)a3 language:(id)a4 preferredDeviceType:(unint64_t)a5;
- (id)_bundleImageNamed:(id)a3;
- (id)_deviceClass;
- (id)_iconSymbolName;
- (id)_legacyLocalizedContentListForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4;
- (id)_platformOfPreferredDeviceType:(unint64_t)a3;
- (id)_splashLocalizedStringForKey:(id)a3 language:(id)a4 preferredDeviceType:(unint64_t)a5;
- (id)_splashLocalizedStringForKey:(id)a3 language:(id)a4 table:(id)a5 preferredDeviceType:(unint64_t)a6;
- (id)_stringForPlaceholderBundleWithString:(id)a3;
- (id)_stringKeyWithCapabilitiesFromPrefix:(id)a3 withNetwork:(BOOL)a4 withGenerative:(BOOL)a5 withGMEChinaSuffix:(BOOL)a6;
- (id)_textForConditionalItem:(id)a3 language:(id)a4 preferredDeviceType:(unint64_t)a5;
- (id)_verifiedSplashLocalizedStringForKey:(id)a3 language:(id)a4 preferredDeviceType:(unint64_t)a5;
- (id)localizedButtonCaptionForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4;
- (id)localizedButtonCaptionSymbolNameForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4;
- (id)localizedButtonTitleForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4;
- (id)localizedCombinedFooterComponentsForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4;
- (id)localizedCombinedFooterForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4;
- (id)localizedCombinedHeaderForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4;
- (id)localizedContentListForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4;
- (id)localizedShortTitleForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4;
- (id)localizedTitleForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4;
- (id)replaceeIdentifierSets;
- (id)replacementPrecondition;
- (unint64_t)contentVersion;
- (void)setButtonIcon:(id)a3;
@end

@implementation OBPrivacyFlow

- (id)replacementPrecondition
{
  v2 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ReplacementInfo"];
  v3 = [v2 objectForKeyedSubscript:@"Precondition"];

  return v3;
}

- (id)replaceeIdentifierSets
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ReplacementInfo", 0];
  v3 = [v2 objectForKeyedSubscript:@"ReplaceeSets"];

  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (!v6)
        {
          v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
        [v6 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = [v6 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (unint64_t)contentVersion
{
  v2 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ContentVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (OBPrivacyFlow)flowWithBundle:(id)a3
{
  v3 = a3;
  v4 = [[OBPrivacyFlow alloc] initWithBundle:v3];

  return v4;
}

- (OBPrivacyFlow)initWithBundle:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26.receiver = self;
  v26.super_class = OBPrivacyFlow;
  v6 = [(OBPrivacyFlow *)&v26 init];
  v7 = v6;
  if (!v6)
  {
LABEL_21:
    v19 = v7;
    goto LABEL_22;
  }

  objc_storeStrong(&v6->_bundle, a3);
  v8 = [(OBBundle *)v7->_bundle underlyingBundle];
  v9 = [v8 infoDictionary];

  v10 = [v9 objectForKeyedSubscript:@"GDPRSplash"];
  splashContentName = v7->_splashContentName;
  v7->_splashContentName = v10;

  if (v7->_splashContentName)
  {
    v12 = [(OBBundle *)v7->_bundle underlyingBundle];
    v13 = [OBPrivacyFlow _splashPlistFromBundle:v12 forContentName:v7->_splashContentName];
    splashPlist = v7->_splashPlist;
    v7->_splashPlist = v13;

    v15 = v7->_splashPlist;
    if (v15)
    {
      v16 = [(NSDictionary *)v15 objectForKeyedSubscript:@"ButtonTitle"];
      if (v16)
      {
        v7->_splashPListContainsLegacyStringKeys = 1;
      }

      else
      {
        v20 = [(NSDictionary *)v7->_splashPlist objectForKeyedSubscript:@"ButtonCaption"];
        if (v20)
        {
          v7->_splashPListContainsLegacyStringKeys = 1;
        }

        else
        {
          v21 = [(NSDictionary *)v7->_splashPlist objectForKeyedSubscript:@"Title"];
          if (v21)
          {
            v7->_splashPListContainsLegacyStringKeys = 1;
          }

          else
          {
            v22 = [(NSDictionary *)v7->_splashPlist objectForKeyedSubscript:@"ShortTitle"];
            if (v22)
            {
              v7->_splashPListContainsLegacyStringKeys = 1;
            }

            else
            {
              v23 = [(NSDictionary *)v7->_splashPlist objectForKeyedSubscript:@"Content"];
              v7->_splashPListContainsLegacyStringKeys = v23 != 0;
            }
          }
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    v17 = _OBLoggingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v5 identifier];
      *buf = 138412290;
      v28 = v18;
      _os_log_impl(&dword_1B4FB6000, v17, OS_LOG_TYPE_DEFAULT, "No GDPRSplash for bundle %@", buf, 0xCu);
    }
  }

  v19 = 0;
LABEL_22:

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

- (OBPrivacyFlow)initWithSplashContent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = OBPrivacyFlow;
  v6 = [(OBPrivacyFlow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_splashPlist, a3);
  }

  return v7;
}

- (id)_platformOfPreferredDeviceType:(unint64_t)a3
{
  v5 = @"iOS";
  if (a3 <= 4)
  {
    if (a3)
    {
      if (a3 == 4)
      {
        v6 = @"macOS";
      }

      else
      {
        v6 = @"iOS";
      }
    }

    else
    {
      v6 = [(OBPrivacyFlow *)self _currentPlatform];
    }
  }

  else
  {
    if (a3 == 8)
    {
      v5 = @"xrOS";
    }

    if (a3 == 7)
    {
      v5 = @"watchOS";
    }

    if (a3 - 5 >= 2)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"tvOS";
    }
  }

  return v6;
}

- (BOOL)supportsPlatformForPreferredDeviceType:(unint64_t)a3
{
  v3 = self;
  v4 = [(OBPrivacyFlow *)self _platformOfPreferredDeviceType:a3];
  LOBYTE(v3) = [(OBPrivacyFlow *)v3 _supportsPlatform:v4];

  return v3;
}

- (BOOL)_supportsPlatform:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"SupportedPlatforms"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__OBPrivacyFlow__supportsPlatform___block_invoke;
  v9[3] = &unk_1E7C15778;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9] != 0x7FFFFFFFFFFFFFFFLL;

  return v7;
}

uint64_t __35__OBPrivacyFlow__supportsPlatform___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 lowercaseString];
    v5 = [*(a1 + 32) lowercaseString];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_splashPlistFromBundle:(id)a3 forContentName:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a3 pathForResource:a4 ofType:@"plist"];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
  if (!v5)
  {
    v6 = _OBLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1B4FB6000, v6, OS_LOG_TYPE_DEFAULT, "No splash found in bundle at path: %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_verifiedSplashLocalizedStringForKey:(id)a3 language:(id)a4 preferredDeviceType:(unint64_t)a5
{
  v8 = a3;
  v9 = [(OBPrivacyFlow *)self _splashLocalizedStringForKey:v8 language:a4 preferredDeviceType:a5];
  v10 = v9;
  if (v9 && ([v9 isEqualToString:v8] & 1) == 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_splashLocalizedStringForKey:(id)a3 language:(id)a4 preferredDeviceType:(unint64_t)a5
{
  v8 = a3;
  v9 = self->_splashContentName;
  v10 = [(OBPrivacyFlow *)self _splashLocalizedStringForKey:v8 language:a4 table:v9 preferredDeviceType:a5];
  if (v10)
  {
    v11 = v10;
    if ([(OBBundle *)self->_bundle isPlaceholder])
    {
      v12 = [(OBPrivacyFlow *)self _stringForPlaceholderBundleWithString:v11];

      v11 = v12;
    }
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (id)_stringForPlaceholderBundleWithString:(id)a3
{
  bundle = self->_bundle;
  v4 = a3;
  v5 = [(OBBundle *)bundle identifier];
  v6 = [v4 stringByReplacingOccurrencesOfString:@"%@" withString:v5];

  return v6;
}

- (id)_splashLocalizedStringForKey:(id)a3 language:(id)a4 table:(id)a5 preferredDeviceType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [OBPrivacyFlow _modelSpecificLocalizedStringKeyForKey:v10 preferredDeviceType:a6];
  v14 = [(OBBundle *)self->_bundle underlyingBundle];
  v15 = [OBUtilities localizedString:v13 forTable:v12 inBundle:v14 forLanguage:v11];

  if (![(__CFString *)v15 length]|| [(__CFString *)v15 isEqualToString:v13])
  {
    v16 = [(OBBundle *)self->_bundle underlyingBundle];
    v17 = [OBUtilities localizedString:v10 forTable:v12 inBundle:v16 forLanguage:v11];

    v15 = v17;
  }

  if ([(__CFString *)v15 length]&& ([(__CFString *)v15 isEqualToString:v10]& 1) == 0)
  {
    v19 = CFPreferencesCopyValue(@"OBShowFakeText", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (v19)
    {
      v20 = v19;
      if ([(__CFString *)v15 length]&& os_variant_has_internal_ui())
      {

        v15 = @"ONBOARDINGKIT PRIVACY TEXT";
      }

      CFRelease(v20);
    }

    v15 = v15;
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_modelSpecificLocalizedStringKeyForKey:(id)a3 preferredDeviceType:(unint64_t)a4
{
  v6 = a3;
  if (a4 > 4)
  {
    if (a4 > 6)
    {
      if (a4 == 7)
      {
        [OBUtilities stringWithFormat:@"%@_APPLEWATCH", v6];
        goto LABEL_18;
      }

      if (a4 == 8)
      {
        [OBUtilities stringWithFormat:@"%@_APPLEVISION", v6];
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (a4 == 5)
    {
      [OBUtilities stringWithFormat:@"%@_APPLETV", v6];
    }

    else
    {
      [OBUtilities stringWithFormat:@"%@_HOMEPOD", v6];
    }
  }

  else
  {
    if (a4 <= 2)
    {
      if (a4 == 1)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_IPHONE", v6];
        goto LABEL_18;
      }

      if (a4 == 2)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_IPAD", v6];
        goto LABEL_18;
      }

LABEL_21:
      if (_CFMZEnabled())
      {
        [a1 _modelSpecificLocalizedStringKeyForKey:v6 preferredDeviceType:4];
      }

      else
      {
        [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:v6];
      }

      goto LABEL_18;
    }

    if (a4 == 3)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_IPOD", v6];
    }

    else
    {
      [OBUtilities stringWithFormat:@"%@_MAC", v6];
    }
  }

  v7 = LABEL_18:;

  return v7;
}

- (id)_bundleImageNamed:(id)a3
{
  bundle = self->_bundle;
  v4 = a3;
  v5 = [(OBBundle *)bundle underlyingBundle];
  v6 = [OBImage imageNamed:v4 inBundle:v5];

  return v6;
}

- (BOOL)isPersonallyIdentifiable
{
  v2 = [(OBPrivacyFlow *)self _iconType];
  v3 = [v2 lowercaseString];
  v4 = [v3 isEqualToString:@"pii"];

  return v4;
}

- (id)_iconSymbolName
{
  if ([(OBPrivacyFlow *)self isPersonallyIdentifiable])
  {
    v2 = @"privacy.handshake";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (OBImage)buttonIcon
{
  if (!self->_buttonIconLoaded && [(OBPrivacyFlow *)self isPersonallyIdentifiable])
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [OBImage imageNamed:@"PII.pdf" inBundle:v3];

    [(OBPrivacyFlow *)self setButtonIcon:v4];
  }

  buttonIcon = self->_buttonIcon;

  return buttonIcon;
}

- (void)setButtonIcon:(id)a3
{
  v5 = a3;
  if (self->_buttonIcon != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_buttonIcon, a3);
    v5 = v6;
  }

  self->_buttonIconLoaded = 1;
}

- (BOOL)showInCombinedListForPreferredDeviceType:(unint64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      v10 = @"iPod";
      if (a3 != 3)
      {
        v10 = 0;
      }

      if (a3 == 2)
      {
        v9 = @"iPad";
      }

      else
      {
        v9 = v10;
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v9 = @"iPhone";
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = [(OBPrivacyFlow *)self _deviceClass];
    }
  }

  else
  {
    v4 = @"AudioAccessory";
    v5 = @"Watch";
    v6 = @"RealityDevice";
    if (a3 != 8)
    {
      v6 = 0;
    }

    if (a3 != 7)
    {
      v5 = v6;
    }

    if (a3 != 6)
    {
      v4 = v5;
    }

    v7 = @"Mac";
    v8 = @"AppleTV";
    if (a3 != 5)
    {
      v8 = 0;
    }

    if (a3 != 4)
    {
      v7 = v8;
    }

    if (a3 <= 5)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }
  }

  v11 = [(OBPrivacyFlow *)self _showInCombinedListWithDeviceClass:v9];

  return v11;
}

- (BOOL)_showInCombinedListWithDeviceClass:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"HideFromCombinedList"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v5 BOOLValue])
    {
      goto LABEL_10;
    }
  }

  else if (v5)
  {
    v6 = _OBLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4FB6000, v6, OS_LOG_TYPE_DEFAULT, "HideFromCombinedList must be a BOOLean", buf, 2u);
    }
  }

  v7 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"HideFromCombinedListForSKUs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(OBPrivacyFlow *)self _SKU];
    v9 = [v7 containsObject:v8];

    if (v9)
    {
LABEL_10:
      v10 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    if (v7)
    {
      v11 = _OBLoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1B4FB6000, v11, OS_LOG_TYPE_DEFAULT, "HideFromCombinedListForSKUs must be an array", v16, 2u);
      }
    }
  }

  v12 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ShowInCombinedListForDeviceClasses"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v12 containsObject:v4];
  }

  else
  {
    if (v12)
    {
      v13 = _OBLoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1B4FB6000, v13, OS_LOG_TYPE_DEFAULT, "ShowInCombinedListForDeviceClasses must be an array", v15, 2u);
      }
    }

    v10 = 1;
  }

LABEL_24:
  return v10;
}

- (BOOL)enablesGroupingInCombinedList
{
  v2 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"EnablesGroupingInCombinedList"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    if (v2)
    {
      v4 = _OBLoggingFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1B4FB6000, v4, OS_LOG_TYPE_DEFAULT, "EnablesGroupingInCombinedList must be a BOOLean", v6, 2u);
      }
    }

    v3 = 0;
  }

  return v3;
}

- (id)_deviceClass
{
  v2 = MGGetStringAnswer();

  return v2;
}

- (id)_SKU
{
  v2 = MGGetStringAnswer();

  return v2;
}

- (id)_bestStringConsideringGenerativeForKeyWithPrefix:(id)a3 language:(id)a4 preferredDeviceType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[OBCapabilities sharedCapabilities];
  v11 = [v10 deviceSupportsGenerativeModels];

  if (!v11 || ([(OBPrivacyFlow *)self _bestStringConsideringCMEChinaForKeyWithPrefix:v8 language:v9 preferredDeviceType:a5 withGenerativeSuffix:1], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [(OBPrivacyFlow *)self _bestStringConsideringCMEChinaForKeyWithPrefix:v8 language:v9 preferredDeviceType:a5 withGenerativeSuffix:0];
  }

  return v12;
}

- (id)_stringKeyWithCapabilitiesFromPrefix:(id)a3 withNetwork:(BOOL)a4 withGenerative:(BOOL)a5 withGMEChinaSuffix:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = v9;
  if (v8)
  {
    v13 = +[OBCapabilities sharedCapabilities];
    v14 = [v13 isWAPI];

    if (v14)
    {
      v15 = @"_WLAN";
    }

    else
    {
      v15 = @"_WIFI";
    }

    v10 = [v9 stringByAppendingString:v15];

    if (!v6)
    {
LABEL_3:
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  v16 = [v10 stringByAppendingString:@"_GMECHINA"];

  v10 = v16;
  if (v7)
  {
LABEL_4:
    v11 = [v10 stringByAppendingString:@"_GENERATIVE"];

    v10 = v11;
  }

LABEL_5:

  return v10;
}

- (BOOL)_conformsToRequirement:(id)a3
{
  v3 = [a3 lowercaseString];
  v7 = 0;
  if (([v3 isEqualToString:@"wifi"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"wlan"))
  {
    v4 = +[OBCapabilities sharedCapabilities];
    v5 = [v4 isWAPI];

    v6 = (v5 & 1) != 0 ? @"wlan" : @"wifi";
    if ([v3 isEqualToString:v6])
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)_conformsToRequirements:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v5) = [(OBPrivacyFlow *)self _conformsToRequirement:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v5 = 0;
        v9 = *v15;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v5 |= [(OBPrivacyFlow *)self _conformsToRequirement:v11, v14];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (id)_textForConditionalItem:(id)a3 language:(id)a4 preferredDeviceType:(unint64_t)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(OBPrivacyFlow *)self _splashLocalizedStringForKey:v8 language:v9 preferredDeviceType:a5];
    if (![v10 length] || objc_msgSend(v10, "isEqualToString:", v8))
    {
      v11 = +[OBCapabilities sharedCapabilities];
      v12 = [v11 isWAPI];

      if (v12)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_WLAN", v8];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_WIFI", v8];
      }
      v23 = ;
      v24 = [(OBPrivacyFlow *)self _splashLocalizedStringForKey:v23 language:v9 preferredDeviceType:a5];

      v10 = v24;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v29 = v8;
        v27 = a5;
        v28 = v9;
        v16 = *v31;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v30 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
              v20 = [v19 objectForKeyedSubscript:@"Text"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = [v19 objectForKeyedSubscript:@"Requirements"];
                v22 = [(OBPrivacyFlow *)self _conformsToRequirements:v21];

                if (v22)
                {
                  v9 = v28;
                  v10 = [(OBPrivacyFlow *)self _splashLocalizedStringForKey:v20 language:v28 preferredDeviceType:v27];

                  v8 = v29;
                  goto LABEL_24;
                }
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

        v10 = 0;
        v9 = v28;
        v8 = v29;
      }

      else
      {
        v10 = 0;
      }

LABEL_24:
    }

    else
    {
      v10 = 0;
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)localizedButtonCaptionSymbolNameForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4
{
  if (self->_splashPListContainsLegacyStringKeys || ([(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_CAPTION_SYMBOL_NAME" language:a3 preferredDeviceType:a4], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = [v4 stringByReplacingOccurrencesOfString:@" do not localize" withString:&stru_1F2CE9518];
  }

  return v6;
}

- (id)localizedButtonTitleForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4
{
  v6 = a3;
  v7 = +[OBCapabilities sharedCapabilities];
  v8 = [v7 additionalDisplayLanguageForDisplayLanguage:v6];

  if (v8)
  {
    if (self->_splashPListContainsLegacyStringKeys)
    {
      v9 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ButtonTitleForLanguageAddition"];
      v10 = [(OBPrivacyFlow *)self _textForConditionalItem:v9 language:v6 preferredDeviceType:a4];

      if (v10)
      {
LABEL_4:
        if (self->_splashPListContainsLegacyStringKeys)
        {
          v11 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ButtonTitle"];
          v12 = [(OBPrivacyFlow *)self _textForConditionalItem:v11 language:v8 preferredDeviceType:a4];
        }

        else
        {
          v12 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_TITLE" language:v8 preferredDeviceType:a4];
        }

        v13 = [v10 stringByReplacingOccurrencesOfString:@"%@" withString:v12];

        goto LABEL_12;
      }
    }

    else
    {
      v10 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_TITLE_FOR_LANGUAGE_ADDITION" language:v6 preferredDeviceType:a4];
      if (v10)
      {
        goto LABEL_4;
      }
    }
  }

  if (!self->_splashPListContainsLegacyStringKeys)
  {
    v13 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_TITLE" language:v6 preferredDeviceType:a4];
    goto LABEL_13;
  }

  v10 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ButtonTitle"];
  v13 = [(OBPrivacyFlow *)self _textForConditionalItem:v10 language:v6 preferredDeviceType:a4];
LABEL_12:

LABEL_13:

  return v13;
}

- (id)localizedButtonCaptionForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4
{
  v6 = a3;
  v7 = +[OBCapabilities sharedCapabilities];
  v8 = [v7 additionalDisplayLanguageForDisplayLanguage:v6];

  if (v8)
  {
    if (self->_splashPListContainsLegacyStringKeys)
    {
      v9 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ButtonCaptionForLanguageAddition"];
      v10 = [(OBPrivacyFlow *)self _textForConditionalItem:v9 language:v6 preferredDeviceType:a4];

      if (v10)
      {
LABEL_4:
        if (self->_splashPListContainsLegacyStringKeys)
        {
          v11 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ButtonCaption"];
          v12 = [(OBPrivacyFlow *)self _textForConditionalItem:v11 language:v8 preferredDeviceType:a4];
        }

        else
        {
          v12 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_CAPTION" language:v8 preferredDeviceType:a4];
        }

        v13 = [v10 stringByReplacingOccurrencesOfString:@"%@" withString:v12];

        goto LABEL_12;
      }
    }

    else
    {
      v10 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_CAPTION_FOR_LANGUAGE_ADDITION" language:@"en" preferredDeviceType:a4];
      if (v10)
      {
        goto LABEL_4;
      }
    }
  }

  if (!self->_splashPListContainsLegacyStringKeys)
  {
    v13 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_CAPTION" language:v6 preferredDeviceType:a4];
    goto LABEL_13;
  }

  v10 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ButtonCaption"];
  v13 = [(OBPrivacyFlow *)self _textForConditionalItem:v10 language:v6 preferredDeviceType:a4];
LABEL_12:

LABEL_13:

  return v13;
}

- (id)localizedTitleForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4
{
  if (self->_splashPListContainsLegacyStringKeys)
  {
    splashPlist = self->_splashPlist;
    v7 = a3;
    v8 = [(NSDictionary *)splashPlist objectForKeyedSubscript:@"Title"];
    v9 = [(OBPrivacyFlow *)self _textForConditionalItem:v8 language:v7 preferredDeviceType:a4];
  }

  else
  {
    v8 = a3;
    v9 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"SPLASH_TITLE" language:v8 preferredDeviceType:a4];
  }

  return v9;
}

- (id)localizedShortTitleForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4
{
  if (self->_splashPListContainsLegacyStringKeys)
  {
    splashPlist = self->_splashPlist;
    v7 = a3;
    v8 = [(NSDictionary *)splashPlist objectForKeyedSubscript:@"ShortTitle"];
    v9 = [(OBPrivacyFlow *)self _textForConditionalItem:v8 language:v7 preferredDeviceType:a4];
  }

  else
  {
    v8 = a3;
    v9 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"SPLASH_SHORT_TITLE" language:v8 preferredDeviceType:a4];
  }

  return v9;
}

- (id)localizedCombinedHeaderForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4
{
  if (self->_splashPListContainsLegacyStringKeys)
  {
    splashPlist = self->_splashPlist;
    v7 = a3;
    v8 = [(NSDictionary *)splashPlist objectForKeyedSubscript:@"CombinedHeader"];
    v9 = [(OBPrivacyFlow *)self _textForConditionalItem:v8 language:v7 preferredDeviceType:a4];
  }

  else
  {
    v8 = a3;
    v9 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"COMBINED_HEADER" language:v8 preferredDeviceType:a4];
  }

  return v9;
}

- (id)localizedCombinedFooterForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = [(OBPrivacyFlow *)self localizedCombinedFooterComponentsForLanguage:a3 preferredDeviceType:a4];
  v5 = [v4 text];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AD40]);
    v7 = [v4 text];
    v5 = [v6 initWithString:v7];

    v8 = [v4 linkText];
    if (v8)
    {
      v9 = v8;
      v10 = [v4 linkURLString];

      if (v10)
      {
        v11 = objc_alloc(MEMORY[0x1E696AAB0]);
        v12 = [v4 linkText];
        v22 = *MEMORY[0x1E69DB670];
        v13 = [v4 linkURLString];
        v23[0] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        v15 = [v11 initWithString:v12 attributes:v14];

        v16 = [v4 text];
        v17 = [v16 rangeOfString:@"%@"];
        v19 = v18;

        if (v19)
        {
          [v5 replaceCharactersInRange:v17 withAttributedString:{v19, v15}];
        }
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)localizedCombinedFooterComponentsForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(OBPrivacyCombinedFooterComponents);
  if (self->_splashPListContainsLegacyStringKeys)
  {
    v8 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"CombinedFooter"];
    v9 = [(OBPrivacyFlow *)self _textForConditionalItem:v8 language:v6 preferredDeviceType:a4];
    [(OBPrivacyCombinedFooterComponents *)v7 setText:v9];
  }

  else
  {
    v8 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"COMBINED_FOOTER" language:v6 preferredDeviceType:a4];
    [(OBPrivacyCombinedFooterComponents *)v7 setText:v8];
  }

  v10 = [(OBPrivacyCombinedFooterComponents *)v7 text];

  if (v10)
  {
    if (self->_splashPListContainsLegacyStringKeys)
    {
      v11 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"CombinedFooterButton"];
      v12 = [(OBPrivacyFlow *)self _textForConditionalItem:v11 language:v6 preferredDeviceType:a4];

      v13 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"CombinedFooterButtonURL"];
      v14 = [(OBPrivacyFlow *)self _textForConditionalItem:v13 language:v6 preferredDeviceType:a4];

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"COMBINED_FOOTER_BUTTON" language:v6 preferredDeviceType:a4];
      v14 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"COMBINED_FOOTER_BUTTON_URL" language:v6 preferredDeviceType:a4];
      if (!v12)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    if (v14)
    {
      [(OBPrivacyCombinedFooterComponents *)v7 setLinkText:v12];
      [(OBPrivacyCombinedFooterComponents *)v7 setLinkURLString:v14];
    }

    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

- (id)localizedContentListForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_splashPListContainsLegacyStringKeys)
  {
    v7 = [(OBPrivacyFlow *)self _legacyLocalizedContentListForLanguage:v6 preferredDeviceType:a4];
  }

  else
  {
    v8 = objc_opt_new();
    v9 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"SPLASH_SUMMARY" language:v6 preferredDeviceType:a4];
    if (v9)
    {
      v10 = objc_opt_new();
      [v10 setText:v9];
      [v8 addObject:v10];
    }

    v25 = v9;
    v27 = v8;
    v11 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [&unk_1F2CF8730 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(&unk_1F2CF8730);
          }

          v16 = [*(*(&v28 + 1) + 8 * i) stringByAppendingString:{@"_BULLET", v25}];
          v17 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:v16 language:v6 preferredDeviceType:a4];
          if (!v17)
          {

            goto LABEL_15;
          }

          v18 = v17;
          v19 = objc_opt_new();
          [v19 setText:v18];
          [v11 addObject:v19];
        }

        v13 = [&unk_1F2CF8730 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
    v7 = v27;
    if ([v11 count])
    {
      v20 = objc_opt_new();
      [v20 setBullets:v11];
      [v27 addObject:v20];
    }

    v21 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"FOOTER_TEXT" language:v6 preferredDeviceType:a4];
    if (v21)
    {
      v22 = objc_opt_new();
      [v22 setText:v21];
      [v27 addObject:v22];
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_legacyLocalizedContentListForLanguage:(id)a3 preferredDeviceType:(unint64_t)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v60 = a3;
  v55 = objc_opt_new();
  v5 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"Content"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (!v7)
    {
      goto LABEL_57;
    }

    v8 = v7;
    v51 = v5;
    v9 = 0x1E695D000uLL;
    v10 = *v69;
    v61 = self;
    v52 = *v69;
    v53 = v6;
    while (1)
    {
      v11 = 0;
      v54 = v8;
      do
      {
        if (*v69 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v68 + 1) + 8 * v11);
        v13 = *(v9 + 3872);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v57 = v11;
          v14 = v12;
          v15 = [v14 objectForKeyedSubscript:@"Requirements"];
          v16 = [(OBPrivacyFlow *)self _conformsToRequirements:v15];

          if (!v16)
          {
            v11 = v57;
            goto LABEL_48;
          }

          v17 = objc_opt_new();
          v18 = [v14 objectForKeyedSubscript:@"Text"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v56 = v14;
          if (isKindOfClass)
          {
            v20 = [v14 objectForKeyedSubscript:@"Text"];
            v21 = [(OBPrivacyFlow *)self _splashLocalizedStringForKey:v20 language:v60 preferredDeviceType:a4];
            [v17 setText:v21];

            goto LABEL_41;
          }

          v62 = v17;
          v22 = [v14 objectForKeyedSubscript:@"Bullets"];
          objc_opt_class();
          v23 = objc_opt_isKindOfClass();

          if (v23)
          {
            v58 = objc_opt_new();
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            obj = [v14 objectForKeyedSubscript:@"Bullets"];
            v24 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
            v25 = v17;
            if (!v24)
            {
              goto LABEL_38;
            }

            v26 = v24;
            v27 = *v65;
            while (1)
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v65 != v27)
                {
                  objc_enumerationMutation(obj);
                }

                v29 = *(*(&v64 + 1) + 8 * i);
                v30 = *(v9 + 3872);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v31 = v9;
                  v32 = objc_opt_new();
                  v33 = v29;
                  v34 = [v33 objectForKeyedSubscript:@"Text"];
                  v35 = [v33 objectForKeyedSubscript:@"IconName"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v36 = [v33 objectForKeyedSubscript:@"Requirements"];
                    v37 = [(OBPrivacyFlow *)v61 _conformsToRequirements:v36];

                    if (v37)
                    {
                      v38 = [(OBPrivacyFlow *)v61 _splashLocalizedStringForKey:v34 language:v60 preferredDeviceType:a4];
                      [v32 setText:v38];

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v39 = [(OBPrivacyFlow *)v61 _bundleImageNamed:v35];
                        [v32 setIcon:v39];
                        goto LABEL_33;
                      }

                      if (v35)
                      {
                        v39 = _OBLoggingFacility();
                        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                        {
                          v43 = objc_opt_class();
                          *buf = 138412290;
                          v73 = v43;
                          v44 = v43;
                          _os_log_impl(&dword_1B4FB6000, v39, OS_LOG_TYPE_DEFAULT, "OBBundle: Bullet IconName must be a string, was %@", buf, 0xCu);
                        }

LABEL_33:
                      }

                      [v58 addObject:v32, v51];
                    }
                  }

                  else
                  {
                    v40 = _OBLoggingFacility();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                    {
                      v41 = objc_opt_class();
                      *buf = 138412290;
                      v73 = v41;
                      v42 = v41;
                      _os_log_impl(&dword_1B4FB6000, v40, OS_LOG_TYPE_DEFAULT, "OBBundle: Bullet Text must be a string, was %@", buf, 0xCu);
                    }
                  }

                  v9 = v31;
                  v25 = v62;
                  goto LABEL_36;
                }

                v32 = _OBLoggingFacility();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B4FB6000, v32, OS_LOG_TYPE_DEFAULT, "OBBundle: Bullet entries must be dictionaries", buf, 2u);
                }

LABEL_36:
              }

              v26 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
              if (!v26)
              {
LABEL_38:

                v20 = v58;
                if ([v58 count])
                {
                  [v25 setBullets:v58];
                }

                self = v61;
                v17 = v62;
                v10 = v52;
                v6 = v53;
                v8 = v54;
LABEL_41:
                v11 = v57;
LABEL_42:

                goto LABEL_43;
              }
            }
          }

          v47 = [v14 objectForKeyedSubscript:@"Bullets"];

          v11 = v57;
          if (v47)
          {
            v20 = _OBLoggingFacility();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1B4FB6000, v20, OS_LOG_TYPE_DEFAULT, "OBPrivacyBundle: Bullets must be an array", buf, 2u);
            }

            goto LABEL_42;
          }

LABEL_43:
          v45 = [v17 text];
          if (v45)
          {

            v14 = v56;
            goto LABEL_46;
          }

          v46 = [v17 bullets];

          v14 = v56;
          if (v46)
          {
LABEL_46:
            [v55 addObject:v17];
          }

          goto LABEL_48;
        }

        v14 = _OBLoggingFacility();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B4FB6000, v14, OS_LOG_TYPE_DEFAULT, "OBPrivacyBundle: Content entries must be dictionaries", buf, 2u);
        }

LABEL_48:

        ++v11;
      }

      while (v11 != v8);
      v48 = [v6 countByEnumeratingWithState:&v68 objects:v75 count:16];
      v8 = v48;
      if (!v48)
      {
        v5 = v51;
        goto LABEL_57;
      }
    }
  }

  v6 = _OBLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4FB6000, v6, OS_LOG_TYPE_DEFAULT, "OBPrivacyBundle: Content must be an array", buf, 2u);
  }

LABEL_57:

  v49 = *MEMORY[0x1E69E9840];

  return v55;
}

@end