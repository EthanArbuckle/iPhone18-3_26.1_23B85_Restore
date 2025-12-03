@interface HFCharacteristicValueDisplayMetadata
+ (id)displayMetadataForAccessory:(id)accessory withContextProvider:(id)provider;
+ (id)displayMetadataForMediaProfile:(id)profile withContextProvider:(id)provider;
+ (id)displayMetadataForService:(id)service characteristicReadResponse:(id)response;
+ (int64_t)_unknownStatePriorityForServiceDescriptor:(id)descriptor characteristicReadResponse:(id)response;
+ (void)_displayAppleIDSplitErrorForMediaProfile:(id)profile havingMetadata:(id)metadata withContextProvider:(id)provider;
+ (void)_overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:(id)metadata withAccessory:(id)accessory;
+ (void)_populateSplitMediaAccountErrorForMedatadata:(id)medatadata withContextProvider:(id)provider;
- (void)dealloc;
- (void)parseActiveStateForServiceType:(id)type response:(id)response;
- (void)parseAirPurifierResponse:(id)response;
- (void)parseCurrentTargetPositionForServiceType:(id)type response:(id)response;
- (void)parseGarageDoorOpenerResponse:(id)response;
- (void)parseHumidifierDehumidifierResponse:(id)response;
- (void)parseInformationalSensorWithServiceType:(id)type response:(id)response;
- (void)parseLockMechanismResponse:(id)response;
- (void)parsePowerStateForServiceType:(id)type response:(id)response;
- (void)parseProgammableSwitchOfType:(id)type response:(id)response;
- (void)parseSecuritySystemResponse:(id)response;
- (void)parseThermostatResponse:(id)response serviceType:(id)type;
- (void)parseWarningSensorWithServiceType:(id)type response:(id)response;
@end

@implementation HFCharacteristicValueDisplayMetadata

- (void)dealloc
{
  splitAccountFuture = [(HFCharacteristicValueDisplayMetadata *)self splitAccountFuture];
  [splitAccountFuture cancel];

  v4.receiver = self;
  v4.super_class = HFCharacteristicValueDisplayMetadata;
  [(HFCharacteristicValueDisplayMetadata *)&v4 dealloc];
}

+ (id)displayMetadataForService:(id)service characteristicReadResponse:(id)response
{
  v101 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  responseCopy = response;
  v78 = serviceCopy;
  hf_serviceDescriptor = [serviceCopy hf_serviceDescriptor];
  serviceType = [hf_serviceDescriptor serviceType];
  selfCopy = self;
  v72 = hf_serviceDescriptor;
  v79 = responseCopy;
  v76 = objc_alloc_init(HFCharacteristicValueDisplayMetadata);
  -[HFCharacteristicValueDisplayMetadata setPriority:](v76, "setPriority:", [self _unknownStatePriorityForServiceDescriptor:hf_serviceDescriptor characteristicReadResponse:responseCopy]);
  hf_sensorServiceTypes = [MEMORY[0x277CD1D90] hf_sensorServiceTypes];
  v69 = __HFSimplePowerStateServices_block_invoke();
  v68 = __HFSimpleActiveStateServices_block_invoke();
  v73 = __HFCurrentTargetPositionServices_block_invoke();
  v71 = serviceType;
  v10 = [MEMORY[0x277CD1D90] hf_requiredCharacteristicTypesForDisplayMetadataWithServiceType:serviceType];
  allObjects = [v10 allObjects];
  hf_characteristicSortComparator = [MEMORY[0x277CD1970] hf_characteristicSortComparator];
  v13 = [allObjects sortedArrayUsingComparator:hf_characteristicSortComparator];

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
        error = [v20 error];
        v22 = error;
        if (v20)
        {
          v23 = [error hf_isHFErrorWithCode:4];
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
          v87 = selfCopy;
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
          accessory = [v78 accessory];
          hf_isHomePod = [accessory hf_isHomePod];

          v17 &= hf_isHomePod;
        }

        if ([v22 hf_isHFErrorWithCode:103])
        {

          v22 = 0;
        }

        else if (v22)
        {
          readTraits = [v20 readTraits];
          contextProvider = [v79 contextProvider];
          v29 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v22 readTraits:readTraits contextProvider:contextProvider];
          [(HFCharacteristicValueDisplayMetadata *)v76 setError:v29];

          error2 = [(HFCharacteristicValueDisplayMetadata *)v76 error];

          if (error2)
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

  error3 = [(HFCharacteristicValueDisplayMetadata *)v76 error];

  if (!error3 && (v17 & 1) == 0)
  {
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __93__HFCharacteristicValueDisplayMetadata_displayMetadataForService_characteristicReadResponse___block_invoke;
    v80[3] = &unk_277DF3130;
    v33 = v79;
    v81 = v33;
    v34 = [obj na_any:v80];
    allCharacteristics = [v33 allCharacteristics];
    v36 = [allCharacteristics count];

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
        accessory2 = [v78 accessory];
        *buf = 138412546;
        v87 = v78;
        v88 = 2112;
        v89 = accessory2;
        _os_log_error_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_ERROR, "Read response empty for service %@ in accessory %@", buf, 0x16u);
      }
    }

    v38 = [MEMORY[0x277CCA9B8] hf_errorWithCode:35];
    v39 = [MEMORY[0x277CBEB98] set];
    contextProvider2 = [v33 contextProvider];
    v41 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v38 readTraits:v39 contextProvider:contextProvider2];
    [(HFCharacteristicValueDisplayMetadata *)v76 setError:v41];

    goto LABEL_31;
  }

