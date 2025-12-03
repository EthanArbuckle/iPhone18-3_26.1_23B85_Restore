@interface GKGridLayoutMetrics
+ (id)metrics;
- (GKGridLayoutMetrics)init;
- (id)_gkDescription;
- (id)_gkDescriptionWithChildren:(int64_t)children;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyListForLocation:(unint64_t)location;
- (id)listForLocation:(unint64_t)location;
- (id)localDescription;
- (id)supplementaryMetricsForKey:(id)key;
- (int64_t)prepareLayout:(id)layout startingAtSection:(int64_t)section;
- (void)addSupplementaryMetrics:(id)metrics forKey:(id)key atLocation:(unint64_t)location;
- (void)configureCollectionView:(id)view;
- (void)enumerateSupplementaryLocations:(id)locations;
- (void)enumerateSupplementaryMetricsUsingBlock:(id)block;
- (void)insertSupplementaryMetrics:(id)metrics forKey:(id)key atLocation:(unint64_t)location;
- (void)mergeSupplementaryMetricsFromEnclosingMetrics:(id)metrics atLocation:(unint64_t)location globalRange:(_NSRange)range;
- (void)replaceSupplementaryMetrics:(id)metrics forKey:(id)key;
@end

@implementation GKGridLayoutMetrics

+ (id)metrics
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    locationToKeyList = self->_locationToKeyList;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __36__GKGridLayoutMetrics_copyWithZone___block_invoke;
    v17[3] = &unk_27966A258;
    v7 = v4;
    v18 = v7;
    [(NSMutableDictionary *)locationToKeyList enumerateKeysAndObjectsUsingBlock:v17];
    keyToMetrics = self->_keyToMetrics;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __36__GKGridLayoutMetrics_copyWithZone___block_invoke_2;
    v15 = &unk_27966A258;
    v9 = v7;
    v16 = v9;
    [(NSMutableDictionary *)keyToMetrics enumerateKeysAndObjectsUsingBlock:&v12];
    v10 = [(GKGridLayoutMetrics *)self layoutKey:v12];
    [v9 setLayoutKey:v10];
  }

  return v5;
}

void __36__GKGridLayoutMetrics_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = [a3 mutableCopy];
  v6 = [*(a1 + 32) locationToKeyList];
  [v6 setObject:v7 forKeyedSubscript:v5];
}

void __36__GKGridLayoutMetrics_copyWithZone___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  v6 = [v10 mutableCopy];
  v7 = [v10 objectForKeyedSubscript:@"metrics"];
  v8 = [v7 copy];
  [v6 setObject:v8 forKeyedSubscript:@"metrics"];

  v9 = [*(a1 + 32) keyToMetrics];
  [v9 setObject:v6 forKeyedSubscript:v5];
}

- (GKGridLayoutMetrics)init
{
  v8.receiver = self;
  v8.super_class = GKGridLayoutMetrics;
  v2 = [(GKGridLayoutMetrics *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    locationToKeyList = v2->_locationToKeyList;
    v2->_locationToKeyList = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keyToMetrics = v2->_keyToMetrics;
    v2->_keyToMetrics = v5;
  }

  return v2;
}

- (id)localDescription
{
  v4.receiver = self;
  v4.super_class = GKGridLayoutMetrics;
  v2 = [(GKGridLayoutMetrics *)&v4 description];

  return v2;
}

- (id)_gkDescriptionWithChildren:(int64_t)children
{
  v4 = _gkTabStringForTabLevel();
  string = [MEMORY[0x277CCAB68] string];
  v16.receiver = self;
  v16.super_class = GKGridLayoutMetrics;
  v6 = [(GKGridLayoutMetrics *)&v16 description];
  v7 = v6;
  if (self->_layoutKey)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" layoutKey:%@", self->_layoutKey];
    [string appendFormat:@"%@%@%@ {\n", v4, v7, v8];
  }

  else
  {
    [string appendFormat:@"%@%@%@ {\n", v4, v6, &stru_28612D290];
  }

  if ([(NSMutableDictionary *)self->_keyToMetrics count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__GKGridLayoutMetrics__gkDescriptionWithChildren___block_invoke;
    v13[3] = &unk_27966A280;
    v13[4] = self;
    v9 = string;
    v14 = v9;
    v10 = v4;
    v15 = v10;
    [(GKGridLayoutMetrics *)self enumerateSupplementaryLocations:v13];
    [v9 appendFormat:@"%@}\n", v10];
  }

  else
  {
    localDescription = [(GKGridLayoutMetrics *)self localDescription];
    [string appendFormat:@"%@    --- SECTION : %@\n", v4, localDescription];
  }

  return string;
}

