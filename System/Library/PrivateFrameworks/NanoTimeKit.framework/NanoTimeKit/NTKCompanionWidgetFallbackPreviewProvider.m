@interface NTKCompanionWidgetFallbackPreviewProvider
+ (id)sharedInstance;
- (BOOL)isNanoHomeDescriptor:(id)a3;
- (NTKCompanionWidgetFallbackPreviewProvider)init;
- (id)fallbackInfoForDescriptor:(id)a3;
- (id)fallbackSampleTemplateForDescriptor:(id)a3 family:(int64_t)a4;
- (id)nanoHomeDisplayStringForWidgetKind:(id)a3 intent:(id)a4;
- (id)nanoHomeFallbackInfoForDescriptor:(id)a3;
- (id)nanoHomeImageProviderForIntent:(id)a3 fallbackNTKImageKey:(id)a4;
- (id)nanoHomeWidgetFallbackCircularTemplateWithIntent:(id)a3;
- (id)nanoHomefallbackSampleTemplateForDescriptor:(id)a3 family:(int64_t)a4;
@end

@implementation NTKCompanionWidgetFallbackPreviewProvider

+ (id)sharedInstance
{
  v2 = sharedInstance_sPreviewProvider;
  if (!sharedInstance_sPreviewProvider)
  {
    v3 = objc_alloc_init(NTKCompanionWidgetFallbackPreviewProvider);
    v4 = sharedInstance_sPreviewProvider;
    sharedInstance_sPreviewProvider = v3;

    v2 = sharedInstance_sPreviewProvider;
  }

  return v2;
}

- (NTKCompanionWidgetFallbackPreviewProvider)init
{
  v3.receiver = self;
  v3.super_class = NTKCompanionWidgetFallbackPreviewProvider;
  return [(NTKCompanionWidgetFallbackPreviewProvider *)&v3 init];
}

- (id)fallbackInfoForDescriptor:(id)a3
{
  v4 = a3;
  if ([(NTKCompanionWidgetFallbackPreviewProvider *)self isNanoHomeDescriptor:v4])
  {
    v5 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeFallbackInfoForDescriptor:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fallbackSampleTemplateForDescriptor:(id)a3 family:(int64_t)a4
{
  v6 = a3;
  if ([(NTKCompanionWidgetFallbackPreviewProvider *)self isNanoHomeDescriptor:v6])
  {
    v7 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomefallbackSampleTemplateForDescriptor:v6 family:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)nanoHomeFallbackInfoForDescriptor:(id)a3
{
  v4 = a3;
  if ([(NTKCompanionWidgetFallbackPreviewProvider *)self isNanoHomeDescriptor:v4])
  {
    v5 = [v4 intentReference];
    v6 = [v5 intent];
    v7 = [v4 kind];
    v8 = [MEMORY[0x277D2B988] launcherWidgetName];
    v9 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeDisplayStringForWidgetKind:v7 intent:v6];
    v10 = [[NTKWidgetComplicationInfo alloc] initWithAppName:v8 displayName:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)nanoHomefallbackSampleTemplateForDescriptor:(id)a3 family:(int64_t)a4
{
  v6 = a3;
  if (![(NTKCompanionWidgetFallbackPreviewProvider *)self isNanoHomeDescriptor:v6])
  {
    v10 = 0;
    goto LABEL_27;
  }

  v7 = [v6 intentReference];
  v8 = [v7 intent];
  v9 = [v6 kind];
  v10 = 0;
  if (a4 <= 8)
  {
    if ((a4 - 2) < 2 || a4 == 6)
    {
      v14 = [MEMORY[0x277D2B988] launcherWidgetName];
      v15 = [MEMORY[0x277CBBB88] textProviderWithText:v14];
      v10 = [MEMORY[0x277CBBA80] templateWithTextProvider:v15];
    }

    else if (a4 == 8)
    {
      v11 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeDisplayStringForWidgetKind:v9 intent:v8];
      v12 = [MEMORY[0x277CBBB88] textProviderWithText:v11];
      v13 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeImageProviderForIntent:v8 fallbackNTKImageKey:@"SignatureCornerHome"];
      v10 = [MEMORY[0x277CBB908] templateWithTextProvider:v12 imageProvider:v13];
      goto LABEL_24;
    }

LABEL_12:
    v16 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(NTKCompanionWidgetFallbackPreviewProvider *)v9 nanoHomefallbackSampleTemplateForDescriptor:a4 family:v16];
    }

    goto LABEL_19;
  }

  if (a4 > 10)
  {
    if (a4 == 11)
    {
      v18 = [MEMORY[0x277D2B990] Accessory];
      v19 = [v9 isEqualToString:v18];

      if (v19)
      {
        v11 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
        v20 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeDisplayStringForWidgetKind:v9 intent:v8];
        v21 = [MEMORY[0x277CBBB88] textProviderWithText:v20];
        v10 = [MEMORY[0x277CBB9D8] templateWithHeaderTextProvider:v11 body1TextProvider:v21];

LABEL_25:
        goto LABEL_26;
      }

      v22 = [MEMORY[0x277D2B990] ActionSets];
      v23 = [v9 isEqualToString:v22];

      if (!v23)
      {
        NTKImageNamed(@"SignatureXLHome");
      }

      v11 = [MEMORY[0x277D2B988] actionSetRectangularWidgetText];
      v12 = [MEMORY[0x277CBBB88] textProviderWithText:v11];
      v13 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeDisplayStringForWidgetKind:v9 intent:v8];
      v24 = [MEMORY[0x277CBBB88] textProviderWithText:v13];
      v10 = [MEMORY[0x277CBB9D8] templateWithHeaderTextProvider:v12 body1TextProvider:v24];

LABEL_24:
      goto LABEL_25;
    }

    if (a4 != 12)
    {
      goto LABEL_12;
    }

    v16 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeImageProviderForIntent:v8 fallbackNTKImageKey:@"SignatureXLHome"];
    v17 = [MEMORY[0x277CBB938] templateWithImageProvider:v16];
