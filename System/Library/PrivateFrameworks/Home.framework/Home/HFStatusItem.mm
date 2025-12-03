@interface HFStatusItem
+ (id)_associatedServiceTypeToServiceTypeMap;
+ (id)_criticalServiceTypes;
+ (id)_serviceTypeToAssociatedServiceTypesMap;
+ (id)characteristicTypesForServiceType:(id)type includingAssociatedTypes:(BOOL)types;
- (BOOL)_shouldForceVisibleForService:(id)service;
- (BOOL)canScheduleInvalidation;
- (BOOL)isInvalidationPending;
- (BOOL)isTransitioning;
- (HFStatusItem)init;
- (HFStatusItem)initWithHome:(id)home room:(id)room;
- (HFStatusItem)initWithHome:(id)home room:(id)room valueSource:(id)source;
- (id)_filteredServicesOfTypes:(id)types containingCharacteristicTypes:(id)characteristicTypes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayNameForHomeKitObject:(id)object;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects;
- (id)itemUpdateFromLatestResults;
- (id)shortTitleForFormat:(id)format;
- (id)standardResultsForBatchReadResponse:(id)response serviceTypes:(id)types;
- (void)_updateInvalidationDate;
- (void)scheduleInvalidation;
- (void)setNeedsInvalidation:(BOOL)invalidation;
@end

@implementation HFStatusItem

- (HFStatusItem)initWithHome:(id)home room:(id)room valueSource:(id)source
{
  homeCopy = home;
  roomCopy = room;
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = HFStatusItem;
  v12 = [(HFStatusItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_room, room);
    objc_storeStrong(&v13->_home, home);
    objc_storeStrong(&v13->_valueSource, source);
  }

  return v13;
}

- (HFStatusItem)initWithHome:(id)home room:(id)room
{
  roomCopy = room;
  homeCopy = home;
  hf_characteristicValueManager = [homeCopy hf_characteristicValueManager];
  v9 = [(HFStatusItem *)self initWithHome:homeCopy room:roomCopy valueSource:hf_characteristicValueManager];

  return v9;
}

- (HFStatusItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_room_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFStatusItem.m" lineNumber:58 description:{@"%s is unavailable; use %@ instead", "-[HFStatusItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFStatusItem *)self home];
  room = [(HFStatusItem *)self room];
  valueSource = [(HFStatusItem *)self valueSource];
  v8 = [v4 initWithHome:home room:room valueSource:valueSource];

  invalidationDate = [(HFStatusItem *)self invalidationDate];
  [v8 setInvalidationDate:invalidationDate];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

+ (id)_criticalServiceTypes
{
  if (_MergedGlobals_7 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_27_11);
  }

  v3 = qword_280E02338;

  return v3;
}

void __37__HFStatusItem__criticalServiceTypes__block_invoke_2()
{
  v2 = [MEMORY[0x277CD1D90] hf_alarmSensorServiceTypes];
  v0 = [v2 setByAddingObject:*MEMORY[0x277CD0ED8]];
  v1 = qword_280E02338;
  qword_280E02338 = v0;
}

+ (id)_serviceTypeToAssociatedServiceTypesMap
{
  if (qword_280E02340 != -1)
  {
    dispatch_once(&qword_280E02340, &__block_literal_global_32_6);
  }

  v3 = qword_280E02348;

  return v3;
}

void __55__HFStatusItem__serviceTypeToAssociatedServiceTypesMap__block_invoke_2()
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277CD0E20];
  v0 = *MEMORY[0x277CD0E58];
  v12[0] = *MEMORY[0x277CD0E30];
  v12[1] = v0;
  v1 = *MEMORY[0x277CD0F60];
  v12[2] = *MEMORY[0x277CD0F58];
  v12[3] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277CD0ED0];
  v4 = *MEMORY[0x277CD0EA0];
  v11[0] = *MEMORY[0x277CD0E40];
  v3 = v11[0];
  v11[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v14[1] = v5;
  v13[2] = *MEMORY[0x277CD0F08];
  v10[0] = v3;
  v10[1] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v14[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v8 = qword_280E02348;
  qword_280E02348 = v7;

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)_associatedServiceTypeToServiceTypeMap
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__HFStatusItem__associatedServiceTypeToServiceTypeMap__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = self;
  v2 = __54__HFStatusItem__associatedServiceTypeToServiceTypeMap__block_invoke(v4);

  return v2;
}

