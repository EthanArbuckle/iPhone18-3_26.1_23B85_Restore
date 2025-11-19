@interface GKDataSourceMetrics
+ (GKDataSourceMetrics)dataSourceMetricsWithMetrics:(id)a3 dataSource:(id)a4;
- (GKDataSourceMetrics)initWithMetrics:(id)a3 dataSource:(id)a4;
- (_NSRange)globalSectionRange;
- (_NSRange)localSectionRange;
- (id)_gkDescriptionWithChildren:(int64_t)a3;
- (id)accumulateSections:(id)a3 layout:(id)a4;
- (id)applyDataSourceMetricsToSections:(id)a3 withParent:(id)a4 layout:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)globalLayoutKey;
- (id)globalLayoutKeyForSection:(int64_t)a3;
- (id)metricsForSection:(int64_t)a3;
- (void)computeGlobalSectionRangesWithBaseIndex:(int64_t)a3;
- (void)generateMetricDataForLayout:(id)a3;
- (void)prepareLayout:(id)a3;
- (void)setMetrics:(id)a3 forSection:(int64_t)a4;
@end

@implementation GKDataSourceMetrics

+ (GKDataSourceMetrics)dataSourceMetricsWithMetrics:(id)a3 dataSource:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithMetrics:v6 dataSource:v5];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (GKDataSourceMetrics)initWithMetrics:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKGridLayoutMetrics *)self init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sectionToMetrics = v8->_sectionToMetrics;
    v8->_sectionToMetrics = v9;

    if (v6)
    {
      v11 = [v6 copy];

      v12 = [v11 keyToMetrics];
      [(GKGridLayoutMetrics *)v8 setKeyToMetrics:v12];

      v13 = [v11 locationToKeyList];
      [(GKGridLayoutMetrics *)v8 setLocationToKeyList:v13];

      v6 = v11;
    }

    objc_storeStrong(&v8->_dataSource, a4);
  }

  return v8;
}

- (id)_gkDescriptionWithChildren:(int64_t)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = _gkTabStringForTabLevel();
  v6 = [MEMORY[0x277CCAB68] string];
  v72.receiver = self;
  v72.super_class = GKDataSourceMetrics;
  v7 = [(GKGridLayoutMetrics *)&v72 localDescription];
  v8 = _gkRangeFromToDescription(@" global:", self->_globalSectionRange.location, self->_globalSectionRange.length);
  v9 = _gkRangeFromToDescription(@" local:", self->_localSectionRange.location, self->_localSectionRange.length);
  [v6 appendFormat:@"%@%@%@%@", v5, v7, v8, v9];

  v10 = self;
  v11 = [(GKGridLayoutMetrics *)self layoutKey];

  if (v11)
  {
    v12 = [(GKGridLayoutMetrics *)self layoutKey];
    [v6 appendFormat:@" layoutKey:'%@'", v12];
  }

  v13 = [(GKGridLayoutMetrics *)self locationToKeyList];
  v14 = [v13 count];

  v59 = a3;
  v60 = v6;
  if (v14 <= 0)
  {
    v27 = [(GKDataSourceMetrics *)self sectionToMetrics];
    if ([v27 count])
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

    [v6 appendString:@"{\n"];
  }

  else
  {
    [v6 appendString:@"{\n"];
    v15 = [(GKGridLayoutMetrics *)self locationToKeyList];
    v16 = [v15 objectForKeyedSubscript:&unk_286188DA8];

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
            v23 = [(GKGridLayoutMetrics *)v10 keyToMetrics];
            v24 = [v23 objectForKeyedSubscript:v22];
            v25 = [v24 objectForKeyedSubscript:@"metrics"];

            v26 = [v25 localDescription];
            v54 = v22;
            v6 = v60;
            [v60 appendFormat:@"%@    header - %@\t:\t%@\n", v17, v54, v26];
          }

          v19 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
        }

        while (v19);
      }

      v5 = v17;
      [v6 appendFormat:@"%@    ---\n", v17];
      v16 = v55;
    }
  }

  v29 = [(GKDataSourceMetrics *)v10 sectionToMetrics];
  v30 = [v29 count];

  if (v30)
  {
    [v6 appendFormat:@"%@    sectionMetrics: {\n", v5];
    v31 = v59;
    if ([(NSMutableDictionary *)v10->_sectionToMetrics count])
    {
      v32 = 0;
      do
      {
        sectionToMetrics = v10->_sectionToMetrics;
        v34 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
        [(NSMutableDictionary *)sectionToMetrics objectForKeyedSubscript:v34];
        v36 = v35 = v10;

        v37 = [v36 _gkDescriptionWithChildren:v31 + 2];
        v38 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        [v37 stringByTrimmingCharactersInSet:v38];
        v40 = v39 = v31;

        v41 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
        [v6 appendFormat:@"%@        section %@ - %@", v5, v41, v40];

        v31 = v39;
        v10 = v35;
        ++v32;
      }

      while (v32 < [(NSMutableDictionary *)v35->_sectionToMetrics count]);
    }

    [v6 appendFormat:@"%@    }\n", v5];
  }

  if (![(NSArray *)v10->_childMetrics count])
  {
    goto LABEL_32;
  }

  v42 = v5;
  [v6 appendFormat:@"%@    children: {\n", v5];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v56 = v10;
  obja = v10->_childMetrics;
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

        v48 = [*(*(&v64 + 1) + 8 * j) _gkDescriptionWithChildren:v59 + 2];
        v49 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v50 = [v48 stringByTrimmingCharactersInSet:v49];

        v51 = [MEMORY[0x277CCABB0] numberWithInteger:v45];
        [v60 appendFormat:@"%@        child %@ - %@", v42, v51, v50];

        ++v45;
      }

      v44 = [(NSArray *)obja countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v44);
  }

  v5 = v42;
  v6 = v60;
  [v60 appendFormat:@"%@    }\n", v42];
  v10 = v56;
  if (v56)
  {
LABEL_32:
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __50__GKDataSourceMetrics__gkDescriptionWithChildren___block_invoke;
    v61[3] = &unk_27966A280;
    v61[4] = v10;
    v62 = v6;
    v63 = v5;
    [(GKGridLayoutMetrics *)v10 enumerateSupplementaryLocations:v61];
  }

  [v6 appendFormat:@"%@}", v5];