LABEL_32:
  accessory3 = [v78 accessory];
  hf_siriEndpointProfile = [accessory3 hf_siriEndpointProfile];
  if (hf_siriEndpointProfile)
  {
    v44 = hf_siriEndpointProfile;
    error4 = [(HFCharacteristicValueDisplayMetadata *)v76 error];

    v47 = hf_sensorServiceTypes;
    v46 = v71;
    v49 = v68;
    v48 = v69;
    if (error4)
    {
      goto LABEL_38;
    }

    accessory4 = [v78 accessory];
    accessory3 = [accessory4 hf_errorForCurrentSessionState];

    if (accessory3)
    {
      v51 = [MEMORY[0x277CBEB98] set];
      contextProvider3 = [v79 contextProvider];
      v53 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:accessory3 readTraits:v51 contextProvider:contextProvider3];
      [(HFCharacteristicValueDisplayMetadata *)v76 setError:v53];
    }
  }

  else
  {
    v47 = hf_sensorServiceTypes;
    v46 = v71;
    v49 = v68;
    v48 = v69;
  }

LABEL_38:
  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    error5 = [(HFCharacteristicValueDisplayMetadata *)v76 error];

    if (error5)
    {
      accessory5 = [v78 accessory];
      [selfCopy _overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:v76 withAccessory:accessory5];
    }
  }

  error6 = [(HFCharacteristicValueDisplayMetadata *)v76 error];
  isPersistentError = [error6 isPersistentError];

  if (isPersistentError)
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
        primaryState = [v59 primaryState];
        if (primaryState == 2)
        {
          v61 = 1;
        }

        else
        {
          v61 = 2 * (primaryState == 1);
        }

        [(HFCharacteristicValueDisplayMetadata *)v76 setTransitioningPrimaryState:v61];
      }

      v62 = MEMORY[0x277CD1D90];
      serviceType2 = [v72 serviceType];
      v64 = [v62 localizedDescriptionForServiceType:serviceType2];
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

+ (id)displayMetadataForAccessory:(id)accessory withContextProvider:(id)provider
{
  accessoryCopy = accessory;
  providerCopy = provider;
  v8 = objc_alloc_init(HFCharacteristicValueDisplayMetadata);
  [(HFCharacteristicValueDisplayMetadata *)v8 setPrimaryState:1];
  [(HFCharacteristicValueDisplayMetadata *)v8 setPriority:-1];
  if (([accessoryCopy isReachable] & 1) == 0)
  {
    [(HFCharacteristicValueDisplayMetadata *)v8 setPrimaryState:0];
    [(HFCharacteristicValueDisplayMetadata *)v8 setPriority:1];
    v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:35];
    v10 = [MEMORY[0x277CBEB98] set];
    v11 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v9 readTraits:v10 contextProvider:providerCopy];
    [(HFCharacteristicValueDisplayMetadata *)v8 setError:v11];
  }

  hf_siriEndpointProfile = [accessoryCopy hf_siriEndpointProfile];
  if (hf_siriEndpointProfile)
  {
    v13 = hf_siriEndpointProfile;
    error = [(HFCharacteristicValueDisplayMetadata *)v8 error];

    if (!error)
    {
      hf_errorForCurrentSessionState = [accessoryCopy hf_errorForCurrentSessionState];
      if (hf_errorForCurrentSessionState)
      {
        v16 = [MEMORY[0x277CBEB98] set];
        v17 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:hf_errorForCurrentSessionState readTraits:v16 contextProvider:providerCopy];
        [(HFCharacteristicValueDisplayMetadata *)v8 setError:v17];
      }
    }
  }

  if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatteriPhoneOnlyPairingEnabled", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    error2 = [(HFCharacteristicValueDisplayMetadata *)v8 error];

    if (error2)
    {
      [self _overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:v8 withAccessory:accessoryCopy];
    }
  }

  error3 = [(HFCharacteristicValueDisplayMetadata *)v8 error];

  if (!error3)
  {
    v20 = +[HFSymptomFixManager sharedManager];
    v21 = [v20 anySymptomIsBeingFixedForFixableObject:accessoryCopy];

    symptomsHandler = [accessoryCopy symptomsHandler];
    v23 = [self _errorForSymptomHandler:symptomsHandler isFixingCurrently:v21 withContextProvider:providerCopy];
    [(HFCharacteristicValueDisplayMetadata *)v8 setError:v23];
  }

  error4 = [(HFCharacteristicValueDisplayMetadata *)v8 error];
  isPersistentError = [error4 isPersistentError];

  if (isPersistentError)
  {
    [(HFCharacteristicValueDisplayMetadata *)v8 setPriority:0];
  }

  return v8;
}

