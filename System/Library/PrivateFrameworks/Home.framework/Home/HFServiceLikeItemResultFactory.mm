@interface HFServiceLikeItemResultFactory
+ (id)populateStandardResultsForHomeKitObject:(id)a3 withBackingAccessory:(id)a4 displayMetadata:(id)a5 readResponse:(id)a6 batteryLevelResults:(id)a7 valueSource:(id)a8 updateOptions:(id)a9;
+ (void)_appendDestinationURLResultsForHomeKitObject:(id)a3 backingAccessory:(id)a4 toResults:(id)a5;
+ (void)_appendSoftwareUpdateResultsForAccessory:(id)a3 toResults:(id)a4;
@end

@implementation HFServiceLikeItemResultFactory

+ (id)populateStandardResultsForHomeKitObject:(id)a3 withBackingAccessory:(id)a4 displayMetadata:(id)a5 readResponse:(id)a6 batteryLevelResults:(id)a7 valueSource:(id)a8 updateOptions:(id)a9
{
  v85 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v76 = a8;
  v19 = a9;
  v20 = objc_opt_new();
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "primaryState")}];
  [v20 setObject:v21 forKeyedSubscript:@"state"];

  if ([v16 transitioningPrimaryState])
  {
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "transitioningPrimaryState")}];
    [v20 setObject:v22 forKeyedSubscript:@"transitioningState"];
  }

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v16, "priority")}];
  [v20 setObject:v23 forKeyedSubscript:?];

  v24 = [v16 sortKey];
  [v20 na_safeSetObject:v24 forKey:@"sortKey"];

  v75 = v19;
  v25 = [v19 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
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
    v72 = v14;
    v29 = v14;
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

    v73 = [(HFSymptomResultContextProvider *)v28 initWithAccessory:v15 mediaSystem:v31];
    v32 = [v16 error];

    if (v32)
    {
      v33 = [v16 error];
      [v20 setObject:v33 forKeyedSubscript:@"underlyingError"];

      v34 = [v16 error];
      v35 = [HFErrorResultComponent componentForDisplayError:v34 symptomContextProvider:v73];

      if (v35)
      {
        v36 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v70 = [v16 error];
          v69 = [v17 allFailedReadResponses];
          *buf = 138413058;
          v78 = v70;
          v79 = 2112;
          v80 = v35;
          v81 = 2112;
          v82 = v29;
          v83 = 2112;
          v84 = v69;
          _os_log_error_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_ERROR, "Displaying error %@ as %@ for %@ read errors %@", buf, 0x2Au);
        }

        [v27 addObject:v35];
      }
    }

    v37 = [v17 allCharacteristics];
    v38 = [HFErrorResultComponent componentForWriteErrorForCharacteristics:v37 valueSource:v76];
    [v27 na_safeAddObject:v38];

    v39 = +[HFErrorResultComponent componentForAccessoryReprovisionState:](HFErrorResultComponent, "componentForAccessoryReprovisionState:", [v15 accessoryReprovisionState]);
    [v27 na_safeAddObject:v39];

    if ([v27 count])
    {
      v40 = [(HFItemResultComponent *)HFErrorResultComponent combinedResultsForComponents:v27];
      [v20 addEntriesFromDictionary:v40];
    }

    v41 = [v75 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
    if ([v41 BOOLValue])
    {

      v14 = v72;
    }

    else
    {
      v42 = [v16 error];
      v43 = [v42 underlyingError];
      v44 = [v43 na_isCancelledError];

      v14 = v72;
      if (!v44)
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
  if ([v16 primaryState])
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

    if ([v15 hf_isSuspended])
    {
      v47 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicValuePowerStateOff", @"HFCharacteristicValuePowerStateOff", 1);
      [v20 setObject:v47 forKeyedSubscript:@"description"];
LABEL_28:
    }
  }

LABEL_32:
  v49 = [v17 allCharacteristics];
  v50 = [v49 mutableCopy];

  v51 = [v15 hf_softwareUpdateDependentObjects];
  [v50 unionSet:v51];

  v52 = [v18 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  [v50 unionSet:v52];

  if ([v50 count])
  {
    [v20 setObject:v50 forKeyedSubscript:@"dependentHomeKitObjects"];
  }

  if ([v15 supportsSoftwareUpdateV2])
  {
    [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hasSoftwareUpdateV2Dependency"];
  }

  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];

  v53 = [v18 objectForKeyedSubscript:@"batteryLow"];
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

  if ([v15 certificationStatus] == 1 && !+[HFUtilities shouldSuppressAllErrorsForDemo](HFUtilities, "shouldSuppressAllErrorsForDemo"))
  {
    v57 = _HFLocalizedStringWithDefaultValue(@"HFServiceLongFormPersistentWarningHomeKitUncertified", @"HFServiceLongFormPersistentWarningHomeKitUncertified", 1);
    [v20 setObject:v57 forKeyedSubscript:@"persistentWarningDescription"];

    v58 = [v15 services];
    v59 = [v58 na_any:&__block_literal_global_122_0];

    if (v59)
    {
      if (_os_feature_enabled_impl())
      {
        v60 = _HFLocalizedStringWithDefaultValue(@"HFServiceLongFormPersistentWarningHomeKitUncertified_Lock", @"HFServiceLongFormPersistentWarningHomeKitUncertified_Lock", 1);
        [v20 setObject:v60 forKeyedSubscript:@"persistentWarningDescription"];
      }
    }
  }

  [a1 _appendSoftwareUpdateResultsForAccessory:v15 toResults:v20];
  [a1 _appendDestinationURLResultsForHomeKitObject:v14 backingAccessory:v15 toResults:v20];
  v61 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v15, "supportsIdentify")}];
  [v20 setObject:v61 forKeyedSubscript:@"isIdentifiable"];

  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "suspendedState")}];
  [v20 setObject:v62 forKeyedSubscript:@"suspendedState"];

  v63 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "hf_canSyncExternalSettings") ^ 1}];
  [v20 setObject:v63 forKeyedSubscript:@"externalSettingIsDisabled"];

  v64 = [v20 objectForKeyedSubscript:@"priority"];
  v65 = [v64 integerValue];

  v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v65 > 0];
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

