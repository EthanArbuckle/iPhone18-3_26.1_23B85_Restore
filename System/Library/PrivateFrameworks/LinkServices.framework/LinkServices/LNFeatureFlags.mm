@interface LNFeatureFlags
+ (BOOL)isAppShortcutsOmittingAppNameEnabled;
+ (BOOL)isVocabularyDonationEnabled;
+ (NSDictionary)allFeatures;
@end

@implementation LNFeatureFlags

+ (BOOL)isVocabularyDonationEnabled
{
  if (isVocabularyDonationOverrideEnabled)
  {
    return 1;
  }

  else
  {
    return _os_feature_enabled_impl();
  }
}

+ (BOOL)isAppShortcutsOmittingAppNameEnabled
{
  if (isAppShortcutsOmittingAppNameOverrideEnabled)
  {
    return 1;
  }

  else
  {
    return _os_feature_enabled_impl();
  }
}

+ (NSDictionary)allFeatures
{
  v19[12] = *MEMORY[0x1E69E9840];
  v18[0] = @"Action Transcript";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isActionTranscriptEnabled")}];
  v19[0] = v17;
  v18[1] = @"Runtime Metadata Extraction";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isRuntimeMetadataSupported")}];
  v19[1] = v16;
  v18[2] = @"Static Metadata Extraction";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isStaticMetadataIngestionEnabled")}];
  v19[2] = v15;
  v18[3] = @"View Action Annotation";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isViewActionAnnotationEnabled")}];
  v19[3] = v3;
  v18[4] = @"Vocabulary Donation";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isVocabularyDonationEnabled")}];
  v19[4] = v4;
  v18[5] = @"Low Power Device";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isLowPowerDeviceEnabled")}];
  v19[5] = v5;
  v18[6] = @"Conditionally Enabled Intents";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isConditionallyEnabledIntentsEnabled")}];
  v19[6] = v6;
  v18[7] = @"Allow Entitled AppShortcuts to omit AppName";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isAppShortcutsOmittingAppNameEnabled")}];
  v19[7] = v7;
  v18[8] = @"Production AppEvent";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isProductionAppEventEnabled")}];
  v19[8] = v8;
  v18[9] = @"App Metadata via XPC";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isAppMetadataViaXPCEnabled")}];
  v19[9] = v9;
  v18[10] = @"Persona Open Application Option";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isPersonaOpenApplicationOptionEnabled")}];
  v19[10] = v10;
  v18[11] = @"Assistant Intent Phrase Expansion";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isAssistantIntentPhraseExpansionEnabled")}];
  v19[11] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:12];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end