+ (void)_overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:(id)metadata withAccessory:(id)accessory
{
  v39 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  accessoryCopy = accessory;
  if (![accessoryCopy supportsCHIP] || !objc_msgSend(accessoryCopy, "requiresThreadRouter"))
  {
    goto LABEL_6;
  }

  error = [metadataCopy error];
  if ([error category] == 1)
  {

    goto LABEL_8;
  }

  error2 = [metadataCopy error];
  category = [error2 category];

  if (category)
  {
LABEL_6:
    v10 = HFLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      supportsCHIP = [accessoryCopy supportsCHIP];
      requiresThreadRouter = [accessoryCopy requiresThreadRouter];
      v13 = +[HFUtilities supportsThreadService];
      home = [accessoryCopy home];
      hf_hasResident = [home hf_hasResident];
      error3 = [metadataCopy error];
      v27 = 136316418;
      v28 = "+[HFCharacteristicValueDisplayMetadata _overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:withAccessory:]";
      v29 = 1024;
      v30 = supportsCHIP;
      v31 = 1024;
      v32 = requiresThreadRouter;
      v33 = 1024;
      v34 = v13;
      v35 = 1024;
      v36 = hf_hasResident;
      v37 = 2048;
      category2 = [error3 category];
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

    error4 = [metadataCopy error];
    v10 = error4;
    v23 = 5;
    goto LABEL_20;
  }

  home2 = [accessoryCopy home];
  hf_hasResident2 = [home2 hf_hasResident];

  if ((hf_hasResident2 & 1) == 0)
  {
    v25 = HFLogForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315138;
      v28 = "+[HFCharacteristicValueDisplayMetadata _overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:withAccessory:]";
      _os_log_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_DEFAULT, "%s overriding error category to HFCharacteristicValueDisplayErrorCategoryUnreachableNoThreadNetworkNoResident", &v27, 0xCu);
    }

    error4 = [metadataCopy error];
    v10 = error4;
    v23 = 3;
    goto LABEL_20;
  }

  home3 = [accessoryCopy home];
  hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter = [home3 hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter];

  if ((hf_hasResidentDeviceCapableOfSupportingThreadBorderRouter & 1) == 0)
  {
    v21 = HFLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315138;
      v28 = "+[HFCharacteristicValueDisplayMetadata _overrideDisplayErrorCategoryWithThreadNetworkErrorForDisplayMetadata:withAccessory:]";
      _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "%s overriding error category to HFCharacteristicValueDisplayErrorCategoryUnreachableNoThreadNetworkResidentWithoutThread", &v27, 0xCu);
    }

    error4 = [metadataCopy error];
    v10 = error4;
    v23 = 4;
LABEL_20:
    [error4 setCategory:v23];
