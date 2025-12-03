@interface HFAccessoryLikeObject
+ (NSMapTable)objectMap;
+ (id)_accessoryLikeObjectForObject:(id)object;
+ (id)accessoryLikeObjectsForAccessoryRepresentable:(id)representable;
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
- (BOOL)hf_isInRoom:(id)room;
- (BOOL)hf_isMatterOnlyAccessory;
- (BOOL)hf_isVisibleInHomeStatus;
- (BOOL)hf_showInHomeDashboard;
- (BOOL)hf_supportsHomeStatus;
- (Class)hf_itemClass;
- (HFAccessoryLikeObject)initWithHomeKitObject:(id)object;
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
- (id)hf_moveToRoom:(id)room;
- (id)hf_setTileSize:(id)size;
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

+ (id)_accessoryLikeObjectForObject:(id)object
{
  hf_rootAccessoryLikeHomeKitObject = [object hf_rootAccessoryLikeHomeKitObject];
  os_unfair_lock_lock_with_options();
  objectMap = [self objectMap];
  v6 = [objectMap objectForKey:hf_rootAccessoryLikeHomeKitObject];

  if (!v6 || ([v6 dataSource], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = [[self alloc] initWithHomeKitObject:hf_rootAccessoryLikeHomeKitObject];

    objectMap2 = [self objectMap];
    [objectMap2 setObject:v8 forKey:hf_rootAccessoryLikeHomeKitObject];

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
  objectMap = [self objectMap];
  [objectMap removeAllObjects];

  os_unfair_lock_unlock(&_HFAccessoryLikeObjectMapLock);
}

- (HFAccessoryLikeObject)initWithHomeKitObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = HFAccessoryLikeObject;
  v5 = [(HFAccessoryLikeObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, objectCopy);
  }

  return v6;
}

- (HMRoom)room
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  dataSource2 = [(HFAccessoryLikeObject *)self dataSource];
  dataSource3 = dataSource2;
  if (v4)
  {
    hf_parentRoom = [dataSource2 hf_parentRoom];
LABEL_3:

    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dataSource3 = [(HFAccessoryLikeObject *)self dataSource];
    if ([dataSource3 hf_areAllServicesInSameRoom])
    {
      services = [dataSource3 services];
      firstObject = [services firstObject];
      hf_parentRoom = [firstObject hf_parentRoom];
    }

    else
    {
      hf_parentRoom = 0;
    }

    goto LABEL_3;
  }

  hf_parentRoom = 0;
LABEL_8:

  return hf_parentRoom;
}

- (HFServiceNameComponents)hf_serviceNameComponents
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_serviceNameComponents = [dataSource hf_serviceNameComponents];

  return hf_serviceNameComponents;
}

- (NSSet)hf_associatedAccessories
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_associatedAccessories = [dataSource hf_associatedAccessories];

  return hf_associatedAccessories;
}

- (NSSet)hf_containedCharacteristics
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_containedCharacteristics = [dataSource hf_containedCharacteristics];

  return hf_containedCharacteristics;
}

- (NSSet)hf_containedServices
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_containedServices = [dataSource hf_containedServices];

  return hf_containedServices;
}

- (NSSet)hf_containedProfiles
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_containedProfiles = [dataSource hf_containedProfiles];

  return hf_containedProfiles;
}

- (BOOL)hf_isInRoom:(id)room
{
  roomCopy = room;
  room = [(HFAccessoryLikeObject *)self room];

  if (room)
  {
    room2 = [(HFAccessoryLikeObject *)self room];
    uniqueIdentifier = [room2 uniqueIdentifier];
    uniqueIdentifier2 = [roomCopy uniqueIdentifier];
    v9 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2];
  }

  else
  {
    room2 = [(HFAccessoryLikeObject *)self accessories];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__HFAccessoryLikeObject_hf_isInRoom___block_invoke;
    v11[3] = &unk_277DF3888;
    v12 = roomCopy;
    v9 = [room2 na_any:v11];
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
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_itemClass = [dataSource hf_itemClass];

  return hf_itemClass;
}

