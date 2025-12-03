@interface HFCache
- (BOOL)_canAccommodateCost:(unint64_t)cost;
- (BOOL)_canAccommodateCostWithoutRemoval:(unint64_t)removal;
- (BOOL)_removeObjectsToAccommodateCost:(unint64_t)cost;
- (BOOL)canAccommodateCost:(unint64_t)cost;
- (BOOL)removeObjectsToAccommodateCost:(unint64_t)cost;
- (HFCache)initWithDelegate:(id)delegate;
- (HFCacheDelegate)delegate;
- (id)_overrideObjectEvictionComparator;
- (id)description;
- (id)objectForKey:(id)key;
- (id)overrideObjectEvictionComparator;
- (unint64_t)_totalCost;
- (unint64_t)_totalCostLimit;
- (unint64_t)count;
- (unint64_t)totalCost;
- (unint64_t)totalCostLimit;
- (void)_didEvictObject:(id)object forKey:(id)key cost:(unint64_t)cost;
- (void)_removeObjectForKey:(id)key;
- (void)_setObject:(id)object forKey:(id)key cost:(unint64_t)cost removeObjectsToAccommodateCost:(BOOL)accommodateCost;
- (void)_setOverrideObjectEvictionComparator:(id)comparator;
- (void)_setTotalCost:(unint64_t)cost;
- (void)_setTotalCostLimit:(unint64_t)limit;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key cost:(unint64_t)cost removeObjectsToAccommodateCost:(BOOL)accommodateCost;
- (void)setOverrideObjectEvictionComparator:(id)comparator;
- (void)setTotalCostLimit:(unint64_t)limit;
@end

@implementation HFCache

- (HFCache)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = HFCache;
  v5 = [(HFCache *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    mapTable = v6->_mapTable;
    v6->_mapTable = strongToStrongObjectsMapTable;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("com.apple.Home.HFCache.accessQueue", v9);
    accessQueue = v6->_accessQueue;
    v6->_accessQueue = v10;

    defaultObjectEvictionComparator = v6->_defaultObjectEvictionComparator;
    v6->_defaultObjectEvictionComparator = &__block_literal_global_136;
  }

  return v6;
}

uint64_t __28__HFCache_initWithDelegate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v10 = [v8 compare:v9];

  return v10;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__19;
  v17 = __Block_byref_object_dispose__19;
  v18 = 0;
  accessQueue2 = [(HFCache *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__HFCache_objectForKey___block_invoke;
  block[3] = &unk_277DFD598;
  block[4] = self;
  v11 = keyCopy;
  v12 = &v13;
  v7 = keyCopy;
  dispatch_sync(accessQueue2, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __24__HFCache_objectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapTable];
  v6 = [v2 objectForKey:*(a1 + 40)];

  v3 = [v6 object];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setObject:(id)object forKey:(id)key cost:(unint64_t)cost removeObjectsToAccommodateCost:(BOOL)accommodateCost
{
  objectCopy = object;
  keyCopy = key;
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(HFCache *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HFCache_setObject_forKey_cost_removeObjectsToAccommodateCost___block_invoke;
  block[3] = &unk_277DFD5C0;
  v17 = objectCopy;
  selfCopy = self;
  v19 = keyCopy;
  costCopy = cost;
  accommodateCostCopy = accommodateCost;
  v14 = keyCopy;
  v15 = objectCopy;
  dispatch_async(accessQueue2, block);
}

uint64_t __64__HFCache_setObject_forKey_cost_removeObjectsToAccommodateCost___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    return [v2 _setObject:v3 forKey:*(a1 + 48) cost:*(a1 + 56) removeObjectsToAccommodateCost:*(a1 + 64)];
  }

  else
  {
    return [v2 _removeObjectForKey:*(a1 + 48)];
  }
}

- (void)_setObject:(id)object forKey:(id)key cost:(unint64_t)cost removeObjectsToAccommodateCost:(BOOL)accommodateCost
{
  accommodateCostCopy = accommodateCost;
  objectCopy = object;
  keyCopy = key;
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (!accommodateCostCopy || [(HFCache *)self _removeObjectsToAccommodateCost:cost])
  {
    v12 = [[HFCacheEntry alloc] initWithKey:keyCopy object:objectCopy cost:cost];
    mapTable = [(HFCache *)self mapTable];
    [mapTable setObject:v12 forKey:keyCopy];

    [(HFCache *)self _setTotalCost:[(HFCache *)self _totalCost]+ cost];
  }
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(HFCache *)self accessQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__HFCache_removeObjectForKey___block_invoke;
  v8[3] = &unk_277DF3370;
  v8[4] = self;
  v9 = keyCopy;
  v7 = keyCopy;
  dispatch_async(accessQueue2, v8);
}

- (void)_removeObjectForKey:(id)key
{
  keyCopy = key;
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  mapTable = [(HFCache *)self mapTable];
  v7 = [mapTable objectForKey:keyCopy];

  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCache.m" lineNumber:149 description:{@"%@ does not exist in cache", keyCopy}];
  }

  mapTable2 = [(HFCache *)self mapTable];
  [mapTable2 removeObjectForKey:keyCopy];

  _totalCost = [(HFCache *)self _totalCost];
  [v7 cost];
  -[HFCache _setTotalCost:](self, "_setTotalCost:", _totalCost - [v7 cost]);
}