LABEL_21:
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (id)displayMetadataForMediaProfile:(id)profile withContextProvider:(id)provider
{
  v75 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  providerCopy = provider;
  v8 = objc_alloc_init(HFCharacteristicValueDisplayMetadata);
  [(HFCharacteristicValueDisplayMetadata *)v8 setPriority:-1];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __91__HFCharacteristicValueDisplayMetadata_displayMetadataForMediaProfile_withContextProvider___block_invoke;
  v61[3] = &unk_277DFA520;
  v9 = profileCopy;
  v62 = v9;
  [(HFCharacteristicValueDisplayMetadata *)v8 setPrimaryState:__91__HFCharacteristicValueDisplayMetadata_displayMetadataForMediaProfile_withContextProvider___block_invoke(v61)];
  hf_mediaValueSource = [v9 hf_mediaValueSource];
  hf_mediaRouteIdentifier = [v9 hf_mediaRouteIdentifier];
  v58 = hf_mediaValueSource;
  v12 = [hf_mediaValueSource cachedPlaybackStateWriteErrorForRouteID:hf_mediaRouteIdentifier];

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

    hf_errorForCurrentSessionState = v17;
LABEL_10:
    v18 = [MEMORY[0x277CBEB98] set];
    v19 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:hf_errorForCurrentSessionState readTraits:v18 contextProvider:providerCopy];
    [(HFCharacteristicValueDisplayMetadata *)v8 setError:v19];

    goto LABEL_11;
  }

  hf_backingAccessory = [v9 hf_backingAccessory];
  hf_siriEndpointProfile = [hf_backingAccessory hf_siriEndpointProfile];

  if (!hf_siriEndpointProfile)
  {
    goto LABEL_12;
  }

  hf_backingAccessory2 = [v9 hf_backingAccessory];
  hf_errorForCurrentSessionState = [hf_backingAccessory2 hf_errorForCurrentSessionState];

  if (hf_errorForCurrentSessionState)
  {
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
  error = [(HFCharacteristicValueDisplayMetadata *)v8 error];
  if (error)
  {

    goto LABEL_14;
  }

  symptomsHandler = [v9 symptomsHandler];

  if (!symptomsHandler)
  {
LABEL_14:
    symptoms = [v9 symptoms];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __91__HFCharacteristicValueDisplayMetadata_displayMetadataForMediaProfile_withContextProvider___block_invoke_2;
    v59[3] = &unk_277DFA548;
    v60 = v9;
    v22 = [symptoms na_any:v59];

    if (!v22)
    {
      goto LABEL_18;
    }
  }

  v24 = +[HFSymptomFixManager sharedManager];
  v25 = [v24 anySymptomIsBeingFixedForFixableObject:v9];

  symptomsHandler2 = [v9 symptomsHandler];
  v27 = [self _errorForSymptomHandler:symptomsHandler2 isFixingCurrently:v25 withContextProvider:providerCopy];
  [(HFCharacteristicValueDisplayMetadata *)v8 setError:v27];

LABEL_18:
  if ([v9 hf_homePodIsCapableOfShowingSplitAccountError])
  {
    error2 = [(HFCharacteristicValueDisplayMetadata *)v8 error];
    underlyingSymptom = [error2 underlyingSymptom];

    if (!underlyingSymptom)
    {
      [self _displayAppleIDSplitErrorForMediaProfile:v9 havingMetadata:v8 withContextProvider:providerCopy];
    }
  }

  error3 = [(HFCharacteristicValueDisplayMetadata *)v8 error];
  isPersistentError = [error3 isPersistentError];

  if (isPersistentError)
  {
    [(HFCharacteristicValueDisplayMetadata *)v8 setPriority:0];
  }

  v32 = +[HFMediaAccessoryUtility sharedInstance];
  uniqueIdentifier = [v9 uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v35 = [v32 isHomePodRestartingCurrently:uUIDString];

  v36 = +[HFMediaAccessoryUtility sharedInstance];
  hf_backingAccessory3 = [v9 hf_backingAccessory];
  uniqueIdentifier2 = [hf_backingAccessory3 uniqueIdentifier];
  uUIDString2 = [uniqueIdentifier2 UUIDString];
  v40 = [v36 isHomePodRestartingCurrently:uUIDString2];

  if ((v35 & 1) != 0 || v40)
  {
    v41 = HFLogForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      hf_backingAccessory4 = [v9 hf_backingAccessory];
      uniqueIdentifier3 = [hf_backingAccessory4 uniqueIdentifier];
      uniqueIdentifier4 = [v9 uniqueIdentifier];
      hf_backingAccessory5 = [v9 hf_backingAccessory];
      hf_isHomePod = [hf_backingAccessory5 hf_isHomePod];
      *buf = 136316418;
      v64 = "+[HFCharacteristicValueDisplayMetadata displayMetadataForMediaProfile:withContextProvider:]";
      v65 = 2112;
      v66 = uniqueIdentifier3;
      v67 = 2112;
      v68 = uniqueIdentifier4;
      v69 = 1024;
      v70 = hf_isHomePod;
      v71 = 1024;
      v72 = v35;
      v73 = 1024;
      v74 = v40;
      _os_log_impl(&dword_20D9BF000, v41, OS_LOG_TYPE_DEFAULT, "%s mediaProfile.hf_backingAccessory.uniqueIdentifier: %@ mediaProfile.uniqueIdentifier: %@ HomePod: %{BOOL}d IsGroupedAccessoryRestarting: %{BOOL}d IsSoloAccessoryRestarting: %{BOOL}d", buf, 0x32u);
    }
  }

  uniqueIdentifier5 = [v9 uniqueIdentifier];
  v48 = (uniqueIdentifier5 != 0) & v35;

  if ((v48 & 1) == 0)
  {
    error4 = [(HFCharacteristicValueDisplayMetadata *)v8 error];
    if (((error4 == 0) & v40) != 1)
    {
      goto LABEL_35;
    }

    hf_backingAccessory6 = [v9 hf_backingAccessory];
    hf_isHomePod2 = [hf_backingAccessory6 hf_isHomePod];

    if (!hf_isHomePod2)
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

  error4 = [MEMORY[0x277CCA9B8] hf_errorWithCode:58];
  v50 = [MEMORY[0x277CBEB98] set];
  v51 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:error4 readTraits:v50 contextProvider:providerCopy];
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

+ (void)_displayAppleIDSplitErrorForMediaProfile:(id)profile havingMetadata:(id)metadata withContextProvider:(id)provider
{
  v32 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  metadataCopy = metadata;
  providerCopy = provider;
  hf_settingsValueManager = [profileCopy hf_settingsValueManager];
  v13 = [hf_settingsValueManager valueForSettingAtKeyPath:@"root.home.dismissedHomePodHasNonMemberMediaAccountWarning"];
  bOOLValue = [v13 BOOLValue];

  v15 = HFLogForCategory(5uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy = self;
    v28 = 2112;
    v29 = v16;
    v30 = 1024;
    v31 = bOOLValue;
    _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "%@:%@ Was the Split Account warning dismissed? [%d]", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  hf_homePodSupportsMultiUserLanguage = [profileCopy hf_homePodSupportsMultiUserLanguage];
  if (hf_homePodSupportsMultiUserLanguage)
  {
    v18 = bOOLValue;
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
    v22 = metadataCopy;
    v23 = profileCopy;
    v24 = providerCopy;
    v25[1] = a2;
    v19 = [hf_homePodSupportsMultiUserLanguage addCompletionBlock:v21];

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

+ (void)_populateSplitMediaAccountErrorForMedatadata:(id)medatadata withContextProvider:(id)provider
{
  v5 = MEMORY[0x277CCA9B8];
  providerCopy = provider;
  medatadataCopy = medatadata;
  v10 = [v5 hf_errorWithCode:56];
  v8 = [MEMORY[0x277CBEB98] set];
  v9 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v10 readTraits:v8 contextProvider:providerCopy];

  [medatadataCopy setError:v9];
}

+ (int64_t)_unknownStatePriorityForServiceDescriptor:(id)descriptor characteristicReadResponse:(id)response
{
  descriptorCopy = descriptor;
  responseCopy = response;
  if (qword_280E02F50 != -1)
  {
    dispatch_once(&qword_280E02F50, &__block_literal_global_139_2);
  }

  v7 = qword_280E02F58;
  serviceType = [descriptorCopy serviceType];
  v9 = [v7 containsObject:serviceType];

  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v11 = MEMORY[0x277CD1D90];
    serviceType2 = [descriptorCopy serviceType];
    v13 = [v11 hf_requiredCharacteristicTypesForDisplayMetadataWithServiceType:serviceType2];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __109__HFCharacteristicValueDisplayMetadata__unknownStatePriorityForServiceDescriptor_characteristicReadResponse___block_invoke_3;
    v16[3] = &unk_277DF3130;
    v17 = responseCopy;
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

- (void)parseGarageDoorOpenerResponse:(id)response
{
  v4 = *MEMORY[0x277CCF800];
  responseCopy = response;
  v6 = [responseCopy responseForCharacteristicType:v4];
  v20 = [v6 valueWithExpectedClass:objc_opt_class()];

  v7 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFB08]];
  v8 = [v7 valueWithExpectedClass:objc_opt_class()];

  v9 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF9A0]];

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
    integerValue = [v20 integerValue];
    integerValue2 = [v8 integerValue];
    if (integerValue > 4)
    {
      v14 = 0;
    }

    else
    {
      v14 = qword_20DD973F0[integerValue];
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:v14];
    if (integerValue2 == integerValue)
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
      if (integerValue2 > 4)
      {
        v16 = 0;
      }

      else
      {
        v16 = qword_20DD973F0[integerValue2];
      }

      [(HFCharacteristicValueDisplayMetadata *)self setTransitioningPrimaryState:v16];
      v15 = 1;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v15];
  }

  if ([v10 BOOLValue])
  {
    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:2];
    priority = [(HFCharacteristicValueDisplayMetadata *)self priority];
    if (priority <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = priority;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v18];
  }

  v19 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyGarageDoor", @"HFStatusSortKeyGarageDoor", 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v19];
}