id __54__HFStatusItem__associatedServiceTypeToServiceTypeMap__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HFStatusItem__associatedServiceTypeToServiceTypeMap__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (qword_280E02350 != -1)
  {
    dispatch_once(&qword_280E02350, block);
  }

  v1 = qword_280E02358;

  return v1;
}

void __54__HFStatusItem__associatedServiceTypeToServiceTypeMap__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__HFStatusItem__associatedServiceTypeToServiceTypeMap__block_invoke_3;
  v3[3] = &__block_descriptor_40_e26___NSMutableDictionary_8__0l;
  v3[4] = *(a1 + 32);
  v1 = __54__HFStatusItem__associatedServiceTypeToServiceTypeMap__block_invoke_3(v3);
  v2 = qword_280E02358;
  qword_280E02358 = v1;
}

id __54__HFStatusItem__associatedServiceTypeToServiceTypeMap__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) _serviceTypeToAssociatedServiceTypesMap];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__HFStatusItem__associatedServiceTypeToServiceTypeMap__block_invoke_4;
  v5[3] = &unk_277DFFAF0;
  v3 = v2;
  v6 = v3;
  [v1 enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

void __54__HFStatusItem__associatedServiceTypeToServiceTypeMap__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HFStatusItem__associatedServiceTypeToServiceTypeMap__block_invoke_5;
  v7[3] = &unk_277DFFAC8;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 na_each:v7];
}

void __54__HFStatusItem__associatedServiceTypeToServiceTypeMap__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = v5;
  v7 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v8 arrayByAddingObject:*(a1 + 40)];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v4];
}

+ (id)characteristicTypesForServiceType:(id)type includingAssociatedTypes:(BOOL)types
{
  typeCopy = type;
  v7 = [MEMORY[0x277CD1D90] hf_requiredCharacteristicTypesForDisplayMetadataWithServiceType:typeCopy];
  v8 = v7;
  if (types)
  {
    _associatedServiceTypeToServiceTypeMap = [self _associatedServiceTypeToServiceTypeMap];
    v10 = [_associatedServiceTypeToServiceTypeMap objectForKey:typeCopy];

    if (v10)
    {
      v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
      v12 = [v11 na_flatMap:&__block_literal_global_44_2];

      v13 = [v8 setByAddingObjectsFromSet:v12];
    }

    else
    {
      v13 = v8;
    }
  }

  else
  {
    v13 = v7;
  }

  return v13;
}

