@interface HMService(Additions)
+ (id)_hf_allowedChildServicesTypeMap;
+ (id)hf_alarmSensorServiceTypes;
+ (id)hf_defaultServiceSubtypeForServiceType:()Additions;
+ (id)hf_descriptionForServiceSubtype:()Additions;
+ (id)hf_fanServiceTypes;
+ (id)hf_getUserFriendlyDescriptionKey:()Additions;
+ (id)hf_roomsForServices:()Additions;
+ (id)hf_sensorServiceTypes;
+ (id)hf_serviceTypesHiddenFromScenesOrAutomations;
+ (id)hf_standardServiceTypes;
+ (id)hf_userFriendlyLocalizedCapitalizedDescription:()Additions;
+ (id)hf_userFriendlyLocalizedLowercaseDescription:()Additions;
- (BOOL)hf_isChildService;
- (BOOL)hf_isInGroup;
- (HFServiceDescriptor)hf_serviceDescriptor;
- (id)hf_characteristicEqualToType:()Additions forServiceType:;
- (id)hf_characteristicOfType:()Additions;
- (id)hf_childServices;
- (id)hf_childServicesOfType:()Additions;
- (id)hf_effectiveServiceSubtype;
- (id)hf_effectiveServiceType;
- (id)hf_iconDescriptor;
- (id)hf_lightProfiles;
- (id)hf_parentService;
- (id)hf_serviceGroup;
- (id)hf_updateIconDescriptor:()Additions;
- (id)hf_userFriendlyLocalizedCapitalizedDescription;
- (id)hf_userFriendlyLocalizedLowercaseDescription;
- (uint64_t)_hf_isDirectlyOrIndirectlyLinkedToService:()Additions;
- (uint64_t)hf_canGroupWithService:()Additions;
- (uint64_t)hf_isAlarmSensorService;
- (uint64_t)hf_isCameraContainedMotionSensor;
- (uint64_t)hf_isDisplayableSensor;
- (uint64_t)hf_isFan;
- (uint64_t)hf_isLegacyService;
- (uint64_t)hf_isNetworkRouter;
- (uint64_t)hf_isNetworkRouterSatellite;
- (uint64_t)hf_isSensorService;
- (uint64_t)hf_isTelevision;
- (uint64_t)hf_isVisible;
- (uint64_t)hf_requiresDeviceUnlock;
- (uint64_t)hf_showsAsServiceInControlCentre;
- (uint64_t)hf_supportsGroups;
- (uint64_t)hf_supportsNaturalLighting;
@end

@implementation HMService(Additions)

+ (id)hf_standardServiceTypes
{
  if (_MergedGlobals_272 != -1)
  {
    dispatch_once(&_MergedGlobals_272, &__block_literal_global_4_10);
  }

  v1 = qword_280E03128;

  return v1;
}

+ (id)hf_roomsForServices:()Additions
{
  v3 = [a3 na_map:&__block_literal_global_8_5];
  v4 = [v3 na_filter:&__block_literal_global_11_5];

  return v4;
}

+ (id)hf_serviceTypesHiddenFromScenesOrAutomations
{
  if (qword_280E03130 != -1)
  {
    dispatch_once(&qword_280E03130, &__block_literal_global_19_4);
  }

  v1 = qword_280E03138;

  return v1;
}

- (id)hf_characteristicOfType:()Additions
{
  v4 = a3;
  characteristics = [self characteristics];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HMService_Additions__hf_characteristicOfType___block_invoke;
  v9[3] = &unk_277DF6218;
  v10 = v4;
  v6 = v4;
  v7 = [characteristics na_firstObjectPassingTest:v9];

  return v7;
}

