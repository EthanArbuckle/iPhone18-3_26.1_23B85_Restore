@interface GKDataSourceMetrics
+ (GKDataSourceMetrics)dataSourceMetricsWithMetrics:(id)metrics dataSource:(id)source;
- (GKDataSourceMetrics)initWithMetrics:(id)metrics dataSource:(id)source;
- (_NSRange)globalSectionRange;
- (_NSRange)localSectionRange;
- (id)_gkDescriptionWithChildren:(int64_t)children;
- (id)accumulateSections:(id)sections layout:(id)layout;
- (id)applyDataSourceMetricsToSections:(id)sections withParent:(id)parent layout:(id)layout;
- (id)copyWithZone:(_NSZone *)zone;
- (id)globalLayoutKey;
- (id)globalLayoutKeyForSection:(int64_t)section;
- (id)metricsForSection:(int64_t)section;
- (void)computeGlobalSectionRangesWithBaseIndex:(int64_t)index;
- (void)generateMetricDataForLayout:(id)layout;
- (void)prepareLayout:(id)layout;
- (void)setMetrics:(id)metrics forSection:(int64_t)section;
@end

@implementation GKDataSourceMetrics

+ (GKDataSourceMetrics)dataSourceMetricsWithMetrics:(id)metrics dataSource:(id)source
{
  sourceCopy = source;
  metricsCopy = metrics;
  v7 = [objc_alloc(objc_opt_class()) initWithMetrics:metricsCopy dataSource:sourceCopy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    [v4 setGlobalSectionRange:{self->_globalSectionRange.location, self->_globalSectionRange.length}];
    [v5 setLocalSectionRange:{self->_localSectionRange.location, self->_localSectionRange.length}];
    sectionToMetrics = self->_sectionToMetrics;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__GKDataSourceMetrics_copyWithZone___block_invoke;
    v10[3] = &unk_27966A258;
    v7 = v5;
    v11 = v7;
    [(NSMutableDictionary *)sectionToMetrics enumerateKeysAndObjectsUsingBlock:v10];
    v8 = [(NSArray *)self->_childMetrics _gkMapWithBlock:&__block_literal_global_4];
    [v7 setChildMetrics:v8];

    [v7 setDataSource:self->_dataSource];
    [v7 setCachedKey:self->_cachedKey];
  }

  return v5;
}

void __36__GKDataSourceMetrics_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = [a3 mutableCopy];
  v6 = [*(a1 + 32) sectionToMetrics];
  [v6 setObject:v7 forKeyedSubscript:v5];
}

id __36__GKDataSourceMetrics_copyWithZone___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

- (GKDataSourceMetrics)initWithMetrics:(id)metrics dataSource:(id)source
{
  metricsCopy = metrics;
  sourceCopy = source;
  v8 = [(GKGridLayoutMetrics *)self init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sectionToMetrics = v8->_sectionToMetrics;
    v8->_sectionToMetrics = v9;

    if (metricsCopy)
    {
      v11 = [metricsCopy copy];

      keyToMetrics = [v11 keyToMetrics];
      [(GKGridLayoutMetrics *)v8 setKeyToMetrics:keyToMetrics];

      locationToKeyList = [v11 locationToKeyList];
      [(GKGridLayoutMetrics *)v8 setLocationToKeyList:locationToKeyList];

      metricsCopy = v11;
    }

    objc_storeStrong(&v8->_dataSource, source);
  }

  return v8;
}

