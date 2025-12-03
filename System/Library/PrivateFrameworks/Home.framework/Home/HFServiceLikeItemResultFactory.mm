@interface HFServiceLikeItemResultFactory
+ (id)populateStandardResultsForHomeKitObject:(id)object withBackingAccessory:(id)accessory displayMetadata:(id)metadata readResponse:(id)response batteryLevelResults:(id)results valueSource:(id)source updateOptions:(id)options;
+ (void)_appendDestinationURLResultsForHomeKitObject:(id)object backingAccessory:(id)accessory toResults:(id)results;
+ (void)_appendSoftwareUpdateResultsForAccessory:(id)accessory toResults:(id)results;
@end

@implementation HFServiceLikeItemResultFactory

+ (id)populateStandardResultsForHomeKitObject:(id)object withBackingAccessory:(id)accessory displayMetadata:(id)metadata readResponse:(id)response batteryLevelResults:(id)results valueSource:(id)source updateOptions:(id)options
{
  v85 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  accessoryCopy = accessory;
  metadataCopy = metadata;
  responseCopy = response;
  resultsCopy = results;
  sourceCopy = source;
  optionsCopy = options;
  v20 = objc_opt_new();
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(metadataCopy, "primaryState")}];
  [v20 setObject:v21 forKeyedSubscript:@"state"];

  if ([metadataCopy transitioningPrimaryState])
  {
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(metadataCopy, "transitioningPrimaryState")}];
    [v20 setObject:v22 forKeyedSubscript:@"transitioningState"];
  }

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(metadataCopy, "priority")}];
  [v20 setObject:v23 forKeyedSubscript:?];

  sortKey = [metadataCopy sortKey];
  [v20 na_safeSetObject:sortKey forKey:@"sortKey"];

  v75 = optionsCopy;
  v25 = [optionsCopy objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  if ([v25 BOOLValue])
  {

    goto LABEL_26;
  }

  v26 = +[HFUtilities shouldSuppressAllErrorsForDemo];

  if (!v26)
  {
    v27 = objc_opt_new();
    v28 = [HFSymptomResultContextProvider alloc];
    objc_opt_class();
    v72 = objectCopy;
    v29 = objectCopy;
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v71 = v29;

    v73 = [(HFSymptomResultContextProvider *)v28 initWithAccessory:accessoryCopy mediaSystem:v31];
    error = [metadataCopy error];

    if (error)
    {
      error2 = [metadataCopy error];
      [v20 setObject:error2 forKeyedSubscript:@"underlyingError"];

      error3 = [metadataCopy error];
      v35 = [HFErrorResultComponent componentForDisplayError:error3 symptomContextProvider:v73];

      if (v35)
      {
        v36 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          error4 = [metadataCopy error];
          allFailedReadResponses = [responseCopy allFailedReadResponses];
          *buf = 138413058;
          v78 = error4;
          v79 = 2112;
          v80 = v35;
          v81 = 2112;
          v82 = v29;
          v83 = 2112;
          v84 = allFailedReadResponses;
          _os_log_error_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_ERROR, "Displaying error %@ as %@ for %@ read errors %@", buf, 0x2Au);
        }

        [v27 addObject:v35];
      }
    }

    allCharacteristics = [responseCopy allCharacteristics];
    v38 = [HFErrorResultComponent componentForWriteErrorForCharacteristics:allCharacteristics valueSource:sourceCopy];
    [v27 na_safeAddObject:v38];

    v39 = +[HFErrorResultComponent componentForAccessoryReprovisionState:](HFErrorResultComponent, "componentForAccessoryReprovisionState:", [accessoryCopy accessoryReprovisionState]);
    [v27 na_safeAddObject:v39];

    if ([v27 count])
    {
      v40 = [(HFItemResultComponent *)HFErrorResultComponent combinedResultsForComponents:v27];
      [v20 addEntriesFromDictionary:v40];
    }

    v41 = [v75 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
    if ([v41 BOOLValue])
    {

      objectCopy = v72;
    }

    else
    {
      error5 = [metadataCopy error];
      underlyingError = [error5 underlyingError];
      na_isCancelledError = [underlyingError na_isCancelledError];

      objectCopy = v72;
      if (!na_isCancelledError)
      {
LABEL_21:
        v45 = [v20 objectForKeyedSubscript:@"errorDescription"];
        [v20 na_safeSetObject:v45 forKey:@"description"];

        if ([v27 count])
        {
          v46 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v78 = v71;
            v79 = 2112;
            v80 = v20;
            _os_log_error_impl(&dword_20D9BF000, v46, OS_LOG_TYPE_ERROR, "Added HFErrorResultComponent to results for object %@: %@", buf, 0x16u);
          }
        }

        goto LABEL_26;
      }
    }

    [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"readsSkipped"];
    goto LABEL_21;
  }

