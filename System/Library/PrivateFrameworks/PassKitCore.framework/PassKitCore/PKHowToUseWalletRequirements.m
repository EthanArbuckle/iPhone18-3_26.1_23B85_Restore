@interface PKHowToUseWalletRequirements
+ (id)requirementsToPrioritize:(id)a3 otherRequirements:(id)a4;
- (BOOL)deviceMeetsRequirements;
- (BOOL)explicitlyMatchesLanguage;
- (BOOL)explicitlyMatchesRegion;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsAllLanguages;
- (BOOL)supportsAllRegions;
- (PKHowToUseWalletRequirements)initWithDictionary:(id)a3;
@end

@implementation PKHowToUseWalletRequirements

- (BOOL)deviceMeetsRequirements
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_supportedRegions && ![(PKHowToUseWalletRequirements *)self supportsAllRegions]&& ![(PKHowToUseWalletRequirements *)self explicitlyMatchesRegion])
  {
    v8 = PKLogFacilityTypeGetObject(0x11uLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    supportedRegions = self->_supportedRegions;
    v13 = [MEMORY[0x1E695DF58] currentLocale];
    v14 = [v13 regionCode];
    v18 = 138412546;
    v19 = supportedRegions;
    v20 = 2112;
    v21 = v14;
    v15 = "PKHowToUseWalletRequirement not met: supportedRegions=%@ currentRegionCode=%@";
LABEL_29:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, v15, &v18, 0x16u);

    goto LABEL_30;
  }

  if (self->_supportedLanguages && ![(PKHowToUseWalletRequirements *)self supportsAllLanguages]&& ![(PKHowToUseWalletRequirements *)self explicitlyMatchesLanguage])
  {
    v8 = PKLogFacilityTypeGetObject(0x11uLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    supportedLanguages = self->_supportedLanguages;
    v13 = [MEMORY[0x1E695DF58] currentLocale];
    v14 = [v13 languageIdentifier];
    v18 = 138412546;
    v19 = supportedLanguages;
    v20 = 2112;
    v21 = v14;
    v15 = "PKHowToUseWalletRequirement not met: supportedLanguages=%@ currentLanguage=%@";
    goto LABEL_29;
  }

  osVersions = self->_osVersions;
  if (osVersions && (PKDeviceVersionMeetsRequiredVersion(osVersions) & 1) == 0)
  {
    v8 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PKOSVersionRequirementRange *)self->_osVersions description];
      v10 = +[PKOSVersionRequirement fromDeviceVersion];
      v11 = [v10 description];
      v18 = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKHowToUseWalletRequirement not met: osVersions=%@ deviceVersions=%@", &v18, 0x16u);

LABEL_26:
    }
  }

  else
  {
    if (!self->_capability)
    {
      return 1;
    }

    if (PKPearlIsAvailable())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    if (PKTouchIDIsAvailable())
    {
      v4 |= 4uLL;
    }

    v5 = PKIsApplePayUserEducationDemoSupported() ? v4 | 8 : v4;
    capability = self->_capability;
    if ((capability & ~v5) == 0)
    {
      return 1;
    }

    v8 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PKHowToUseWalletCapabilityToStrings(capability);
      v16 = PKHowToUseWalletCapabilityToStrings(v5);
      v18 = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKHowToUseWalletRequirement not met: capability=%@ deviceCapability=%@", &v18, 0x16u);

      goto LABEL_26;
    }
  }

LABEL_30:

  return 0;
}

- (PKHowToUseWalletRequirements)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKHowToUseWalletRequirements;
  v5 = [(PKHowToUseWalletRequirements *)&v21 init];
  if (v5)
  {
    v6 = [v4 PKDictionaryForKey:@"osVersions"];
    v7 = v6;
    if (v6)
    {
      v6 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v6];
    }

    osVersions = v5->_osVersions;
    v5->_osVersions = v6;

    v9 = [v4 PKArrayForKey:@"supportedLanguages"];
    v10 = [v9 pk_createSetByApplyingBlock:&__block_literal_global_83];
    supportedLanguages = v5->_supportedLanguages;
    v5->_supportedLanguages = v10;

    v12 = [v4 PKArrayForKey:@"supportedRegions"];
    v13 = [MEMORY[0x1E695DF58] ISOCountryCodes];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__PKHowToUseWalletRequirements_initWithDictionary___block_invoke_2;
    v19[3] = &unk_1E79CBFF0;
    v20 = v13;
    v14 = v13;
    v15 = [v12 pk_createSetByApplyingBlock:v19];
    supportedRegions = v5->_supportedRegions;
    v5->_supportedRegions = v15;

    v17 = [v4 PKArrayForKey:@"capability"];
    v5->_capability = PKHowToUseWalletCapabilityFromStrings(v17);
  }

  return v5;
}

id __51__PKHowToUseWalletRequirements_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF58];
  v3 = a2;
  v4 = [[v2 alloc] initWithLocaleIdentifier:v3];

  return v4;
}

id __51__PKHowToUseWalletRequirements_initWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = v3;
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Unknown region code for supported regions requirement (code=%@). Skipping...", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)explicitlyMatchesLanguage
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  if ([(PKHowToUseWalletRequirements *)self supportsAllLanguages])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PKHowToUseWalletRequirements *)self supportedLanguages];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__PKHowToUseWalletRequirements_explicitlyMatchesLanguage__block_invoke;
    v7[3] = &unk_1E79D1058;
    v8 = v3;
    v4 = [v5 pk_hasObjectPassingTest:v7];
  }

  return v4;
}