- (void)removeAllObjects
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(HFCache *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HFCache_removeAllObjects__block_invoke;
  block[3] = &unk_277DF3D38;
  block[4] = self;
  dispatch_async(accessQueue2, block);
}

uint64_t __27__HFCache_removeAllObjects__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapTable];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 _setTotalCost:0];
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(HFCache *)self accessQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HFCache_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v8[3] = &unk_277DF34D0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_sync(accessQueue2, v8);
}

void __45__HFCache_enumerateKeysAndObjectsUsingBlock___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) mapTable];
  v3 = [v2 keyEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v15 + 1) + 8 * v7);
      v9 = [*(a1 + 32) mapTable];
      v10 = [v9 objectForKey:v8];

      v14 = 0;
      v11 = *(a1 + 40);
      v12 = [v10 object];
      (*(v11 + 16))(v11, v8, v12, &v14);

      LOBYTE(v8) = v14;
      if (v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)canAccommodateCost:(unint64_t)cost
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  accessQueue2 = [(HFCache *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HFCache_canAccommodateCost___block_invoke;
  block[3] = &unk_277DFD5E8;
  block[4] = self;
  block[5] = &v9;
  block[6] = cost;
  dispatch_sync(accessQueue2, block);

  LOBYTE(cost) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return cost;
}

uint64_t __30__HFCache_canAccommodateCost___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _canAccommodateCost:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_canAccommodateCost:(unint64_t)cost
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  return [(HFCache *)self _totalCostLimit]>= cost;
}

- (BOOL)removeObjectsToAccommodateCost:(unint64_t)cost
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  accessQueue2 = [(HFCache *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HFCache_removeObjectsToAccommodateCost___block_invoke;
  block[3] = &unk_277DFD5E8;
  block[4] = self;
  block[5] = &v9;
  block[6] = cost;
  dispatch_sync(accessQueue2, block);

  LOBYTE(cost) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return cost;
}

uint64_t __42__HFCache_removeObjectsToAccommodateCost___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _removeObjectsToAccommodateCost:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_removeObjectsToAccommodateCost:(unint64_t)cost
{
  v39 = *MEMORY[0x277D85DE8];
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if ([(HFCache *)self _canAccommodateCostWithoutRemoval:cost])
  {
    v6 = 1;
  }

  else
  {
    _overrideObjectEvictionComparator = [(HFCache *)self _overrideObjectEvictionComparator];
    v8 = _overrideObjectEvictionComparator;
    if (_overrideObjectEvictionComparator)
    {
      v9 = _Block_copy(_overrideObjectEvictionComparator);
    }

    else
    {
      defaultObjectEvictionComparator = [(HFCache *)self defaultObjectEvictionComparator];
      v9 = _Block_copy(defaultObjectEvictionComparator);
    }

    mapTable = [(HFCache *)self mapTable];
    objectEnumerator = [mapTable objectEnumerator];
    allObjects = [objectEnumerator allObjects];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __43__HFCache__removeObjectsToAccommodateCost___block_invoke;
    v29[3] = &unk_277DFD610;
    v14 = v9;
    v30 = v14;
    v15 = [allObjects sortedArrayUsingComparator:v29];
    v16 = [v15 mutableCopy];

    if ([(HFCache *)self _canAccommodateCostWithoutRemoval:cost])
    {
LABEL_9:
      v6 = 1;
    }

    else
    {
      while (1)
      {
        firstObject = [v16 firstObject];
        if (!firstObject)
        {
          break;
        }

        v18 = firstObject;
        mapTable2 = [(HFCache *)self mapTable];
        v20 = [v18 key];
        [mapTable2 removeObjectForKey:v20];

        [v16 removeObjectAtIndex:0];
        -[HFCache _setTotalCost:](self, "_setTotalCost:", -[HFCache _totalCost](self, "_totalCost") - [v18 cost]);
        object = [v18 object];
        v22 = [v18 key];
        -[HFCache _didEvictObject:forKey:cost:](self, "_didEvictObject:forKey:cost:", object, v22, [v18 cost]);

        if ([(HFCache *)self _canAccommodateCostWithoutRemoval:cost])
        {
          goto LABEL_9;
        }
      }

      v23 = HFLogForCategory(0xDuLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:cost];
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFCache _totalCost](self, "_totalCost")}];
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFCache _totalCostLimit](self, "_totalCostLimit")}];
        *buf = 136315906;
        v32 = "[HFCache _removeObjectsToAccommodateCost:]";
        v33 = 2112;
        v34 = v26;
        v35 = 2112;
        v36 = v27;
        v37 = 2112;
        v38 = v28;
        _os_log_error_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_ERROR, "%s cannot remove enough cache entries to accommodate cost: %@; totalCost: %@; totalCostLimit: %@", buf, 0x2Au);
      }

      v6 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __43__HFCache__removeObjectsToAccommodateCost___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v6 key];
  v8 = [v6 object];
  v9 = [v6 cost];

  v10 = [v5 key];
  v11 = [v5 object];
  v12 = [v5 cost];

  v13 = (*(v4 + 16))(v4, v7, v8, v9, v10, v11, v12);
  return v13;
}