void __50__GKGridLayoutMetrics__gkDescriptionWithChildren___block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 32) + 16);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = 0;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = [*(a1 + 32) localDescription];
        [v8 appendFormat:@"%@    --- SECTION : %@\n", v9, v10];

        v7 = @"footer";
      }
    }

    else
    {
      v7 = @"header";
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v7 = @"overlay";
        break;
      case 3:
        v7 = @"segmented-box";
        break;
      case 4:
        v7 = @"content-box";
        break;
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v6;
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v15];
        v17 = [v16 objectForKeyedSubscript:@"metrics"];

        v19 = *(a1 + 40);
        v18 = *(a1 + 48);
        v20 = [v17 localDescription];
        [v19 appendFormat:@"%@    %@ - %@\t:\t%@\n", v18, v7, v15, v20];
      }

      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }
}

- (id)_gkDescription
{
  v4.receiver = self;
  v4.super_class = GKGridLayoutMetrics;
  v2 = [(GKGridLayoutMetrics *)&v4 description];

  return v2;
}

- (void)enumerateSupplementaryLocations:(id)locations
{
  locationsCopy = locations;
  if (locationsCopy)
  {
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    locationToKeyList = self->_locationToKeyList;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__GKGridLayoutMetrics_enumerateSupplementaryLocations___block_invoke;
    v10[3] = &unk_27966A2A8;
    v11 = indexSet;
    v7 = indexSet;
    [(NSMutableDictionary *)locationToKeyList enumerateKeysAndObjectsUsingBlock:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__GKGridLayoutMetrics_enumerateSupplementaryLocations___block_invoke_2;
    v8[3] = &unk_27966A2D0;
    v9 = locationsCopy;
    [v7 enumerateIndexesUsingBlock:v8];
  }
}

uint64_t __55__GKGridLayoutMetrics_enumerateSupplementaryLocations___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 addIndex:v3];
}

- (void)enumerateSupplementaryMetricsUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__GKGridLayoutMetrics_enumerateSupplementaryMetricsUsingBlock___block_invoke;
  v6[3] = &unk_27966A2F8;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(GKGridLayoutMetrics *)self enumerateSupplementaryLocations:v6];
}

void __63__GKGridLayoutMetrics_enumerateSupplementaryMetricsUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 16);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v10)];
        v12 = [v11 objectForKeyedSubscript:@"metrics"];

        (*(*(a1 + 40) + 16))();
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)keyListForLocation:(unint64_t)location
{
  locationToKeyList = self->_locationToKeyList;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  array = [(NSMutableDictionary *)locationToKeyList objectForKeyedSubscript:v6];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    v8 = self->_locationToKeyList;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
    [(NSMutableDictionary *)v8 setObject:array forKeyedSubscript:v9];
  }

  return array;
}

- (id)listForLocation:(unint64_t)location
{
  v4 = [(GKGridLayoutMetrics *)self keyListForLocation:location];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__GKGridLayoutMetrics_listForLocation___block_invoke;
  v7[3] = &unk_27966A320;
  v7[4] = self;
  v5 = [v4 _gkMapWithBlock:v7];

  return v5;
}

id __39__GKGridLayoutMetrics_listForLocation___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:a2];
  v3 = [v2 objectForKeyedSubscript:@"metrics"];

  return v3;
}

- (void)insertSupplementaryMetrics:(id)metrics forKey:(id)key atLocation:(unint64_t)location
{
  v26[2] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ ([metrics isKindOfClass:[GKSupplementaryViewMetrics class]])\n[%s (%s:%d)]", v11, "-[GKGridLayoutMetrics insertSupplementaryMetrics:forKey:atLocation:]", objc_msgSend(lastPathComponent, "UTF8String"), 254];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
  }

  v15 = [(GKGridLayoutMetrics *)self keyListForLocation:location];
  v16 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:keyCopy];

  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:keyCopy];
    v19 = [v17 stringWithFormat:@"attempted to insert key %@ that already exists: %@", keyCopy, v18];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent2 = [v20 lastPathComponent];
    v22 = [v17 stringWithFormat:@"%@ (_keyToMetrics[key] == nil)\n[%s (%s:%d)]", v19, "-[GKGridLayoutMetrics insertSupplementaryMetrics:forKey:atLocation:]", objc_msgSend(lastPathComponent2, "UTF8String"), 256];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v22}];
  }

  [v15 insertObject:keyCopy atIndex:0];
  v25[0] = @"metrics";
  v25[1] = @"location";
  v26[0] = metricsCopy;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
  v26[1] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  [(NSMutableDictionary *)self->_keyToMetrics setObject:v24 forKeyedSubscript:keyCopy];
}