- (BOOL)_shouldForceVisibleForService:(id)service
{
  serviceCopy = service;
  room = [(HFStatusItem *)self room];
  if (room && (v6 = room, v7 = [serviceCopy hf_isSensorService], v6, (v7 & 1) != 0) || (objc_msgSend(serviceCopy, "serviceType"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", *MEMORY[0x277CD0ED8]), v8, (v9 & 1) != 0))
  {
    v10 = 1;
  }

  else if ([serviceCopy hf_isSensorService])
  {
    accessory = [serviceCopy accessory];
    if ([accessory hf_isHomePod])
    {
      serviceType = [serviceCopy serviceType];
      if ([serviceType isEqual:*MEMORY[0x277CD0E70]])
      {
        v10 = 1;
      }

      else
      {
        serviceType2 = [serviceCopy serviceType];
        v10 = [serviceType2 isEqual:*MEMORY[0x277CD0F28]];
      }
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

  return v10;
}

- (id)displayNameForHomeKitObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
LABEL_4:
    hf_serviceNameComponents = [objectCopy hf_serviceNameComponents];
LABEL_5:
    room = [(HFStatusItem *)self room];
    if (room)
    {
      [hf_serviceNameComponents serviceName];
    }

    else
    {
      [hf_serviceNameComponents composedString];
    }
    hf_displayName = ;

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSLog(&cfstr_UnhandledHomek.isa, self, objectCopy);
      hf_serviceNameComponents = 0;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  hf_serviceNameComponents = objectCopy;
  hf_linkedAccessory = [hf_serviceNameComponents hf_linkedAccessory];
  hf_serviceNameComponents2 = [hf_linkedAccessory hf_serviceNameComponents];

  if (hf_serviceNameComponents2)
  {

    hf_serviceNameComponents = hf_serviceNameComponents2;
    goto LABEL_5;
  }

  hf_displayName = [hf_serviceNameComponents hf_displayName];
LABEL_9:

  return hf_displayName;
}

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects
{
  v23 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__HFStatusItem_iconDescriptorForRepresentedHomeKitObjects___block_invoke;
    v13[3] = &unk_277DFFB58;
    v6 = v5;
    v14 = v6;
    v7 = [objectsCopy na_map:v13];
    if ([v7 count] == 1)
    {
      anyObject = [v7 anyObject];
      v9 = v7;
    }

    else
    {
      v9 = [v6 na_map:&__block_literal_global_57_2];

      anyObject = [v9 anyObject];
      if ([v9 count] >= 2)
      {
        v10 = HFLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          selfCopy = self;
          v17 = 2112;
          v18 = v9;
          v19 = 2112;
          v20 = v6;
          v21 = 2112;
          v22 = anyObject;
          _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "%@ Invalid number of icon descriptors: %@ for service types: %@. Defaulting to %@.", buf, 0x2Au);
        }
      }
    }
  }

  else
  {
    anyObject = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return anyObject;
}

id __59__HFStatusItem_iconDescriptorForRepresentedHomeKitObjects___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 associatedServiceType];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v4 serviceType];
    }

    v9 = v7;

    [*(a1 + 32) addObject:v9];
    v8 = [v4 hf_iconDescriptor];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [HFServiceIconFactory iconDescriptorForAccessory:v3];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_filteredServicesOfTypes:(id)types containingCharacteristicTypes:(id)characteristicTypes
{
  typesCopy = types;
  characteristicTypesCopy = characteristicTypes;
  if (typesCopy)
  {
    v9 = [MEMORY[0x277CBEB98] setWithArray:typesCopy];
    hf_standardServiceTypes = [MEMORY[0x277CD1D90] hf_standardServiceTypes];
    v11 = [v9 isSubsetOfSet:hf_standardServiceTypes];

    if ((v11 & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HFStatusItem.m" lineNumber:279 description:{@"Asked to filter services to include unsupported types: %@", typesCopy}];
    }
  }

  room = [(HFStatusItem *)self room];
  if (room)
  {
    [(HFStatusItem *)self room];
  }

  else
  {
    [(HFStatusItem *)self home];
  }
  v14 = ;
  hf_allVisibleServices = [v14 hf_allVisibleServices];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__HFStatusItem__filteredServicesOfTypes_containingCharacteristicTypes___block_invoke;
  v20[3] = &unk_277DFFB80;
  v21 = typesCopy;
  v22 = characteristicTypesCopy;
  selfCopy = self;
  v16 = characteristicTypesCopy;
  v17 = typesCopy;
  v18 = [hf_allVisibleServices na_filter:v20];

  return v18;
}

uint64_t __71__HFStatusItem__filteredServicesOfTypes_containingCharacteristicTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 associatedServiceType];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 serviceType];
  }

  v7 = v6;

  v8 = *(a1 + 32);
  if (v8 && ![v8 containsObject:v7])
  {
    goto LABEL_14;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__HFStatusItem__filteredServicesOfTypes_containingCharacteristicTypes___block_invoke_2;
    v20[3] = &unk_277DF3130;
    v21 = v3;
    v10 = [v9 na_any:v20];

    if (!v10)
    {
LABEL_14:
      v15 = 0;
      goto LABEL_15;
    }
  }

  if (*(a1 + 32) && ([v3 hf_supportsHomeStatus] & 1) == 0)
  {
    v17 = *(a1 + 32);
    v18 = [v3 serviceType];
    v15 = [v17 containsObject:v18];

    if (!v15)
    {
      goto LABEL_15;
    }

    v19 = [v3 hf_prettyDescription];
    NSLog(&cfstr_AttemptingToEx_0.isa, v19);
    v15 = 0;
LABEL_19:

    goto LABEL_15;
  }

  v11 = *(a1 + 48);
  v12 = [objc_opt_class() _criticalServiceTypes];
  v13 = [v3 serviceType];
  v14 = [v12 containsObject:v13];

  if ((v14 & 1) == 0 && [v3 hf_hasSetVisibleInHomeStatus] && (objc_msgSend(v3, "hf_isVisibleInHomeStatus") & 1) == 0)
  {
    v19 = [*(a1 + 48) room];
    v15 = v19 != 0;
    goto LABEL_19;
  }

  v15 = 1;