LABEL_34:
  [v6 appendString:@"\n"];
  v52 = _gkUnicodifyDescription();

  return v6;
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

- (id)metricsForSection:(int64_t)a3
{
  sectionToMetrics = self->_sectionToMetrics;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)sectionToMetrics objectForKeyedSubscript:v4];

  return v5;
}

- (void)setMetrics:(id)a3 forSection:(int64_t)a4
{
  sectionToMetrics = self->_sectionToMetrics;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  [(NSMutableDictionary *)sectionToMetrics setObject:v7 forKeyedSubscript:v8];
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

- (id)globalLayoutKeyForSection:(int64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(GKDataSourceMetrics *)self globalLayoutKey];
  v6 = [v4 stringWithFormat:@"%@ - %ld", v5, a3];

  return v6;
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

- (void)computeGlobalSectionRangesWithBaseIndex:(int64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  [(GKDataSourceMetrics *)self localSectionRange];
  v6 = v5;
  [(GKDataSourceMetrics *)self setGlobalSectionRange:a3, v5];
  v7 = [(GKDataSourceMetrics *)self globalLayoutKey];
  [(GKGridLayoutMetrics *)self setLayoutKey:v7];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__GKDataSourceMetrics_GKGridLayoutPrivate__computeGlobalSectionRangesWithBaseIndex___block_invoke;
  v20[3] = &__block_descriptor_48_e56_v40__0__GKSupplementaryViewMetrics_8__NSString_16Q24_B32l;
  v20[4] = a3;
  v20[5] = v6;
  [(GKGridLayoutMetrics *)self enumerateSupplementaryMetricsUsingBlock:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(GKDataSourceMetrics *)self childMetrics];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 computeGlobalSectionRangesWithBaseIndex:a3];
        v14 = [v13 globalSectionRange];
        a3 = v14 + v15;
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }
}

