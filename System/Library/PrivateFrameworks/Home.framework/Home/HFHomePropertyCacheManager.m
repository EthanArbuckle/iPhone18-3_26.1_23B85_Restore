@interface HFHomePropertyCacheManager
+ (id)sharedManager;
- (HFHomePropertyCacheManager)init;
- (id)cachedValuesForObject:(id)a3;
- (id)valueForObject:(id)a3 home:(id)a4 key:(id)a5 invalidationReasons:(unint64_t)a6 recalculationBlock:(id)a7;
- (id)valueForObject:(id)a3 key:(id)a4 invalidationReasons:(unint64_t)a5 recalculationBlock:(id)a6;
- (void)_clearCachedValues;
- (void)_clearRoomOrderValues;
- (void)accessoryDidUpdateServices:(id)a3;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didAddRoom:(id)a4;
- (void)home:(id)a3 didAddService:(id)a4 toServiceGroup:(id)a5;
- (void)home:(id)a3 didAddServiceGroup:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveRoom:(id)a4;
- (void)home:(id)a3 didRemoveService:(id)a4 fromServiceGroup:(id)a5;
- (void)home:(id)a3 didRemoveServiceGroup:(id)a4;
- (void)homeDidUpdateApplicationData:(id)a3;
- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5;
- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4;
- (void)keyChangedWithObject:(void *)a3 key:;
- (void)resetTrackingChangedKeys;
- (void)stopTrackingChangedKeys;
@end

@implementation HFHomePropertyCacheManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HFHomePropertyCacheManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_280E03488 != -1)
  {
    dispatch_once(&qword_280E03488, block);
  }

  v2 = _MergedGlobals_280;

  return v2;
}

void __43__HFHomePropertyCacheManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_280;
  _MergedGlobals_280 = v1;
}

- (HFHomePropertyCacheManager)init
{
  v15.receiver = self;
  v15.super_class = HFHomePropertyCacheManager;
  v2 = [(HFHomePropertyCacheManager *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    objectCaches = v2->_objectCaches;
    v2->_objectCaches = v3;

    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"%@:cache", v7];
    [(NSCache *)v2->_objectCaches setName:v8];

    [(NSCache *)v2->_objectCaches setEvictsObjectsWhenApplicationEntersBackground:0];
    v2->__testing_disableCaching = 0;
    v9 = [MEMORY[0x277CBEB58] set];
    keysForRoomOrder = v2->_keysForRoomOrder;
    v2->_keysForRoomOrder = v9;

    v11 = [MEMORY[0x277D0F938] lock];
    roomOrderKeysLock = v2->_roomOrderKeysLock;
    v2->_roomOrderKeysLock = v11;

    v13 = +[HFHomeKitDispatcher sharedDispatcher];
    [v13 addHomeManagerObserver:v2];
    [v13 addHomeObserver:v2];
    [v13 addAccessoryObserver:v2];
  }

  return v2;
}

- (void)_clearCachedValues
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEBUG, "HFHomePropertyCacheManager: Clearing cache", v5, 2u);
  }

  v4 = [(HFHomePropertyCacheManager *)self objectCaches];
  [v4 removeAllObjects];

  [(HFHomePropertyCacheManager *)self _clearRoomOrderValues];
}

- (void)_clearRoomOrderValues
{
  v3 = [(HFHomePropertyCacheManager *)self roomOrderKeysLock];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HFHomePropertyCacheManager__clearRoomOrderValues__block_invoke;
  v4[3] = &unk_277DF3D38;
  v4[4] = self;
  [v3 performBlock:v4];
}

void __51__HFHomePropertyCacheManager__clearRoomOrderValues__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "HFHomePropertyCacheManager: Clearing room order cache", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 32) keysForRoomOrder];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [*(a1 + 32) objectCaches];
        v10 = [v8 objectID];
        v11 = [v9 objectForKey:v10];
        v12 = [v8 key];
        [v11 removeObjectForKey:v12];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [*(a1 + 32) keysForRoomOrder];
  [v13 removeAllObjects];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)valueForObject:(id)a3 key:(id)a4 invalidationReasons:(unint64_t)a5 recalculationBlock:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v12 home];
  v14 = [(HFHomePropertyCacheManager *)self valueForObject:v12 home:v13 key:v11 invalidationReasons:a5 recalculationBlock:v10];

  return v14;
}