LABEL_15:

  return v15;
}

BOOL __71__HFStatusItem__filteredServicesOfTypes_containingCharacteristicTypes___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) hf_characteristicOfType:a2];
  v3 = v2 != 0;

  return v3;
}

- (id)standardResultsForBatchReadResponse:(id)response serviceTypes:(id)types
{
  responseCopy = response;
  typesCopy = types;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = -1;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__22;
  v75 = __Block_byref_object_dispose__22;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__22;
  v69 = __Block_byref_object_dispose__22;
  v70 = [MEMORY[0x277CBEB58] set];
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__22;
  v63 = __Block_byref_object_dispose__22;
  v64 = [MEMORY[0x277CBEB58] set];
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__22;
  v57 = __Block_byref_object_dispose__22;
  v58 = [MEMORY[0x277CBEB58] set];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  if ([(HFStatusItem *)self isInvalidationPending])
  {
    latestResults = [(HFItem *)self latestResults];
    v9 = [latestResults objectForKeyedSubscript:@"priority"];

    if (v9)
    {
      intValue = [v9 intValue];
      v11 = v78;
    }

    else
    {
      v11 = v78;
      intValue = v78[3];
    }

    v11[3] = intValue;
  }

  allServices = [responseCopy allServices];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __65__HFStatusItem_standardResultsForBatchReadResponse_serviceTypes___block_invoke;
  v39[3] = &unk_277DFFBA8;
  v37 = responseCopy;
  v40 = v37;
  selfCopy = self;
  v42 = &v49;
  v43 = &v81;
  v44 = &v65;
  v45 = &v59;
  v46 = &v53;
  v47 = &v77;
  v48 = &v71;
  [allServices na_each:v39];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = dictionary;
  if (v50[3] & 1) != 0 || (!v82[3] || v78[3] < 0) && ([dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"], (v50[3]))
  {
    allServices2 = [v37 allServices];
LABEL_11:
    v16 = allServices2;
    goto LABEL_12;
  }

  if ([(HFStatusItem *)self canRepresentAbnormalAndNormalHomeKitObjectsTogether])
  {
    latestResults2 = [v66[5] setByAddingObjectsFromSet:v60[5]];
    v26 = [latestResults2 setByAddingObjectsFromSet:v54[5]];
  }

  else
  {
    if ([v60[5] count] || objc_msgSend(v54[5], "count"))
    {
      allServices2 = [v60[5] setByAddingObjectsFromSet:v54[5]];
      goto LABEL_11;
    }

    if (![(HFStatusItem *)self isInvalidationPending])
    {
      allServices2 = v66[5];
      goto LABEL_11;
    }

    latestResults2 = [(HFItem *)self latestResults];
    v26 = [latestResults2 objectForKeyedSubscript:@"representedHomeKitObjects"];
  }

  v16 = v26;

LABEL_12:
  [v14 setObject:v16 forKeyedSubscript:@"representedHomeKitObjects"];
  [v14 setObject:&unk_282524D98 forKeyedSubscript:@"statusItemCategory"];
  if ([v16 count])
  {
    v17 = [(HFStatusItem *)self defaultTitleForRepresentedHomeKitObjects:v16];
    [v14 setObject:v17 forKeyedSubscript:@"title"];
  }

  if ([v60[5] isEqualToSet:v54[5]])
  {
    v18 = &unk_282524DB0;
LABEL_16:
    [v14 setObject:v18 forKeyedSubscript:@"transitioningState"];
    goto LABEL_18;
  }

  if (![v60[5] count] && objc_msgSend(v54[5], "count"))
  {
    v18 = &unk_282524DC8;
    goto LABEL_16;
  }

LABEL_18:
  v19 = [(HFStatusItem *)self iconDescriptorForRepresentedHomeKitObjects:v16];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = typesCopy;
    packageIdentifier = [v19 packageIdentifier];
    v22 = [v14 objectForKeyedSubscript:@"transitioningState"];
    if (v22)
    {
      v23 = [v14 objectForKeyedSubscript:@"transitioningState"];
      integerValue = [v23 integerValue];
    }

    else
    {
      integerValue = v82[3];
    }

    v27 = [HFCAPackageIconDescriptor alloc];
    v28 = &HFCAPackageStateOn;
    if (integerValue != 2)
    {
      v28 = &HFCAPackageStateOff;
    }

    v29 = *v28;
    v30 = [(HFCAPackageIconDescriptor *)v27 initWithPackageIdentifier:packageIdentifier state:v29];

    v19 = v30;
    typesCopy = v20;
  }

  [v14 setObject:v19 forKeyedSubscript:@"icon"];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __65__HFStatusItem_standardResultsForBatchReadResponse_serviceTypes___block_invoke_75;
  v38[3] = &unk_277DF2DD8;
  v38[4] = self;
  v31 = [typesCopy na_flatMap:v38];
  v32 = [typesCopy setByAddingObjectsFromSet:v31];

  v33 = [MEMORY[0x277CCABB0] numberWithInteger:v82[3]];
  [v14 setObject:v33 forKeyedSubscript:@"state"];

  v34 = [MEMORY[0x277CCABB0] numberWithInteger:v78[3]];
  [v14 setObject:v34 forKeyedSubscript:@"priority"];

  [v14 setObject:v72[5] forKeyedSubscript:@"sortKey"];
  allCharacteristics = [v37 allCharacteristics];
  [v14 setObject:allCharacteristics forKeyedSubscript:@"dependentHomeKitObjects"];

  [v14 setObject:v32 forKeyedSubscript:@"dependentServiceTypes"];
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);

  return v14;
}

