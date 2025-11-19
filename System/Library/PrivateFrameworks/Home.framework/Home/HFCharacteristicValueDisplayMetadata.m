@interface HFCharacteristicValueDisplayMetadata
+ (id)displayMetadataForAccessory:(id)a3 withContextProvider:(id)a4;
+ (id)displayMetadataForMediaProfile:(id)a3 withContextProvider:(id)a4;
+ (id)displayMetadataForService:(id)a3 characteristicReadResponse:(id)a4;
+ (int64_t)_unknownStatePriorityForServiceDescriptor:(id)a3 characteristicReadResponse:(id)a4;
+ (void)_displayAppleIDSplitErrorForMediaProfile:(id)a3 havingMetadata:(id)a4 withContextProvider:(id)a5;
+ (void)_overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:(id)a3 withAccessory:(id)a4;
+ (void)_populateSplitMediaAccountErrorForMedatadata:(id)a3 withContextProvider:(id)a4;
- (void)dealloc;
- (void)parseActiveStateForServiceType:(id)a3 response:(id)a4;
- (void)parseAirPurifierResponse:(id)a3;
- (void)parseCurrentTargetPositionForServiceType:(id)a3 response:(id)a4;
- (void)parseGarageDoorOpenerResponse:(id)a3;
- (void)parseHumidifierDehumidifierResponse:(id)a3;
- (void)parseInformationalSensorWithServiceType:(id)a3 response:(id)a4;
- (void)parseLockMechanismResponse:(id)a3;
- (void)parsePowerStateForServiceType:(id)a3 response:(id)a4;
- (void)parseProgammableSwitchOfType:(id)a3 response:(id)a4;
- (void)parseSecuritySystemResponse:(id)a3;
- (void)parseThermostatResponse:(id)a3 serviceType:(id)a4;
- (void)parseWarningSensorWithServiceType:(id)a3 response:(id)a4;
@end

@implementation HFCharacteristicValueDisplayMetadata

- (void)dealloc
{
  v3 = [(HFCharacteristicValueDisplayMetadata *)self splitAccountFuture];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = HFCharacteristicValueDisplayMetadata;
  [(HFCharacteristicValueDisplayMetadata *)&v4 dealloc];
}

+ (id)displayMetadataForService:(id)a3 characteristicReadResponse:(id)a4
{
  v101 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v78 = v6;
  v8 = [v6 hf_serviceDescriptor];
  v9 = [v8 serviceType];
  v75 = a1;
  v72 = v8;
  v79 = v7;
  v76 = objc_alloc_init(HFCharacteristicValueDisplayMetadata);
  -[HFCharacteristicValueDisplayMetadata setPriority:](v76, "setPriority:", [a1 _unknownStatePriorityForServiceDescriptor:v8 characteristicReadResponse:v7]);
  v70 = [MEMORY[0x277CD1D90] hf_sensorServiceTypes];
  v69 = __HFSimplePowerStateServices_block_invoke();
  v68 = __HFSimpleActiveStateServices_block_invoke();
  v73 = __HFCurrentTargetPositionServices_block_invoke();
  v71 = v9;
  v10 = [MEMORY[0x277CD1D90] hf_requiredCharacteristicTypesForDisplayMetadataWithServiceType:v9];
  v11 = [v10 allObjects];
  v12 = [MEMORY[0x277CD1970] hf_characteristicSortComparator];
  v13 = [v11 sortedArrayUsingComparator:v12];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v82 objects:v100 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v83;
    v17 = 1;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v83 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v82 + 1) + 8 * i);
        v20 = [v79 responseForCharacteristicType:v19];
        v21 = [v20 error];
        v22 = v21;
        if (v20)
        {
          v23 = [v21 hf_isHFErrorWithCode:4];
        }

        else
        {
          v23 = 0;
        }

        v24 = HFLogForCategory(0x3DuLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v31 = NSStringFromSelector(a2);
          *buf = 138413826;
          v87 = v75;
          v88 = 2112;
          v89 = v31;
          v90 = 2112;
          v91 = v78;
          v92 = 2112;
          v93 = v19;
          v94 = 2112;
          v95 = v20;
          v96 = 2112;
          v97 = v22;
          v98 = 1024;
          v99 = v23;
          _os_log_debug_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEBUG, "%@:%@ Service: %@ CharacteristicType: %@, aReadResponse: %@, readError: %@, readPolicyDisallowedRead: %{BOOL}d", buf, 0x44u);
        }

        v17 &= v20 != 0;
        if (v23)
        {
          v25 = [v78 accessory];
          v26 = [v25 hf_isHomePod];

          v17 &= v26;
        }

        if ([v22 hf_isHFErrorWithCode:103])
        {

          v22 = 0;
        }

        else if (v22)
        {
          v27 = [v20 readTraits];
          v28 = [v79 contextProvider];
          v29 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v22 readTraits:v27 contextProvider:v28];
          [(HFCharacteristicValueDisplayMetadata *)v76 setError:v29];

          v30 = [(HFCharacteristicValueDisplayMetadata *)v76 error];

          if (v30)
          {

            goto LABEL_22;
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v82 objects:v100 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_22:

  v32 = [(HFCharacteristicValueDisplayMetadata *)v76 error];

  if (!v32 && (v17 & 1) == 0)
  {
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __93__HFCharacteristicValueDisplayMetadata_displayMetadataForService_characteristicReadResponse___block_invoke;
    v80[3] = &unk_277DF3130;
    v33 = v79;
    v81 = v33;
    v34 = [obj na_any:v80];
    v35 = [v33 allCharacteristics];
    v36 = [v35 count];

    if (v36)
    {
      if (!v34)
      {
        [(HFCharacteristicValueDisplayMetadata *)v76 setPriority:-1];
LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      v37 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v67 = [v78 accessory];
        *buf = 138412546;
        v87 = v78;
        v88 = 2112;
        v89 = v67;
        _os_log_error_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_ERROR, "Read response empty for service %@ in accessory %@", buf, 0x16u);
      }
    }

    v38 = [MEMORY[0x277CCA9B8] hf_errorWithCode:35];
    v39 = [MEMORY[0x277CBEB98] set];
    v40 = [v33 contextProvider];
    v41 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v38 readTraits:v39 contextProvider:v40];
    [(HFCharacteristicValueDisplayMetadata *)v76 setError:v41];

    goto LABEL_31;
  }