- (void)parseLockMechanismResponse:(id)response
{
  v4 = *MEMORY[0x277CCF838];
  responseCopy = response;
  v6 = [responseCopy responseForCharacteristicType:v4];
  v17 = [v6 valueWithExpectedClass:objc_opt_class()];

  v7 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFB40]];

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
    integerValue = [v17 integerValue];
    integerValue2 = [v8 integerValue];
    if (integerValue > 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_20DD97418[integerValue];
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:v12];
    if (integerValue2 == integerValue || (integerValue & 0xFFFFFFFFFFFFFFFELL) == 2)
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
      if (integerValue2 > 3)
      {
        v15 = 0;
      }

      else
      {
        v15 = qword_20DD97418[integerValue2];
      }

      [(HFCharacteristicValueDisplayMetadata *)self setTransitioningPrimaryState:v15];
      v14 = 1;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v14];
  }

  v16 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyLock", @"HFStatusSortKeyLock", 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v16];
}

- (void)parseSecuritySystemResponse:(id)response
{
  v4 = *MEMORY[0x277CCF858];
  responseCopy = response;
  v6 = [responseCopy responseForCharacteristicType:v4];
  v22 = [v6 valueWithExpectedClass:objc_opt_class()];

  v7 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFB60]];
  v8 = [v7 valueWithExpectedClass:objc_opt_class()];

  v9 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFAB0]];
  v10 = [v9 valueWithExpectedClass:objc_opt_class()];

  v11 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFA98]];

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

  integerValue = [v22 integerValue];
  integerValue2 = [v8 integerValue];
  if (integerValue >= 3)
  {
    if (integerValue == 3)
    {
      v17 = 1;
    }

    else
    {
      if (integerValue == 4)
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
  if (integerValue != 4)
  {
LABEL_13:
    if (integerValue2 != integerValue)
    {
      if (integerValue2 > 4)
      {
        v18 = 0;
      }

      else
      {
        v18 = qword_20DD97438[integerValue2];
      }

      [(HFCharacteristicValueDisplayMetadata *)self setTransitioningPrimaryState:v18];
      integerValue = integerValue2;
    }

    if (integerValue == 4)
    {
      v16 = 2;
    }

    else
    {
      v16 = integerValue == 3;
    }
  }

  [(HFCharacteristicValueDisplayMetadata *)self setPriority:v16];
  if ([v10 integerValue] || objc_msgSend(v12, "integerValue"))
  {
    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:2];
    priority = [(HFCharacteristicValueDisplayMetadata *)self priority];
    if (priority <= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = priority;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v20];
  }

LABEL_27:
  v21 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeySecurityAlarm", @"HFStatusSortKeySecurityAlarm", 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v21];
}