uint64_t __57__PKHowToUseWalletRequirements_explicitlyMatchesLanguage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 languageIdentifier];
  v5 = [*(a1 + 32) languageIdentifier];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v10 = 1;
    v11 = v7;
    v12 = v6;
LABEL_14:

    goto LABEL_15;
  }

  if (!v6 || !v7)
  {

    goto LABEL_8;
  }

  v9 = [v6 isEqualToString:v7];

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v13 = [v3 languageIdentifier];
    v14 = [*(a1 + 32) languageCode];
    v12 = v13;
    v15 = v14;
    v11 = v15;
    if (v12 == v15)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v12 && v15)
      {
        v10 = [v12 isEqualToString:v15];
      }
    }

    goto LABEL_14;
  }

  v10 = 1;
LABEL_15:

  return v10;
}

- (BOOL)explicitlyMatchesRegion
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v3 regionCode];

  if ([(PKHowToUseWalletRequirements *)self supportsAllRegions])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(PKHowToUseWalletRequirements *)self supportedRegions];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PKHowToUseWalletRequirements_explicitlyMatchesRegion__block_invoke;
    v8[3] = &unk_1E79CA4C8;
    v9 = v4;
    v5 = [v6 pk_hasObjectPassingTest:v8];
  }

  return v5;
}

uint64_t __55__PKHowToUseWalletRequirements_explicitlyMatchesRegion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v6 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

+ (id)requirementsToPrioritize:(id)a3 otherRequirements:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = v6;
  if (v5)
  {
    v8 = v5;
    if (v6)
    {
      v9 = [v5 explicitlyMatchesRegion];
      if (v9 == [v7 explicitlyMatchesRegion] && (v9 = objc_msgSend(v5, "explicitlyMatchesLanguage"), v9 == objc_msgSend(v7, "explicitlyMatchesLanguage")))
      {
        v12 = vcnt_s8([v5 capability]);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = v12.u32[0];
        v14 = vcnt_s8([v7 capability]);
        v14.i16[0] = vaddlv_u8(v14);
        if (v13 == v14.u32[0])
        {
          v15 = PKLogFacilityTypeGetObject(0x11uLL);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v5 description];
            v17 = 138412290;
            v18 = v16;
            _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Requirements have equivalent parameters and audiences and cannot determine a difference. Using the first requirements as the priority. requirements=%@", &v17, 0xCu);
          }

          v8 = v5;
        }

        else if (v13 <= v14.u32[0])
        {
          v8 = v7;
        }

        else
        {
          v8 = v5;
        }
      }

      else if (v9)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }
    }
  }

  v10 = v8;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(PKHowToUseWalletRequirements *)self osVersions];
        v8 = [(PKHowToUseWalletRequirements *)v6 osVersions];
        v9 = v8;
        if (v7 == v8)
        {
        }

        else
        {
          v10 = [(PKHowToUseWalletRequirements *)self osVersions];
          v11 = [(PKHowToUseWalletRequirements *)v6 osVersions];
          v12 = [v10 isEqual:v11];

          if (!v12)
          {
            v13 = 0;
LABEL_31:

            goto LABEL_32;
          }
        }

        v14 = [(PKHowToUseWalletRequirements *)self supportedLanguages];
        if (v14)
        {
          v15 = [(PKHowToUseWalletRequirements *)self supportedLanguages];
        }

        else
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DFD8]);
        }

        v16 = v15;

        v17 = [(PKHowToUseWalletRequirements *)v6 supportedLanguages];
        if (v17)
        {
          v18 = [(PKHowToUseWalletRequirements *)v6 supportedLanguages];
        }

        else
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DFD8]);
        }

        v19 = v18;

        if (v16 == v19 || [v16 isEqualToSet:v19])
        {
          v20 = [(PKHowToUseWalletRequirements *)self supportedRegions];
          if (v20)
          {
            v21 = [(PKHowToUseWalletRequirements *)self supportedRegions];
          }

          else
          {
            v21 = objc_alloc_init(MEMORY[0x1E695DFD8]);
          }

          v22 = v21;

          v23 = [(PKHowToUseWalletRequirements *)v6 supportedRegions];
          if (v23)
          {
            v24 = [(PKHowToUseWalletRequirements *)v6 supportedRegions];
          }

          else
          {
            v24 = objc_alloc_init(MEMORY[0x1E695DFD8]);
          }

          v25 = v24;

          if (v22 == v25 || [v22 isEqualToSet:v25])
          {
            v26 = [(PKHowToUseWalletRequirements *)self capability];
            v13 = v26 == [(PKHowToUseWalletRequirements *)v6 capability];
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_31;
      }
    }

    v13 = 0;
  }

LABEL_32:

  return v13;
}

- (BOOL)supportsAllLanguages
{
  v2 = [(PKHowToUseWalletRequirements *)self supportedLanguages];
  v3 = [v2 count] == 0;

  return v3;
}

- (BOOL)supportsAllRegions
{
  v2 = [(PKHowToUseWalletRequirements *)self supportedRegions];
  v3 = [v2 count] == 0;

  return v3;
}

@end