- (BOOL)_canAccommodateCostWithoutRemoval:(unint64_t)removal
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6 = [(HFCache *)self _totalCost]+ removal;
  return v6 <= [(HFCache *)self _totalCostLimit];
}

- (void)_didEvictObject:(id)object forKey:(id)key cost:(unint64_t)cost
{
  objectCopy = object;
  keyCopy = key;
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  delegate = [(HFCache *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(HFCache *)self delegate];
    [delegate2 cache:self didEvictObject:objectCopy forKey:keyCopy cost:cost];
  }
}

- (unint64_t)count
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(HFCache *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __16__HFCache_count__block_invoke;
  v7[3] = &unk_277DF5CA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __16__HFCache_count__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapTable];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (void)_setTotalCost:(unint64_t)cost
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  self->_totalCost = cost;
}

- (unint64_t)totalCost
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(HFCache *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __20__HFCache_totalCost__block_invoke;
  v7[3] = &unk_277DF5CA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __20__HFCache_totalCost__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _totalCost];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)_totalCost
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  return self->_totalCost;
}

- (void)setTotalCostLimit:(unint64_t)limit
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(HFCache *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__HFCache_setTotalCostLimit___block_invoke;
  v7[3] = &unk_277DF5CD0;
  v7[4] = self;
  v7[5] = limit;
  dispatch_async(accessQueue2, v7);
}

- (void)_setTotalCostLimit:(unint64_t)limit
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  self->_totalCostLimit = limit;
}

- (unint64_t)totalCostLimit
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue2 = [(HFCache *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__HFCache_totalCostLimit__block_invoke;
  v7[3] = &unk_277DF5CA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __25__HFCache_totalCostLimit__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _totalCostLimit];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)_totalCostLimit
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  return self->_totalCostLimit;
}

- (void)setOverrideObjectEvictionComparator:(id)comparator
{
  comparatorCopy = comparator;
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(HFCache *)self accessQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HFCache_setOverrideObjectEvictionComparator___block_invoke;
  v8[3] = &unk_277DF34D0;
  v8[4] = self;
  v9 = comparatorCopy;
  v7 = comparatorCopy;
  dispatch_async(accessQueue2, v8);
}

- (void)_setOverrideObjectEvictionComparator:(id)comparator
{
  comparatorCopy = comparator;
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6 = [comparatorCopy copy];
  overrideObjectEvictionComparator = self->_overrideObjectEvictionComparator;
  self->_overrideObjectEvictionComparator = v6;
}

- (id)overrideObjectEvictionComparator
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__48;
  v12 = __Block_byref_object_dispose__49;
  v13 = 0;
  accessQueue2 = [(HFCache *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HFCache_overrideObjectEvictionComparator__block_invoke;
  v7[3] = &unk_277DF5CA8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  v5 = _Block_copy(v9[5]);
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __43__HFCache_overrideObjectEvictionComparator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overrideObjectEvictionComparator];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_overrideObjectEvictionComparator
{
  accessQueue = [(HFCache *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = [self->_overrideObjectEvictionComparator copy];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  accessQueue = [(HFCache *)self accessQueue];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __22__HFCache_description__block_invoke;
  v11 = &unk_277DF3370;
  v12 = v3;
  selfCopy = self;
  v5 = v3;
  dispatch_sync(accessQueue, &v8);

  build = [v5 build];

  return build;
}

void __22__HFCache_description__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = [*(a1 + 40) mapTable];
  v2 = [v5 objectEnumerator];
  v3 = [v2 allObjects];
  v4 = [v1 appendObject:v3 withName:@"entries"];
}

- (HFCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end