- (void)parseInformationalSensorWithServiceType:(id)type response:(id)response
{
  v26[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  responseCopy = response;
  v8 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFAB0]];
  v9 = [v8 valueWithExpectedClass:objc_opt_class()];

  v10 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFA98]];
  v11 = [v10 valueWithExpectedClass:objc_opt_class()];

  v12 = *MEMORY[0x277CD0F28];
  v13 = [typeCopy isEqualToString:*MEMORY[0x277CD0F28]];
  v14 = MEMORY[0x277CD0E98];
  if (v13)
  {
    v15 = MEMORY[0x277CCF868];
LABEL_7:
    v16 = *v15;
    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x277CD0E98]])
  {
    v15 = MEMORY[0x277CCF830];
    goto LABEL_7;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x277CD0E70]])
  {
    v15 = MEMORY[0x277CCF850];
    goto LABEL_7;
  }

  NSLog(&cfstr_ServiceTypeNot.isa, typeCopy);
  v16 = 0;
LABEL_8:
  v17 = [responseCopy responseForCharacteristicType:v16];
  v18 = [v17 valueWithExpectedClass:objc_opt_class()];

  if (v18)
  {
    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:1];
    v19 = *MEMORY[0x277CD0E70];
    v26[0] = v12;
    v26[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    -[HFCharacteristicValueDisplayMetadata setPriority:](self, "setPriority:", [v20 containsObject:typeCopy] - 1);

    if ([v9 integerValue] || objc_msgSend(v11, "integerValue"))
    {
      [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:2];
      priority = [(HFCharacteristicValueDisplayMetadata *)self priority];
      if (priority <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = priority;
      }

      [(HFCharacteristicValueDisplayMetadata *)self setPriority:v22];
    }

    v14 = MEMORY[0x277CD0E98];
  }

  else
  {
    v19 = *MEMORY[0x277CD0E70];
  }

  if ([typeCopy isEqualToString:v19])
  {
    v23 = @"HFStatusSortKeyHumiditySensor";
LABEL_23:
    v24 = _HFLocalizedStringWithDefaultValue(v23, v23, 1);
    [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v24];

    goto LABEL_24;
  }

  if ([typeCopy isEqualToString:*v14])
  {
    v23 = @"HFStatusSortKeyLightSensor";
    goto LABEL_23;
  }

  if ([typeCopy isEqualToString:v12])
  {
    v23 = @"HFStatusSortKeyTemperatureSensor";
    goto LABEL_23;
  }