- (id)valueForObject:(id)a3 home:(id)a4 key:(id)a5 invalidationReasons:(unint64_t)a6 recalculationBlock:(id)a7
{
  v8 = a6;
  v54 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (!v15)
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"HFHomePropertyCacheManager.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"recalculationBlock"}];
  }

  v16 = v13;
  v17 = [v13 uniqueIdentifier];
  v18 = +[HFHomeKitDispatcher sharedDispatcher];
  v19 = [v18 home];
  v20 = [v19 uniqueIdentifier];
  if ([v17 isEqual:v20])
  {
    v42 = v8;
    v21 = [(HFHomePropertyCacheManager *)self _testing_disableCaching];

    if (!v21)
    {
      v22 = v43;
      v23 = [(HFHomePropertyCacheManager *)self cachedValuesForObject:v43];
      v24 = [v23 objectForKey:v14];
      if (!v24)
      {
        v25 = HFLogForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v47 = v14;
          v48 = 2112;
          v49 = v43;
          _os_log_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_INFO, "HFHomePropertyCacheManager: Recalculating %@ for object %@", buf, 0x16u);
        }

        v24 = v15[2](v15);
        [(HFHomePropertyCacheManager *)self keyChangedWithObject:v43 key:v14];
        if (!v24)
        {
          v24 = [MEMORY[0x277CBEB68] null];
        }

        [v23 setObject:v24 forKey:v14 cost:1];
        if ((v42 & 4) != 0)
        {
          v26 = [_HFHomePropertyCacheManagerKey alloc];
          v27 = [v43 uniqueIdentifier];
          v28 = [(_HFHomePropertyCacheManagerKey *)v26 initWithObjectID:v27 key:v14];

          v29 = [(HFHomePropertyCacheManager *)self roomOrderKeysLock];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __93__HFHomePropertyCacheManager_valueForObject_home_key_invalidationReasons_recalculationBlock___block_invoke;
          v44[3] = &unk_277DF3370;
          v44[4] = self;
          v45 = v28;
          v30 = v28;
          [v29 performBlock:v44];
        }
      }

      v31 = [MEMORY[0x277CBEB68] null];
      if (v24 == v31)
      {
        v32 = 0;
      }

      else
      {
        v32 = v24;
      }

      v33 = v32;

      goto LABEL_22;
    }
  }

  else
  {
  }

  if (![(HFHomePropertyCacheManager *)self _testing_disableCaching])
  {
    v34 = HFLogForCategory(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v37 = [v13 uniqueIdentifier];
      v38 = +[HFHomeKitDispatcher sharedDispatcher];
      v39 = [v38 home];
      v40 = [v39 uniqueIdentifier];
      *buf = 138413058;
      v47 = v43;
      v48 = 2112;
      v49 = v37;
      v50 = 2112;
      v51 = v40;
      v52 = 2112;
      v53 = v14;
      _os_log_debug_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEBUG, "HFHomePropertyCacheManager: Object %@ home (%@) is not current home (%@): recalculating %@", buf, 0x2Au);
    }
  }

  v22 = v43;
  [(HFHomePropertyCacheManager *)self keyChangedWithObject:v43 key:v14];
  v33 = v15[2](v15);
LABEL_22:

  v35 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)keyChangedWithObject:(void *)a3 key:
{
  v18 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [a1 changedKeys];
    if (v6)
    {
      v7 = v6;
      v8 = +[HFUtilities isInternalTest];

      if (v8)
      {
        v9 = [a1 changedKeys];
        v10 = [v18 uniqueIdentifier];
        v11 = [v9 objectForKeyedSubscript:v10];
        v12 = [v11 mutableCopy];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [MEMORY[0x277CBEB58] set];
        }

        v15 = v14;

        [v15 addObject:v5];
        v16 = [a1 changedKeys];
        v17 = [v18 uniqueIdentifier];
        [v16 setObject:v15 forKey:v17];
      }
    }
  }
}

