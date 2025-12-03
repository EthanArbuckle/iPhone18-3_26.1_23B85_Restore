@interface HMAccessory(AbstractionAdditions)
- (id)hf_accessoryLikeObjects;
- (id)hf_accessoryType;
- (id)hf_containedCharacteristics;
- (id)hf_containedProfiles;
- (id)hf_containedServices;
- (id)hf_itemClass;
- (id)hf_moveToRoom:()AbstractionAdditions;
- (id)hf_updateIsFavorite:()AbstractionAdditions;
- (uint64_t)hf_isIdentifiable;
- (uint64_t)hf_isInRoom:()AbstractionAdditions;
- (uint64_t)hf_isVisibleInHomeStatus;
@end

@implementation HMAccessory(AbstractionAdditions)

- (id)hf_accessoryLikeObjects
{
  if ([self hf_isMatterOnlyAccessory])
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [HFAccessoryLikeObject _accessoryLikeObjectForObject:self];
    v6 = [v4 setWithObject:v5];

    goto LABEL_19;
  }

  hf_visibleServices = [self hf_visibleServices];
  if ([self hf_showAsAccessoryTile] && objc_msgSend(hf_visibleServices, "count") && (objc_msgSend(self, "hf_isMediaAccessory") & 1) == 0)
  {
    v21 = MEMORY[0x277CBEB98];
    v22 = [HFAccessoryLikeObject _accessoryLikeObjectForObject:self];
    v6 = [v21 setWithObject:v22];

    goto LABEL_18;
  }

  v8 = [MEMORY[0x277CBEB98] set];
  if (![self hf_isCamera])
  {
    if (![self hf_isRemoteControl])
    {
      if ([self hf_isMediaAccessory])
      {
        v19 = MEMORY[0x277CBEB98];
        mediaProfile = [self mediaProfile];
        v18 = [v19 na_setWithSafeObject:mediaProfile];

        goto LABEL_14;
      }

      if ([hf_visibleServices count])
      {
        v18 = hf_visibleServices;
        goto LABEL_15;
      }

      if ([self hf_isSupportedAccessory])
      {
        goto LABEL_16;
      }
    }

    v12 = MEMORY[0x277CBEB98];
    v13 = [HFAccessoryLikeObject _accessoryLikeObjectForObject:self];
    v6 = [v12 setWithObject:v13];

    goto LABEL_17;
  }

  hf_showAsAccessoryTile = [self hf_showAsAccessoryTile];
  v10 = MEMORY[0x277CBEB98];
  if (!hf_showAsAccessoryTile)
  {
    mediaProfile = [self cameraProfiles];
    allObjects = [hf_visibleServices allObjects];
    v16 = [mediaProfile arrayByAddingObjectsFromArray:allObjects];
    na_arrayByFlattening = [v16 na_arrayByFlattening];
    v18 = [v10 setWithArray:na_arrayByFlattening];

LABEL_14:
    v8 = mediaProfile;
LABEL_15:

    v8 = v18;
LABEL_16:
    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __60__HMAccessory_AbstractionAdditions__hf_accessoryLikeObjects__block_invoke;
    v23[3] = &unk_277DF4108;
    v23[4] = self;
    objc_copyWeak(v24, &location);
    v24[1] = a2;
    v6 = [v8 na_flatMap:v23];
    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
    goto LABEL_17;
  }

  v11 = [HFAccessoryLikeObject _accessoryLikeObjectForObject:self];
  v6 = [v10 setWithObject:v11];

LABEL_17:
LABEL_18:

LABEL_19:

  return v6;
}

- (id)hf_accessoryType
{
  hf_effectiveCategoryType = [self hf_effectiveCategoryType];
  if (([hf_effectiveCategoryType isEqualToString:*MEMORY[0x277CCE8C8]] & 1) != 0 || objc_msgSend(self, "hf_isSingleSensorAccessory"))
  {
    hf_primaryService = [self hf_primaryService];
    if (hf_primaryService)
    {
      v4 = hf_primaryService;
      hf_accessoryType = [hf_primaryService hf_accessoryType];
LABEL_5:

      goto LABEL_14;
    }
  }

  else if (([hf_effectiveCategoryType isEqualToString:*MEMORY[0x277CCE8D0]] & 1) != 0 || objc_msgSend(hf_effectiveCategoryType, "isEqualToString:", *MEMORY[0x277CCE910]))
  {
    hf_primaryService2 = [self hf_primaryService];
    associatedServiceType = [hf_primaryService2 associatedServiceType];
    if (associatedServiceType)
    {
      v8 = associatedServiceType;
      hf_visibleServices = [self hf_visibleServices];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __53__HMAccessory_AbstractionAdditions__hf_accessoryType__block_invoke;
      v12[3] = &unk_277DF4020;
      v4 = hf_primaryService2;
      v13 = v4;
      v10 = [hf_visibleServices na_all:v12];

      if (v10)
      {
        hf_accessoryType = [v4 hf_accessoryType];

        goto LABEL_5;
      }
    }

    else
    {
    }
  }

  hf_accessoryType = [HFAccessoryType categoryType:hf_effectiveCategoryType];
LABEL_14:

  return hf_accessoryType;
}

- (id)hf_itemClass
{
  if ([self hf_isRemoteControl])
  {
    v2 = off_277DF0210;
  }

  else if ([self hf_isMediaAccessory])
  {
    v2 = off_277DEFD10;
  }

  else
  {
    hf_isSupportedAccessory = [self hf_isSupportedAccessory];
    v2 = off_277DEFAD8;
    if (hf_isSupportedAccessory)
    {
      v2 = off_277DEF2B0;
    }
  }

  v4 = *v2;
  v5 = objc_opt_class();

  return v5;
}

- (id)hf_containedServices
{
  v1 = MEMORY[0x277CBEB98];
  services = [self services];
  v3 = [v1 setWithArray:services];

  return v3;
}

- (id)hf_containedProfiles
{
  v1 = MEMORY[0x277CBEB98];
  profiles = [self profiles];
  v3 = [v1 setWithArray:profiles];

  return v3;
}

- (id)hf_containedCharacteristics
{
  v1 = MEMORY[0x277CBEB98];
  services = [self services];
  v3 = [services na_flatMap:&__block_literal_global_65];
  v4 = [v1 setWithArray:v3];

  return v4;
}

- (uint64_t)hf_isInRoom:()AbstractionAdditions
{
  v4 = a3;
  room = [self room];
  uniqueIdentifier = [room uniqueIdentifier];
  uniqueIdentifier2 = [v4 uniqueIdentifier];

  v8 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2];
  return v8;
}

- (uint64_t)hf_isIdentifiable
{
  if ([self supportsIdentify])
  {
    return 1;
  }

  return [self hf_isHomePod];
}

- (id)hf_moveToRoom:()AbstractionAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HMAccessory_AbstractionAdditions__hf_moveToRoom___block_invoke;
  v9[3] = &unk_277DF4150;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v9];

  return v7;
}

- (id)hf_updateIsFavorite:()AbstractionAdditions
{
  if ([self hf_isCamera])
  {
    NSLog(&cfstr_AttemptingToUp.isa);
    [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    [self hf_updateValue:a3 forContextType:2];
  }
  v5 = ;

  return v5;
}

- (uint64_t)hf_isVisibleInHomeStatus
{
  if ([self hf_isForcedVisibleInHomeStatus])
  {
    return 1;
  }

  return [self hf_shouldBeOnForContextType:1];
}

@end