- (void)addSupplementaryMetrics:(id)metrics forKey:(id)key atLocation:(unint64_t)location
{
  v26[2] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ ([metrics isKindOfClass:[GKSupplementaryViewMetrics class]])\n[%s (%s:%d)]", v11, "-[GKGridLayoutMetrics addSupplementaryMetrics:forKey:atLocation:]", objc_msgSend(lastPathComponent, "UTF8String"), 263];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
  }

  v15 = [(GKGridLayoutMetrics *)self keyListForLocation:location];
  v16 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:keyCopy];

  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:keyCopy];
    v19 = [v17 stringWithFormat:@"attempted to add key %@ that already exists: %@", keyCopy, v18];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent2 = [v20 lastPathComponent];
    v22 = [v17 stringWithFormat:@"%@ (_keyToMetrics[key] == nil)\n[%s (%s:%d)]", v19, "-[GKGridLayoutMetrics addSupplementaryMetrics:forKey:atLocation:]", objc_msgSend(lastPathComponent2, "UTF8String"), 265];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v22}];
  }

  [v15 addObject:keyCopy];
  v25[0] = @"metrics";
  v25[1] = @"location";
  v26[0] = metricsCopy;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:location];
  v26[1] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  [(NSMutableDictionary *)self->_keyToMetrics setObject:v24 forKeyedSubscript:keyCopy];
}

- (void)mergeSupplementaryMetricsFromEnclosingMetrics:(id)metrics atLocation:(unint64_t)location globalRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  metricsCopy = metrics;
  v9 = [metricsCopy keyListForLocation:location];
  v10 = [v9 count];
  v11 = v10;
  if (location > 2)
  {
    if (location - 3 >= 2)
    {
      goto LABEL_22;
    }

    if (v10 >= 1)
    {
      v17 = v10 + 1;
      do
      {
        v18 = [v9 objectAtIndexedSubscript:v17 - 2];
        keyToMetrics = [metricsCopy keyToMetrics];
        v20 = [keyToMetrics objectForKeyedSubscript:v18];

        v21 = [v20 objectForKeyedSubscript:@"metrics"];
        [v21 setGlobalSectionRange:{location, length}];
        [(GKGridLayoutMetrics *)self insertSupplementaryMetrics:v21 forKey:v18 atLocation:location];

        --v17;
      }

      while (v17 > 1);
    }
  }

  else if (location)
  {
    if (location != 1)
    {
      if (location == 2)
      {
        if (v10 >= 1)
        {
          v12 = v10 + 1;
          do
          {
            v13 = [v9 objectAtIndexedSubscript:v12 - 2];
            keyToMetrics2 = [metricsCopy keyToMetrics];
            v15 = [keyToMetrics2 objectForKeyedSubscript:v13];

            v16 = [v15 objectForKeyedSubscript:@"metrics"];
            [v16 setGlobalSectionRange:{location, length}];
            [(GKGridLayoutMetrics *)self insertSupplementaryMetrics:v16 forKey:v13 atLocation:2];

            --v12;
          }

          while (v12 > 1);
        }

        goto LABEL_23;
      }

LABEL_22:
      v32 = MEMORY[0x277CCACA8];
      location = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown location %ld encountered", location];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
      lastPathComponent = [v34 lastPathComponent];
      v36 = [v32 stringWithFormat:@"%@ (nil)\n[%s (%s:%d)]", location, "-[GKGridLayoutMetrics mergeSupplementaryMetricsFromEnclosingMetrics:atLocation:globalRange:]", objc_msgSend(lastPathComponent, "UTF8String"), 315];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v36}];
      goto LABEL_23;
    }

    if (v10 >= 1)
    {
      v27 = 0;
      do
      {
        v28 = [v9 objectAtIndexedSubscript:v27];
        keyToMetrics3 = [metricsCopy keyToMetrics];
        v30 = [keyToMetrics3 objectForKeyedSubscript:v28];

        v31 = [v30 objectForKeyedSubscript:@"metrics"];
        [v31 setGlobalSectionRange:{location, length}];
        [(GKGridLayoutMetrics *)self addSupplementaryMetrics:v31 forKey:v28 atLocation:0];
        ++v27;
      }

      while (v11 != v27);
    }
  }

  else if (v10 >= 1)
  {
    v22 = v10 + 1;
    do
    {
      v23 = [v9 objectAtIndexedSubscript:v22 - 2];
      keyToMetrics4 = [metricsCopy keyToMetrics];
      v25 = [keyToMetrics4 objectForKeyedSubscript:v23];

      v26 = [v25 objectForKeyedSubscript:@"metrics"];
      [v26 setGlobalSectionRange:{location, length}];
      [(GKGridLayoutMetrics *)self insertSupplementaryMetrics:v26 forKey:v23 atLocation:0];

      --v22;
    }

    while (v22 > 1);
  }