void __93__HFHomePropertyCacheManager_valueForObject_home_key_invalidationReasons_recalculationBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keysForRoomOrder];
  [v2 addObject:*(a1 + 40)];
}

- (id)cachedValuesForObject:(id)a3
{
  v4 = a3;
  v5 = [(HFHomePropertyCacheManager *)self objectCaches];
  v6 = [v4 uniqueIdentifier];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v8 = MEMORY[0x277CCACA8];
    v9 = [(HFHomePropertyCacheManager *)self objectCaches];
    v10 = [v9 name];
    v11 = [v4 uniqueIdentifier];
    v12 = [v8 stringWithFormat:@"%@(%@)", v10, v11];
    [v7 setName:v12];

    v13 = [(HFHomePropertyCacheManager *)self objectCaches];
    v14 = [v4 uniqueIdentifier];
    [v13 setObject:v7 forKey:v14 cost:1];
  }

  return v7;
}

- (void)accessoryDidUpdateServices:(id)a3
{
  v4 = [a3 home];
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 home];

  if (v4 == v6)
  {

    [(HFHomePropertyCacheManager *)self _clearCachedValues];
  }
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v5 = [a4 home];
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = [v6 home];

  if (v5 == v7)
  {

    [(HFHomePropertyCacheManager *)self _clearCachedValues];
  }
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v5 = [a4 home];
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = [v6 home];

  if (v5 == v7)
  {
    [(HFHomePropertyCacheManager *)self _clearCachedValues];

    +[HFAccessoryLikeObject _invalidateObjectMap];
  }
}

- (void)home:(id)a3 didAddServiceGroup:(id)a4
{
  v5 = a3;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = [v6 home];

  if (v7 == v5)
  {

    [(HFHomePropertyCacheManager *)self _clearCachedValues];
  }
}

- (void)home:(id)a3 didRemoveServiceGroup:(id)a4
{
  v5 = a3;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = [v6 home];

  if (v7 == v5)
  {
    [(HFHomePropertyCacheManager *)self _clearCachedValues];

    +[HFAccessoryLikeObject _invalidateObjectMap];
  }
}

- (void)home:(id)a3 didAddService:(id)a4 toServiceGroup:(id)a5
{
  v6 = a3;
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = [v7 home];

  if (v8 == v6)
  {

    [(HFHomePropertyCacheManager *)self _clearCachedValues];
  }
}

- (void)home:(id)a3 didRemoveService:(id)a4 fromServiceGroup:(id)a5
{
  v6 = a3;
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = [v7 home];

  if (v8 == v6)
  {
    [(HFHomePropertyCacheManager *)self _clearCachedValues];

    +[HFAccessoryLikeObject _invalidateObjectMap];
  }
}

- (void)home:(id)a3 didAddRoom:(id)a4
{
  v5 = a3;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = [v6 home];

  if (v7 == v5)
  {

    [(HFHomePropertyCacheManager *)self _clearRoomOrderValues];
  }
}

- (void)home:(id)a3 didRemoveRoom:(id)a4
{
  v5 = a3;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = [v6 home];

  if (v7 == v5)
  {

    [(HFHomePropertyCacheManager *)self _clearRoomOrderValues];
  }
}

- (void)homeDidUpdateApplicationData:(id)a3
{
  v4 = a3;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 home];

  if (v6 == v4)
  {

    [(HFHomePropertyCacheManager *)self _clearRoomOrderValues];
  }
}

- (void)homeKitDispatcher:(id)a3 manager:(id)a4 didChangeHome:(id)a5
{
  [(HFHomePropertyCacheManager *)self _clearCachedValues:a3];

  +[HFAccessoryLikeObject _invalidateObjectMap];
}

- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4
{
  if (a4)
  {
    [(HFHomePropertyCacheManager *)self _clearCachedValues];

    +[HFAccessoryLikeObject _invalidateObjectMap];
  }
}

- (void)stopTrackingChangedKeys
{
  changedKeys = self->_changedKeys;
  self->_changedKeys = 0;
}

- (void)resetTrackingChangedKeys
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  changedKeys = self->_changedKeys;
  self->_changedKeys = v3;
}

@end