+ (void)_appendSoftwareUpdateResultsForAccessory:(id)a3 toResults:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = [v15 isFirmwareUpdateAvailable];
  v7 = [v15 home];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 hf_currentUserIsRestrictedGuest];

    if ((v9 & 1) == 0)
    {
      v10 = _HFLocalizedStringWithDefaultValue(@"HFServiceDetailedControlDescriptionFirmwareUpdateAvailable", @"HFServiceDetailedControlDescriptionFirmwareUpdateAvailable", 1);
      [v5 setObject:v10 forKeyedSubscript:@"detailedControlDescription"];

      [v5 setObject:&unk_2825243D8 forKeyedSubscript:@"badge"];
      [v5 setObject:&unk_2825243A8 forKeyedSubscript:@"descriptionBadge"];
    }

    goto LABEL_16;
  }

  if (![v7 hf_currentUserIsOwner])
  {
LABEL_15:

    goto LABEL_16;
  }

  v11 = [v15 hf_softwareUpdatePossessesNecessaryDocumentation];

  if (!v11)
  {
    goto LABEL_16;
  }

  if ([v15 hf_isReadyToInstallSoftwareUpdate] && objc_msgSend(v15, "isControllable"))
  {
    [v5 setObject:&unk_2825243D8 forKeyedSubscript:@"badge"];
    [v5 setObject:&unk_2825243A8 forKeyedSubscript:@"descriptionBadge"];
    v12 = _HFLocalizedStringWithDefaultValue(@"HFServiceDetailedControlDescriptionSoftwareUpdateAvailable", @"HFServiceDetailedControlDescriptionSoftwareUpdateAvailable", 1);
    [v5 setObject:v12 forKeyedSubscript:@"detailedControlDescription"];
  }

  if ([v15 hf_isInstallingSoftwareUpdate])
  {
    v13 = @"HFFirmwareUpdateInstallingDescription";
  }

  else
  {
    if (![v15 hf_isDownloadingSoftwareUpdate])
    {
      goto LABEL_16;
    }

    v13 = @"HFFirmwareUpdateDownloadingDescription";
  }

  v14 = _HFLocalizedStringWithDefaultValue(v13, v13, 1);
  if (v14)
  {
    v8 = v14;
    [v5 setObject:v14 forKeyedSubscript:@"description"];
    [v5 setObject:v8 forKeyedSubscript:@"detailedControlDescription"];
    goto LABEL_15;
  }

LABEL_16:
}

+ (void)_appendDestinationURLResultsForHomeKitObject:(id)a3 backingAccessory:(id)a4 toResults:(id)a5
{
  v13 = a3;
  v7 = a5;
  v8 = [a4 uniqueIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 7;
LABEL_5:
    v10 = [v13 uniqueIdentifier];

    v8 = v10;
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
  v11 = [HFURLComponents homeKitObjectURLForDestination:v9 secondaryDestination:2 UUID:v8];
  [v7 setObject:v11 forKeyedSubscript:@"alternateQuickControlURL"];

  v12 = [HFURLComponents homeKitObjectURLForDestination:v9 secondaryDestination:1 UUID:v8];
  [v7 setObject:v12 forKeyedSubscript:@"itemDetailsURL"];
}

@end