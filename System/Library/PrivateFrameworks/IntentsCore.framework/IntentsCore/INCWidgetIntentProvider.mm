@interface INCWidgetIntentProvider
+ (void)initialize;
- (id)intentsExtensionForExtension:(id)extension compatibleWithIntent:(id)intent error:(id *)error;
- (void)_provideAppIntentWithOptions:(id)options completionHandler:(id)handler;
- (void)provideAppIntentWithOptions:(id)options completionHandler:(id)handler;
- (void)provideIntentWithOptions:(id)options completionHandler:(id)handler;
@end

@implementation INCWidgetIntentProvider

- (id)intentsExtensionForExtension:(id)extension compatibleWithIntent:(id)intent error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  intentCopy = intent;
  compatibilityObject = [extensionCopy compatibilityObject];
  if_isSystem = [compatibilityObject if_isSystem];

  if (!if_isSystem || ([extensionCopy infoDictionary], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:ofClass:", *MEMORY[0x277CD44A8], objc_opt_class()), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12) || (v13 = objc_msgSend(objc_alloc(MEMORY[0x277CC1E50]), "initWithBundleIdentifier:error:", v12, error), v12, !v13))
  {
    v14 = [extensionCopy URL];
    uRLByDeletingLastPathComponent = [v14 URLByDeletingLastPathComponent];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [defaultManager contentsOfDirectoryAtURL:uRLByDeletingLastPathComponent includingPropertiesForKeys:0 options:1 error:error];

    if (v17)
    {
      v38 = uRLByDeletingLastPathComponent;
      v39 = extensionCopy;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v37 = v17;
      obj = v17;
      v18 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v45;
        v43 = *MEMORY[0x277CD3858];
        v41 = *MEMORY[0x277CD3828];
        do
        {
          v21 = 0;
          v22 = intentCopy;
          do
          {
            if (*v45 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v44 + 1) + 8 * v21);
            v24 = objc_autoreleasePoolPush();
            v25 = [objc_alloc(MEMORY[0x277CC1E50]) initWithURL:v23 error:0];
            if (!v25)
            {
              goto LABEL_18;
            }

            v26 = v25;
            extensionPointRecord = [v25 extensionPointRecord];
            identifier = [extensionPointRecord identifier];
            v29 = [identifier isEqualToString:v43];

            if ((v29 & 1) == 0)
            {

LABEL_18:
              objc_autoreleasePoolPop(v24);
              intentCopy = v22;
              goto LABEL_21;
            }

            v30 = [v22 componentsSeparatedByString:@"."];
            intentCopy = [v30 lastObject];

            infoDictionary = [v26 infoDictionary];
            if_extensionAttributesDictionary = [v26 if_extensionAttributesDictionary];
            v33 = [if_extensionAttributesDictionary objectForKeyedSubscript:v41];

            if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass()) || (v33, [infoDictionary objectForKey:v41 ofClass:objc_opt_class()], (v33 = objc_claimAutoreleasedReturnValue()) != 0)) && objc_msgSend(v33, "containsObject:", intentCopy))
            {
              v40 = v26;
              v34 = 0;
            }

            else
            {
              v34 = 1;
            }

            objc_autoreleasePoolPop(v24);
            if ((v34 & 1) == 0)
            {
              goto LABEL_24;
            }

LABEL_21:
            ++v21;
            v22 = intentCopy;
          }

          while (v19 != v21);
          v19 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v19);
      }

      v40 = 0;
LABEL_24:

      uRLByDeletingLastPathComponent = v38;
      extensionCopy = v39;
      v17 = v37;
      v13 = v40;
    }

    else
    {
      v13 = 0;
    }
  }

  v35 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_provideAppIntentWithOptions:(id)options completionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v6 = objc_alloc(MEMORY[0x277CC1E50]);
  extensionBundleIdentifier = [optionsCopy extensionBundleIdentifier];
  v43 = 0;
  v8 = [v6 initWithBundleIdentifier:extensionBundleIdentifier error:&v43];
  v34 = v43;

  if (v8)
  {
    containingBundleRecord = [v8 containingBundleRecord];
    if (containingBundleRecord)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = containingBundleRecord;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;

    bundleIdentifier = [v33 bundleIdentifier];
    v13 = bundleIdentifier;
    if (bundleIdentifier)
    {
      bundleIdentifier2 = bundleIdentifier;
    }

    else
    {
      entitlements = [v8 entitlements];
      v16 = [entitlements objectForKey:@"com.apple.private.appintents.attribution.bundle-identifier" ofClass:objc_opt_class()];

      if (v16)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_16;
        }
      }

      bundleIdentifier2 = [v8 bundleIdentifier];
    }

    v16 = bundleIdentifier2;