LABEL_18:
    v10 = v17;
LABEL_19:

    goto LABEL_26;
  }

  if (a4 == 9)
  {
    v16 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeWidgetFallbackCircularTemplateWithIntent:v8];
    v17 = [MEMORY[0x277CBB810] templateWithCircularTemplate:v16];
    goto LABEL_18;
  }

  v10 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeWidgetFallbackCircularTemplateWithIntent:v8];
LABEL_26:

LABEL_27:

  return v10;
}

- (id)nanoHomeWidgetFallbackCircularTemplateWithIntent:(id)a3
{
  v3 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeImageProviderForIntent:a3 fallbackNTKImageKey:@"SignatureCircularHome"];
  v4 = [MEMORY[0x277CBB850] templateWithImageProvider:v3];

  return v4;
}

- (id)nanoHomeImageProviderForIntent:(id)a3 fallbackNTKImageKey:(id)a4
{
  v5 = a4;
  v6 = [a3 valueForKey:@"icon"];
  if (!v6 || ([MEMORY[0x277CBBB20] _symbolImageProviderWithSystemName:v6], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    NTKImageNamed(v5);
  }

  return v7;
}

- (BOOL)isNanoHomeDescriptor:(id)a3
{
  v3 = a3;
  v4 = [v3 containerBundleIdentifier];
  if (v4)
  {
    v5 = [v3 containerBundleIdentifier];
    v6 = [v5 isEqualToString:@"com.apple.NanoHome"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)nanoHomeDisplayStringForWidgetKind:(id)a3 intent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D2B990] Launcher];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
LABEL_2:
    v9 = [MEMORY[0x277D2B988] launcherWidgetName];
    goto LABEL_16;
  }

  v10 = [MEMORY[0x277D2B990] Energy];
  v11 = [v5 isEqualToString:v10];

  if (v11)
  {
    v12 = [v6 valueForKey:@"homeIdentifier"];
    if (!v12 || ([v6 valueForKey:@"homeName"], (v13 = objc_claimAutoreleasedReturnValue()) == 0) || (v14 = v13, objc_msgSend(MEMORY[0x277D2B988], "homeSpecificEnergyWidgetNameWithHomeName:", v13), v15 = objc_claimAutoreleasedReturnValue(), v14, !v15))
    {
      v16 = [MEMORY[0x277D2B988] currentLocationEnergyWidgetName];
LABEL_8:
      v15 = v16;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v17 = [MEMORY[0x277D2B990] Accessory];
  v18 = [v5 isEqualToString:v17];

  if (v18)
  {
    v19 = @"accessoryName";
LABEL_15:
    v9 = [v6 valueForKey:v19];
    goto LABEL_16;
  }

  v20 = [MEMORY[0x277D2B990] ActionSets];
  v21 = [v5 isEqualToString:v20];

  if (v21)
  {
    v19 = @"actionSetName";
    goto LABEL_15;
  }

  v24 = [MEMORY[0x277D2B990] SmartStack];
  v25 = [v5 isEqualToString:v24];

  if (v25)
  {
    v9 = [MEMORY[0x277D2B988] smartStackWidgetName];
LABEL_16:
    v15 = v9;
    if (v9)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v26 = [MEMORY[0x277D2B990] ElectricityUsage];
  v27 = [v5 isEqualToString:v26];

  if (v27)
  {
    v12 = [v6 valueForKey:@"homeID"];
    if (!v12 || ([v6 valueForKey:@"homeName"], (v28 = objc_claimAutoreleasedReturnValue()) == 0) || (v29 = v28, objc_msgSend(MEMORY[0x277D2B988], "homeSpecificElectricityUsageWidgetNameWithHomeName:", v28), v15 = objc_claimAutoreleasedReturnValue(), v29, !v15))
    {
      v16 = [MEMORY[0x277D2B988] electricityUsageWidgetName];
      goto LABEL_8;
    }
  }

  else
  {
    v30 = [MEMORY[0x277D2B990] ElectricityRates];
    v31 = [v5 isEqualToString:v30];

    if (!v31)
    {
      v34 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [NTKCompanionWidgetFallbackPreviewProvider nanoHomeDisplayStringForWidgetKind:v5 intent:v34];
      }

      goto LABEL_2;
    }

    v12 = [v6 valueForKey:@"homeID"];
    if (!v12 || ([v6 valueForKey:@"homeName"], (v32 = objc_claimAutoreleasedReturnValue()) == 0) || (v33 = v32, objc_msgSend(MEMORY[0x277D2B988], "homeSpecificElectricityRatesWidgetNameWithHomeName:", v32), v15 = objc_claimAutoreleasedReturnValue(), v33, !v15))
    {
      v16 = [MEMORY[0x277D2B988] electricityRatesWidgetName];
      goto LABEL_8;
    }
  }

LABEL_9:

  if (v15)
  {
    goto LABEL_20;
  }

LABEL_17:
  v22 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [NTKCompanionWidgetFallbackPreviewProvider nanoHomeDisplayStringForWidgetKind:v5 intent:v22];
  }

  v15 = [MEMORY[0x277D2B988] launcherWidgetName];
LABEL_20:

  return v15;
}

- (void)nanoHomefallbackSampleTemplateForDescriptor:(os_log_t)log family:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "Unhandled complication family %ld with kind %@ in NanoHome fallback preview provider!", &v3, 0x16u);
}

- (void)nanoHomeDisplayStringForWidgetKind:(uint64_t)a1 intent:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Unhandled NanoHome widget kind: %@. Using launcher display string as a fallback.", &v2, 0xCu);
}

- (void)nanoHomeDisplayStringForWidgetKind:(uint64_t)a1 intent:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Fallback preview provider failed to generate a proper display string for widget kind: %@. Using launcher display string as a final fail-safe.", &v2, 0xCu);
}

@end