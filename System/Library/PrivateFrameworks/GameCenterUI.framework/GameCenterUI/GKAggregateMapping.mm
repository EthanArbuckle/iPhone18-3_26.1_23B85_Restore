@interface GKAggregateMapping
- (GKAggregateMapping)initWithGlobalToLocalMapping:(id)a3;
- (id)_gkDescriptionWithChildren:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)globalIndexPathForLocalIndexPath:(id)a3;
- (id)localIndexPathForGlobalIndexPath:(id)a3;
- (id)tagForGlobalSection:(int64_t)a3;
- (unint64_t)globalSectionForLocalSection:(unint64_t)a3;
- (unint64_t)localSectionForGlobalSection:(unint64_t)a3;
- (unint64_t)updateMappingsStartingWithGlobalSection:(unint64_t)a3;
- (void)addMappingFromGlobalSection:(unint64_t)a3 toLocalSection:(unint64_t)a4 withTag:(id)a5;
@end

@implementation GKAggregateMapping

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[GKAggregateMapping allocWithZone:?]];
  v5 = [(GKAggregateMapping *)self dataSource];
  [(GKAggregateMapping *)v4 setDataSource:v5];

  v6 = [(GKAggregateMapping *)self globalToLocalSections];
  [(GKAggregateMapping *)v4 setGlobalToLocalSections:v6];

  v7 = [(GKAggregateMapping *)self localToGlobalSections];
  [(GKAggregateMapping *)v4 setLocalToGlobalSections:v7];

  v8 = [(GKAggregateMapping *)self globalSectionsToTags];
  [(GKAggregateMapping *)v4 setGlobalSectionsToTags:v8];

  return v4;
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v19.receiver = self;
  v19.super_class = GKAggregateMapping;
  v4 = [(GKAggregateMapping *)&v19 description];
  objc_msgSend(v3, "appendFormat:", @"%@ ("), v4;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [(NSMutableDictionary *)self->_globalSectionsToTags allKeys];
  v5 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_globalToLocalSections objectForKeyedSubscript:v10];
        v12 = [(NSMutableDictionary *)self->_globalSectionsToTags objectForKeyedSubscript:v10];
        if ((v8 & 1) == 0)
        {
          [v3 appendString:{@", "}];
        }

        [v3 appendFormat:@"%@ -> %@[%@]", v10, v12, v11];

        v8 = 0;
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
      v8 = 0;
    }

    while (v6);
  }

  [v3 appendString:@""]);

  return v3;
}

- (id)_gkDescriptionWithChildren:(int64_t)a3
{
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = _gkTabStringForTabLevel();
  v7 = [(GKAggregateMapping *)self _gkDescription];
  [v5 appendFormat:@"%@%@", v6, v7];

  v8 = _gkUnicodifyDescription();
  v9 = [(GKCollectionViewDataSource *)self->_dataSource _gkDescriptionWithChildren:a3 + 1];
  [v5 appendFormat:@"%@", v9];

  return v5;
}

- (unint64_t)localSectionForGlobalSection:(unint64_t)a3
{
  globalToLocalSections = self->_globalToLocalSections;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)globalToLocalSections objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"globalSection %ld not found in globalToLocalSections: %@", a3, self->_globalToLocalSections];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSourcePrivate.m"];
    v11 = [v10 lastPathComponent];
    v12 = [v8 stringWithFormat:@"%@ (localSection != nil)\n[%s (%s:%d)]", v9, "-[GKAggregateMapping localSectionForGlobalSection:]", objc_msgSend(v11, "UTF8String"), 100];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
  }

  v13 = [v7 unsignedIntegerValue];

  return v13;
}

- (unint64_t)globalSectionForLocalSection:(unint64_t)a3
{
  localToGlobalSections = self->_localToGlobalSections;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)localToGlobalSections objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"localSection %ld not found in localToGlobalSections:%@", a3, self->_localToGlobalSections];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSourcePrivate.m"];
    v11 = [v10 lastPathComponent];
    v12 = [v8 stringWithFormat:@"%@ (globalSection != nil)\n[%s (%s:%d)]", v9, "-[GKAggregateMapping globalSectionForLocalSection:]", objc_msgSend(v11, "UTF8String"), 107];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
  }

  v13 = [v7 unsignedIntegerValue];

  return v13;
}