LABEL_32:
  v42 = [v78 accessory];
  v43 = [v42 hf_siriEndpointProfile];
  if (v43)
  {
    v44 = v43;
    v45 = [(HFCharacteristicValueDisplayMetadata *)v76 error];

    v47 = v70;
    v46 = v71;
    v49 = v68;
    v48 = v69;
    if (v45)
    {
      goto LABEL_38;
    }

    v50 = [v78 accessory];
    v42 = [v50 hf_errorForCurrentSessionState];

    if (v42)
    {
      v51 = [MEMORY[0x277CBEB98] set];
      v52 = [v79 contextProvider];
      v53 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v42 readTraits:v51 contextProvider:v52];
      [(HFCharacteristicValueDisplayMetadata *)v76 setError:v53];
    }
  }

  else
  {
    v47 = v70;
    v46 = v71;
    v49 = v68;
    v48 = v69;
  }

LABEL_38:
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v54 = [(HFCharacteristicValueDisplayMetadata *)v76 error];

    if (v54)
    {
      v55 = [v78 accessory];
      [v75 _overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:v76 withAccessory:v55];
    }
  }

  v56 = [(HFCharacteristicValueDisplayMetadata *)v76 error];
  v57 = [v56 isPersistentError];

  if (v57)
  {
    [(HFCharacteristicValueDisplayMetadata *)v76 setPriority:0];
  }

  v58 = [HFServiceState stateClassForServiceDescriptor:v72];
  if (v58)
  {
    v59 = [[v58 alloc] initWithBatchReadResponse:v79];
    if (v59)
    {
      [(HFCharacteristicValueDisplayMetadata *)v76 setServiceState:v59];
      -[HFCharacteristicValueDisplayMetadata setPrimaryState:](v76, "setPrimaryState:", [v59 primaryState]);
      -[HFCharacteristicValueDisplayMetadata setPriority:](v76, "setPriority:", [v59 priority]);
      if ([v59 isTransitioning])
      {
        v60 = [v59 primaryState];
        if (v60 == 2)
        {
          v61 = 1;
        }

        else
        {
          v61 = 2 * (v60 == 1);
        }

        [(HFCharacteristicValueDisplayMetadata *)v76 setTransitioningPrimaryState:v61];
      }

      v62 = MEMORY[0x277CD1D90];
      v63 = [v72 serviceType];
      v64 = [v62 localizedDescriptionForServiceType:v63];
      [(HFCharacteristicValueDisplayMetadata *)v76 setSortKey:v64];
    }

LABEL_52:

    goto LABEL_55;
  }

  if (![v46 isEqualToString:*MEMORY[0x277CD0DD0]])
  {
    if (![v47 containsObject:v46])
    {
      if ([v48 containsObject:v46])
      {
        [(HFCharacteristicValueDisplayMetadata *)v76 parsePowerStateForServiceType:v46 response:v79];
      }

      else if ([v49 containsObject:v46])
      {
        [(HFCharacteristicValueDisplayMetadata *)v76 parseActiveStateForServiceType:v46 response:v79];
      }

      else if ([v73 containsObject:v46])
      {
        [(HFCharacteristicValueDisplayMetadata *)v76 parseCurrentTargetPositionForServiceType:v46 response:v79];
      }

      else if ([v46 isEqualToString:*MEMORY[0x277CD0E58]])
      {
        [(HFCharacteristicValueDisplayMetadata *)v76 parseGarageDoorOpenerResponse:v79];
      }

      else if ([v46 isEqualToString:*MEMORY[0x277CD0EB0]])
      {
        [(HFCharacteristicValueDisplayMetadata *)v76 parseLockMechanismResponse:v79];
      }

      else if ([v46 isEqualToString:*MEMORY[0x277CD0ED8]])
      {
        [(HFCharacteristicValueDisplayMetadata *)v76 parseSecuritySystemResponse:v79];
      }

      else if (([v46 isEqualToString:*MEMORY[0x277CD0F30]] & 1) != 0 || objc_msgSend(v46, "isEqualToString:", *MEMORY[0x277CD0E60]))
      {
        [(HFCharacteristicValueDisplayMetadata *)v76 parseThermostatResponse:v79 serviceType:v46];
      }

      else if ([v46 isEqualToString:*MEMORY[0x277CD0DD8]])
      {
        [(HFCharacteristicValueDisplayMetadata *)v76 parseAirPurifierResponse:v79];
      }

      else if ([v46 isEqualToString:*MEMORY[0x277CD0E68]])
      {
        [(HFCharacteristicValueDisplayMetadata *)v76 parseHumidifierDehumidifierResponse:v79];
      }

      else if (([v46 isEqualToString:*MEMORY[0x277CD0F00]] & 1) != 0 || objc_msgSend(v46, "isEqualToString:", *MEMORY[0x277CD0EF8]))
      {
        [(HFCharacteristicValueDisplayMetadata *)v76 parseProgammableSwitchOfType:v46 response:v79];
      }

      else
      {
        NSLog(&cfstr_UnknownOrUnimp.isa, v46);
      }

      goto LABEL_55;
    }

    if (qword_280E02F40 != -1)
    {
      dispatch_once(&qword_280E02F40, &__block_literal_global_126_0);
    }

    v59 = qword_280E02F48;
    if ([v59 containsObject:v46])
    {
      [(HFCharacteristicValueDisplayMetadata *)v76 parseWarningSensorWithServiceType:v46 response:v79];
    }

    else
    {
      [(HFCharacteristicValueDisplayMetadata *)v76 parseInformationalSensorWithServiceType:v46 response:v79];
    }

    goto LABEL_52;
  }

  [(HFCharacteristicValueDisplayMetadata *)v76 setPrimaryState:1];
  [(HFCharacteristicValueDisplayMetadata *)v76 setPriority:-1];
LABEL_55:

  v65 = *MEMORY[0x277D85DE8];

  return v76;
}

uint64_t __93__HFCharacteristicValueDisplayMetadata_displayMetadataForService_characteristicReadResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allCharacteristics];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__HFCharacteristicValueDisplayMetadata_displayMetadataForService_characteristicReadResponse___block_invoke_2;
  v9[3] = &unk_277DF6218;
  v10 = v3;
  v5 = v3;
  v6 = [v4 na_filter:v9];

  v7 = [v6 na_any:&__block_literal_global_110];
  return v7;
}

