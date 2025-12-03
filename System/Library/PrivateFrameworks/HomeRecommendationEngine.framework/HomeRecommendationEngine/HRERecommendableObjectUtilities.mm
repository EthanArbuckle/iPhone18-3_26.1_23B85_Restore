@interface HRERecommendableObjectUtilities
+ (BOOL)_actionMap:(id)map includesType:(id)type forRecommendableObject:(id)object;
+ (BOOL)recommendableObject:(id)object containsObject:(id)containsObject;
+ (BOOL)recommendableObject:(id)object involvedInAction:(id)action;
+ (BOOL)recommendableObject:(id)object involvedInActionMap:(id)map;
+ (BOOL)recommendableObject:(id)object involvedInActionMap:(id)map snapshotContainer:(id)container;
+ (BOOL)recommendableObject:(id)object isEffectivelyEqualToObject:(id)toObject;
+ (BOOL)recommendableObjects:(id)objects matchAllRules:(id)rules;
+ (id)actionMapFromActionMap:(id)map forRecommendableObject:(id)object;
+ (id)filterRecommendableObjects:(id)objects excludingObjectsInActions:(id)actions;
+ (id)filterRecommendableObjects:(id)objects toMatchTypes:(id)types;
+ (id)filterRecommendableObjects:(id)objects toRooms:(id)rooms;
+ (id)recommendableObject:(id)object actionBuildersDerivedFromActions:(id)actions;
@end

@implementation HRERecommendableObjectUtilities

+ (BOOL)recommendableObject:(id)object involvedInActionMap:(id)map snapshotContainer:(id)container
{
  sub_2543E9E04();
  v7 = sub_254406B30();
  swift_unknownObjectRetain();
  containerCopy = container;
  LOBYTE(container) = _sSo31HRERecommendableObjectUtilitiesC24HomeRecommendationEngineE013recommendableB0_10involvedIn17snapshotContainerSbSo24HFAccessoryRepresentable_So0aB8Protocolp_SDySSSo12HREActionMapCGSo016HFMatterSnapshotK0CSgtFZ_0(object, v7, container);
  swift_unknownObjectRelease();

  return container & 1;
}

