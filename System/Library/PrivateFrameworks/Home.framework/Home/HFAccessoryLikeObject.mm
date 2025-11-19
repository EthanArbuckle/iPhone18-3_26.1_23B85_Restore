@interface HFAccessoryLikeObject
+ (NSMapTable)objectMap;
+ (id)_accessoryLikeObjectForObject:(id)a3;
+ (id)accessoryLikeObjectsForAccessoryRepresentable:(id)a3;
+ (void)_invalidateObjectMap;
- (BOOL)hf_canShowInControlCenter;
- (BOOL)hf_canSpanMultipleRooms;
- (BOOL)hf_effectiveIsFavorite;
- (BOOL)hf_effectiveShowInHomeDashboard;
- (BOOL)hf_hasSetFavorite;
- (BOOL)hf_hasSetShowInHomeDashboard;
- (BOOL)hf_hasSetVisibleInHomeStatus;
- (BOOL)hf_isFavorite;
- (BOOL)hf_isForcedVisibleInHomeStatus;
- (BOOL)hf_isIdentifiable;
- (BOOL)hf_isInRoom:(id)a3;
- (BOOL)hf_isMatterOnlyAccessory;
- (BOOL)hf_isVisibleInHomeStatus;
- (BOOL)hf_showInHomeDashboard;
- (BOOL)hf_supportsHomeStatus;
- (Class)hf_itemClass;
- (HFAccessoryLikeObject)initWithHomeKitObject:(id)a3;
- (HFAccessoryLikeObjectRootHomeKitObjectProvider)dataSource;
- (HFAccessoryType)hf_accessoryType;
- (HFServiceNameComponents)hf_serviceNameComponents;
- (HMRoom)room;
- (NSSet)hf_associatedAccessories;
- (NSSet)hf_containedCharacteristics;
- (NSSet)hf_containedProfiles;
- (NSSet)hf_containedServices;
- (NSString)debugDescription;
- (NSString)hf_tileSize;
- (id)hf_moveToRoom:(id)a3;
- (id)hf_setTileSize:(id)a3;
@end

@implementation HFAccessoryLikeObject

+ (NSMapTable)objectMap
{
  if (qword_280E03AF0 != -1)
  {
    dispatch_once(&qword_280E03AF0, &__block_literal_global_200);
  }

  v3 = _MergedGlobals_306;

  return v3;
}

void __34__HFAccessoryLikeObject_objectMap__block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v1 = _MergedGlobals_306;
  _MergedGlobals_306 = v0;
}

+ (id)_accessoryLikeObjectForObject:(id)a3
{
  v4 = [a3 hf_rootAccessoryLikeHomeKitObject];
  os_unfair_lock_lock_with_options();
  v5 = [a1 objectMap];
  v6 = [v5 objectForKey:v4];

  if (!v6 || ([v6 dataSource], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = [[a1 alloc] initWithHomeKitObject:v4];

    v9 = [a1 objectMap];
    [v9 setObject:v8 forKey:v4];

    v6 = v8;
  }

  os_unfair_lock_unlock(&_HFAccessoryLikeObjectMapLock);

  return v6;
}

+ (void)_invalidateObjectMap
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating HFAccessoryLikeObject objectMap", v5, 2u);
  }

  os_unfair_lock_lock_with_options();
  v4 = [a1 objectMap];
  [v4 removeAllObjects];

  os_unfair_lock_unlock(&_HFAccessoryLikeObjectMapLock);
}

- (HFAccessoryLikeObject)initWithHomeKitObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HFAccessoryLikeObject;
  v5 = [(HFAccessoryLikeObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
  }

  return v6;
}

- (HMRoom)room
{
  v3 = [(HFAccessoryLikeObject *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  v5 = [(HFAccessoryLikeObject *)self dataSource];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 hf_parentRoom];
LABEL_3:

    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(HFAccessoryLikeObject *)self dataSource];
    if ([v6 hf_areAllServicesInSameRoom])
    {
      v9 = [v6 services];
      v10 = [v9 firstObject];
      v7 = [v10 hf_parentRoom];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_3;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (HFServiceNameComponents)hf_serviceNameComponents
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_serviceNameComponents];

  return v3;
}

- (NSSet)hf_associatedAccessories
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_associatedAccessories];

  return v3;
}

- (NSSet)hf_containedCharacteristics
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_containedCharacteristics];

  return v3;
}

- (NSSet)hf_containedServices
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_containedServices];

  return v3;
}