uint64_t __93__HFCharacteristicValueDisplayMetadata_displayMetadataForService_characteristicReadResponse___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __93__HFCharacteristicValueDisplayMetadata_displayMetadataForService_characteristicReadResponse___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a2 service];
  v3 = [v2 accessory];

  if (v3 && ([v3 isReachable] & 1) == 0)
  {
    v5 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = [v3 hf_prettyDescription];
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Displaying unreachable for accessory: %@", &v9, 0xCu);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

void __93__HFCharacteristicValueDisplayMetadata_displayMetadataForService_characteristicReadResponse___block_invoke_2_124()
{
  v9[8] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0E10];
  v9[0] = *MEMORY[0x277CD0DE0];
  v9[1] = v1;
  v2 = *MEMORY[0x277CD0E20];
  v9[2] = *MEMORY[0x277CD0E18];
  v9[3] = v2;
  v3 = *MEMORY[0x277CD0EC0];
  v9[4] = *MEMORY[0x277CD0E90];
  v9[5] = v3;
  v4 = *MEMORY[0x277CD0EE8];
  v9[6] = *MEMORY[0x277CD0EC8];
  v9[7] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:8];
  v6 = [v0 setWithArray:v5];
  v7 = qword_280E02F48;
  qword_280E02F48 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)displayMetadataForAccessory:(id)a3 withContextProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(HFCharacteristicValueDisplayMetadata);
  [(HFCharacteristicValueDisplayMetadata *)v8 setPrimaryState:1];
  [(HFCharacteristicValueDisplayMetadata *)v8 setPriority:-1];
  if (([v6 isReachable] & 1) == 0)
  {
    [(HFCharacteristicValueDisplayMetadata *)v8 setPrimaryState:0];
    [(HFCharacteristicValueDisplayMetadata *)v8 setPriority:1];
    v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:35];
    v10 = [MEMORY[0x277CBEB98] set];
    v11 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v9 readTraits:v10 contextProvider:v7];
    [(HFCharacteristicValueDisplayMetadata *)v8 setError:v11];
  }

  v12 = [v6 hf_siriEndpointProfile];
  if (v12)
  {
    v13 = v12;
    v14 = [(HFCharacteristicValueDisplayMetadata *)v8 error];

    if (!v14)
    {
      v15 = [v6 hf_errorForCurrentSessionState];
      if (v15)
      {
        v16 = [MEMORY[0x277CBEB98] set];
        v17 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v15 readTraits:v16 contextProvider:v7];
        [(HFCharacteristicValueDisplayMetadata *)v8 setError:v17];
      }
    }
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    v18 = [(HFCharacteristicValueDisplayMetadata *)v8 error];

    if (v18)
    {
      [a1 _overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:v8 withAccessory:v6];
    }
  }

  v19 = [(HFCharacteristicValueDisplayMetadata *)v8 error];

  if (!v19)
  {
    v20 = +[HFSymptomFixManager sharedManager];
    v21 = [v20 anySymptomIsBeingFixedForFixableObject:v6];

    v22 = [v6 symptomsHandler];
    v23 = [a1 _errorForSymptomHandler:v22 isFixingCurrently:v21 withContextProvider:v7];
    [(HFCharacteristicValueDisplayMetadata *)v8 setError:v23];
  }

  v24 = [(HFCharacteristicValueDisplayMetadata *)v8 error];
  v25 = [v24 isPersistentError];

  if (v25)
  {
    [(HFCharacteristicValueDisplayMetadata *)v8 setPriority:0];
  }

  return v8;
}

+ (void)_overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:(id)a3 withAccessory:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v6 supportsCHIP] || !objc_msgSend(v6, "requiresThreadRouter"))
  {
    goto LABEL_6;
  }

  v7 = [v5 error];
  if ([v7 category] == 1)
  {

    goto LABEL_8;
  }

  v8 = [v5 error];
  v9 = [v8 category];

  if (v9)
  {
LABEL_6:
    v10 = HFLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 supportsCHIP];
      v12 = [v6 requiresThreadRouter];
      v13 = +[HFUtilities supportsThreadService];
      v14 = [v6 home];
      v15 = [v14 hf_hasResident];
      v16 = [v5 error];
      v27 = 136316418;
      v28 = "+[HFCharacteristicValueDisplayMetadata _overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:withAccessory:]";
      v29 = 1024;
      v30 = v11;
      v31 = 1024;
      v32 = v12;
      v33 = 1024;
      v34 = v13;
      v35 = 1024;
      v36 = v15;
      v37 = 2048;
      v38 = [v16 category];
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "%s not overriding error category due to no thread network: [accessory supportsCHIP = %d, requiresThreadRouter = %d], [HFUtilities supportsThreadService] = %d, hasResident = %d, displayMetadata.error.category = %lu", &v27, 0x2Eu);
    }

    goto LABEL_21;
  }

LABEL_8:
  if (!+[HFUtilities supportsThreadService])
  {
    v24 = HFLogForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315138;
      v28 = "+[HFCharacteristicValueDisplayMetadata _overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:withAccessory:]";
      _os_log_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEFAULT, "%s overriding error category to HFCharacteristicValueDisplayErrorCategoryUnreachableCurrentDeviceNoThreadNetwork", &v27, 0xCu);
    }

    v22 = [v5 error];
    v10 = v22;
    v23 = 5;
    goto LABEL_20;
  }

  v17 = [v6 home];
  v18 = [v17 hf_hasResident];

  if ((v18 & 1) == 0)
  {
    v25 = HFLogForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315138;
      v28 = "+[HFCharacteristicValueDisplayMetadata _overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:withAccessory:]";
      _os_log_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_DEFAULT, "%s overriding error category to HFCharacteristicValueDisplayErrorCategoryUnreachableNoThreadNetworkNoResident", &v27, 0xCu);
    }

    v22 = [v5 error];
    v10 = v22;
    v23 = 3;
    goto LABEL_20;
  }

  v19 = [v6 home];
  v20 = [v19 hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter];

  if ((v20 & 1) == 0)
  {
    v21 = HFLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315138;
      v28 = "+[HFCharacteristicValueDisplayMetadata _overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:withAccessory:]";
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "%s overriding error category to HFCharacteristicValueDisplayErrorCategoryUnreachableNoThreadNetworkResidentWithoutThread", &v27, 0xCu);
    }

    v22 = [v5 error];
    v10 = v22;
    v23 = 4;
LABEL_20:
    [v22 setCategory:v23];
