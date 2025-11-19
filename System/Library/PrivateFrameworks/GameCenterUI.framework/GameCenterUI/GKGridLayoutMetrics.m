@interface GKGridLayoutMetrics
+ (id)metrics;
- (GKGridLayoutMetrics)init;
- (id)_gkDescription;
- (id)_gkDescriptionWithChildren:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyListForLocation:(unint64_t)a3;
- (id)listForLocation:(unint64_t)a3;
- (id)localDescription;
- (id)supplementaryMetricsForKey:(id)a3;
- (int64_t)prepareLayout:(id)a3 startingAtSection:(int64_t)a4;
- (void)addSupplementaryMetrics:(id)a3 forKey:(id)a4 atLocation:(unint64_t)a5;
- (void)configureCollectionView:(id)a3;
- (void)enumerateSupplementaryLocations:(id)a3;
- (void)enumerateSupplementaryMetricsUsingBlock:(id)a3;
- (void)insertSupplementaryMetrics:(id)a3 forKey:(id)a4 atLocation:(unint64_t)a5;
- (void)mergeSupplementaryMetricsFromEnclosingMetrics:(id)a3 atLocation:(unint64_t)a4 globalRange:(_NSRange)a5;
- (void)replaceSupplementaryMetrics:(id)a3 forKey:(id)a4;
@end

@implementation GKGridLayoutMetrics

+ (id)metrics
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (id)_gkDescriptionWithChildren:(int64_t)a3
{
  v4 = _gkTabStringForTabLevel();
  v5 = [MEMORY[0x277CCAB68] string];
  v16.receiver = self;
  v16.super_class = GKGridLayoutMetrics;
  v6 = [(GKGridLayoutMetrics *)&v16 description];
  v7 = v6;
  if (self->_layoutKey)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" layoutKey:%@", self->_layoutKey];
    [v5 appendFormat:@"%@%@%@ {\n", v4, v7, v8];
  }

  else
  {
    [v5 appendFormat:@"%@%@%@ {\n", v4, v6, &stru_28612D290];
  }

  if ([(NSMutableDictionary *)self->_keyToMetrics count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__GKGridLayoutMetrics__gkDescriptionWithChildren___block_invoke;
    v13[3] = &unk_27966A280;
    v13[4] = self;
    v9 = v5;
    v14 = v9;
    v10 = v4;
    v15 = v10;
    [(GKGridLayoutMetrics *)self enumerateSupplementaryLocations:v13];
    [v9 appendFormat:@"%@}\n", v10];
  }

  else
  {
    v11 = [(GKGridLayoutMetrics *)self localDescription];
    [v5 appendFormat:@"%@    --- SECTION : %@\n", v4, v11];
  }

  return v5;
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

- (void)enumerateSupplementaryLocations:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB58] indexSet];
    locationToKeyList = self->_locationToKeyList;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__GKGridLayoutMetrics_enumerateSupplementaryLocations___block_invoke;
    v10[3] = &unk_27966A2A8;
    v11 = v5;
    v7 = v5;
    [(NSMutableDictionary *)locationToKeyList enumerateKeysAndObjectsUsingBlock:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__GKGridLayoutMetrics_enumerateSupplementaryLocations___block_invoke_2;
    v8[3] = &unk_27966A2D0;
    v9 = v4;
    [v7 enumerateIndexesUsingBlock:v8];
  }
}

uint64_t __55__GKGridLayoutMetrics_enumerateSupplementaryLocations___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 addIndex:v3];
}

- (void)enumerateSupplementaryMetricsUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__GKGridLayoutMetrics_enumerateSupplementaryMetricsUsingBlock___block_invoke;
  v6[3] = &unk_27966A2F8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (id)keyListForLocation:(unint64_t)a3
{
  locationToKeyList = self->_locationToKeyList;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)locationToKeyList objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = self->_locationToKeyList;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (id)listForLocation:(unint64_t)a3
{
  v4 = [(GKGridLayoutMetrics *)self keyListForLocation:a3];
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

- (void)insertSupplementaryMetrics:(id)a3 forKey:(id)a4 atLocation:(unint64_t)a5
{
  v26[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    v13 = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ ([metrics isKindOfClass:[GKSupplementaryViewMetrics class]])\n[%s (%s:%d)]", v11, "-[GKGridLayoutMetrics insertSupplementaryMetrics:forKey:atLocation:]", objc_msgSend(v13, "UTF8String"), 254];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
  }

  v15 = [(GKGridLayoutMetrics *)self keyListForLocation:a5];
  v16 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:v9];

  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:v9];
    v19 = [v17 stringWithFormat:@"attempted to insert key %@ that already exists: %@", v9, v18];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    v21 = [v20 lastPathComponent];
    v22 = [v17 stringWithFormat:@"%@ (_keyToMetrics[key] == nil)\n[%s (%s:%d)]", v19, "-[GKGridLayoutMetrics insertSupplementaryMetrics:forKey:atLocation:]", objc_msgSend(v21, "UTF8String"), 256];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v22}];
  }

  [v15 insertObject:v9 atIndex:0];
  v25[0] = @"metrics";
  v25[1] = @"location";
  v26[0] = v8;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v26[1] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  [(NSMutableDictionary *)self->_keyToMetrics setObject:v24 forKeyedSubscript:v9];
}

- (void)addSupplementaryMetrics:(id)a3 forKey:(id)a4 atLocation:(unint64_t)a5
{
  v26[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    v13 = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ ([metrics isKindOfClass:[GKSupplementaryViewMetrics class]])\n[%s (%s:%d)]", v11, "-[GKGridLayoutMetrics addSupplementaryMetrics:forKey:atLocation:]", objc_msgSend(v13, "UTF8String"), 263];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
  }

  v15 = [(GKGridLayoutMetrics *)self keyListForLocation:a5];
  v16 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:v9];

  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:v9];
    v19 = [v17 stringWithFormat:@"attempted to add key %@ that already exists: %@", v9, v18];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    v21 = [v20 lastPathComponent];
    v22 = [v17 stringWithFormat:@"%@ (_keyToMetrics[key] == nil)\n[%s (%s:%d)]", v19, "-[GKGridLayoutMetrics addSupplementaryMetrics:forKey:atLocation:]", objc_msgSend(v21, "UTF8String"), 265];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v22}];
  }

  [v15 addObject:v9];
  v25[0] = @"metrics";
  v25[1] = @"location";
  v26[0] = v8;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v26[1] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  [(NSMutableDictionary *)self->_keyToMetrics setObject:v24 forKeyedSubscript:v9];
}

- (void)mergeSupplementaryMetricsFromEnclosingMetrics:(id)a3 atLocation:(unint64_t)a4 globalRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v37 = a3;
  v9 = [v37 keyListForLocation:a4];
  v10 = [v9 count];
  v11 = v10;
  if (a4 > 2)
  {
    if (a4 - 3 >= 2)
    {
      goto LABEL_22;
    }

    if (v10 >= 1)
    {
      v17 = v10 + 1;
      do
      {
        v18 = [v9 objectAtIndexedSubscript:v17 - 2];
        v19 = [v37 keyToMetrics];
        v20 = [v19 objectForKeyedSubscript:v18];

        v21 = [v20 objectForKeyedSubscript:@"metrics"];
        [v21 setGlobalSectionRange:{location, length}];
        [(GKGridLayoutMetrics *)self insertSupplementaryMetrics:v21 forKey:v18 atLocation:a4];

        --v17;
      }

      while (v17 > 1);
    }
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {
        if (v10 >= 1)
        {
          v12 = v10 + 1;
          do
          {
            v13 = [v9 objectAtIndexedSubscript:v12 - 2];
            v14 = [v37 keyToMetrics];
            v15 = [v14 objectForKeyedSubscript:v13];

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
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown location %ld encountered", a4];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
      v35 = [v34 lastPathComponent];
      v36 = [v32 stringWithFormat:@"%@ (nil)\n[%s (%s:%d)]", v33, "-[GKGridLayoutMetrics mergeSupplementaryMetricsFromEnclosingMetrics:atLocation:globalRange:]", objc_msgSend(v35, "UTF8String"), 315];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v36}];
      goto LABEL_23;
    }

    if (v10 >= 1)
    {
      v27 = 0;
      do
      {
        v28 = [v9 objectAtIndexedSubscript:v27];
        v29 = [v37 keyToMetrics];
        v30 = [v29 objectForKeyedSubscript:v28];

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
      v24 = [v37 keyToMetrics];
      v25 = [v24 objectForKeyedSubscript:v23];

      v26 = [v25 objectForKeyedSubscript:@"metrics"];
      [v26 setGlobalSectionRange:{location, length}];
      [(GKGridLayoutMetrics *)self insertSupplementaryMetrics:v26 forKey:v23 atLocation:0];

      --v22;
    }

    while (v22 > 1);
  }

LABEL_23:
}