LABEL_24:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)parseWarningSensorWithServiceType:(id)type response:(id)response
{
  typeCopy = type;
  v6 = *MEMORY[0x277CCFAB0];
  responseCopy = response;
  v8 = [responseCopy responseForCharacteristicType:v6];
  v9 = [v8 valueWithExpectedClass:objc_opt_class()];

  v10 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFA98]];
  v11 = [v10 valueWithExpectedClass:objc_opt_class()];

  v12 = [MEMORY[0x277CD1D90] hf_sensorCharacteristicTypeForServiceType:typeCopy];
  v13 = [responseCopy responseForCharacteristicType:v12];

  value = [v13 value];

  if (!value)
  {
    goto LABEL_16;
  }

  [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:1];
  [(HFCharacteristicValueDisplayMetadata *)self setPriority:-1];
  if (([v12 isEqualToString:*MEMORY[0x277CCF7A0]] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCF7B8]) & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCFA80]) & 1) == 0 && !objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCF938]))
  {
    if (([v12 isEqualToString:*MEMORY[0x277CCF978]] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCF9A8]) & 1) != 0 || objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CCF7E8]))
    {
      if (([value BOOLValue] & 1) == 0)
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

      if (([value integerValue] & 0xFFFFFFFFFFFFFFFELL) != 4)
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

  if ([value BOOLValue])
  {
    v15 = 2;
    goto LABEL_8;
  }

LABEL_10:
  if ([v9 integerValue] || objc_msgSend(v11, "integerValue"))
  {
    [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:2];
    priority = [(HFCharacteristicValueDisplayMetadata *)self priority];
    if (priority <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = priority;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v17];
  }

LABEL_16:
  if ([typeCopy isEqualToString:*MEMORY[0x277CD0DE0]])
  {
    v18 = @"HFStatusSortKeyAirQualitySensor";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277CD0E10]])
  {
    v18 = @"HFStatusSortKeyCO2Alarm";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277CD0E18]])
  {
    v18 = @"HFStatusSortKeyCOAlarm";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277CD0E20]])
  {
    v18 = @"HFStatusSortKeyContactSensor";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277CD0E90]])
  {
    v18 = @"HFStatusSortKeyLeakAlarm";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277CD0EC0]])
  {
    v18 = @"HFStatusSortKeyMotionAlarm";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277CD0EC8]])
  {
    v18 = @"HFStatusSortKeyOccupancyAlarm";
  }

  else
  {
    if (![typeCopy isEqualToString:*MEMORY[0x277CD0EE8]])
    {
      goto LABEL_38;
    }

    v18 = @"HFStatusSortKeySmokeAlarm";
  }

  v19 = _HFLocalizedStringWithDefaultValue(v18, v18, 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v19];

LABEL_38:
}

- (void)parsePowerStateForServiceType:(id)type response:(id)response
{
  typeCopy = type;
  v6 = [response responseForCharacteristicType:*MEMORY[0x277CCF9F0]];
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

  if ([typeCopy isEqualToString:*MEMORY[0x277CD0E40]])
  {
    v10 = @"HFStatusSortKeyFan";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277CD0EA0]])
  {
    v10 = @"HFStatusSortKeyLightbulb";
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x277CD0ED0]])
  {
    v10 = @"HFStatusSortKeyOutlet";
  }

  else
  {
    if (![typeCopy isEqualToString:*MEMORY[0x277CD0F08]])
    {
      goto LABEL_18;
    }

    v10 = @"HFStatusSortKeySwitch";
  }

  v11 = _HFLocalizedStringWithDefaultValue(v10, v10, 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v11];

LABEL_18:
}

- (void)parseActiveStateForServiceType:(id)type response:(id)response
{
  typeCopy = type;
  v6 = [response responseForCharacteristicType:*MEMORY[0x277CCF748]];
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

  if ([typeCopy isEqualToString:*MEMORY[0x277CD0F40]])
  {
    v10 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyFan", @"HFStatusSortKeyFan", 1);
    [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v10];
  }
}