LABEL_21:
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (id)displayMetadataForMediaProfile:(id)a3 withContextProvider:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(HFCharacteristicValueDisplayMetadata);
  [(HFCharacteristicValueDisplayMetadata *)v8 setPriority:-1];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __91__HFCharacteristicValueDisplayMetadata_displayMetadataForMediaProfile_withContextProvider___block_invoke;
  v61[3] = &unk_277DFA520;
  v9 = v6;
  v62 = v9;
  [(HFCharacteristicValueDisplayMetadata *)v8 setPrimaryState:__91__HFCharacteristicValueDisplayMetadata_displayMetadataForMediaProfile_withContextProvider___block_invoke(v61)];
  v10 = [v9 hf_mediaValueSource];
  v11 = [v9 hf_mediaRouteIdentifier];
  v58 = v10;
  v12 = [v10 cachedPlaybackStateWriteErrorForRouteID:v11];

  if (![v9 hf_isReachable] || v12)
  {
    [(HFCharacteristicValueDisplayMetadata *)v8 setPrimaryState:0];
    [(HFCharacteristicValueDisplayMetadata *)v8 setPriority:1];
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] hf_errorWithCode:35];
    }

    v16 = v17;
LABEL_10:
    v18 = [MEMORY[0x277CBEB98] set];
    v19 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v16 readTraits:v18 contextProvider:v7];
    [(HFCharacteristicValueDisplayMetadata *)v8 setError:v19];

    goto LABEL_11;
  }

  v13 = [v9 hf_backingAccessory];
  v14 = [v13 hf_siriEndpointProfile];

  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = [v9 hf_backingAccessory];
  v16 = [v15 hf_errorForCurrentSessionState];

  if (v16)
  {
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
  v20 = [(HFCharacteristicValueDisplayMetadata *)v8 error];
  if (v20)
  {

    goto LABEL_14;
  }

  v23 = [v9 symptomsHandler];

  if (!v23)
  {
LABEL_14:
    v21 = [v9 symptoms];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __91__HFCharacteristicValueDisplayMetadata_displayMetadataForMediaProfile_withContextProvider___block_invoke_2;
    v59[3] = &unk_277DFA548;
    v60 = v9;
    v22 = [v21 na_any:v59];

    if (!v22)
    {
      goto LABEL_18;
    }
  }

  v24 = +[HFSymptomFixManager sharedManager];
  v25 = [v24 anySymptomIsBeingFixedForFixableObject:v9];

  v26 = [v9 symptomsHandler];
  v27 = [a1 _errorForSymptomHandler:v26 isFixingCurrently:v25 withContextProvider:v7];
  [(HFCharacteristicValueDisplayMetadata *)v8 setError:v27];

LABEL_18:
  if ([v9 hf_homePodIsCapableOfShowingSplitAccountError])
  {
    v28 = [(HFCharacteristicValueDisplayMetadata *)v8 error];
    v29 = [v28 underlyingSymptom];

    if (!v29)
    {
      [a1 _displayAppleIDSplitErrorForMediaProfile:v9 havingMetadata:v8 withContextProvider:v7];
    }
  }

  v30 = [(HFCharacteristicValueDisplayMetadata *)v8 error];
  v31 = [v30 isPersistentError];

  if (v31)
  {
    [(HFCharacteristicValueDisplayMetadata *)v8 setPriority:0];
  }

  v32 = +[HFMediaAccessoryUtility sharedInstance];
  v33 = [v9 uniqueIdentifier];
  v34 = [v33 UUIDString];
  v35 = [v32 isHomePodRestartingCurrently:v34];

  v36 = +[HFMediaAccessoryUtility sharedInstance];
  v37 = [v9 hf_backingAccessory];
  v38 = [v37 uniqueIdentifier];
  v39 = [v38 UUIDString];
  v40 = [v36 isHomePodRestartingCurrently:v39];

  if ((v35 & 1) != 0 || v40)
  {
    v41 = HFLogForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v9 hf_backingAccessory];
      v43 = [v42 uniqueIdentifier];
      v44 = [v9 uniqueIdentifier];
      v45 = [v9 hf_backingAccessory];
      v46 = [v45 hf_isHomePod];
      *buf = 136316418;
      v64 = "+[HFCharacteristicValueDisplayMetadata displayMetadataForMediaProfile:withContextProvider:]";
      v65 = 2112;
      v66 = v43;
      v67 = 2112;
      v68 = v44;
      v69 = 1024;
      v70 = v46;
      v71 = 1024;
      v72 = v35;
      v73 = 1024;
      v74 = v40;
      _os_log_impl(&dword_20D9BF000, v41, OS_LOG_TYPE_DEFAULT, "%s mediaProfile.hf_backingAccessory.uniqueIdentifier: %@ mediaProfile.uniqueIdentifier: %@ HomePod: %{BOOL}d IsGroupedAccessoryRestarting: %{BOOL}d IsSoloAccessoryRestarting: %{BOOL}d", buf, 0x32u);
    }
  }

  v47 = [v9 uniqueIdentifier];
  v48 = (v47 != 0) & v35;

  if ((v48 & 1) == 0)
  {
    v49 = [(HFCharacteristicValueDisplayMetadata *)v8 error];
    if (((v49 == 0) & v40) != 1)
    {
      goto LABEL_35;
    }

    v52 = [v9 hf_backingAccessory];
    v53 = [v52 hf_isHomePod];

    if (!v53)
    {
      goto LABEL_36;
    }

    v54 = HFLogForCategory(0);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v64 = "+[HFCharacteristicValueDisplayMetadata displayMetadataForMediaProfile:withContextProvider:]";
      _os_log_impl(&dword_20D9BF000, v54, OS_LOG_TYPE_DEFAULT, "%s HomePodDeviceRestarting setting displayMetadata", buf, 0xCu);
    }
  }

  v49 = [MEMORY[0x277CCA9B8] hf_errorWithCode:58];
  v50 = [MEMORY[0x277CBEB98] set];
  v51 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v49 readTraits:v50 contextProvider:v7];
  [(HFCharacteristicValueDisplayMetadata *)v8 setError:v51];

  [(HFCharacteristicValueDisplayMetadata *)v8 setPriority:0];
LABEL_35:

LABEL_36:
  v55 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __91__HFCharacteristicValueDisplayMetadata_displayMetadataForMediaProfile_withContextProvider___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaSession];
  if ([v1 playbackState] == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t __91__HFCharacteristicValueDisplayMetadata_displayMetadataForMediaProfile_withContextProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 type];
  if (_os_feature_enabled_impl() && ([MEMORY[0x277CD1E80] hf_isNetworkDiagnosticsIssueForSymptomType:v3] & 1) != 0)
  {
    return 1;
  }

  result = 0;
  if (v3 <= 0x14 && ((1 << v3) & 0x180806) != 0)
  {
    v5 = [*(a1 + 32) accessories];
    v6 = [v5 anyObject];
    v7 = [v6 hf_shouldDisplayManualFixOptionForSymptom:v3];

    return v7;
  }

  return result;
}