- (HFAccessoryType)hf_accessoryType
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_accessoryType = [dataSource hf_accessoryType];

  return hf_accessoryType;
}

- (BOOL)hf_canSpanMultipleRooms
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_canSpanMultipleRooms = [dataSource hf_canSpanMultipleRooms];

  return hf_canSpanMultipleRooms;
}

- (BOOL)hf_isIdentifiable
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_isIdentifiable = [dataSource hf_isIdentifiable];

  return hf_isIdentifiable;
}

- (BOOL)hf_canShowInControlCenter
{
  homeKitObject = [(HFAccessoryLikeObject *)self homeKitObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  homeKitObject2 = [(HFAccessoryLikeObject *)self homeKitObject];
  homeKitObject3 = homeKitObject2;
  if (isKindOfClass)
  {
    hf_showsAsAccessoryInControlCentre = [homeKitObject2 hf_showsAsAccessoryInControlCentre];
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      return 1;
    }

    homeKitObject3 = [(HFAccessoryLikeObject *)self homeKitObject];
    hf_showsAsAccessoryInControlCentre = [homeKitObject3 hf_showsAsServiceInControlCentre];
  }

  v9 = hf_showsAsAccessoryInControlCentre;

  return v9;
}

- (BOOL)hf_isMatterOnlyAccessory
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_isMatterOnlyAccessory = [dataSource hf_isMatterOnlyAccessory];

  return hf_isMatterOnlyAccessory;
}

- (id)hf_moveToRoom:(id)room
{
  roomCopy = room;
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  v6 = [dataSource hf_moveToRoom:roomCopy];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  homeKitObject = [(HFAccessoryLikeObject *)self homeKitObject];
  v6 = [v3 stringWithFormat:@"<%@:%p-%@>", v4, self, homeKitObject];

  return v6;
}

- (BOOL)hf_isFavorite
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [dataSource hf_isOnForContextType:2];

  return v3;
}

- (BOOL)hf_hasSetFavorite
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [dataSource hf_hasSetForContextType:2];

  return v3;
}

- (BOOL)hf_effectiveIsFavorite
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [dataSource hf_shouldBeOnForContextType:2];

  return v3;
}

- (BOOL)hf_supportsHomeStatus
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_supportsHomeStatus = [dataSource hf_supportsHomeStatus];

  return hf_supportsHomeStatus;
}

- (BOOL)hf_isVisibleInHomeStatus
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_isVisibleInHomeStatus = [dataSource hf_isVisibleInHomeStatus];

  return hf_isVisibleInHomeStatus;
}

- (BOOL)hf_hasSetVisibleInHomeStatus
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_hasSetVisibleInHomeStatus = [dataSource hf_hasSetVisibleInHomeStatus];

  return hf_hasSetVisibleInHomeStatus;
}

- (BOOL)hf_isForcedVisibleInHomeStatus
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_isForcedVisibleInHomeStatus = [dataSource hf_isForcedVisibleInHomeStatus];

  return hf_isForcedVisibleInHomeStatus;
}

- (BOOL)hf_showInHomeDashboard
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [dataSource hf_isOnForContextType:3];

  return v3;
}

- (BOOL)hf_hasSetShowInHomeDashboard
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [dataSource hf_hasSetForContextType:3];

  return v3;
}

- (BOOL)hf_effectiveShowInHomeDashboard
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  v3 = [dataSource hf_shouldBeOnForContextType:3];

  return v3;
}

- (NSString)hf_tileSize
{
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  hf_tileSize = [dataSource hf_tileSize];

  return hf_tileSize;
}

- (id)hf_setTileSize:(id)size
{
  sizeCopy = size;
  dataSource = [(HFAccessoryLikeObject *)self dataSource];
  v6 = [dataSource hf_setTileSize:sizeCopy];

  return v6;
}

+ (id)accessoryLikeObjectsForAccessoryRepresentable:(id)representable
{
  representableCopy = representable;
  objc_opt_class();
  v4 = representableCopy;
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
    hf_accessoryLikeObject = [v4 hf_accessoryLikeObject];
    v8 = [v10 na_setWithSafeObject:hf_accessoryLikeObject];
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