- (void)parseThermostatResponse:(id)response serviceType:(id)type
{
  responseCopy = response;
  v6 = *MEMORY[0x277CCF868];
  typeCopy = type;
  v8 = [responseCopy responseForCharacteristicType:v6];
  v9 = [v8 valueWithExpectedClass:objc_opt_class()];

  v10 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFB68]];
  v11 = [v10 valueWithExpectedClass:objc_opt_class()];

  v12 = [HFTemperatureItemUtilities currentHeatingCoolingModeValueInResponse:responseCopy];
  v13 = [HFTemperatureItemUtilities targetHeatingCoolingModeValueInResponse:responseCopy];
  v14 = [typeCopy isEqualToString:*MEMORY[0x277CD0F30]];

  allServices = [responseCopy allServices];
  v16 = [allServices na_firstObjectPassingTest:&__block_literal_global_202];

  if (v16)
  {
    v17 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF748] inService:v16];
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

    integerValue = [v13 integerValue];
    if ((integerValue - 1) < 3)
    {
      goto LABEL_14;
    }

    if (integerValue)
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

- (void)parseAirPurifierResponse:(id)response
{
  v4 = [response responseForCharacteristicType:*MEMORY[0x277CCF748]];
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

- (void)parseHumidifierDehumidifierResponse:(id)response
{
  v4 = *MEMORY[0x277CCF850];
  responseCopy = response;
  v6 = [responseCopy responseForCharacteristicType:v4];
  v18 = [v6 valueWithExpectedClass:objc_opt_class()];

  v7 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF828]];
  v8 = [v7 valueWithExpectedClass:objc_opt_class()];

  v9 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFB30]];
  v10 = [v9 valueWithExpectedClass:objc_opt_class()];

  v11 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF748]];

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

- (void)parseCurrentTargetPositionForServiceType:(id)type response:(id)response
{
  typeCopy = type;
  v7 = *MEMORY[0x277CD0F60];
  responseCopy = response;
  v9 = [typeCopy isEqualToString:v7];
  v10 = MEMORY[0x277CD0E30];
  v11 = MEMORY[0x277CD0F58];
  if ((v9 & 1) == 0 && ([typeCopy isEqualToString:*MEMORY[0x277CD0F58]] & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", *v10) & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueDisplayMetadata.m" lineNumber:1320 description:{@"Invalid parameter not satisfying: %@", @"[serviceType isEqualToString:HMServiceTypeWindowCovering] || [serviceType isEqualToString:HMServiceTypeWindow] || [serviceType isEqualToString:HMServiceTypeDoor]"}];
  }

  v12 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF848]];
  v13 = [v12 valueWithExpectedClass:objc_opt_class()];

  v14 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCFB50]];
  v15 = [v14 valueWithExpectedClass:objc_opt_class()];

  v16 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF9A0]];

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
    v20 = [typeCopy isEqualToString:v7] ^ 1;
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
    priority = [(HFCharacteristicValueDisplayMetadata *)self priority];
    if (priority <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = priority;
    }

    [(HFCharacteristicValueDisplayMetadata *)self setPriority:v24];
  }

  if ([typeCopy isEqualToString:*v10])
  {
    v25 = @"HFStatusSortKeyDoor";
  }

  else if ([typeCopy isEqualToString:*v11])
  {
    v25 = @"HFStatusSortKeyWindow";
  }

  else
  {
    if (![typeCopy isEqualToString:v7])
    {
      goto LABEL_34;
    }

    v25 = @"HFStatusSortKeyBlinds";
  }

  v26 = _HFLocalizedStringWithDefaultValue(v25, v25, 1);
  [(HFCharacteristicValueDisplayMetadata *)self setSortKey:v26];

LABEL_34:
}

- (void)parseProgammableSwitchOfType:(id)type response:(id)response
{
  typeCopy = type;
  if (([typeCopy isEqualToString:*MEMORY[0x277CD0EF8]] & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x277CD0F00]) & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicValueDisplayMetadata.m" lineNumber:1361 description:{@"Invalid parameter not satisfying: %@", @"[serviceType isEqualToString:HMServiceTypeStatefulProgrammableSwitch] || [serviceType isEqualToString:HMServiceTypeStatelessProgrammableSwitch]"}];
  }

  [(HFCharacteristicValueDisplayMetadata *)self setPrimaryState:1];
  [(HFCharacteristicValueDisplayMetadata *)self setPriority:-1];
}

@end