+ (void)_displayAppleIDSplitErrorForMediaProfile:(id)a3 havingMetadata:(id)a4 withContextProvider:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 hf_settingsValueManager];
  v13 = [v12 valueForSettingAtKeyPath:@"root.home.dismissedHomePodHasNonMemberMediaAccountWarning"];
  v14 = [v13 BOOLValue];

  v15 = HFLogForCategory(5uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 138412802;
    v27 = a1;
    v28 = 2112;
    v29 = v16;
    v30 = 1024;
    v31 = v14;
    _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@ Was the Split Account warning dismissed? [%d]", buf, 0x1Cu);
  }

  objc_initWeak(buf, a1);
  v17 = [v9 hf_homePodSupportsMultiUserLanguage];
  if (v17)
  {
    v18 = v14;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __116__HFCharacteristicValueDisplayMetadata__displayAppleIDSplitErrorForMediaProfile_havingMetadata_withContextProvider___block_invoke;
    v21[3] = &unk_277DFA598;
    objc_copyWeak(v25, buf);
    v22 = v10;
    v23 = v9;
    v24 = v11;
    v25[1] = a2;
    v19 = [v17 addCompletionBlock:v21];

    objc_destroyWeak(v25);
  }

  objc_destroyWeak(buf);
  v20 = *MEMORY[0x277D85DE8];
}

void __116__HFCharacteristicValueDisplayMetadata__displayAppleIDSplitErrorForMediaProfile_havingMetadata_withContextProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v6)
  {
    v8 = HFLogForCategory(5uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(*(a1 + 64));
      *location = 138412802;
      *&location[4] = WeakRetained;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v6;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "%@:%@ Other Error returned %@", location, 0x20u);
    }
  }

  else
  {
    objc_initWeak(location, *(a1 + 32));
    if (([*(a1 + 40) hf_supportsPreferredMediaUser] & 1) == 0)
    {
      v9 = [*(a1 + 40) hf_homePodMediaAccountIsMismatchedWithHomeMediaAccount];
      [*(a1 + 32) setSplitAccountFuture:v9];
    }

    v10 = [*(a1 + 32) splitAccountFuture];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __116__HFCharacteristicValueDisplayMetadata__displayAppleIDSplitErrorForMediaProfile_havingMetadata_withContextProvider___block_invoke_2;
    v16[3] = &unk_277DFA570;
    objc_copyWeak(v18, location);
    v16[4] = WeakRetained;
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    v17 = v11;
    v18[1] = v12;
    v13 = [v10 addCompletionBlock:v16];

    objc_destroyWeak(v18);
    objc_destroyWeak(location);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __116__HFCharacteristicValueDisplayMetadata__displayAppleIDSplitErrorForMediaProfile_havingMetadata_withContextProvider___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v4)
  {
    v6 = HFLogForCategory(5uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:

      goto LABEL_9;
    }

    v7 = *(a1 + 32);
    v8 = NSStringFromSelector(*(a1 + 56));
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@:%@ No Error returned. Accounts don't appear to be split", &v11, 0x16u);
LABEL_6:

    goto LABEL_8;
  }

  if ([v4 code] != 56)
  {
    v6 = HFLogForCategory(5uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v10 = *(a1 + 32);
    v8 = NSStringFromSelector(*(a1 + 56));
    v11 = 138412802;
    v12 = v10;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%@:%@ Other Error returned %@", &v11, 0x20u);
    goto LABEL_6;
  }

  [*(a1 + 32) _populateSplitMediaAccountErrorForMedatadata:WeakRetained withContextProvider:*(a1 + 40)];
LABEL_9:

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_populateSplitMediaAccountErrorForMedatadata:(id)a3 withContextProvider:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = a3;
  v10 = [v5 hf_errorWithCode:56];
  v8 = [MEMORY[0x277CBEB98] set];
  v9 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v10 readTraits:v8 contextProvider:v6];

  [v7 setError:v9];
}

+ (int64_t)_unknownStatePriorityForServiceDescriptor:(id)a3 characteristicReadResponse:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_280E02F50 != -1)
  {
    dispatch_once(&qword_280E02F50, &__block_literal_global_139_2);
  }

  v7 = qword_280E02F58;
  v8 = [v5 serviceType];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v11 = MEMORY[0x277CD1D90];
    v12 = [v5 serviceType];
    v13 = [v11 hf_requiredCharacteristicTypesForDisplayMetadataWithServiceType:v12];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __109__HFCharacteristicValueDisplayMetadata__unknownStatePriorityForServiceDescriptor_characteristicReadResponse___block_invoke_3;
    v16[3] = &unk_277DF3130;
    v17 = v6;
    v14 = [v13 na_any:v16];

    if (v14)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

void __109__HFCharacteristicValueDisplayMetadata__unknownStatePriorityForServiceDescriptor_characteristicReadResponse___block_invoke_2()
{
  v8[7] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0E30];
  v8[0] = *MEMORY[0x277CD0E18];
  v8[1] = v1;
  v2 = *MEMORY[0x277CD0EB0];
  v8[2] = *MEMORY[0x277CD0E58];
  v8[3] = v2;
  v3 = *MEMORY[0x277CD0EE8];
  v8[4] = *MEMORY[0x277CD0ED8];
  v8[5] = v3;
  v8[6] = *MEMORY[0x277CD0F58];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:7];
  v5 = [v0 setWithArray:v4];
  v6 = qword_280E02F58;
  qword_280E02F58 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __109__HFCharacteristicValueDisplayMetadata__unknownStatePriorityForServiceDescriptor_characteristicReadResponse___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allCharacteristics];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __109__HFCharacteristicValueDisplayMetadata__unknownStatePriorityForServiceDescriptor_characteristicReadResponse___block_invoke_4;
  v9[3] = &unk_277DF6218;
  v10 = v3;
  v5 = v3;
  v6 = [v4 na_filter:v9];

  v7 = [v6 na_any:&__block_literal_global_141];
  return v7;
}

uint64_t __109__HFCharacteristicValueDisplayMetadata__unknownStatePriorityForServiceDescriptor_characteristicReadResponse___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __109__HFCharacteristicValueDisplayMetadata__unknownStatePriorityForServiceDescriptor_characteristicReadResponse___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = [v2 accessory];
  v4 = [v3 hf_isSuspended];

  return v4;
}

