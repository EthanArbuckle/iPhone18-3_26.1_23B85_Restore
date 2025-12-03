@interface NTKCompanionWidgetFallbackPreviewProvider
+ (id)sharedInstance;
- (BOOL)isNanoHomeDescriptor:(id)descriptor;
- (NTKCompanionWidgetFallbackPreviewProvider)init;
- (id)fallbackInfoForDescriptor:(id)descriptor;
- (id)fallbackSampleTemplateForDescriptor:(id)descriptor family:(int64_t)family;
- (id)nanoHomeDisplayStringForWidgetKind:(id)kind intent:(id)intent;
- (id)nanoHomeFallbackInfoForDescriptor:(id)descriptor;
- (id)nanoHomeImageProviderForIntent:(id)intent fallbackNTKImageKey:(id)key;
- (id)nanoHomeWidgetFallbackCircularTemplateWithIntent:(id)intent;
- (id)nanoHomefallbackSampleTemplateForDescriptor:(id)descriptor family:(int64_t)family;
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

- (id)fallbackInfoForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([(NTKCompanionWidgetFallbackPreviewProvider *)self isNanoHomeDescriptor:descriptorCopy])
  {
    v5 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeFallbackInfoForDescriptor:descriptorCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fallbackSampleTemplateForDescriptor:(id)descriptor family:(int64_t)family
{
  descriptorCopy = descriptor;
  if ([(NTKCompanionWidgetFallbackPreviewProvider *)self isNanoHomeDescriptor:descriptorCopy])
  {
    v7 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomefallbackSampleTemplateForDescriptor:descriptorCopy family:family];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)nanoHomeFallbackInfoForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([(NTKCompanionWidgetFallbackPreviewProvider *)self isNanoHomeDescriptor:descriptorCopy])
  {
    intentReference = [descriptorCopy intentReference];
    intent = [intentReference intent];
    kind = [descriptorCopy kind];
    launcherWidgetName = [MEMORY[0x277D2B988] launcherWidgetName];
    v9 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeDisplayStringForWidgetKind:kind intent:intent];
    v10 = [[NTKWidgetComplicationInfo alloc] initWithAppName:launcherWidgetName displayName:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)nanoHomefallbackSampleTemplateForDescriptor:(id)descriptor family:(int64_t)family
{
  descriptorCopy = descriptor;
  if (![(NTKCompanionWidgetFallbackPreviewProvider *)self isNanoHomeDescriptor:descriptorCopy])
  {
    v10 = 0;
    goto LABEL_27;
  }

  intentReference = [descriptorCopy intentReference];
  intent = [intentReference intent];
  kind = [descriptorCopy kind];
  v10 = 0;
  if (family <= 8)
  {
    if ((family - 2) < 2 || family == 6)
    {
      launcherWidgetName = [MEMORY[0x277D2B988] launcherWidgetName];
      v15 = [MEMORY[0x277CBBB88] textProviderWithText:launcherWidgetName];
      v10 = [MEMORY[0x277CBBA80] templateWithTextProvider:v15];
    }

    else if (family == 8)
    {
      actionSetRectangularWidgetText = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeDisplayStringForWidgetKind:kind intent:intent];
      v12 = [MEMORY[0x277CBBB88] textProviderWithText:actionSetRectangularWidgetText];
      v13 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeImageProviderForIntent:intent fallbackNTKImageKey:@"SignatureCornerHome"];
      v10 = [MEMORY[0x277CBB908] templateWithTextProvider:v12 imageProvider:v13];
      goto LABEL_24;
    }

LABEL_12:
    v16 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(NTKCompanionWidgetFallbackPreviewProvider *)kind nanoHomefallbackSampleTemplateForDescriptor:family family:v16];
    }

    goto LABEL_19;
  }

  if (family > 10)
  {
    if (family == 11)
    {
      accessory = [MEMORY[0x277D2B990] Accessory];
      v19 = [kind isEqualToString:accessory];

      if (v19)
      {
        actionSetRectangularWidgetText = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
        v20 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeDisplayStringForWidgetKind:kind intent:intent];
        v21 = [MEMORY[0x277CBBB88] textProviderWithText:v20];
        v10 = [MEMORY[0x277CBB9D8] templateWithHeaderTextProvider:actionSetRectangularWidgetText body1TextProvider:v21];

LABEL_25:
        goto LABEL_26;
      }

      actionSets = [MEMORY[0x277D2B990] ActionSets];
      v23 = [kind isEqualToString:actionSets];

      if (!v23)
      {
        NTKImageNamed(@"SignatureXLHome");
      }

      actionSetRectangularWidgetText = [MEMORY[0x277D2B988] actionSetRectangularWidgetText];
      v12 = [MEMORY[0x277CBBB88] textProviderWithText:actionSetRectangularWidgetText];
      v13 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeDisplayStringForWidgetKind:kind intent:intent];
      v24 = [MEMORY[0x277CBBB88] textProviderWithText:v13];
      v10 = [MEMORY[0x277CBB9D8] templateWithHeaderTextProvider:v12 body1TextProvider:v24];

LABEL_24:
      goto LABEL_25;
    }

    if (family != 12)
    {
      goto LABEL_12;
    }

    v16 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeImageProviderForIntent:intent fallbackNTKImageKey:@"SignatureXLHome"];
    v17 = [MEMORY[0x277CBB938] templateWithImageProvider:v16];
LABEL_18:
    v10 = v17;
LABEL_19:

    goto LABEL_26;
  }

  if (family == 9)
  {
    v16 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeWidgetFallbackCircularTemplateWithIntent:intent];
    v17 = [MEMORY[0x277CBB810] templateWithCircularTemplate:v16];
    goto LABEL_18;
  }

  v10 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeWidgetFallbackCircularTemplateWithIntent:intent];
