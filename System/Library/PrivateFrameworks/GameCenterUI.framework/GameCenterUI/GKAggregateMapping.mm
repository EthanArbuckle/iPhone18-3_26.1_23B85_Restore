@interface GKAggregateMapping
- (GKAggregateMapping)initWithGlobalToLocalMapping:(id)mapping;
- (id)_gkDescriptionWithChildren:(int64_t)children;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)globalIndexPathForLocalIndexPath:(id)path;
- (id)localIndexPathForGlobalIndexPath:(id)path;
- (id)tagForGlobalSection:(int64_t)section;
- (unint64_t)globalSectionForLocalSection:(unint64_t)section;
- (unint64_t)localSectionForGlobalSection:(unint64_t)section;
- (unint64_t)updateMappingsStartingWithGlobalSection:(unint64_t)section;
- (void)addMappingFromGlobalSection:(unint64_t)section toLocalSection:(unint64_t)localSection withTag:(id)tag;
@end

@implementation GKAggregateMapping

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[GKAggregateMapping allocWithZone:?]];
  dataSource = [(GKAggregateMapping *)self dataSource];
  [(GKAggregateMapping *)v4 setDataSource:dataSource];

  globalToLocalSections = [(GKAggregateMapping *)self globalToLocalSections];
  [(GKAggregateMapping *)v4 setGlobalToLocalSections:globalToLocalSections];

  localToGlobalSections = [(GKAggregateMapping *)self localToGlobalSections];
  [(GKAggregateMapping *)v4 setLocalToGlobalSections:localToGlobalSections];

  globalSectionsToTags = [(GKAggregateMapping *)self globalSectionsToTags];
  [(GKAggregateMapping *)v4 setGlobalSectionsToTags:globalSectionsToTags];

  return v4;
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v19.receiver = self;
  v19.super_class = GKAggregateMapping;
  v4 = [(GKAggregateMapping *)&v19 description];
  objc_msgSend(string, "appendFormat:", @"%@ ("), v4;

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
          [string appendString:{@", "}];
        }

        [string appendFormat:@"%@ -> %@[%@]", v10, v12, v11];

        v8 = 0;
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
      v8 = 0;
    }

    while (v6);
  }

  [string appendString:@""]);

  return string;
}

- (id)_gkDescriptionWithChildren:(int64_t)children
{
  string = [MEMORY[0x277CCAB68] string];
  v6 = _gkTabStringForTabLevel();
  _gkDescription = [(GKAggregateMapping *)self _gkDescription];
  [string appendFormat:@"%@%@", v6, _gkDescription];

  v8 = _gkUnicodifyDescription();
  v9 = [(GKCollectionViewDataSource *)self->_dataSource _gkDescriptionWithChildren:children + 1];
  [string appendFormat:@"%@", v9];

  return string;
}

- (unint64_t)localSectionForGlobalSection:(unint64_t)section
{
  globalToLocalSections = self->_globalToLocalSections;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)globalToLocalSections objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"globalSection %ld not found in globalToLocalSections: %@", section, self->_globalToLocalSections];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSourcePrivate.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = [v8 stringWithFormat:@"%@ (localSection != nil)\n[%s (%s:%d)]", v9, "-[GKAggregateMapping localSectionForGlobalSection:]", objc_msgSend(lastPathComponent, "UTF8String"), 100];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
  }

  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)globalSectionForLocalSection:(unint64_t)section
{
  localToGlobalSections = self->_localToGlobalSections;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)localToGlobalSections objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"localSection %ld not found in localToGlobalSections:%@", section, self->_localToGlobalSections];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSourcePrivate.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = [v8 stringWithFormat:@"%@ (globalSection != nil)\n[%s (%s:%d)]", v9, "-[GKAggregateMapping globalSectionForLocalSection:]", objc_msgSend(lastPathComponent, "UTF8String"), 107];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
  }

  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)localIndexPathForGlobalIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[GKAggregateMapping localSectionForGlobalSection:](self, "localSectionForGlobalSection:", [pathCopy section]);
  item = [pathCopy item];
  globalSectionsToTags = self->_globalSectionsToTags;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "section")}];
  v9 = [(NSMutableDictionary *)globalSectionsToTags objectForKeyedSubscript:v8];
  v10 = [GKMappedIndexPath indexPathForItem:item inSection:v5 fromSourceIndexPath:pathCopy withTag:v9];

  return v10;
}

- (id)globalIndexPathForLocalIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[GKAggregateMapping globalSectionForLocalSection:](self, "globalSectionForLocalSection:", [pathCopy section]);
  v6 = MEMORY[0x277CCAA70];
  item = [pathCopy item];

  return [v6 indexPathForItem:item inSection:v5];
}

- (GKAggregateMapping)initWithGlobalToLocalMapping:(id)mapping
{
  v26 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  v24.receiver = self;
  v24.super_class = GKAggregateMapping;
  v5 = [(GKAggregateMapping *)&v24 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:mappingCopy];
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

- (id)tagForGlobalSection:(int64_t)section
{
  globalSectionsToTags = self->_globalSectionsToTags;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:section];
  v5 = [(NSMutableDictionary *)globalSectionsToTags objectForKeyedSubscript:v4];

  return v5;
}

- (void)addMappingFromGlobalSection:(unint64_t)section toLocalSection:(unint64_t)localSection withTag:(id)tag
{
  tagCopy = tag;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:section];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:localSection];
  v10 = [(NSMutableDictionary *)self->_localToGlobalSections objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"collision while trying to add to a GKAggregateMapping"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSourcePrivate.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = [v11 stringWithFormat:@"%@ (_localToGlobalSections[localNum] == nil)\n[%s (%s:%d)]", v12, "-[GKAggregateMapping addMappingFromGlobalSection:toLocalSection:withTag:]", objc_msgSend(lastPathComponent, "UTF8String"), 156];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v15}];
  }

  [(NSMutableDictionary *)self->_globalToLocalSections setObject:v9 forKeyedSubscript:v8];
  [(NSMutableDictionary *)self->_localToGlobalSections setObject:v8 forKeyedSubscript:v9];
  v16 = [(NSMutableDictionary *)self->_globalSectionsToTags objectForKeyedSubscript:v8];

  v17 = tagCopy;
  if (v16)
  {
    v18 = MEMORY[0x277CCACA8];
    tagCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"you must define a unique tag. %@ is already being used.", tagCopy];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSourcePrivate.m"];
    lastPathComponent2 = [v20 lastPathComponent];
    v22 = [v18 stringWithFormat:@"%@ (_globalSectionsToTags[globalNum] == nil)\n[%s (%s:%d)]", tagCopy, "-[GKAggregateMapping addMappingFromGlobalSection:toLocalSection:withTag:]", objc_msgSend(lastPathComponent2, "UTF8String"), 160];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v22}];
    v17 = tagCopy;
  }

  [(NSMutableDictionary *)self->_globalSectionsToTags setObject:v17 forKeyedSubscript:v8];
}

- (unint64_t)updateMappingsStartingWithGlobalSection:(unint64_t)section
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
      [(GKAggregateMapping *)self addMappingFromGlobalSection:section + v5 toLocalSection:v5 withTag:v6];

      ++v5;
    }

    while (v5 < self->_sectionCount);
    section += v5;
  }

  return section;
}

@end