- (void)parseGarageDoorOpenerResponse:(id)a3
{
  v4 = *MEMORY[0x277CCF800];
  v5 = a3;
  v6 = [v5 responseForCharacteristicType:v4];
  v20 = [v6 valueWithExpectedClass:objc_opt_class()];

  v7 = [v5 responseForCharacteristicType:*MEMORY[0x277CCFB08]];
  v8 = [v7 valueWithExpectedClass:objc_opt_class()];

  v9 = [v5 responseForCharacteristicType:*MEMORY[0x277CCF9A0]];

  v10 = [v9 valueWithExpectedClass:objc_opt_class()];

  if (v20)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = [v20 integerValue];
    v13 = [v8 integerValue];
    if (v12 > 4)
    {
      v14 = 0;
    }

    else
    {
      v14 = qword_20DD973F0[v12];
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:v14];
    if (v13 == v12)
    {
      if ([(HFCharacteristicValueDisplayMetadata *)self primaryState]== 1)
      {
        v15 = -1;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      if (v13 > 4)
      {
        v16 = 0;
      }

      else
      {
        v16 = qword_20DD973F0[v13];
      }

      [(HFCharacteristicValueDisplayMetadata *)self setTransitioningPrimaryState:v16];
      v15 = 1;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v15];
  }

  if ([v10 BOOLValue])
  {
    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:2];
    v17 = [(HFCharacteristicValueDisplayMetadata *)self priority];
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v18];
  }

  v19 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyGarageDoor", @"HFStatusSortKeyGarageDoor", 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v19];
}

- (void)parseLockMechanismResponse:(id)a3
{
  v4 = *MEMORY[0x277CCF838];
  v5 = a3;
  v6 = [v5 responseForCharacteristicType:v4];
  v17 = [v6 valueWithExpectedClass:objc_opt_class()];

  v7 = [v5 responseForCharacteristicType:*MEMORY[0x277CCFB40]];

  v8 = [v7 valueWithExpectedClass:objc_opt_class()];

  if (v17)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [v17 integerValue];
    v11 = [v8 integerValue];
    if (v10 > 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_20DD97418[v10];
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:v12];
    if (v11 == v10 || (v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if ([(HFCharacteristicValueDisplayMetadata *)self primaryState]== 1)
      {
        v14 = -1;
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      if (v11 > 3)
      {
        v15 = 0;
      }

      else
      {
        v15 = qword_20DD97418[v11];
      }

      [(HFCharacteristicValueDisplayMetadata *)self setTransitioningPrimaryState:v15];
      v14 = 1;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v14];
  }

  v16 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyLock", @"HFStatusSortKeyLock", 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v16];
}

- (void)parseSecuritySystemResponse:(id)a3
{
  v4 = *MEMORY[0x277CCF858];
  v5 = a3;
  v6 = [v5 responseForCharacteristicType:v4];
  v22 = [v6 valueWithExpectedClass:objc_opt_class()];

  v7 = [v5 responseForCharacteristicType:*MEMORY[0x277CCFB60]];
  v8 = [v7 valueWithExpectedClass:objc_opt_class()];

  v9 = [v5 responseForCharacteristicType:*MEMORY[0x277CCFAB0]];
  v10 = [v9 valueWithExpectedClass:objc_opt_class()];

  v11 = [v5 responseForCharacteristicType:*MEMORY[0x277CCFA98]];

  v12 = [v11 valueWithExpectedClass:objc_opt_class()];

  if (v22)
  {
    v13 = v8 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_27;
  }

  v14 = [v22 integerValue];
  v15 = [v8 integerValue];
  if (v14 >= 3)
  {
    if (v14 == 3)
    {
      v17 = 1;
    }

    else
    {
      if (v14 == 4)
      {
        goto LABEL_8;
      }

      v17 = 0;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:v17];
    goto LABEL_13;
  }

LABEL_8:
  v16 = 2;
  [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:2];
  if (v14 != 4)
  {
LABEL_13:
    if (v15 != v14)
    {
      if (v15 > 4)
      {
        v18 = 0;
      }

      else
      {
        v18 = qword_20DD97438[v15];
      }

      [(HFCharacteristicValueDisplayMetadata *)self setTransitioningPrimaryState:v18];
      v14 = v15;
    }

    if (v14 == 4)
    {
      v16 = 2;
    }

    else
    {
      v16 = v14 == 3;
    }
  }

  [(HFCharacteristicValueDisplayMetadata *)self setPriority:v16];
  if ([v10 integerValue] || objc_msgSend(v12, "integerValue"))
  {
    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:2];
    v19 = [(HFCharacteristicValueDisplayMetadata *)self priority];
    if (v19 <= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v19;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v20];
  }

LABEL_27:
  v21 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeySecurityAlarm", @"HFStatusSortKeySecurityAlarm", 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v21];
}

- (void)parseInformationalSensorWithServiceType:(id)a3 response:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 responseForCharacteristicType:*MEMORY[0x277CCFAB0]];
  v9 = [v8 valueWithExpectedClass:objc_opt_class()];

  v10 = [v7 responseForCharacteristicType:*MEMORY[0x277CCFA98]];
  v11 = [v10 valueWithExpectedClass:objc_opt_class()];

  v12 = *MEMORY[0x277CD0F28];
  v13 = [v6 isEqualToString:*MEMORY[0x277CD0F28]];
  v14 = MEMORY[0x277CD0E98];
  if (v13)
  {
    v15 = MEMORY[0x277CCF868];
LABEL_7:
    v16 = *v15;
    goto LABEL_8;
  }

  if ([v6 isEqualToString:*MEMORY[0x277CD0E98]])
  {
    v15 = MEMORY[0x277CCF830];
    goto LABEL_7;
  }

  if ([v6 isEqualToString:*MEMORY[0x277CD0E70]])
  {
    v15 = MEMORY[0x277CCF850];
    goto LABEL_7;
  }

  NSLog(&cfstr_ServiceTypeNot.isa, v6);
  v16 = 0;
LABEL_8:
  v17 = [v7 responseForCharacteristicType:v16];
  v18 = [v17 valueWithExpectedClass:objc_opt_class()];

  if (v18)
  {
    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:1];
    v19 = *MEMORY[0x277CD0E70];
    v26[0] = v12;
    v26[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    -[HFCharacteristicValueDisplayMetadata setPriority:](self, "setPriority:", [v20 containsObject:v6] - 1);

    if ([v9 integerValue] || objc_msgSend(v11, "integerValue"))
    {
      [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:2];
      v21 = [(HFCharacteristicValueDisplayMetadata *)self priority];
      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      [(HFCharacteristicValueDisplayMetadata *)self setPriority:v22];
    }

    v14 = MEMORY[0x277CD0E98];
  }

  else
  {
    v19 = *MEMORY[0x277CD0E70];
  }

  if ([v6 isEqualToString:v19])
  {
    v23 = @"HFStatusSortKeyHumiditySensor";
LABEL_23:
    v24 = _HFLocalizedStringWithDefaultValue(v23, v23, 1);
    [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v24];

    goto LABEL_24;
  }

  if ([v6 isEqualToString:*v14])
  {
    v23 = @"HFStatusSortKeyLightSensor";
    goto LABEL_23;
  }

  if ([v6 isEqualToString:v12])
  {
    v23 = @"HFStatusSortKeyTemperatureSensor";
    goto LABEL_23;
  }