- (id)supplementaryMetricsForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:a3];
  v4 = [v3 objectForKeyedSubscript:@"metrics"];

  return v4;
}

- (void)replaceSupplementaryMetrics:(id)a3 forKey:(id)a4
{
  v41[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v39 = v6;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    v11 = [v10 lastPathComponent];
    v12 = [v8 stringWithFormat:@"%@ ([metrics isKindOfClass:[GKSupplementaryViewMetrics class]])\n[%s (%s:%d)]", v9, "-[GKGridLayoutMetrics replaceSupplementaryMetrics:forKey:]", objc_msgSend(v11, "UTF8String"), 327];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
  }

  v13 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:v7];

  if (!v13)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"attempted to replace key %@ that does not exist", v7];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    v17 = [v16 lastPathComponent];
    v18 = [v14 stringWithFormat:@"%@ (_keyToMetrics[key] != nil)\n[%s (%s:%d)]", v15, "-[GKGridLayoutMetrics replaceSupplementaryMetrics:forKey:]", objc_msgSend(v17, "UTF8String"), 328];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v18}];
  }

  v38 = [(NSMutableDictionary *)self->_keyToMetrics objectForKeyedSubscript:v7];
  v19 = [v38 objectForKeyedSubscript:@"location"];
  if (!v19)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    v23 = [v22 lastPathComponent];
    v24 = [v20 stringWithFormat:@"%@ (location != ((void*)0))\n[%s (%s:%d)]", v21, "-[GKGridLayoutMetrics replaceSupplementaryMetrics:forKey:]", objc_msgSend(v23, "UTF8String"), 331];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v24}];
  }

  v25 = -[GKGridLayoutMetrics keyListForLocation:](self, "keyListForLocation:", [v19 integerValue]);
  if (!v25)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    v29 = [v28 lastPathComponent];
    v30 = [v26 stringWithFormat:@"%@ (keyList != ((void*)0))\n[%s (%s:%d)]", v27, "-[GKGridLayoutMetrics replaceSupplementaryMetrics:forKey:]", objc_msgSend(v29, "UTF8String"), 333];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v30}];
  }

  v31 = [v25 indexOfObject:v7];
  if (v31 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = MEMORY[0x277CCACA8];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Inconsistency: key lookup contains metrics but list doesn't"];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    v35 = [v34 lastPathComponent];
    v36 = [v32 stringWithFormat:@"%@ (idx != NSNotFound)\n[%s (%s:%d)]", v33, "-[GKGridLayoutMetrics replaceSupplementaryMetrics:forKey:]", objc_msgSend(v35, "UTF8String"), 335];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v36}];
  }

  [v25 setObject:v7 atIndexedSubscript:v31];
  v40[0] = @"metrics";
  v40[1] = @"location";
  v41[0] = v39;
  v41[1] = v19;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  [(NSMutableDictionary *)self->_keyToMetrics setObject:v37 forKeyedSubscript:v7];
}

- (void)configureCollectionView:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__GKGridLayoutMetrics_configureCollectionView___block_invoke;
  v6[3] = &unk_27966A348;
  v7 = v4;
  v5 = v4;
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

- (int64_t)prepareLayout:(id)a3 startingAtSection:(int64_t)a4
{
  v5 = [a3 collectionView];
  v6 = [v5 numberOfSections];

  return v6 + a4;
}

@end