- (id)_gkDescriptionWithChildren:(int64_t)children
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = _gkTabStringForTabLevel();
  string = [MEMORY[0x277CCAB68] string];
  v72.receiver = self;
  v72.super_class = GKDataSourceMetrics;
  localDescription = [(GKGridLayoutMetrics *)&v72 localDescription];
  v8 = _gkRangeFromToDescription(@" global:", self->_globalSectionRange.location, self->_globalSectionRange.length);
  v9 = _gkRangeFromToDescription(@" local:", self->_localSectionRange.location, self->_localSectionRange.length);
  [string appendFormat:@"%@%@%@%@", v5, localDescription, v8, v9];

  selfCopy = self;
  layoutKey = [(GKGridLayoutMetrics *)self layoutKey];

  if (layoutKey)
  {
    layoutKey2 = [(GKGridLayoutMetrics *)self layoutKey];
    [string appendFormat:@" layoutKey:'%@'", layoutKey2];
  }

  locationToKeyList = [(GKGridLayoutMetrics *)self locationToKeyList];
  v14 = [locationToKeyList count];

  childrenCopy = children;
  v60 = string;
  if (v14 <= 0)
  {
    sectionToMetrics = [(GKDataSourceMetrics *)self sectionToMetrics];
    if ([sectionToMetrics count])
    {
    }

    else
    {
      v28 = [(NSArray *)self->_childMetrics count];

      if (!v28)
      {
        goto LABEL_34;
      }
    }

    [string appendString:@"{\n"];
  }

  else
  {
    [string appendString:@"{\n"];
    locationToKeyList2 = [(GKGridLayoutMetrics *)self locationToKeyList];
    v16 = [locationToKeyList2 objectForKeyedSubscript:&unk_286188DA8];

    if ([v16 count])
    {
      v17 = v5;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      v68 = 0u;
      v55 = v16;
      obj = v16;
      v18 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v69;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v69 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v68 + 1) + 8 * i);
            keyToMetrics = [(GKGridLayoutMetrics *)selfCopy keyToMetrics];
            v24 = [keyToMetrics objectForKeyedSubscript:v22];
            v25 = [v24 objectForKeyedSubscript:@"metrics"];

            localDescription2 = [v25 localDescription];
            v54 = v22;
            string = v60;
            [v60 appendFormat:@"%@    header - %@\t:\t%@\n", v17, v54, localDescription2];
          }

          v19 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
        }

        while (v19);
      }

      v5 = v17;
      [string appendFormat:@"%@    ---\n", v17];
      v16 = v55;
    }
  }

  sectionToMetrics2 = [(GKDataSourceMetrics *)selfCopy sectionToMetrics];
  v30 = [sectionToMetrics2 count];

  if (v30)
  {
    [string appendFormat:@"%@    sectionMetrics: {\n", v5];
    v31 = childrenCopy;
    if ([(NSMutableDictionary *)selfCopy->_sectionToMetrics count])
    {
      v32 = 0;
      do
      {
        sectionToMetrics = selfCopy->_sectionToMetrics;
        v34 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
        [(NSMutableDictionary *)sectionToMetrics objectForKeyedSubscript:v34];
        v36 = v35 = selfCopy;

        v37 = [v36 _gkDescriptionWithChildren:v31 + 2];
        whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        [v37 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
        v40 = v39 = v31;

        v41 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
        [string appendFormat:@"%@        section %@ - %@", v5, v41, v40];

        v31 = v39;
        selfCopy = v35;
        ++v32;
      }

      while (v32 < [(NSMutableDictionary *)v35->_sectionToMetrics count]);
    }

    [string appendFormat:@"%@    }\n", v5];
  }

  if (![(NSArray *)selfCopy->_childMetrics count])
  {
    goto LABEL_32;
  }

  v42 = v5;
  [string appendFormat:@"%@    children: {\n", v5];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v56 = selfCopy;
  obja = selfCopy->_childMetrics;
  v43 = [(NSArray *)obja countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = 0;
    v46 = *v65;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v65 != v46)
        {
          objc_enumerationMutation(obja);
        }

        v48 = [*(*(&v64 + 1) + 8 * j) _gkDescriptionWithChildren:childrenCopy + 2];
        whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v50 = [v48 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

        v51 = [MEMORY[0x277CCABB0] numberWithInteger:v45];
        [v60 appendFormat:@"%@        child %@ - %@", v42, v51, v50];

        ++v45;
      }

      v44 = [(NSArray *)obja countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v44);
  }

  v5 = v42;
  string = v60;
  [v60 appendFormat:@"%@    }\n", v42];
  selfCopy = v56;
  if (v56)
  {
LABEL_32:
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __50__GKDataSourceMetrics__gkDescriptionWithChildren___block_invoke;
    v61[3] = &unk_27966A280;
    v61[4] = selfCopy;
    v62 = string;
    v63 = v5;
    [(GKGridLayoutMetrics *)selfCopy enumerateSupplementaryLocations:v61];
  }

  [string appendFormat:@"%@}", v5];
LABEL_34:
  [string appendString:@"\n"];
  v52 = _gkUnicodifyDescription();

  return string;
}

void __50__GKDataSourceMetrics__gkDescriptionWithChildren___block_invoke(uint64_t a1, unint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) locationToKeyList];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 count];
  v22 = a2;
  if (a2 && v7)
  {
    [*(a1 + 40) appendFormat:@"%@    ---\n", *(a1 + 48)];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [*(a1 + 32) keyToMetrics];
          v14 = [v13 objectForKeyedSubscript:v12];
          v15 = [v14 objectForKeyedSubscript:@"metrics"];

          if (v22 > 4)
          {
            v16 = 0;
          }

          else
          {
            v16 = off_27966A718[v22 - 1];
          }

          v18 = *(a1 + 40);
          v17 = *(a1 + 48);
          v19 = [v15 localDescription];
          [v18 appendFormat:@"%@    %@ - %@\t:\t%@\n", v17, v16, v12, v19];
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v6 = v20;
  }
}