+ (BOOL)recommendableObject:(id)object isEffectivelyEqualToObject:(id)toObject
{
  objectCopy = object;
  toObjectCopy = toObject;
  if (objectCopy == toObjectCopy)
  {
    v11 = 1;
  }

  else
  {
    hf_containedServices = [objectCopy hf_containedServices];
    hf_containedServices2 = [toObjectCopy hf_containedServices];
    if ([hf_containedServices isEqualToSet:hf_containedServices2])
    {
      hf_containedProfiles = [objectCopy hf_containedProfiles];
      hf_containedProfiles2 = [toObjectCopy hf_containedProfiles];
      v11 = [hf_containedProfiles isEqualToSet:hf_containedProfiles2];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (BOOL)recommendableObject:(id)object containsObject:(id)containsObject
{
  objectCopy = object;
  containsObjectCopy = containsObject;
  if ([self recommendableObject:objectCopy isEffectivelyEqualToObject:containsObjectCopy])
  {
    v8 = 0;
  }

  else
  {
    hf_containedServices = [containsObjectCopy hf_containedServices];
    hf_containedServices2 = [objectCopy hf_containedServices];
    if ([hf_containedServices isSubsetOfSet:hf_containedServices2])
    {
      hf_containedProfiles = [containsObjectCopy hf_containedProfiles];
      hf_containedProfiles2 = [objectCopy hf_containedProfiles];
      v8 = [hf_containedProfiles isSubsetOfSet:hf_containedProfiles2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)recommendableObject:(id)object actionBuildersDerivedFromActions:(id)actions
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  objectCopy = object;
  v6 = MEMORY[0x277CBEA60];
  actionsCopy = actions;
  objectCopy2 = object;
  v9 = [v6 arrayWithObjects:&objectCopy count:1];
  v10 = [v5 setWithArray:{v9, objectCopy, v15}];
  v11 = [HREDerivedActionUtilities derivedActionsForActionableObjects:v10 fromActions:actionsCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)recommendableObject:(id)object involvedInActionMap:(id)map
{
  objectCopy = object;
  mapCopy = map;
  hre_matchingTypes = [objectCopy hre_matchingTypes];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HRERecommendableObjectUtilities_recommendableObject_involvedInActionMap___block_invoke;
  v12[3] = &unk_2797762F8;
  v14 = objectCopy;
  selfCopy = self;
  v13 = mapCopy;
  v9 = objectCopy;
  v10 = mapCopy;
  LOBYTE(mapCopy) = [hre_matchingTypes na_any:v12];

  return mapCopy;
}

+ (BOOL)_actionMap:(id)map includesType:(id)type forRecommendableObject:(id)object
{
  mapCopy = map;
  typeCopy = type;
  objectCopy = object;
  objc_opt_class();
  v10 = [mapCopy objectForKeyedSubscript:@"HREServiceTypeAll"];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [v12 flattenedMapEvaluatedForObject:objectCopy];

  hre_characteristics = [objectCopy hre_characteristics];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__HRERecommendableObjectUtilities__actionMap_includesType_forRecommendableObject___block_invoke;
  v18[3] = &unk_279776320;
  v12 = v13;
  v19 = v12;
  LOBYTE(v13) = [hre_characteristics na_any:v18];

  if (v13)
  {
    v15 = 1;
  }

  else
  {
LABEL_7:
    v16 = [mapCopy objectForKeyedSubscript:typeCopy];
    v15 = v16 != 0;
  }

  return v15;
}

BOOL __82__HRERecommendableObjectUtilities__actionMap_includesType_forRecommendableObject___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 characteristicTypeValues];
  v5 = [v3 characteristicType];

  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6 != 0;

  return v7;
}

+ (BOOL)recommendableObject:(id)object involvedInAction:(id)action
{
  objectCopy = object;
  actionCopy = action;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ((objc_opt_class(), v7 = [actionCopy performSelector:sel_characteristic], (objc_opt_isKindOfClass() & 1) == 0) ? (v8 = 0) : (v8 = v7), v9 = v8, v7, v9))
  {
    hre_characteristics = [objectCopy hre_characteristics];
    v11 = [hre_characteristics containsObject:v9];
  }

  else
  {
    objc_opt_class();
    v12 = actionCopy;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v9 = v13;

    if (!v9)
    {
      v11 = 0;
      goto LABEL_14;
    }

    hre_characteristics = [objectCopy hf_containedProfiles];
    mediaProfiles = [v9 mediaProfiles];
    v11 = [hre_characteristics intersectsSet:mediaProfiles];
  }

LABEL_14:
  return v11;
}

+ (id)actionMapFromActionMap:(id)map forRecommendableObject:(id)object
{
  mapCopy = map;
  objectCopy = object;
  hre_matchingTypes = [objectCopy hre_matchingTypes];
  if (![hre_matchingTypes count])
  {

    goto LABEL_7;
  }

  v8 = [mapCopy count];

  if (!v8)
  {
LABEL_7:
    v14 = +[HREActionMap emptyMap];
    goto LABEL_8;
  }

  hre_matchingTypes2 = [objectCopy hre_matchingTypes];
  allObjects = [hre_matchingTypes2 allObjects];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __81__HRERecommendableObjectUtilities_actionMapFromActionMap_forRecommendableObject___block_invoke;
  v20 = &unk_279776348;
  v21 = mapCopy;
  v22 = objectCopy;
  v11 = [allObjects na_map:&v17];

  v12 = [v11 count];
  v13 = +[HREActionMap emptyMap];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 mergeWithActionMaps:v11];

    v14 = v15;
  }

LABEL_8:

  return v14;
}

id __81__HRERecommendableObjectUtilities_actionMapFromActionMap_forRecommendableObject___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = [v3 flattenedMapEvaluatedForObject:*(a1 + 40)];

  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 characteristicTypeValues];
    if ([v8 count])
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