LABEL_16:

    intentType = [optionsCopy intentType];
    v18 = [intentType componentsSeparatedByString:@":"];
    lastObject = [v18 lastObject];

    v44 = 0;
    v45 = &v44;
    v46 = 0x2050000000;
    v20 = getLNFullyQualifiedActionIdentifierClass_softClass;
    v47 = getLNFullyQualifiedActionIdentifierClass_softClass;
    if (!getLNFullyQualifiedActionIdentifierClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getLNFullyQualifiedActionIdentifierClass_block_invoke;
      v49 = &unk_2797E8190;
      v50 = &v44;
      __getLNFullyQualifiedActionIdentifierClass_block_invoke(buf);
      v20 = v45[3];
    }

    v21 = v20;
    _Block_object_dispose(&v44, 8);
    v22 = [[v20 alloc] initWithActionIdentifier:lastObject bundleIdentifier:v16];
    v44 = 0;
    v45 = &v44;
    v46 = 0x2050000000;
    v23 = getLNActionDefaultValueProviderClass_softClass;
    v47 = getLNActionDefaultValueProviderClass_softClass;
    if (!getLNActionDefaultValueProviderClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getLNActionDefaultValueProviderClass_block_invoke;
      v49 = &unk_2797E8190;
      v50 = &v44;
      __getLNActionDefaultValueProviderClass_block_invoke(buf);
      v23 = v45[3];
    }

    v24 = v23;
    _Block_object_dispose(&v44, 8);
    v25 = [[v23 alloc] initWithActionIdentifier:v22 actionMetadata:0];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __74__INCWidgetIntentProvider__provideAppIntentWithOptions_completionHandler___block_invoke;
    v36[3] = &unk_2797E8168;
    v37 = v22;
    v38 = v25;
    v39 = lastObject;
    v42 = handlerCopy;
    v40 = v16;
    v41 = optionsCopy;
    v26 = v16;
    v27 = lastObject;
    v28 = v25;
    v29 = v22;
    [v28 loadDefaultValuesWithCompletionHandler:v36];

    goto LABEL_21;
  }

  v11 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v31 = v11;
    extensionBundleIdentifier2 = [optionsCopy extensionBundleIdentifier];
    *buf = 136315650;
    *&buf[4] = "[INCWidgetIntentProvider _provideAppIntentWithOptions:completionHandler:]";
    *&buf[12] = 2114;
    *&buf[14] = extensionBundleIdentifier2;
    *&buf[22] = 2114;
    v49 = v34;
    _os_log_error_impl(&dword_255503000, v31, OS_LOG_TYPE_ERROR, "%s No chrono extension found with identifier: %{public}@. Error: %{public}@", buf, 0x20u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, v34);
LABEL_21:

  v30 = *MEMORY[0x277D85DE8];
}