- (id)metricsForSection:(int64_t)section
{
  sectionToMetrics = self->_sectionToMetrics;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:section];
  v5 = [(NSMutableDictionary *)sectionToMetrics objectForKeyedSubscript:v4];

  return v5;
}

- (void)setMetrics:(id)metrics forSection:(int64_t)section
{
  sectionToMetrics = self->_sectionToMetrics;
  v6 = MEMORY[0x277CCABB0];
  metricsCopy = metrics;
  v8 = [v6 numberWithInteger:section];
  [(NSMutableDictionary *)sectionToMetrics setObject:metricsCopy forKeyedSubscript:v8];
}

- (id)globalLayoutKey
{
  cachedKey = self->_cachedKey;
  if (!cachedKey)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %p>", objc_opt_class(), self->_dataSource];
    v5 = self->_cachedKey;
    self->_cachedKey = v4;

    cachedKey = self->_cachedKey;
  }

  return cachedKey;
}

- (id)globalLayoutKeyForSection:(int64_t)section
{
  v4 = MEMORY[0x277CCACA8];
  globalLayoutKey = [(GKDataSourceMetrics *)self globalLayoutKey];
  section = [v4 stringWithFormat:@"%@ - %ld", globalLayoutKey, section];

  return section;
}

- (_NSRange)globalSectionRange
{
  p_globalSectionRange = &self->_globalSectionRange;
  location = self->_globalSectionRange.location;
  length = p_globalSectionRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)localSectionRange
{
  p_localSectionRange = &self->_localSectionRange;
  location = self->_localSectionRange.location;
  length = p_localSectionRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)computeGlobalSectionRangesWithBaseIndex:(int64_t)index
{
  v22 = *MEMORY[0x277D85DE8];
  [(GKDataSourceMetrics *)self localSectionRange];
  v6 = v5;
  [(GKDataSourceMetrics *)self setGlobalSectionRange:index, v5];
  globalLayoutKey = [(GKDataSourceMetrics *)self globalLayoutKey];
  [(GKGridLayoutMetrics *)self setLayoutKey:globalLayoutKey];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__GKDataSourceMetrics_GKGridLayoutPrivate__computeGlobalSectionRangesWithBaseIndex___block_invoke;
  v20[3] = &__block_descriptor_48_e56_v40__0__GKSupplementaryViewMetrics_8__NSString_16Q24_B32l;
  v20[4] = index;
  v20[5] = v6;
  [(GKGridLayoutMetrics *)self enumerateSupplementaryMetricsUsingBlock:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  childMetrics = [(GKDataSourceMetrics *)self childMetrics];
  v9 = [childMetrics countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(childMetrics);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 computeGlobalSectionRangesWithBaseIndex:index];
        globalSectionRange = [v13 globalSectionRange];
        index = globalSectionRange + v15;
      }

      v10 = [childMetrics countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }
}

- (id)accumulateSections:(id)sections layout:(id)layout
{
  v34 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  layoutCopy = layout;
  globalSectionRange = [(GKDataSourceMetrics *)self globalSectionRange];
  v10 = v9;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  childMetrics = [(GKDataSourceMetrics *)self childMetrics];
  v12 = [childMetrics countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(childMetrics);
        }

        v16 = [*(*(&v29 + 1) + 8 * i) accumulateSections:sectionsCopy layout:layoutCopy];
      }

      v13 = [childMetrics countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  selfCopy = self;

  if (v10)
  {
    v17 = 0;
    while (1)
    {
      collectionView = [layoutCopy collectionView];
      numberOfSections = [collectionView numberOfSections];

      v20 = [MEMORY[0x277CCABB0] numberWithInteger:globalSectionRange + v17];
      if (globalSectionRange + v17 < numberOfSections)
      {
        break;
      }

      [sectionsCopy removeObjectForKey:v20];
LABEL_20:

      if (v10 == ++v17)
      {
        goto LABEL_23;
      }
    }

    v21 = [sectionsCopy objectForKeyedSubscript:v20];

    if (v21)
    {
      collectionView2 = [layoutCopy collectionView];
      v23 = [collectionView2 numberOfItemsInSection:globalSectionRange + v17];

      if (v23 > 0 || ([v21 shouldShowSectionHeadersWhenNoItems] & 1) != 0)
      {
        goto LABEL_19;
      }

      v24 = [MEMORY[0x277CCABB0] numberWithInteger:globalSectionRange + v17];
      [sectionsCopy removeObjectForKey:v24];
    }

    else
    {
      v25 = [(GKDataSourceMetrics *)selfCopy metricsForSection:v17];
      v21 = [v25 copy];

      if (!v21)
      {
        v20 = 0;
        goto LABEL_20;
      }

      v26 = [MEMORY[0x277CCABB0] numberWithInteger:globalSectionRange + v17];
      [sectionsCopy setObject:v21 forKeyedSubscript:v26];

      v24 = [(GKDataSourceMetrics *)selfCopy globalLayoutKeyForSection:v17];
      [v21 setLayoutKey:v24];
    }

LABEL_19:
    v20 = v21;
    goto LABEL_20;
  }

LABEL_23:

  return sectionsCopy;
}