- (id)localIndexPathForGlobalIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[GKAggregateMapping localSectionForGlobalSection:](self, "localSectionForGlobalSection:", [v4 section]);
  v6 = [v4 item];
  globalSectionsToTags = self->_globalSectionsToTags;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "section")}];
  v9 = [(NSMutableDictionary *)globalSectionsToTags objectForKeyedSubscript:v8];
  v10 = [GKMappedIndexPath indexPathForItem:v6 inSection:v5 fromSourceIndexPath:v4 withTag:v9];

  return v10;
}

- (id)globalIndexPathForLocalIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[GKAggregateMapping globalSectionForLocalSection:](self, "globalSectionForLocalSection:", [v4 section]);
  v6 = MEMORY[0x277CCAA70];
  v7 = [v4 item];

  return [v6 indexPathForItem:v7 inSection:v5];
}

- (GKAggregateMapping)initWithGlobalToLocalMapping:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = GKAggregateMapping;
  v5 = [(GKAggregateMapping *)&v24 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v4];
    globalToLocalSections = v5->_globalToLocalSections;
    v5->_globalToLocalSections = v6;

    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](v5->_globalToLocalSections, "count")}];
    localToGlobalSections = v5->_localToGlobalSections;
    v5->_localToGlobalSections = v8;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v5->_globalToLocalSections;
    v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [(NSMutableDictionary *)v5->_globalToLocalSections objectForKeyedSubscript:v15, v20];
          [(NSMutableDictionary *)v5->_localToGlobalSections setObject:v15 forKeyedSubscript:v16];
        }

        v12 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }

    v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](v5->_globalToLocalSections, "count")}];
    globalSectionsToTags = v5->_globalSectionsToTags;
    v5->_globalSectionsToTags = v17;
  }

  return v5;
}

- (id)tagForGlobalSection:(int64_t)a3
{
  globalSectionsToTags = self->_globalSectionsToTags;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)globalSectionsToTags objectForKeyedSubscript:v4];

  return v5;
}

- (void)addMappingFromGlobalSection:(unint64_t)a3 toLocalSection:(unint64_t)a4 withTag:(id)a5
{
  v23 = a5;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v10 = [(NSMutableDictionary *)self->_localToGlobalSections objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"collision while trying to add to a GKAggregateMapping"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSourcePrivate.m"];
    v14 = [v13 lastPathComponent];
    v15 = [v11 stringWithFormat:@"%@ (_localToGlobalSections[localNum] == nil)\n[%s (%s:%d)]", v12, "-[GKAggregateMapping addMappingFromGlobalSection:toLocalSection:withTag:]", objc_msgSend(v14, "UTF8String"), 156];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v15}];
  }

  [(NSMutableDictionary *)self->_globalToLocalSections setObject:v9 forKeyedSubscript:v8];
  [(NSMutableDictionary *)self->_localToGlobalSections setObject:v8 forKeyedSubscript:v9];
  v16 = [(NSMutableDictionary *)self->_globalSectionsToTags objectForKeyedSubscript:v8];

  v17 = v23;
  if (v16)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"you must define a unique tag. %@ is already being used.", v23];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSourcePrivate.m"];
    v21 = [v20 lastPathComponent];
    v22 = [v18 stringWithFormat:@"%@ (_globalSectionsToTags[globalNum] == nil)\n[%s (%s:%d)]", v19, "-[GKAggregateMapping addMappingFromGlobalSection:toLocalSection:withTag:]", objc_msgSend(v21, "UTF8String"), 160];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v22}];
    v17 = v23;
  }

  [(NSMutableDictionary *)self->_globalSectionsToTags setObject:v17 forKeyedSubscript:v8];
}

- (unint64_t)updateMappingsStartingWithGlobalSection:(unint64_t)a3
{
  self->_sectionCount = [(GKCollectionViewDataSource *)self->_dataSource numberOfSectionsInCollectionView:0];
  [(NSMutableDictionary *)self->_globalToLocalSections removeAllObjects];
  [(NSMutableDictionary *)self->_localToGlobalSections removeAllObjects];
  [(NSMutableDictionary *)self->_globalSectionsToTags removeAllObjects];
  if (self->_sectionCount)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %ld", self->_dynamicTag, v5];
      [(GKAggregateMapping *)self addMappingFromGlobalSection:a3 + v5 toLocalSection:v5 withTag:v6];

      ++v5;
    }

    while (v5 < self->_sectionCount);
    a3 += v5;
  }

  return a3;
}

@end