void __74__INCWidgetIntentProvider__provideAppIntentWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (WorkflowKitLibraryCore() && getWFLinkActionSerializedParametersForLNActionSymbolLoc())
    {
      v7 = [*(a1 + 40) actionMetadata];
      v8 = v5;
      v9 = v7;
      WFLinkActionSerializedParametersForLNActionSymbolLoc = getWFLinkActionSerializedParametersForLNActionSymbolLoc();
      if (!WFLinkActionSerializedParametersForLNActionSymbolLoc)
      {
        dlerror();
        abort_report_np();
      }

      v11 = WFLinkActionSerializedParametersForLNActionSymbolLoc(v8, v9);

      v12 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 48);
        *buf = 136315650;
        v23 = "[INCWidgetIntentProvider _provideAppIntentWithOptions:completionHandler:]_block_invoke";
        v24 = 2112;
        v25 = v13;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_255503000, v12, OS_LOG_TYPE_INFO, "%s Fetched serialized parameters for %@: %@", buf, 0x20u);
      }

      v14 = [objc_alloc(MEMORY[0x277CD3A70]) initWithAppBundleIdentifier:*(a1 + 56) appIntentIdentifier:*(a1 + 48) serializedParameters:v11];
      v15 = [*(a1 + 64) extensionBundleIdentifier];
      [v14 _setExtensionBundleId:v15];

      (*(*(a1 + 72) + 16))();
    }

    else
    {
      v16 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_FAULT))
      {
        v20 = *(a1 + 32);
        *buf = 136315394;
        v23 = "[INCWidgetIntentProvider _provideAppIntentWithOptions:completionHandler:]_block_invoke";
        v24 = 2112;
        v25 = v20;
        _os_log_fault_impl(&dword_255503000, v16, OS_LOG_TYPE_FAULT, "%s Failed to load serialization method - %@", buf, 0x16u);
      }

      v17 = *(a1 + 72);
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3587 userInfo:0];
      (*(v17 + 16))(v17, 0, v11);
    }
  }

  else
  {
    v18 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      *buf = 136315650;
      v23 = "[INCWidgetIntentProvider _provideAppIntentWithOptions:completionHandler:]_block_invoke";
      v24 = 2112;
      v25 = v21;
      v26 = 2112;
      v27 = v6;
      _os_log_error_impl(&dword_255503000, v18, OS_LOG_TYPE_ERROR, "%s Failed to load default values for %@ widget intent: %@", buf, 0x20u);
    }

    (*(*(a1 + 72) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)provideAppIntentWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__INCWidgetIntentProvider_provideAppIntentWithOptions_completionHandler___block_invoke;
  v12[3] = &unk_2797E8140;
  v12[4] = self;
  v8 = optionsCopy;
  v13 = v8;
  v9 = handlerCopy;
  v14 = v9;
  v10 = MEMORY[0x259C36E60](v12);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v11 = dispatch_get_global_queue(25, 0);
    dispatch_async(v11, v10);
  }

  else
  {
    v10[2](v10);
  }
}