- (id)applyDataSourceMetricsToSections:(id)sections withParent:(id)parent layout:(id)layout
{
  v45 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  layoutCopy = layout;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  childMetrics = [(GKDataSourceMetrics *)self childMetrics];
  v11 = [childMetrics countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(childMetrics);
        }

        v15 = [*(*(&v40 + 1) + 8 * i) applyDataSourceMetricsToSections:sectionsCopy withParent:self layout:layoutCopy];
      }

      v12 = [childMetrics countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v12);
  }

  globalSectionRange = [(GKDataSourceMetrics *)self globalSectionRange];
  if (v17)
  {
    v18 = globalSectionRange;
    v19 = v17;
    parentCopy = parent;
    v20 = 0;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      collectionView = [layoutCopy collectionView];
      numberOfSections = [collectionView numberOfSections];

      if (v18 < numberOfSections)
      {
        collectionView2 = [layoutCopy collectionView];
        v26 = [collectionView2 numberOfItemsInSection:v18];

        if (v22 == 0x7FFFFFFFFFFFFFFFLL && v26 > 0)
        {
          v22 = v18;
        }

        if (v26 > 0)
        {
          v21 = v18;
        }
      }

      v28 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
      v29 = [sectionsCopy objectForKeyedSubscript:v28];

      if (!v29)
      {
        defaultSectionMetricsInternal = [layoutCopy defaultSectionMetricsInternal];
        v29 = [defaultSectionMetricsInternal copy];

        v31 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
        [sectionsCopy setObject:v29 forKeyedSubscript:v31];

        v32 = [(GKDataSourceMetrics *)self globalLayoutKeyForSection:v20];
        [v29 setLayoutKey:v32];
      }

      ++v20;
      ++v18;
    }

    while (v19 != v20);
    if (parentCopy && v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = v21 - v22;
      v34 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
      v35 = [sectionsCopy objectForKeyedSubscript:v34];

      [v35 mergeSupplementaryMetricsFromEnclosingMetrics:self atLocation:0 globalRange:{v22, v21 - v22}];
      v36 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
      v37 = [sectionsCopy objectForKeyedSubscript:v36];

      [v37 mergeSupplementaryMetricsFromEnclosingMetrics:self atLocation:1 globalRange:{v22, v33}];
    }
  }

  return sectionsCopy;
}

- (void)generateMetricDataForLayout:(id)layout
{
  v35 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  [(GKDataSourceMetrics *)self globalSectionRange];
  v6 = v5;
  [(GKDataSourceMetrics *)self localSectionRange];
  if (v6 != v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutPrivate.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = [v8 stringWithFormat:@"%@ (self.globalSectionRange.length == self.localSectionRange.length)\n[%s (%s:%d)]", v9, "-[GKDataSourceMetrics(GKGridLayoutPrivate) generateMetricDataForLayout:]", objc_msgSend(lastPathComponent, "UTF8String"), 212];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
  }

  v13 = MEMORY[0x277CBEB38];
  [(GKDataSourceMetrics *)self globalSectionRange];
  v15 = [v13 dictionaryWithCapacity:v14];
  v16 = [(GKDataSourceMetrics *)self accumulateSections:v15 layout:layoutCopy];

  v17 = [(GKDataSourceMetrics *)self applyDataSourceMetricsToSections:v16 withParent:0 layout:layoutCopy];
  allKeys = [v16 allKeys];
  v19 = [allKeys sortedArrayUsingComparator:&__block_literal_global_31];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v30 + 1) + 8 * i);
        v26 = [v16 objectForKeyedSubscript:v25];
        layoutKey = [v26 layoutKey];
        v28 = [layoutCopy metricDataForKey:layoutKey];
        [v28 setMetrics:v26];
        [v28 setFilteredTotalItemCount:-1];
        [layoutCopy setMetricData:v28 forSection:{objc_msgSend(v25, "integerValue")}];
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v22);
  }

  v29 = [layoutCopy metricDataForKey:@"GKGlobalSection"];
  [layoutCopy setMetricData:v29 forSection:0x7FFFFFFFFFFFFFFFLL];
}

- (void)prepareLayout:(id)layout
{
  layoutCopy = layout;
  [(GKDataSourceMetrics *)self computeGlobalSectionRangesWithBaseIndex:[(GKDataSourceMetrics *)self globalSectionRange]];
  [(GKDataSourceMetrics *)self generateMetricDataForLayout:layoutCopy];
}

@end