LABEL_24:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)parseWarningSensorWithServiceType:(id)a3 response:(id)a4
{
  v20 = a3;
  v6 = *MEMORY[0x277CCFAB0];
  v7 = a4;
  v8 = [v7 responseForCharacteristicType:v6];
  v9 = [v8 valueWithExpectedClass:objc_opt_class()];

  v10 = [v7 responseForCharacteristicType:*MEMORY[0x277CCFA98]];
  v11 = [v10 valueWithExpectedClass:objc_opt_class()];

  v12 = [MEMORY[0x277CD1D90] hf_sensorCharacteristicTypeForServiceType:v20];
  v13 = [v7 responseForCharacteristicType:v12];

  v14 = [v13 value];

  if (!v14)
  {
    goto LABEL_16;
  }

  [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:1];
  [(HFCharacteristicValueDisplayMetadata *)self setPriority:-1];
  if (([v12 isEqualToString:*MEMORY[0x277CCF7A0]] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCF7B8]) & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCFA80]) & 1) == 0 && !objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCF938]))
  {
    if (([v12 isEqualToString:*MEMORY[0x277CCF978]] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCF9A8]) & 1) != 0 || objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCF7E8]))
    {
      if (([v14 BOOLValue] & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (![v12 isEqualToString:*MEMORY[0x277CCF770]])
      {
        goto LABEL_10;
      }

      if (([v14 integerValue] & 0xFFFFFFFFFFFFFFFELL) != 4)
      {
        v15 = 0;
        goto LABEL_9;
      }
    }

    v15 = 1;
LABEL_8:
    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:2];
LABEL_9:
    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v15];
    goto LABEL_10;
  }

  if ([v14 BOOLValue])
  {
    v15 = 2;
    goto LABEL_8;
  }

LABEL_10:
  if ([v9 integerValue] || objc_msgSend(v11, "integerValue"))
  {
    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:2];
    v16 = [(HFCharacteristicValueDisplayMetadata *)self priority];
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v17];
  }

LABEL_16:
  if ([v20 isEqualToString:*MEMORY[0x277CD0DE0]])
  {
    v18 = @"HFStatusSortKeyAirQualitySensor";
  }

  else if ([v20 isEqualToString:*MEMORY[0x277CD0E10]])
  {
    v18 = @"HFStatusSortKeyCO2Alarm";
  }

  else if ([v20 isEqualToString:*MEMORY[0x277CD0E18]])
  {
    v18 = @"HFStatusSortKeyCOAlarm";
  }

  else if ([v20 isEqualToString:*MEMORY[0x277CD0E20]])
  {
    v18 = @"HFStatusSortKeyContactSensor";
  }

  else if ([v20 isEqualToString:*MEMORY[0x277CD0E90]])
  {
    v18 = @"HFStatusSortKeyLeakAlarm";
  }

  else if ([v20 isEqualToString:*MEMORY[0x277CD0EC0]])
  {
    v18 = @"HFStatusSortKeyMotionAlarm";
  }

  else if ([v20 isEqualToString:*MEMORY[0x277CD0EC8]])
  {
    v18 = @"HFStatusSortKeyOccupancyAlarm";
  }

  else
  {
    if (![v20 isEqualToString:*MEMORY[0x277CD0EE8]])
    {
      goto LABEL_38;
    }

    v18 = @"HFStatusSortKeySmokeAlarm";
  }

  v19 = _HFLocalizedStringWithDefaultValue(v18, v18, 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v19];

LABEL_38:
}

- (void)parsePowerStateForServiceType:(id)a3 response:(id)a4
{
  v12 = a3;
  v6 = [a4 responseForCharacteristicType:*MEMORY[0x277CCF9F0]];
  v7 = [v6 valueWithExpectedClass:objc_opt_class()];

  if (v7)
  {
    if ([v7 BOOLValue])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:v8];
    if ([(HFCharacteristicValueDisplayMetadata *)self primaryState]== 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v9];
  }

  if ([v12 isEqualToString:*MEMORY[0x277CD0E40]])
  {
    v10 = @"HFStatusSortKeyFan";
  }

  else if ([v12 isEqualToString:*MEMORY[0x277CD0EA0]])
  {
    v10 = @"HFStatusSortKeyLightbulb";
  }

  else if ([v12 isEqualToString:*MEMORY[0x277CD0ED0]])
  {
    v10 = @"HFStatusSortKeyOutlet";
  }

  else
  {
    if (![v12 isEqualToString:*MEMORY[0x277CD0F08]])
    {
      goto LABEL_18;
    }

    v10 = @"HFStatusSortKeySwitch";
  }

  v11 = _HFLocalizedStringWithDefaultValue(v10, v10, 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v11];

LABEL_18:
}

- (void)parseActiveStateForServiceType:(id)a3 response:(id)a4
{
  v11 = a3;
  v6 = [a4 responseForCharacteristicType:*MEMORY[0x277CCF748]];
  v7 = [v6 valueWithExpectedClass:objc_opt_class()];

  if (v7)
  {
    if ([v7 BOOLValue])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:v8];
    if ([(HFCharacteristicValueDisplayMetadata *)self primaryState]== 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v9];
  }

  if ([v11 isEqualToString:*MEMORY[0x277CD0F40]])
  {
    v10 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyFan", @"HFStatusSortKeyFan", 1);
    [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v10];
  }
}