- (void)provideIntentWithOptions:(id)options completionHandler:(id)handler
{
  v109 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = MEMORY[0x277CD38C8];
  v9 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    extensionBundleIdentifier = [optionsCopy extensionBundleIdentifier];
    intentType = [optionsCopy intentType];
    *buf = 136315650;
    v104 = "[INCWidgetIntentProvider provideIntentWithOptions:completionHandler:]";
    v105 = 2114;
    v106 = extensionBundleIdentifier;
    v107 = 2114;
    v108 = intentType;
    _os_log_impl(&dword_255503000, v10, OS_LOG_TYPE_INFO, "%s Providing intent for chrono with options: extensionBundleIdentifier = %{public}@, intentType = %{public}@", buf, 0x20u);
  }

  intentType2 = [optionsCopy intentType];
  v14 = [intentType2 hasPrefix:@"appintent:"];

  if (!v14)
  {
    v15 = MEMORY[0x277CD3A90];
    v101 = *MEMORY[0x277CD37A0];
    v102 = MEMORY[0x277CBEC38];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    v17 = [v15 optionsWithDictionary:v16];

    mEMORY[0x277CD3A88] = [MEMORY[0x277CD3A88] sharedResolver];
    [mEMORY[0x277CD3A88] setOptions:v17];
    v19 = objc_alloc(MEMORY[0x277CC1E50]);
    extensionBundleIdentifier2 = [optionsCopy extensionBundleIdentifier];
    v100 = 0;
    v21 = [v19 initWithBundleIdentifier:extensionBundleIdentifier2 error:&v100];
    v22 = v100;

    if (!v21)
    {
      v25 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v89 = v25;
        extensionBundleIdentifier3 = [optionsCopy extensionBundleIdentifier];
        *buf = 136315650;
        v104 = "[INCWidgetIntentProvider provideIntentWithOptions:completionHandler:]";
        v105 = 2114;
        v106 = extensionBundleIdentifier3;
        v107 = 2114;
        v108 = v22;
        _os_log_error_impl(&dword_255503000, v89, OS_LOG_TYPE_ERROR, "%s No chrono extension found with identifier: %{public}@. Error: %{public}@", buf, 0x20u);
      }

      handlerCopy[2](handlerCopy, 0, v22);
      goto LABEL_43;
    }

    containingBundleRecord = [v21 containingBundleRecord];
    if (containingBundleRecord)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = containingBundleRecord;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v26 = v24;
    intentType3 = [optionsCopy intentType];
    v99 = v22;
    v96 = v21;
    v28 = [(INCWidgetIntentProvider *)self intentsExtensionForExtension:v21 compatibleWithIntent:intentType3 error:&v99];
    v29 = v99;

    if (v28)
    {
      v91 = v29;
      v92 = v26;
      v95 = v17;
      v30 = v28;
      bundleIdentifier = [v28 bundleIdentifier];
      v32 = objc_alloc(MEMORY[0x277CD3D38]);
      intentType4 = [optionsCopy intentType];
      v34 = [v32 initWithIntentClassName:intentType4 extensionBundleId:bundleIdentifier];
    }

    else
    {
      if (!v26)
      {
        v63 = *MEMORY[0x277CD38C8];
        if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v104 = "[INCWidgetIntentProvider provideIntentWithOptions:completionHandler:]";
          v105 = 2114;
          v106 = v29;
          _os_log_error_impl(&dword_255503000, v63, OS_LOG_TYPE_ERROR, "%s No intents extension found in same bundle as chrono extension. %{public}@", buf, 0x16u);
        }

        handlerCopy[2](handlerCopy, 0, v29);
        goto LABEL_42;
      }

      v30 = 0;
      v91 = v29;
      v92 = v26;
      v95 = v17;
      bundleIdentifier = [v26 bundleIdentifier];
      v35 = objc_alloc(MEMORY[0x277CD3D38]);
      intentType4 = [optionsCopy intentType];
      v34 = [v35 initWithIntentClassName:intentType4 launchableAppBundleId:bundleIdentifier];
    }

    v36 = v34;
    v93 = containingBundleRecord;

    v94 = mEMORY[0x277CD3A88];
    v37 = [mEMORY[0x277CD3A88] resolvedIntentMatchingDescriptor:v36];

    intentDefinitionURLs = [v96 intentDefinitionURLs];
    allValues = [intentDefinitionURLs allValues];
    v40 = [allValues count];

    if (v40)
    {
      v41 = MEMORY[0x277CBEB98];
      intentDefinitionURLs2 = [v96 intentDefinitionURLs];
      allValues2 = [intentDefinitionURLs2 allValues];
      v44 = [v41 setWithArray:allValues2];
      allObjects = [v44 allObjects];

      v46 = objc_alloc(MEMORY[0x277CD4000]);
      bundleIdentifier2 = [v96 bundleIdentifier];
      v48 = [v46 _initWithContentsOfURLs:allObjects bundleIdentifier:bundleIdentifier2];

      if (v48)
      {
        goto LABEL_31;
      }
    }

    bundleIdentifier3 = [v37 bundleIdentifier];

    if (bundleIdentifier3)
    {
      v50 = MEMORY[0x277CC1E90];
      bundleIdentifier4 = [v37 bundleIdentifier];
      v52 = [v50 bundleRecordWithBundleIdentifier:bundleIdentifier4 allowPlaceholder:0 error:0];

      intentDefinitionURLs3 = [v52 intentDefinitionURLs];
      allValues3 = [intentDefinitionURLs3 allValues];
      v55 = [allValues3 count];

      if (v55)
      {
        v56 = MEMORY[0x277CBEB98];
        intentDefinitionURLs4 = [v52 intentDefinitionURLs];
        allValues4 = [intentDefinitionURLs4 allValues];
        v59 = [v56 setWithArray:allValues4];
        allObjects2 = [v59 allObjects];

        v61 = objc_alloc(MEMORY[0x277CD4000]);
        bundleIdentifier5 = [v52 bundleIdentifier];
        v48 = [v61 _initWithContentsOfURLs:allObjects2 bundleIdentifier:bundleIdentifier5];

        if (v48)
        {
LABEL_31:
          v78 = objc_alloc(MEMORY[0x277CD3D30]);
          uUID = [MEMORY[0x277CCAD78] UUID];
          uUIDString = [uUID UUIDString];
          intentType5 = [optionsCopy intentType];
          v82 = [v78 _initWithIdentifier:uUIDString schema:v48 name:intentType5 data:0];

          if (v82)
          {
            bundleIdentifier6 = [v37 bundleIdentifier];
            [v82 _setLaunchId:bundleIdentifier6];

            extensionBundleIdentifier4 = [v37 extensionBundleIdentifier];
            [v82 _setExtensionBundleId:extensionBundleIdentifier4];

            v85 = [[INCIntentDefaultValueProvider alloc] initWithIntent:v82];
            v97[0] = MEMORY[0x277D85DD0];
            v97[1] = 3221225472;
            v97[2] = __70__INCWidgetIntentProvider_provideIntentWithOptions_completionHandler___block_invoke;
            v97[3] = &unk_2797E8118;
            v98 = handlerCopy;
            [(INCIntentDefaultValueProvider *)v85 loadDefaultValuesWithCompletionHandler:v97];

            mEMORY[0x277CD3A88] = v94;
            v17 = v95;
            containingBundleRecord = v93;
          }

          else
          {
            v86 = *MEMORY[0x277CD38C8];
            containingBundleRecord = v93;
            if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v104 = "[INCWidgetIntentProvider provideIntentWithOptions:completionHandler:]";
              _os_log_error_impl(&dword_255503000, v86, OS_LOG_TYPE_ERROR, "%s Unable to create intent from schema.", buf, 0xCu);
            }

            handlerCopy[2](handlerCopy, 0, 0);
            mEMORY[0x277CD3A88] = v94;
            v17 = v95;
          }

LABEL_41:
          v29 = v91;
          v26 = v92;

          v28 = v30;
LABEL_42:

          v22 = v29;
          v21 = v96;
LABEL_43:

          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    extensionBundleIdentifier5 = [v37 extensionBundleIdentifier];

    if (extensionBundleIdentifier5)
    {
      v65 = MEMORY[0x277CC1E90];
      extensionBundleIdentifier6 = [v37 extensionBundleIdentifier];
      v67 = [v65 bundleRecordWithBundleIdentifier:extensionBundleIdentifier6 allowPlaceholder:0 error:0];

      intentDefinitionURLs5 = [v67 intentDefinitionURLs];
      allValues5 = [intentDefinitionURLs5 allValues];
      v70 = [allValues5 count];

      if (v70)
      {
        v71 = MEMORY[0x277CBEB98];
        intentDefinitionURLs6 = [v67 intentDefinitionURLs];
        allValues6 = [intentDefinitionURLs6 allValues];
        v74 = [v71 setWithArray:allValues6];
        allObjects3 = [v74 allObjects];

        v76 = objc_alloc(MEMORY[0x277CD4000]);
        bundleIdentifier7 = [v67 bundleIdentifier];
        v48 = [v76 _initWithContentsOfURLs:allObjects3 bundleIdentifier:bundleIdentifier7];

        if (v48)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }
    }

    v87 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v104 = "[INCWidgetIntentProvider provideIntentWithOptions:completionHandler:]";
      _os_log_error_impl(&dword_255503000, v87, OS_LOG_TYPE_ERROR, "%s No intent definitions found in extensions.", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0, 0);
    v17 = v95;
    containingBundleRecord = v93;
    goto LABEL_41;
  }

  [(INCWidgetIntentProvider *)self provideAppIntentWithOptions:optionsCopy completionHandler:handlerCopy];
LABEL_44:

  v88 = *MEMORY[0x277D85DE8];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    INLogInitIfNeeded();
  }
}

@end