- (HFServiceDescriptor)hf_serviceDescriptor
{
  objc_initWeak(&location, val);
  v2 = [HFServiceDescriptor alloc];
  serviceType = [val serviceType];
  hf_effectiveServiceSubtype = [val hf_effectiveServiceSubtype];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMService_Additions__hf_serviceDescriptor__block_invoke;
  v7[3] = &unk_277DFCC20;
  objc_copyWeak(&v8, &location);
  v5 = [(HFServiceDescriptor *)v2 initWithServiceType:serviceType serviceSubtype:hf_effectiveServiceSubtype parentServiceDescriptorGenerator:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

- (id)hf_effectiveServiceType
{
  associatedServiceType = [self associatedServiceType];
  v3 = associatedServiceType;
  if (associatedServiceType)
  {
    serviceType = associatedServiceType;
  }

  else
  {
    serviceType = [self serviceType];
  }

  v5 = serviceType;

  return v5;
}

- (id)hf_iconDescriptor
{
  applicationData = [self applicationData];
  v3 = [applicationData objectForKeyedSubscript:@"HFApplicationDataServiceIconID"];

  if (v3)
  {
    [HFServiceIconFactory iconDescriptorWithIdentifier:v3 forService:self];
  }

  else
  {
    [HFServiceIconFactory defaultIconDescriptorForService:self];
  }
  v4 = ;

  return v4;
}

- (id)hf_updateIconDescriptor:()Additions
{
  v4 = a3;
  v5 = [HFServiceIconFactory allIconDescriptorsForService:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__HMService_Additions__hf_updateIconDescriptor___block_invoke;
  v15[3] = &unk_277DF4AE8;
  v16 = v4;
  v6 = v4;
  v7 = [v5 na_any:v15];

  if (v7)
  {
    identifier = [v6 identifier];
    applicationData = [self applicationData];
    [applicationData setObject:identifier forKeyedSubscript:@"HFApplicationDataServiceIconID"];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__HMService_Additions__hf_updateIconDescriptor___block_invoke_2;
    v14[3] = &unk_277DF2C68;
    v14[4] = self;
    v10 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v14];
  }

  else
  {
    v11 = MEMORY[0x277D2C900];
    identifier = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v10 = [v11 futureWithError:identifier];
  }

  v12 = v10;

  return v12;
}

- (uint64_t)hf_supportsGroups
{
  if (qword_280E03140 != -1)
  {
    dispatch_once(&qword_280E03140, &__block_literal_global_31_4);
  }

  v2 = qword_280E03148;
  hf_effectiveServiceType = [self hf_effectiveServiceType];
  v4 = [v2 containsObject:hf_effectiveServiceType];

  return v4;
}

- (id)hf_serviceGroup
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__HMService_Additions__hf_serviceGroup__block_invoke;
  aBlock[3] = &unk_277DF75E8;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = +[HFHomePropertyCacheManager sharedManager];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 valueForObject:self key:v6 invalidationReasons:2 recalculationBlock:v4];

  return v7;
}

- (BOOL)hf_isInGroup
{
  hf_serviceGroup = [self hf_serviceGroup];
  v2 = hf_serviceGroup != 0;

  return v2;
}

- (uint64_t)hf_isLegacyService
{
  if (![self hf_isVisible])
  {
    return 0;
  }

  hf_requiredCharacteristicTypesForDisplayMetadata = [self hf_requiredCharacteristicTypesForDisplayMetadata];
  characteristics = [self characteristics];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HMService_Additions__hf_isLegacyService__block_invoke;
  v8[3] = &unk_277DF6218;
  v9 = hf_requiredCharacteristicTypesForDisplayMetadata;
  v4 = hf_requiredCharacteristicTypesForDisplayMetadata;
  v5 = [characteristics na_filter:v8];

  v6 = [v5 na_any:&__block_literal_global_36_0];
  return v6;
}

- (uint64_t)hf_isVisible
{
  accessory = [self accessory];
  hf_visibleServices = [accessory hf_visibleServices];
  v4 = [hf_visibleServices containsObject:self];

  return v4;
}

- (uint64_t)hf_showsAsServiceInControlCentre
{
  if ([self hf_isProgrammableSwitch] & 1) != 0 || (objc_msgSend(self, "hf_isSensorService") & 1) != 0 || (objc_msgSend(self, "hf_isNetworkRouter"))
  {
    return 0;
  }

  else
  {
    return [self hf_isNetworkRouterSatellite] ^ 1;
  }
}

- (uint64_t)hf_isFan
{
  hf_fanServiceTypes = [objc_opt_class() hf_fanServiceTypes];
  serviceType = [self serviceType];
  v4 = [hf_fanServiceTypes containsObject:serviceType];

  return v4;
}