LABEL_26:

LABEL_27:

  return v10;
}

- (id)nanoHomeWidgetFallbackCircularTemplateWithIntent:(id)intent
{
  v3 = [(NTKCompanionWidgetFallbackPreviewProvider *)self nanoHomeImageProviderForIntent:intent fallbackNTKImageKey:@"SignatureCircularHome"];
  v4 = [MEMORY[0x277CBB850] templateWithImageProvider:v3];

  return v4;
}

- (id)nanoHomeImageProviderForIntent:(id)intent fallbackNTKImageKey:(id)key
{
  keyCopy = key;
  v6 = [intent valueForKey:@"icon"];
  if (!v6 || ([MEMORY[0x277CBBB20] _symbolImageProviderWithSystemName:v6], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    NTKImageNamed(keyCopy);
  }

  return v7;
}

- (BOOL)isNanoHomeDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  containerBundleIdentifier = [descriptorCopy containerBundleIdentifier];
  if (containerBundleIdentifier)
  {
    containerBundleIdentifier2 = [descriptorCopy containerBundleIdentifier];
    v6 = [containerBundleIdentifier2 isEqualToString:@"com.apple.NanoHome"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)nanoHomeDisplayStringForWidgetKind:(id)kind intent:(id)intent
{
  kindCopy = kind;
  intentCopy = intent;
  launcher = [MEMORY[0x277D2B990] Launcher];
  v8 = [kindCopy isEqualToString:launcher];

  if (v8)
  {
LABEL_2:
    launcherWidgetName = [MEMORY[0x277D2B988] launcherWidgetName];
    goto LABEL_16;
  }

  energy = [MEMORY[0x277D2B990] Energy];
  v11 = [kindCopy isEqualToString:energy];

  if (v11)
  {
    v12 = [intentCopy valueForKey:@"homeIdentifier"];
    if (!v12 || ([intentCopy valueForKey:@"homeName"], (v13 = objc_claimAutoreleasedReturnValue()) == 0) || (v14 = v13, objc_msgSend(MEMORY[0x277D2B988], "homeSpecificEnergyWidgetNameWithHomeName:", v13), launcherWidgetName2 = objc_claimAutoreleasedReturnValue(), v14, !launcherWidgetName2))
    {
      currentLocationEnergyWidgetName = [MEMORY[0x277D2B988] currentLocationEnergyWidgetName];
LABEL_8:
      launcherWidgetName2 = currentLocationEnergyWidgetName;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  accessory = [MEMORY[0x277D2B990] Accessory];
  v18 = [kindCopy isEqualToString:accessory];

  if (v18)
  {
    v19 = @"accessoryName";
LABEL_15:
    launcherWidgetName = [intentCopy valueForKey:v19];
    goto LABEL_16;
  }

  actionSets = [MEMORY[0x277D2B990] ActionSets];
  v21 = [kindCopy isEqualToString:actionSets];

  if (v21)
  {
    v19 = @"actionSetName";
    goto LABEL_15;
  }

  smartStack = [MEMORY[0x277D2B990] SmartStack];
  v25 = [kindCopy isEqualToString:smartStack];

  if (v25)
  {
    launcherWidgetName = [MEMORY[0x277D2B988] smartStackWidgetName];
LABEL_16:
    launcherWidgetName2 = launcherWidgetName;
    if (launcherWidgetName)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  electricityUsage = [MEMORY[0x277D2B990] ElectricityUsage];
  v27 = [kindCopy isEqualToString:electricityUsage];

  if (v27)
  {
    v12 = [intentCopy valueForKey:@"homeID"];
    if (!v12 || ([intentCopy valueForKey:@"homeName"], (v28 = objc_claimAutoreleasedReturnValue()) == 0) || (v29 = v28, objc_msgSend(MEMORY[0x277D2B988], "homeSpecificElectricityUsageWidgetNameWithHomeName:", v28), launcherWidgetName2 = objc_claimAutoreleasedReturnValue(), v29, !launcherWidgetName2))
    {
      currentLocationEnergyWidgetName = [MEMORY[0x277D2B988] electricityUsageWidgetName];
      goto LABEL_8;
    }
  }

  else
  {
    electricityRates = [MEMORY[0x277D2B990] ElectricityRates];
    v31 = [kindCopy isEqualToString:electricityRates];

    if (!v31)
    {
      v34 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [NTKCompanionWidgetFallbackPreviewProvider nanoHomeDisplayStringForWidgetKind:kindCopy intent:v34];
      }

      goto LABEL_2;
    }

    v12 = [intentCopy valueForKey:@"homeID"];
    if (!v12 || ([intentCopy valueForKey:@"homeName"], (v32 = objc_claimAutoreleasedReturnValue()) == 0) || (v33 = v32, objc_msgSend(MEMORY[0x277D2B988], "homeSpecificElectricityRatesWidgetNameWithHomeName:", v32), launcherWidgetName2 = objc_claimAutoreleasedReturnValue(), v33, !launcherWidgetName2))
    {
      currentLocationEnergyWidgetName = [MEMORY[0x277D2B988] electricityRatesWidgetName];
      goto LABEL_8;
    }
  }

LABEL_9:

  if (launcherWidgetName2)
  {
    goto LABEL_20;
  }

LABEL_17:
  v22 = _NTKLoggingObjectForDomain(47, "NTKLoggingDomainWidget");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [NTKCompanionWidgetFallbackPreviewProvider nanoHomeDisplayStringForWidgetKind:kindCopy intent:v22];
  }

  launcherWidgetName2 = [MEMORY[0x277D2B988] launcherWidgetName];
LABEL_20:

  return launcherWidgetName2;
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