id __74__HRERecommendableObjectUtilities_recommendableObjectsFromHomeKitObjects___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = v2;
  if ([v4 conformsToProtocol:&unk_28666E610])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6 || ([v6 hf_associatedAccessories], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "na_allObjectsPassTest:", &__block_literal_global_211), v7, v8))
  {
    v9 = v4;
    if ([v9 conformsToProtocol:&unk_2866642D0])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    [v3 na_safeAddObject:v11];
  }

  objc_opt_class();
  v12 = v4;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_opt_class();
  v15 = v12;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17 && ([v17 hf_isMatterOnlyAccessory] & 1) == 0 && (objc_msgSend(v17, "supportsAdaptiveTemperatureAutomations") & 1) == 0)
  {
    [v3 removeObject:v17];
    if ([v17 hf_isBridge])
    {
      goto LABEL_33;
    }

    v23 = [v17 _containedRecommendableObjects];
    [v3 unionSet:v23];
    goto LABEL_32;
  }

  if (!v14)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      v18 = [v15 performSelector:sel_services];
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      [v3 na_safeAddObjectsFromArray:v20];
    }

    if (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      v21 = [v15 performSelector:sel_profiles];
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      v24 = [v23 na_map:&__block_literal_global_220];
      [v3 na_safeAddObjectsFromArray:v24];

LABEL_32:
    }
  }

LABEL_33:

  return v3;
}

void *__74__HRERecommendableObjectUtilities_recommendableObjectsFromHomeKitObjects___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_2866642D0])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (BOOL)recommendableObjects:(id)objects matchAllRules:(id)rules
{
  objectsCopy = objects;
  rulesCopy = rules;
  if ([rulesCopy count])
  {
    if ([objectsCopy count])
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __70__HRERecommendableObjectUtilities_recommendableObjects_matchAllRules___block_invoke;
      v9[3] = &unk_2797763D0;
      v10 = objectsCopy;
      v7 = [rulesCopy na_all:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (id)filterRecommendableObjects:(id)objects toMatchTypes:(id)types
{
  typesCopy = types;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__HRERecommendableObjectUtilities_filterRecommendableObjects_toMatchTypes___block_invoke;
  v9[3] = &unk_2797763F8;
  v10 = typesCopy;
  v6 = typesCopy;
  v7 = [objects na_filter:v9];

  return v7;
}

uint64_t __75__HRERecommendableObjectUtilities_filterRecommendableObjects_toMatchTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hre_matchingTypes];
  v4 = [v3 intersectsSet:*(a1 + 32)];

  return v4;
}

+ (id)filterRecommendableObjects:(id)objects toRooms:(id)rooms
{
  roomsCopy = rooms;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HRERecommendableObjectUtilities_filterRecommendableObjects_toRooms___block_invoke;
  v9[3] = &unk_2797763F8;
  v10 = roomsCopy;
  v6 = roomsCopy;
  v7 = [objects na_filter:v9];

  return v7;
}

uint64_t __70__HRERecommendableObjectUtilities_filterRecommendableObjects_toRooms___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hre_parentRoom];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 hre_parentRoom];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)filterRecommendableObjects:(id)objects excludingObjectsInActions:(id)actions
{
  actionsCopy = actions;
  objectsCopy = objects;
  v7 = [actionsCopy na_map:&__block_literal_global_224];
  v8 = [actionsCopy na_flatMap:&__block_literal_global_228];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HRERecommendableObjectUtilities_filterRecommendableObjects_excludingObjectsInActions___block_invoke_3;
  v13[3] = &unk_279776460;
  v14 = v7;
  v15 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [objectsCopy na_filter:v13];

  return v11;
}

id __88__HRERecommendableObjectUtilities_filterRecommendableObjects_excludingObjectsInActions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 characteristic];
    v7 = [v6 service];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __88__HRERecommendableObjectUtilities_filterRecommendableObjects_excludingObjectsInActions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 mediaProfiles];
  }

  else
  {
    objc_opt_class();
    v7 = v3;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = MEMORY[0x277CBEB98];
      v11 = [v9 characteristic];
      v12 = [v11 service];
      v13 = [v12 accessory];
      v14 = [v13 profiles];
      v6 = [v10 setWithArray:v14];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

BOOL __88__HRERecommendableObjectUtilities_filterRecommendableObjects_excludingObjectsInActions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hf_containedServices];
  v5 = [v4 intersectsSet:*(a1 + 32)];

  v6 = [v3 hf_containedProfiles];

  LODWORD(a1) = [v6 intersectsSet:*(a1 + 40)];
  return ((v5 | a1) & 1) == 0;
}

@end