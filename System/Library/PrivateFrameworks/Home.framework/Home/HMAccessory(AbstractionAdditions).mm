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
  if ([a1 hf_isMatterOnlyAccessory])
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = [HFAccessoryLikeObject _accessoryLikeObjectForObject:a1];
    v6 = [v4 setWithObject:v5];

    goto LABEL_19;
  }

  v7 = [a1 hf_visibleServices];
  if ([a1 hf_showAsAccessoryTile] && objc_msgSend(v7, "count") && (objc_msgSend(a1, "hf_isMediaAccessory") & 1) == 0)
  {
    v21 = MEMORY[0x277CBEB98];
    v22 = [HFAccessoryLikeObject _accessoryLikeObjectForObject:a1];
    v6 = [v21 setWithObject:v22];

    goto LABEL_18;
  }

  v8 = [MEMORY[0x277CBEB98] set];
  if (![a1 hf_isCamera])
  {
    if (![a1 hf_isRemoteControl])
    {
      if ([a1 hf_isMediaAccessory])
      {
        v19 = MEMORY[0x277CBEB98];
        v14 = [a1 mediaProfile];
        v18 = [v19 na_setWithSafeObject:v14];

        goto LABEL_14;
      }

      if ([v7 count])
      {
        v18 = v7;
        goto LABEL_15;
      }

      if ([a1 hf_isSupportedAccessory])
      {
        goto LABEL_16;
      }
    }

    v12 = MEMORY[0x277CBEB98];
    v13 = [HFAccessoryLikeObject _accessoryLikeObjectForObject:a1];
    v6 = [v12 setWithObject:v13];

    goto LABEL_17;
  }

  v9 = [a1 hf_showAsAccessoryTile];
  v10 = MEMORY[0x277CBEB98];
  if (!v9)
  {
    v14 = [a1 cameraProfiles];
    v15 = [v7 allObjects];
    v16 = [v14 arrayByAddingObjectsFromArray:v15];
    v17 = [v16 na_arrayByFlattening];
    v18 = [v10 setWithArray:v17];

LABEL_14:
    v8 = v14;
LABEL_15:

    v8 = v18;
LABEL_16:
    objc_initWeak(&location, a1);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __60__HMAccessory_AbstractionAdditions__hf_accessoryLikeObjects__block_invoke;
    v23[3] = &unk_277DF4108;
    v23[4] = a1;
    objc_copyWeak(v24, &location);
    v24[1] = a2;
    v6 = [v8 na_flatMap:v23];
    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
    goto LABEL_17;
  }

  v11 = [HFAccessoryLikeObject _accessoryLikeObjectForObject:a1];
  v6 = [v10 setWithObject:v11];

LABEL_17:
LABEL_18:

LABEL_19:

  return v6;
}

- (id)hf_accessoryType
{
  v2 = [a1 hf_effectiveCategoryType];
  if (([v2 isEqualToString:*MEMORY[0x277CCE8C8]] & 1) != 0 || objc_msgSend(a1, "hf_isSingleSensorAccessory"))
  {
    v3 = [a1 hf_primaryService];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 hf_accessoryType];
LABEL_5:

      goto LABEL_14;
    }
  }

  else if (([v2 isEqualToString:*MEMORY[0x277CCE8D0]] & 1) != 0 || objc_msgSend(v2, "isEqualToString:", *MEMORY[0x277CCE910]))
  {
    v6 = [a1 hf_primaryService];
    v7 = [v6 associatedServiceType];
    if (v7)
    {
      v8 = v7;
      v9 = [a1 hf_visibleServices];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __53__HMAccessory_AbstractionAdditions__hf_accessoryType__block_invoke;
      v12[3] = &unk_277DF4020;
      v4 = v6;
      v13 = v4;
      v10 = [v9 na_all:v12];

      if (v10)
      {
        v5 = [v4 hf_accessoryType];

        goto LABEL_5;
      }
    }

    else
    {
    }
  }

  v5 = [HFAccessoryType categoryType:v2];
LABEL_14:

  return v5;
}

- (id)hf_itemClass
{
  if ([a1 hf_isRemoteControl])
  {
    v2 = off_277DF0210;
  }

  else if ([a1 hf_isMediaAccessory])
  {
    v2 = off_277DEFD10;
  }

  else
  {
    v3 = [a1 hf_isSupportedAccessory];
    v2 = off_277DEFAD8;
    if (v3)
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
  v2 = [a1 services];
  v3 = [v1 setWithArray:v2];

  return v3;
}

- (id)hf_containedProfiles
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 profiles];
  v3 = [v1 setWithArray:v2];

  return v3;
}

- (id)hf_containedCharacteristics
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 services];
  v3 = [v2 na_flatMap:&__block_literal_global_65];
  v4 = [v1 setWithArray:v3];

  return v4;
}

- (uint64_t)hf_isInRoom:()AbstractionAdditions
{
  v4 = a3;
  v5 = [a1 room];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 uniqueIdentifier];

  v8 = [v6 hmf_isEqualToUUID:v7];
  return v8;
}

- (uint64_t)hf_isIdentifiable
{
  if ([a1 supportsIdentify])
  {
    return 1;
  }

  return [a1 hf_isHomePod];
}

- (id)hf_moveToRoom:()AbstractionAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HMAccessory_AbstractionAdditions__hf_moveToRoom___block_invoke;
  v9[3] = &unk_277DF4150;
  v9[4] = a1;
  v10 = v4;
  v6 = v4;
  v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v9];

  return v7;
}

- (id)hf_updateIsFavorite:()AbstractionAdditions
{
  if ([a1 hf_isCamera])
  {
    NSLog(&cfstr_AttemptingToUp.isa);
    [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    [a1 hf_updateValue:a3 forContextType:2];
  }
  v5 = ;

  return v5;
}

- (uint64_t)hf_isVisibleInHomeStatus
{
  if ([a1 hf_isForcedVisibleInHomeStatus])
  {
    return 1;
  }

  return [a1 hf_shouldBeOnForContextType:1];
}

@end