- (NSSet)hf_containedProfiles
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_containedProfiles];

  return v3;
}

- (BOOL)hf_isInRoom:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessoryLikeObject *)self room];

  if (v5)
  {
    v6 = [(HFAccessoryLikeObject *)self room];
    v7 = [v6 uniqueIdentifier];
    v8 = [v4 uniqueIdentifier];
    v9 = [v7 hmf_isEqualToUUID:v8];
  }

  else
  {
    v6 = [(HFAccessoryLikeObject *)self accessories];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__HFAccessoryLikeObject_hf_isInRoom___block_invoke;
    v11[3] = &unk_277DF3888;
    v12 = v4;
    v9 = [v6 na_any:v11];
  }

  return v9;
}

uint64_t __37__HFAccessoryLikeObject_hf_isInRoom___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 room];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

- (Class)hf_itemClass
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_itemClass];

  return v3;
}

- (HFAccessoryType)hf_accessoryType
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_accessoryType];

  return v3;
}

- (BOOL)hf_canSpanMultipleRooms
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_canSpanMultipleRooms];

  return v3;
}

- (BOOL)hf_isIdentifiable
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_isIdentifiable];

  return v3;
}

- (BOOL)hf_canShowInControlCenter
{
  v3 = [(HFAccessoryLikeObject *)self homeKitObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(HFAccessoryLikeObject *)self homeKitObject];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 hf_showsAsAccessoryInControlCentre];
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      return 1;
    }

    v6 = [(HFAccessoryLikeObject *)self homeKitObject];
    v7 = [v6 hf_showsAsServiceInControlCentre];
  }

  v9 = v7;

  return v9;
}

- (BOOL)hf_isMatterOnlyAccessory
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_isMatterOnlyAccessory];

  return v3;
}

- (id)hf_moveToRoom:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessoryLikeObject *)self dataSource];
  v6 = [v5 hf_moveToRoom:v4];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HFAccessoryLikeObject *)self homeKitObject];
  v6 = [v3 stringWithFormat:@"<%@:%p-%@>", v4, self, v5];

  return v6;
}

- (BOOL)hf_isFavorite
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_isOnForContextType:2];

  return v3;
}

- (BOOL)hf_hasSetFavorite
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_hasSetForContextType:2];

  return v3;
}

- (BOOL)hf_effectiveIsFavorite
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_shouldBeOnForContextType:2];

  return v3;
}

- (BOOL)hf_supportsHomeStatus
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_supportsHomeStatus];

  return v3;
}

- (BOOL)hf_isVisibleInHomeStatus
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_isVisibleInHomeStatus];

  return v3;
}

- (BOOL)hf_hasSetVisibleInHomeStatus
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_hasSetVisibleInHomeStatus];

  return v3;
}

- (BOOL)hf_isForcedVisibleInHomeStatus
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_isForcedVisibleInHomeStatus];

  return v3;
}

- (BOOL)hf_showInHomeDashboard
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_isOnForContextType:3];

  return v3;
}

- (BOOL)hf_hasSetShowInHomeDashboard
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_hasSetForContextType:3];

  return v3;
}

- (BOOL)hf_effectiveShowInHomeDashboard
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_shouldBeOnForContextType:3];

  return v3;
}

- (NSString)hf_tileSize
{
  v2 = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [v2 hf_tileSize];

  return v3;
}

- (id)hf_setTileSize:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessoryLikeObject *)self dataSource];
  v6 = [v5 hf_setTileSize:v4];

  return v6;
}

+ (id)accessoryLikeObjectsForAccessoryRepresentable:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB98] setWithObject:v6];
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = MEMORY[0x277CBEB98];
    v11 = [v4 hf_accessoryLikeObject];
    v8 = [v10 na_setWithSafeObject:v11];
  }

  else if ((objc_opt_respondsToSelector() & 1) == 0 || ([v4 hf_accessoryLikeObjects], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (qword_280E03AF8 != -1)
    {
      dispatch_once(&qword_280E03AF8, &__block_literal_global_19_10);
    }

    v7 = qword_280E03B00;
    goto LABEL_6;
  }

LABEL_7:

  return v8;
}

void __71__HFAccessoryLikeObject_accessoryLikeObjectsForAccessoryRepresentable___block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] set];
  v1 = qword_280E03B00;
  qword_280E03B00 = v0;
}

- (HFAccessoryLikeObjectRootHomeKitObjectProvider)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end