void __65__HFStatusItem_standardResultsForBatchReadResponse_serviceTypes___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = [v22 hf_isChildService];
  v4 = v22;
  if ((v3 & 1) == 0)
  {
    v5 = [*(a1 + 32) batchResponseForService:v22 includeChildServices:1];
    if ([*(a1 + 40) _shouldForceVisibleForService:v22])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if (!v5)
    {
      goto LABEL_32;
    }

    v6 = [HFCharacteristicValueDisplayMetadata displayMetadataForService:v22 characteristicReadResponse:v5];
    v7 = [v6 error];

    if (v7)
    {
LABEL_31:

LABEL_32:
      v4 = v22;
      goto LABEL_33;
    }

    if (![v6 primaryState])
    {
      goto LABEL_22;
    }

    v8 = *(*(*(a1 + 56) + 8) + 24);
    if (v8 == 1)
    {
      if ([v6 primaryState] == 2)
      {
LABEL_12:
        v9 = 2;
LABEL_17:
        *(*(*(a1 + 56) + 8) + 24) = v9;
        if ([v6 primaryState] == 1)
        {
          v11 = 64;
        }

        else
        {
          if ([v6 primaryState] != 2)
          {
            goto LABEL_22;
          }

          v11 = 72;
        }

        [*(*(*(a1 + v11) + 8) + 40) addObject:v22];
LABEL_22:
        if ([v6 transitioningPrimaryState])
        {
          v12 = [v6 transitioningPrimaryState];
          if (v12 != [v6 primaryState])
          {
            [*(*(*(a1 + 80) + 8) + 40) addObject:v22];
          }
        }

        v13 = *(*(*(a1 + 88) + 8) + 24);
        v14 = [v6 priority];
        if (v13 <= v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = v13;
        }

        *(*(*(a1 + 88) + 8) + 24) = v15;
        v16 = *(*(*(a1 + 96) + 8) + 40);
        if (!v16 || ([v6 sortKey], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "localizedStandardCompare:", v17), v17, v18 == 1))
        {
          v19 = [v6 sortKey];
          v20 = *(*(a1 + 96) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;
        }

        goto LABEL_31;
      }

      v8 = *(*(*(a1 + 56) + 8) + 24);
    }

    if (v8 == 2)
    {
      if ([v6 primaryState] == 1)
      {
        goto LABEL_12;
      }

      v8 = *(*(*(a1 + 56) + 8) + 24);
    }

    v10 = [v6 primaryState];
    if (v8 <= v10)
    {
      v9 = v10;
    }

    else
    {
      v9 = v8;
    }

    goto LABEL_17;
  }

LABEL_33:
}

id __65__HFStatusItem_standardResultsForBatchReadResponse_serviceTypes___block_invoke_75(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() _associatedServiceTypeToServiceTypeMap];
  v5 = [v4 objectForKey:v3];

  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];

  return v6;
}