LABEL_23:
}

- (id)supplementaryMetricsForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:key];
  v4 = [v3 objectForKeyedSubscript:@"metrics"];

  return v4;
}

- (void)replaceSupplementaryMetrics:(id)metrics forKey:(id)key
{
  v41[2] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  keyCopy = key;
  objc_opt_class();
  v39 = metricsCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = [v8 stringWithFormat:@"%@ ([metrics isKindOfClass:[GKSupplementaryViewMetrics class]])\n[%s (%s:%d)]", v9, "-[GKGridLayoutMetrics replaceSupplementaryMetrics:forKey:]", objc_msgSend(lastPathComponent, "UTF8String"), 327];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
  }

  v13 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:keyCopy];

  if (!v13)
  {
    v14 = MEMORY[0x277CCACA8];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"attempted to replace key %@ that does not exist", keyCopy];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent2 = [v16 lastPathComponent];
    v18 = [v14 stringWithFormat:@"%@ (_keyToMetrics[key] != nil)\n[%s (%s:%d)]", keyCopy, "-[GKGridLayoutMetrics replaceSupplementaryMetrics:forKey:]", objc_msgSend(lastPathComponent2, "UTF8String"), 328];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v18}];
  }

  v38 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:keyCopy];
  v19 = [v38 objectForKeyedSubscript:@"location"];
  if (!v19)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent3 = [v22 lastPathComponent];
    v24 = [v20 stringWithFormat:@"%@ (location != ((void*)0))\n[%s (%s:%d)]", v21, "-[GKGridLayoutMetrics replaceSupplementaryMetrics:forKey:]", objc_msgSend(lastPathComponent3, "UTF8String"), 331];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v24}];
  }

  v25 = -[GKGridLayoutMetrics keyListForLocation:](self, "keyListForLocation:", [v19 integerValue]);
  if (!v25)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent4 = [v28 lastPathComponent];
    v30 = [v26 stringWithFormat:@"%@ (keyList != ((void*)0))\n[%s (%s:%d)]", v27, "-[GKGridLayoutMetrics replaceSupplementaryMetrics:forKey:]", objc_msgSend(lastPathComponent4, "UTF8String"), 333];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v30}];
  }

  v31 = [v25 indexOfObject:keyCopy];
  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = MEMORY[0x277CCACA8];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Inconsistency: key lookup contains metrics but list doesn't"];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent5 = [v34 lastPathComponent];
    v36 = [v32 stringWithFormat:@"%@ (idx != NSNotFound)\n[%s (%s:%d)]", v33, "-[GKGridLayoutMetrics replaceSupplementaryMetrics:forKey:]", objc_msgSend(lastPathComponent5, "UTF8String"), 335];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v36}];
  }

  [v25 setObject:keyCopy atIndexedSubscript:v31];
  v40[0] = @"metrics";
  v40[1] = @"location";
  v41[0] = v39;
  v41[1] = v19;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  [(NSMutableDictionary *)self->_keyToMetrics setObject:v37 forKeyedSubscript:keyCopy];
}

- (void)configureCollectionView:(id)view
{
  viewCopy = view;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__GKGridLayoutMetrics_configureCollectionView___block_invoke;
  v6[3] = &unk_27966A348;
  v7 = viewCopy;
  v5 = viewCopy;
  [(GKGridLayoutMetrics *)self enumerateSupplementaryMetricsUsingBlock:v6];
}

void __47__GKGridLayoutMetrics_configureCollectionView___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([objc_msgSend(v5 "reusableViewClass")])
  {
    v3 = [v5 reusableViewClass];
    v4 = [v5 kind];
    [v3 registerSupplementaryViewClassesForKind:v4 withCollectionView:*(a1 + 32)];
  }
}

- (int64_t)prepareLayout:(id)layout startingAtSection:(int64_t)section
{
  collectionView = [layout collectionView];
  numberOfSections = [collectionView numberOfSections];

  return numberOfSections + section;
}

@end