+ (id)hf_fanServiceTypes
{
  if (qword_280E03150 != -1)
  {
    dispatch_once(&qword_280E03150, &__block_literal_global_40_2);
  }

  v1 = qword_280E03158;

  return v1;
}

- (uint64_t)hf_isNetworkRouter
{
  serviceType = [self serviceType];
  if ([serviceType isEqualToString:*MEMORY[0x277CD0F48]])
  {
    hf_isNetworkRouterSatellite = 1;
  }

  else
  {
    hf_isNetworkRouterSatellite = [self hf_isNetworkRouterSatellite];
  }

  return hf_isNetworkRouterSatellite;
}

- (uint64_t)hf_isNetworkRouterSatellite
{
  serviceType = [self serviceType];
  v2 = [serviceType isEqualToString:*MEMORY[0x277CD0F50]];

  return v2;
}

- (uint64_t)hf_isTelevision
{
  serviceType = [self serviceType];
  v2 = [serviceType isEqualToString:*MEMORY[0x277CD0F20]];

  return v2;
}

- (BOOL)hf_isChildService
{
  hf_parentService = [self hf_parentService];
  v2 = hf_parentService != 0;

  return v2;
}

- (uint64_t)hf_isSensorService
{
  hf_sensorServiceTypes = [objc_opt_class() hf_sensorServiceTypes];
  serviceType = [self serviceType];
  v4 = [hf_sensorServiceTypes containsObject:serviceType];

  return v4;
}

- (uint64_t)hf_isAlarmSensorService
{
  hf_alarmSensorServiceTypes = [objc_opt_class() hf_alarmSensorServiceTypes];
  serviceType = [self serviceType];
  v4 = [hf_alarmSensorServiceTypes containsObject:serviceType];

  return v4;
}

- (uint64_t)hf_isCameraContainedMotionSensor
{
  accessory = [self accessory];
  if ([accessory hf_isCamera])
  {
    serviceType = [self serviceType];
    v4 = [serviceType isEqualToString:*MEMORY[0x277CD0EC0]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)hf_requiresDeviceUnlock
{
  characteristics = [self characteristics];
  v2 = [characteristics na_any:&__block_literal_global_42_1];

  return v2;
}

+ (id)hf_sensorServiceTypes
{
  if (qword_280E03160 != -1)
  {
    dispatch_once(&qword_280E03160, &__block_literal_global_46_2);
  }

  v1 = qword_280E03168;

  return v1;
}

+ (id)hf_alarmSensorServiceTypes
{
  if (qword_280E03170 != -1)
  {
    dispatch_once(&qword_280E03170, &__block_literal_global_50_0);
  }

  v1 = qword_280E03178;

  return v1;
}

- (id)hf_childServicesOfType:()Additions
{
  v4 = a3;
  hf_childServices = [self hf_childServices];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__HMService_Additions__hf_childServicesOfType___block_invoke;
  v9[3] = &unk_277DF4020;
  v10 = v4;
  v6 = v4;
  v7 = [hf_childServices na_filter:v9];

  return v7;
}

+ (id)_hf_allowedChildServicesTypeMap
{
  if (qword_280E03180 != -1)
  {
    dispatch_once(&qword_280E03180, &__block_literal_global_55_2);
  }

  v1 = qword_280E03188;

  return v1;
}

- (id)hf_childServices
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__HMService_Additions__hf_childServices__block_invoke;
  aBlock[3] = &unk_277DF75E8;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = +[HFHomePropertyCacheManager sharedManager];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 valueForObject:self key:v6 invalidationReasons:3 recalculationBlock:v4];

  return v7;
}

- (uint64_t)_hf_isDirectlyOrIndirectlyLinkedToService:()Additions
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] setWithObject:self];
  v6 = [MEMORY[0x277CBEB18] arrayWithObject:self];
  v7 = v6;
  while ([v6 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    [v7 removeObjectAtIndex:0];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    linkedServices = [v8 linkedServices];
    v10 = [linkedServices countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(linkedServices);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 isEqual:v4])
          {

            v15 = 1;
            goto LABEL_16;
          }

          if (([v5 containsObject:v14] & 1) == 0)
          {
            [v5 addObject:v14];
            [v7 addObject:v14];
          }
        }

        v11 = [linkedServices countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v6 = v7;
  }

  v15 = 0;
LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)hf_parentService
{
  accessory = [self accessory];
  hf_standardServices = [accessory hf_standardServices];
  v4 = [hf_standardServices mutableCopy];

  accessory2 = [self accessory];
  hf_owningBridgeAccessory = [accessory2 hf_owningBridgeAccessory];

  if (hf_owningBridgeAccessory)
  {
    hf_standardServices2 = [hf_owningBridgeAccessory hf_standardServices];
    [v4 unionSet:hf_standardServices2];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__HMService_Additions__hf_parentService__block_invoke;
  v11[3] = &unk_277DF4020;
  v11[4] = self;
  v8 = [v4 na_filter:v11];
  if ([v8 count] < 2)
  {
    anyObject = [v8 anyObject];
  }

  else
  {
    NSLog(&cfstr_FoundMultipleM.isa, self, v8);
    anyObject = 0;
  }

  return anyObject;
}

- (id)hf_effectiveServiceSubtype
{
  serviceSubtype = [self serviceSubtype];
  v3 = serviceSubtype;
  if (!serviceSubtype || [serviceSubtype isEqualToString:*MEMORY[0x277CD0DB8]])
  {
    v4 = objc_opt_class();
    serviceType = [self serviceType];
    v6 = [v4 hf_defaultServiceSubtypeForServiceType:serviceType];

    v3 = v6;
  }

  return v3;
}

+ (id)hf_defaultServiceSubtypeForServiceType:()Additions
{
  if ([a3 isEqualToString:*MEMORY[0x277CD0F38]])
  {
    v3 = *MEMORY[0x277CD0DA0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)hf_descriptionForServiceSubtype:()Additions
{
  v3 = a3;
  if (qword_280E03190 != -1)
  {
    dispatch_once(&qword_280E03190, &__block_literal_global_67_1);
  }

  v4 = qword_280E03198;
  v5 = v4;
  if (v3)
  {
    [v4 objectForKeyedSubscript:v3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Custom(%@)", 0];
  }
  v6 = ;

  return v6;
}

- (uint64_t)hf_canGroupWithService:()Additions
{
  v4 = a3;
  if (([v4 isEqual:self] & 1) == 0 && objc_msgSend(self, "hf_supportsGroups") && objc_msgSend(v4, "hf_supportsGroups"))
  {
    hf_effectiveServiceType = [v4 hf_effectiveServiceType];
    hf_effectiveServiceType2 = [self hf_effectiveServiceType];
    v7 = [hf_effectiveServiceType isEqualToString:hf_effectiveServiceType2];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      hf_fanServiceTypes = [objc_opt_class() hf_fanServiceTypes];
      hf_effectiveServiceType3 = [v4 hf_effectiveServiceType];
      if ([hf_fanServiceTypes containsObject:hf_effectiveServiceType3])
      {
        hf_fanServiceTypes2 = [objc_opt_class() hf_fanServiceTypes];
        hf_effectiveServiceType4 = [self hf_effectiveServiceType];
        v8 = [hf_fanServiceTypes2 containsObject:hf_effectiveServiceType4];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hf_characteristicEqualToType:()Additions forServiceType:
{
  v6 = a3;
  v7 = a4;
  serviceType = [self serviceType];
  v9 = [serviceType isEqualToString:v7];

  if (v9)
  {
    v10 = [self hf_characteristicOfType:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)hf_lightProfiles
{
  accessory = [self accessory];
  lightProfiles = [accessory lightProfiles];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__HMService_Additions__hf_lightProfiles__block_invoke;
  v6[3] = &unk_277DFCC48;
  v6[4] = self;
  v4 = [lightProfiles na_map:v6];

  return v4;
}

- (uint64_t)hf_supportsNaturalLighting
{
  if (+[HFUtilities isRunningInStoreDemoMode](HFUtilities, "isRunningInStoreDemoMode") || +[HFUtilities isPressDemoModeEnabled])
  {
    return 1;
  }

  home = [self home];
  hf_enabledResidentsSupportsNaturalLight = [home hf_enabledResidentsSupportsNaturalLight];

  if (!hf_enabledResidentsSupportsNaturalLight)
  {
    return 0;
  }

  hf_lightProfiles = [self hf_lightProfiles];
  v6 = [hf_lightProfiles na_any:&__block_literal_global_97_0];

  return v6;
}

- (uint64_t)hf_isDisplayableSensor
{
  serviceType = [self serviceType];
  if ([serviceType isEqual:*MEMORY[0x277CD0EC0]])
  {
    v3 = 0;
  }

  else
  {
    serviceType2 = [self serviceType];
    if ([serviceType2 isEqual:*MEMORY[0x277CD0E98]])
    {
      v3 = 0;
    }

    else
    {
      serviceType3 = [self serviceType];
      if ([serviceType3 isEqual:*MEMORY[0x277CD0EC8]])
      {
        v3 = 0;
      }

      else
      {
        serviceType4 = [self serviceType];
        if ([serviceType4 isEqual:*MEMORY[0x277CD0DE0]])
        {
          v3 = 0;
        }

        else
        {
          serviceType5 = [self serviceType];
          if ([serviceType5 isEqual:*MEMORY[0x277CD0E10]])
          {
            v3 = 0;
          }

          else
          {
            serviceType6 = [self serviceType];
            if ([serviceType6 isEqual:*MEMORY[0x277CD0E18]])
            {
              v3 = 0;
            }

            else
            {
              serviceType7 = [self serviceType];
              if ([serviceType7 isEqual:*MEMORY[0x277CD0E20]])
              {
                v3 = 0;
              }

              else
              {
                serviceType8 = [self serviceType];
                v11 = *MEMORY[0x277CD0E70];
                if ([serviceType8 isEqual:*MEMORY[0x277CD0E70]])
                {
                  v3 = 0;
                }

                else
                {
                  serviceType9 = [self serviceType];
                  if ([serviceType9 isEqual:*MEMORY[0x277CD0E90]])
                  {
                    v3 = 0;
                  }

                  else
                  {
                    serviceType10 = [self serviceType];
                    if ([serviceType10 isEqual:*MEMORY[0x277CD0EE8]])
                    {
                      v3 = 0;
                    }

                    else
                    {
                      serviceType11 = [self serviceType];
                      if ([serviceType11 isEqual:*MEMORY[0x277CD0F28]])
                      {
                        v3 = 0;
                      }

                      else
                      {
                        serviceType12 = [self serviceType];
                        v3 = [serviceType12 isEqual:v11] ^ 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

+ (id)hf_getUserFriendlyDescriptionKey:()Additions
{
  v3 = qword_280E031A8;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_280E031A8, &__block_literal_global_99_0);
  }

  v5 = [qword_280E031A0 objectForKeyedSubscript:v4];

  return v5;
}

+ (id)hf_userFriendlyLocalizedCapitalizedDescription:()Additions
{
  v1 = [self hf_getUserFriendlyDescriptionKey:?];
  v2 = [v1 stringByAppendingString:@"_ServiceTypeCapitalized"];

  v3 = _HFLocalizedStringWithDefaultValue(v2, 0, 0);

  return v3;
}

+ (id)hf_userFriendlyLocalizedLowercaseDescription:()Additions
{
  v1 = [self hf_getUserFriendlyDescriptionKey:?];
  v2 = [v1 stringByAppendingString:@"_ServiceTypeLowercase"];

  v3 = _HFLocalizedStringWithDefaultValue(v2, 0, 0);

  return v3;
}

- (id)hf_userFriendlyLocalizedCapitalizedDescription
{
  v2 = objc_opt_class();
  serviceType = [self serviceType];
  v4 = [v2 hf_userFriendlyLocalizedCapitalizedDescription:serviceType];
  v5 = v4;
  if (v4)
  {
    localizedCapitalizedString = v4;
  }

  else
  {
    serviceType2 = [self serviceType];
    localizedCapitalizedString = [serviceType2 localizedCapitalizedString];
  }

  return localizedCapitalizedString;
}

- (id)hf_userFriendlyLocalizedLowercaseDescription
{
  v2 = objc_opt_class();
  serviceType = [self serviceType];
  v4 = [v2 hf_userFriendlyLocalizedLowercaseDescription:serviceType];
  v5 = v4;
  if (v4)
  {
    localizedLowercaseString = v4;
  }

  else
  {
    serviceType2 = [self serviceType];
    localizedLowercaseString = [serviceType2 localizedLowercaseString];
  }

  return localizedLowercaseString;
}

@end