- (id)accumulateSections:(id)a3 layout:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(GKDataSourceMetrics *)self globalSectionRange];
  v10 = v9;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [(GKDataSourceMetrics *)self childMetrics];
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v29 + 1) + 8 * i) accumulateSections:v6 layout:v7];
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  v28 = self;

  if (v10)
  {
    v17 = 0;
    while (1)
    {
      v18 = [v7 collectionView];
      v19 = [v18 numberOfSections];

      v20 = [MEMORY[0x277CCABB0] numberWithInteger:v8 + v17];
      if (v8 + v17 < v19)
      {
        break;
      }

      [v6 removeObjectForKey:v20];
LABEL_20:

      if (v10 == ++v17)
      {
        goto LABEL_23;
      }
    }

    v21 = [v6 objectForKeyedSubscript:v20];

    if (v21)
    {
      v22 = [v7 collectionView];
      v23 = [v22 numberOfItemsInSection:v8 + v17];

      if (v23 > 0 || ([v21 shouldShowSectionHeadersWhenNoItems] & 1) != 0)
      {
        goto LABEL_19;
      }

      v24 = [MEMORY[0x277CCABB0] numberWithInteger:v8 + v17];
      [v6 removeObjectForKey:v24];
    }

    else
    {
      v25 = [(GKDataSourceMetrics *)v28 metricsForSection:v17];
      v21 = [v25 copy];

      if (!v21)
      {
        v20 = 0;
        goto LABEL_20;
      }

      v26 = [MEMORY[0x277CCABB0] numberWithInteger:v8 + v17];
      [v6 setObject:v21 forKeyedSubscript:v26];

      v24 = [(GKDataSourceMetrics *)v28 globalLayoutKeyForSection:v17];
      [v21 setLayoutKey:v24];
    }

LABEL_19:
    v20 = v21;
    goto LABEL_20;
  }

LABEL_23:

  return v6;
}

- (id)applyDataSourceMetricsToSections:(id)a3 withParent:(id)a4 layout:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = [(GKDataSourceMetrics *)self childMetrics];
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v40 + 1) + 8 * i) applyDataSourceMetricsToSections:v8 withParent:self layout:v9];
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v12);
  }

  v16 = [(GKDataSourceMetrics *)self globalSectionRange];
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v39 = a4;
    v20 = 0;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v23 = [v9 collectionView];
      v24 = [v23 numberOfSections];

      if (v18 < v24)
      {
        v25 = [v9 collectionView];
        v26 = [v25 numberOfItemsInSection:v18];

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
      v29 = [v8 objectForKeyedSubscript:v28];

      if (!v29)
      {
        v30 = [v9 defaultSectionMetricsInternal];
        v29 = [v30 copy];

        v31 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
        [v8 setObject:v29 forKeyedSubscript:v31];

        v32 = [(GKDataSourceMetrics *)self globalLayoutKeyForSection:v20];
        [v29 setLayoutKey:v32];
      }

      ++v20;
      ++v18;
    }

    while (v19 != v20);
    if (v39 && v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = v21 - v22;
      v34 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
      v35 = [v8 objectForKeyedSubscript:v34];

      [v35 mergeSupplementaryMetricsFromEnclosingMetrics:self atLocation:0 globalRange:{v22, v21 - v22}];
      v36 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
      v37 = [v8 objectForKeyedSubscript:v36];

      [v37 mergeSupplementaryMetricsFromEnclosingMetrics:self atLocation:1 globalRange:{v22, v33}];
    }
  }

  return v8;
}

- (void)generateMetricDataForLayout:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(GKDataSourceMetrics *)self globalSectionRange];
  v6 = v5;
  [(GKDataSourceMetrics *)self localSectionRange];
  if (v6 != v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutPrivate.m"];
    v11 = [v10 lastPathComponent];
    v12 = [v8 stringWithFormat:@"%@ (self.globalSectionRange.length == self.localSectionRange.length)\n[%s (%s:%d)]", v9, "-[GKDataSourceMetrics(GKGridLayoutPrivate) generateMetricDataForLayout:]", objc_msgSend(v11, "UTF8String"), 212];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
  }

  v13 = MEMORY[0x277CBEB38];
  [(GKDataSourceMetrics *)self globalSectionRange];
  v15 = [v13 dictionaryWithCapacity:v14];
  v16 = [(GKDataSourceMetrics *)self accumulateSections:v15 layout:v4];

  v17 = [(GKDataSourceMetrics *)self applyDataSourceMetricsToSections:v16 withParent:0 layout:v4];
  v18 = [v16 allKeys];
  v19 = [v18 sortedArrayUsingComparator:&__block_literal_global_31];

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
        v27 = [v26 layoutKey];
        v28 = [v4 metricDataForKey:v27];
        [v28 setMetrics:v26];
        [v28 setFilteredTotalItemCount:-1];
        [v4 setMetricData:v28 forSection:{objc_msgSend(v25, "integerValue")}];
      }

      v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v22);
  }

  v29 = [v4 metricDataForKey:@"GKGlobalSection"];
  [v4 setMetricData:v29 forSection:0x7FFFFFFFFFFFFFFFLL];
}

- (void)prepareLayout:(id)a3
{
  v4 = a3;
  [(GKDataSourceMetrics *)self computeGlobalSectionRangesWithBaseIndex:[(GKDataSourceMetrics *)self globalSectionRange]];
  [(GKDataSourceMetrics *)self generateMetricDataForLayout:v4];
}

@end