- (void)parseThermostatResponse:(id)a3 serviceType:(id)a4
{
  v23 = a3;
  v6 = *MEMORY[0x277CCF868];
  v7 = a4;
  v8 = [v23 responseForCharacteristicType:v6];
  v9 = [v8 valueWithExpectedClass:objc_opt_class()];

  v10 = [v23 responseForCharacteristicType:*MEMORY[0x277CCFB68]];
  v11 = [v10 valueWithExpectedClass:objc_opt_class()];

  v12 = [HFTemperatureItemUtilities currentHeatingCoolingModeValueInResponse:v23];
  v13 = [HFTemperatureItemUtilities targetHeatingCoolingModeValueInResponse:v23];
  v14 = [v7 isEqualToString:*MEMORY[0x277CD0F30]];

  v15 = [v23 allServices];
  v16 = [v15 na_firstObjectPassingTest:&__block_literal_global_202];

  if (v16)
  {
    v17 = [v23 responseForCharacteristicType:*MEMORY[0x277CCF748] inService:v16];
    v18 = [v17 valueWithExpectedClass:objc_opt_class()];

    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v18 = 0;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  if (!v11)
  {
    if (v12)
    {
      v19 = v14;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (v12)
  {
LABEL_12:
    if (!v13)
    {
      goto LABEL_17;
    }

    v20 = [v13 integerValue];
    if ((v20 - 1) < 3)
    {
      goto LABEL_14;
    }

    if (v20)
    {
      goto LABEL_16;
    }

    if ([v12 integerValue] || v18 && (objc_msgSend(v18, "isEqual:", MEMORY[0x277CBEC28]) & 1) == 0)
    {
LABEL_14:
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:v21];
LABEL_16:
    [(HFCharacteristicValueDisplayMetadata *)self setPriority:0];
  }

LABEL_17:
  v22 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyThermostat", @"HFStatusSortKeyThermostat", 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v22];
}

uint64_t __76__HFCharacteristicValueDisplayMetadata_parseThermostatResponse_serviceType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0F40]];

  return v3;
}

- (void)parseAirPurifierResponse:(id)a3
{
  v4 = [a3 responseForCharacteristicType:*MEMORY[0x277CCF748]];
  v8 = [v4 valueWithExpectedClass:objc_opt_class()];

  if (v8)
  {
    if ([v8 BOOLValue])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:v5];
    if ([(HFCharacteristicValueDisplayMetadata *)self primaryState]== 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v6];
  }

  v7 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyAirPurifier", @"HFStatusSortKeyAirPurifier", 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v7];
}

- (void)parseHumidifierDehumidifierResponse:(id)a3
{
  v4 = *MEMORY[0x277CCF850];
  v5 = a3;
  v6 = [v5 responseForCharacteristicType:v4];
  v18 = [v6 valueWithExpectedClass:objc_opt_class()];

  v7 = [v5 responseForCharacteristicType:*MEMORY[0x277CCF828]];
  v8 = [v7 valueWithExpectedClass:objc_opt_class()];

  v9 = [v5 responseForCharacteristicType:*MEMORY[0x277CCFB30]];
  v10 = [v9 valueWithExpectedClass:objc_opt_class()];

  v11 = [v5 responseForCharacteristicType:*MEMORY[0x277CCF748]];

  v12 = [v11 valueWithExpectedClass:objc_opt_class()];

  if (v18)
  {
    v13 = v8 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && v10 != 0 && v12 != 0)
  {
    if ([v12 BOOLValue])
    {
      if ([v10 integerValue] > 2)
      {
LABEL_16:
        [(HFCharacteristicValueDisplayMetadata *)self setPriority:0];
        goto LABEL_17;
      }

      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:v16];
    goto LABEL_16;
  }

LABEL_17:
  v17 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyHumidifierDehumidifier", @"HFStatusSortKeyHumidifierDehumidifier", 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v17];
}

- (void)parseCurrentTargetPositionForServiceType:(id)a3 response:(id)a4
{
  v28 = a3;
  v7 = *MEMORY[0x277CD0F60];
  v8 = a4;
  v9 = [v28 isEqualToString:v7];
  v10 = MEMORY[0x277CD0E30];
  v11 = MEMORY[0x277CD0F58];
  if ((v9 & 1) == 0 && ([v28 isEqualToString:*MEMORY[0x277CD0F58]] & 1) == 0 && (objc_msgSend(v28, "isEqualToString:", *v10) & 1) == 0)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueDisplayMetadata.m" lineNumber:1320 description:{@"Invalid parameter not satisfying: %@", @"[serviceType isEqualToString:HMServiceTypeWindowCovering] || [serviceType isEqualToString:HMServiceTypeWindow] || [serviceType isEqualToString:HMServiceTypeDoor]"}];
  }

  v12 = [v8 responseForCharacteristicType:*MEMORY[0x277CCF848]];
  v13 = [v12 valueWithExpectedClass:objc_opt_class()];

  v14 = [v8 responseForCharacteristicType:*MEMORY[0x277CCFB50]];
  v15 = [v14 valueWithExpectedClass:objc_opt_class()];

  v16 = [v8 responseForCharacteristicType:*MEMORY[0x277CCF9A0]];

  v17 = [v16 valueWithExpectedClass:objc_opt_class()];

  if (v13)
  {
    v18 = v15 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    if ([v13 integerValue] < 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:v19];
    v20 = [v28 isEqualToString:v7] ^ 1;
    if (([v17 BOOLValue] & 1) != 0 || (v21 = objc_msgSend(v15, "integerValue"), v21 == objc_msgSend(v13, "integerValue")))
    {
      if ([(HFCharacteristicValueDisplayMetadata *)self primaryState]!= 2)
      {
        v20 = -1;
      }
    }

    else
    {
      if ([v15 integerValue] < 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      [(HFCharacteristicValueDisplayMetadata *)self setTransitioningPrimaryState:v22];
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v20];
  }

  if ([v17 BOOLValue])
  {
    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:2];
    v23 = [(HFCharacteristicValueDisplayMetadata *)self priority];
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v24];
  }

  if ([v28 isEqualToString:*v10])
  {
    v25 = @"HFStatusSortKeyDoor";
  }

  else if ([v28 isEqualToString:*v11])
  {
    v25 = @"HFStatusSortKeyWindow";
  }

  else
  {
    if (![v28 isEqualToString:v7])
    {
      goto LABEL_34;
    }

    v25 = @"HFStatusSortKeyBlinds";
  }

  v26 = _HFLocalizedStringWithDefaultValue(v25, v25, 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v26];

LABEL_34:
}

- (void)parseProgammableSwitchOfType:(id)a3 response:(id)a4
{
  v7 = a3;
  if (([v7 isEqualToString:*MEMORY[0x277CD0EF8]] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CD0F00]) & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueDisplayMetadata.m" lineNumber:1361 description:{@"Invalid parameter not satisfying: %@", @"[serviceType isEqualToString:HMServiceTypeStatefulProgrammableSwitch] || [serviceType isEqualToString:HMServiceTypeStatelessProgrammableSwitch]"}];
  }

  [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:1];
  [(HFCharacteristicValueDisplayMetadata *)self setPriority:-1];
}

@end