- (id)itemUpdateFromLatestResults
{
  latestResults = [(HFItem *)self latestResults];
  v4 = [latestResults objectForKeyedSubscript:@"title"];
  v5 = [latestResults objectForKeyedSubscript:@"description"];
  v6 = [latestResults objectForKeyedSubscript:@"icon"];
  statusItemUpdate = [(HFStatusItem *)self statusItemUpdate];

  if (statusItemUpdate)
  {
    statusItemUpdate2 = [(HFStatusItem *)self statusItemUpdate];
    [statusItemUpdate2 setTitle:v4];

    statusItemUpdate3 = [(HFStatusItem *)self statusItemUpdate];
    [statusItemUpdate3 setSecondaryText:v5];

    statusItemUpdate4 = [(HFStatusItem *)self statusItemUpdate];
    [(HFStatusItemUpdate *)statusItemUpdate4 setIconDescriptor:v6];
  }

  else
  {
    statusItemUpdate4 = [[HFStatusItemUpdate alloc] initWithTitle:v4 secondaryText:v5 iconDescriptor:v6];
    [(HFStatusItem *)self setStatusItemUpdate:statusItemUpdate4];
  }

  v11 = [latestResults objectForKeyedSubscript:@"statusCurrentValue"];
  statusItemUpdate5 = [(HFStatusItem *)self statusItemUpdate];
  [statusItemUpdate5 setCurrentValue:v11];

  v13 = [latestResults objectForKeyedSubscript:@"statusPossibleValues"];
  statusItemUpdate6 = [(HFStatusItem *)self statusItemUpdate];
  [statusItemUpdate6 setPossibleValues:v13];

  statusItemUpdate7 = [(HFStatusItem *)self statusItemUpdate];

  return statusItemUpdate7;
}

- (BOOL)isTransitioning
{
  latestResults = [(HFItem *)self latestResults];
  v4 = [latestResults objectForKeyedSubscript:@"state"];
  integerValue = [v4 integerValue];

  latestResults2 = [(HFItem *)self latestResults];
  v7 = [latestResults2 objectForKeyedSubscript:@"transitioningState"];
  integerValue2 = [v7 integerValue];

  if (integerValue2)
  {
    v9 = integerValue == integerValue2;
  }

  else
  {
    v9 = 1;
  }

  return !v9;
}

- (BOOL)isInvalidationPending
{
  supportsInvalidation = [(HFStatusItem *)self supportsInvalidation];
  if (supportsInvalidation)
  {

    LOBYTE(supportsInvalidation) = [(HFStatusItem *)self needsInvalidation];
  }

  return supportsInvalidation;
}

- (BOOL)canScheduleInvalidation
{
  if ([(HFStatusItem *)self supportsInvalidation])
  {
    latestResults = [(HFItem *)self latestResults];
    v4 = [latestResults objectForKeyedSubscript:@"state"];
    if ([v4 integerValue] == 1)
    {
      v5 = ![(HFStatusItem *)self isTransitioning];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setNeedsInvalidation:(BOOL)invalidation
{
  invalidationCopy = invalidation;
  if (![(HFStatusItem *)self supportsInvalidation])
  {
    NSLog(&cfstr_AskedToUpdateN.isa);
  }

  if ([(HFStatusItem *)self supportsInvalidation]&& self->_needsInvalidation != invalidationCopy)
  {
    self->_needsInvalidation = invalidationCopy;

    [(HFStatusItem *)self _updateInvalidationDate];
  }
}

- (void)scheduleInvalidation
{
  if (![(HFStatusItem *)self supportsInvalidation])
  {
    NSLog(&cfstr_AskedToSchedul.isa);
  }

  [(HFStatusItem *)self _updateInvalidationDate];
}

- (void)_updateInvalidationDate
{
  if ([(HFStatusItem *)self needsInvalidation]&& [(HFStatusItem *)self canScheduleInvalidation])
  {
    v3 = MEMORY[0x277CBEAA8];
    [(HFStatusItem *)self invalidationTimeout];
    v4 = [v3 dateWithTimeIntervalSinceNow:?];
    [(HFStatusItem *)self setInvalidationDate:v4];
  }

  else if (![(HFStatusItem *)self needsInvalidation])
  {

    [(HFStatusItem *)self setInvalidationDate:0];
  }
}

- (id)shortTitleForFormat:(id)format
{
  formatCopy = format;
  v4 = [formatCopy stringByReplacingOccurrencesOfString:@"%@" withString:&stru_2824B1A78];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([formatCopy hasSuffix:v6])
  {
    if ([formatCopy isEqual:v6])
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

@end