LABEL_26:
  if ([metadataCopy primaryState])
  {
    goto LABEL_32;
  }

  v47 = [v20 objectForKeyedSubscript:@"errorDescription"];
  if (v47)
  {
    goto LABEL_28;
  }

  if (!+[HFUtilities shouldSuppressAllErrorsForDemo])
  {
    v48 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionUpdating", @"HFServiceDescriptionUpdating", 1);
    [v20 setObject:v48 forKeyedSubscript:@"description"];

    if ([accessoryCopy hf_isSuspended])
    {
      v47 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicValuePowerStateOff", @"HFCharacteristicValuePowerStateOff", 1);
      [v20 setObject:v47 forKeyedSubscript:@"description"];
LABEL_28:
    }
  }

LABEL_32:
  allCharacteristics2 = [responseCopy allCharacteristics];
  v50 = [allCharacteristics2 mutableCopy];

  hf_softwareUpdateDependentObjects = [accessoryCopy hf_softwareUpdateDependentObjects];
  [v50 unionSet:hf_softwareUpdateDependentObjects];

  v52 = [resultsCopy objectForKeyedSubscript:@"dependentHomeKitObjects"];
  [v50 unionSet:v52];

  if ([v50 count])
  {
    [v20 setObject:v50 forKeyedSubscript:@"dependentHomeKitObjects"];
  }

  if ([accessoryCopy supportsSoftwareUpdateV2])
  {
    [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasSoftwareUpdateV2Dependency"];
  }

  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];

  v53 = [resultsCopy objectForKeyedSubscript:@"batteryLow"];
  if ([v53 BOOLValue])
  {
    v54 = +[HFUtilities shouldSuppressAllErrorsForDemo];

    if (!v54)
    {
      v55 = [v20 objectForKeyedSubscript:@"longErrorDescription"];

      if (!v55)
      {
        v56 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionBatteryLow", @"HFServiceDescriptionBatteryLow", 1);
        [v20 setObject:v56 forKeyedSubscript:@"longErrorDescription"];
      }

      [v20 setObject:&unk_2825243A8 forKeyedSubscript:@"badge"];
      [v20 setObject:&unk_2825243C0 forKeyedSubscript:@"descriptionBadge"];
      if (_os_feature_enabled_impl())
      {
        [v20 setObject:&unk_2825243D8 forKeyedSubscript:@"descriptionBadge"];
      }

      [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"lowBattery"];
      [v20 hf_setMinimumDisplayPriority:1];
    }
  }

  else
  {
  }

  if ([accessoryCopy certificationStatus] == 1 && !+[HFUtilities shouldSuppressAllErrorsForDemo](HFUtilities, "shouldSuppressAllErrorsForDemo"))
  {
    v57 = _HFLocalizedStringWithDefaultValue(@"HFServiceLongFormPersistentWarningHomeKitUncertified", @"HFServiceLongFormPersistentWarningHomeKitUncertified", 1);
    [v20 setObject:v57 forKeyedSubscript:@"persistentWarningDescription"];

    services = [accessoryCopy services];
    v59 = [services na_any:&__block_literal_global_122_0];

    if (v59)
    {
      if (_os_feature_enabled_impl())
      {
        v60 = _HFLocalizedStringWithDefaultValue(@"HFServiceLongFormPersistentWarningHomeKitUncertified_Lock", @"HFServiceLongFormPersistentWarningHomeKitUncertified_Lock", 1);
        [v20 setObject:v60 forKeyedSubscript:@"persistentWarningDescription"];
      }
    }
  }

  [self _appendSoftwareUpdateResultsForAccessory:accessoryCopy toResults:v20];
  [self _appendDestinationURLResultsForHomeKitObject:objectCopy backingAccessory:accessoryCopy toResults:v20];
  v61 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(accessoryCopy, "supportsIdentify")}];
  [v20 setObject:v61 forKeyedSubscript:@"isIdentifiable"];

  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(accessoryCopy, "suspendedState")}];
  [v20 setObject:v62 forKeyedSubscript:@"suspendedState"];

  v63 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(accessoryCopy, "hf_canSyncExternalSettings") ^ 1}];
  [v20 setObject:v63 forKeyedSubscript:@"externalSettingIsDisabled"];

  v64 = [v20 objectForKeyedSubscript:@"priority"];
  integerValue = [v64 integerValue];

  v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue > 0];
  [v20 setObject:v66 forKeyedSubscript:@"descriptionStyle"];

  v67 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __170__HFServiceLikeItemResultFactory_populateStandardResultsForHomeKitObject_withBackingAccessory_displayMetadata_readResponse_batteryLevelResults_valueSource_updateOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0EB0]];

  return v3;
}

+ (void)_appendSoftwareUpdateResultsForAccessory:(id)accessory toResults:(id)results
{
  accessoryCopy = accessory;
  resultsCopy = results;
  isFirmwareUpdateAvailable = [accessoryCopy isFirmwareUpdateAvailable];
  home = [accessoryCopy home];
  v8 = home;
  if (isFirmwareUpdateAvailable)
  {
    hf_currentUserIsRestrictedGuest = [home hf_currentUserIsRestrictedGuest];

    if ((hf_currentUserIsRestrictedGuest & 1) == 0)
    {
      v10 = _HFLocalizedStringWithDefaultValue(@"HFServiceDetailedControlDescriptionFirmwareUpdateAvailable", @"HFServiceDetailedControlDescriptionFirmwareUpdateAvailable", 1);
      [resultsCopy setObject:v10 forKeyedSubscript:@"detailedControlDescription"];

      [resultsCopy setObject:&unk_2825243D8 forKeyedSubscript:@"badge"];
      [resultsCopy setObject:&unk_2825243A8 forKeyedSubscript:@"descriptionBadge"];
    }

    goto LABEL_16;
  }

  if (![home hf_currentUserIsOwner])
  {
LABEL_15:

    goto LABEL_16;
  }

  hf_softwareUpdatePossessesNecessaryDocumentation = [accessoryCopy hf_softwareUpdatePossessesNecessaryDocumentation];

  if (!hf_softwareUpdatePossessesNecessaryDocumentation)
  {
    goto LABEL_16;
  }

  if ([accessoryCopy hf_isReadyToInstallSoftwareUpdate] && objc_msgSend(accessoryCopy, "isControllable"))
  {
    [resultsCopy setObject:&unk_2825243D8 forKeyedSubscript:@"badge"];
    [resultsCopy setObject:&unk_2825243A8 forKeyedSubscript:@"descriptionBadge"];
    v12 = _HFLocalizedStringWithDefaultValue(@"HFServiceDetailedControlDescriptionSoftwareUpdateAvailable", @"HFServiceDetailedControlDescriptionSoftwareUpdateAvailable", 1);
    [resultsCopy setObject:v12 forKeyedSubscript:@"detailedControlDescription"];
  }

  if ([accessoryCopy hf_isInstallingSoftwareUpdate])
  {
    v13 = @"HFFirmwareUpdateInstallingDescription";
  }

  else
  {
    if (![accessoryCopy hf_isDownloadingSoftwareUpdate])
    {
      goto LABEL_16;
    }

    v13 = @"HFFirmwareUpdateDownloadingDescription";
  }

  v14 = _HFLocalizedStringWithDefaultValue(v13, v13, 1);
  if (v14)
  {
    v8 = v14;
    [resultsCopy setObject:v14 forKeyedSubscript:@"description"];
    [resultsCopy setObject:v8 forKeyedSubscript:@"detailedControlDescription"];
    goto LABEL_15;
  }

LABEL_16:
}

+ (void)_appendDestinationURLResultsForHomeKitObject:(id)object backingAccessory:(id)accessory toResults:(id)results
{
  objectCopy = object;
  resultsCopy = results;
  uniqueIdentifier = [accessory uniqueIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 7;
LABEL_5:
    uniqueIdentifier2 = [objectCopy uniqueIdentifier];

    uniqueIdentifier = uniqueIdentifier2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 5;
    goto LABEL_5;
  }

  v9 = 4;
LABEL_7:
  v11 = [HFURLComponents homeKitObjectURLForDestination:v9 secondaryDestination:2 UUID:uniqueIdentifier];
  [resultsCopy setObject:v11 forKeyedSubscript:@"alternateQuickControlURL"];

  v12 = [HFURLComponents homeKitObjectURLForDestination:v9 secondaryDestination:1 UUID:uniqueIdentifier];
  [resultsCopy setObject:v12 forKeyedSubscript:@"itemDetailsURL"];
}

@end