@interface PXZoomableInlineHeaderSectionInfoMetaDataStore
- (BOOL)updateWithDataSourceAfterChanges:(id)changes changeDetails:(id)details;
- (PXZoomableInlineHeaderSectionInfoMetaDataStore)initWithDataSource:(id)source;
- (id)description;
- (void)_resizeStorageIfNeededForNumberOfSections:(int64_t)sections level:(unint64_t)level;
- (void)addSectionInfo:(id *)info forLevel:(unint64_t)level;
- (void)dealloc;
@end

@implementation PXZoomableInlineHeaderSectionInfoMetaDataStore

- (void)_resizeStorageIfNeededForNumberOfSections:(int64_t)sections level:(unint64_t)level
{
  sectionsCapacityByLevel = self->_sectionsCapacityByLevel;
  v6 = self->_sectionsCapacityByLevel[level];
  if (v6 < sections)
  {
    if (!v6)
    {
      v6 = 8;
      sectionsCapacityByLevel[level] = 8;
    }

    if (v6 < sections)
    {
      do
      {
        v6 *= 2;
      }

      while (v6 < sections);
      sectionsCapacityByLevel[level] = v6;
    }

    MEMORY[0x2821DBD38](&self->_sectionInfosByLevel[level], 32);
  }
}

- (BOOL)updateWithDataSourceAfterChanges:(id)changes changeDetails:(id)details
{
  changesCopy = changes;
  detailsCopy = details;
  if ([MEMORY[0x277D3CDD0] changesHaveAnyInsertionsRemovalsOrMoves:detailsCopy])
  {
    dataSource = [(PXZoomableInlineHeaderSectionInfoMetaDataStore *)self dataSource];
    identifier = [dataSource identifier];
    if ([changesCopy numberOfSections])
    {
      v9 = [changesCopy numberOfItemsInSection:{objc_msgSend(changesCopy, "numberOfSections") - 1}] - 1;
    }

    else
    {
      v9 = -1;
    }

    v11 = 0;
    sectionsCountByLevel = self->_sectionsCountByLevel;
    selfCopy = self;
    sectionInfosByLevel = self->_sectionInfosByLevel;
    v12 = *MEMORY[0x277D3CF78];
    v10 = 1;
    v13 = 0uLL;
    v14 = 1;
    do
    {
      v25 = v14;
      v15 = sectionsCountByLevel[v11];
      if (v15 >= 1)
      {
        v16 = sectionInfosByLevel[v11];
        do
        {
          v17 = *v16;
          v27 = v13;
          v28 = v13;
          v26[0] = identifier;
          v26[1] = 0;
          v26[2] = v17;
          v26[3] = 0x7FFFFFFFFFFFFFFFLL;
          [MEMORY[0x277D3CDD0] indexPathAfterApplyingChanges:detailsCopy toIndexPath:v26 hasIncrementalChanges:0 objectChanged:0];
          v13 = 0uLL;
          if (v17 >= v9)
          {
            v18 = v9;
          }

          else
          {
            v18 = v17;
          }

          if (v27 != v12)
          {
            v18 = v28;
          }

          v10 &= v27 != v12;
          *v16 = v18;
          v16 = (v16 + 32);
          --v15;
        }

        while (v15);
      }

      v14 = 0;
      v11 = 1;
    }

    while ((v25 & 1) != 0);

    self = selfCopy;
  }

  else
  {
    v10 = 1;
  }

  dataSource = self->_dataSource;
  self->_dataSource = changesCopy;

  return v10 & 1;
}

- (void)addSectionInfo:(id *)info forLevel:(unint64_t)level
{
  v5 = &self->super.isa + level;
  v6 = v5[3];
  v5[3] = (v6 + 1);
  [PXZoomableInlineHeaderSectionInfoMetaDataStore _resizeStorageIfNeededForNumberOfSections:"_resizeStorageIfNeededForNumberOfSections:level:" level:?];
  v7 = (v5[1] + 32 * v6);
  v8 = *&info->var2;
  *v7 = *&info->var0;
  v7[1] = v8;
}

- (id)description
{
  v3 = self->_sectionsCountByLevel[0];
  v4 = self->_sectionsCountByLevel[1];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v3];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
  v7 = [(PXZoomableInlineHeaderSectionInfoMetaDataStore *)self sectionInfosForLevel:0];
  if (v3 >= 1)
  {
    p_var1 = &v7->var1;
    v9 = v3;
    do
    {
      v10 = *p_var1;
      p_var1 += 4;
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
      [v5 addObject:v11];

      --v9;
    }

    while (v9);
  }

  v12 = [(PXZoomableInlineHeaderSectionInfoMetaDataStore *)self sectionInfosForLevel:1];
  if (v4 >= 1)
  {
    p_var2 = &v12->var2;
    v14 = v4;
    do
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld-%ld", *(p_var2 - 1), *p_var2];
      [v6 addObject:v15];

      p_var2 += 4;
      --v14;
    }

    while (v14);
  }

  v16 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [v5 componentsJoinedByString:{@", "}];
  v20 = [v6 componentsJoinedByString:{@", "}];
  v21 = [v16 stringWithFormat:@"<%@: %p, %ld years:[%@] %ld months:[%@]>", v18, self, v3, v19, v4, v20];

  return v21;
}

- (void)dealloc
{
  free(self->_sectionInfosByLevel[0]);
  free(self->_sectionInfosByLevel[1]);
  v3.receiver = self;
  v3.super_class = PXZoomableInlineHeaderSectionInfoMetaDataStore;
  [(PXZoomableInlineHeaderSectionInfoMetaDataStore *)&v3 dealloc];
}

- (PXZoomableInlineHeaderSectionInfoMetaDataStore)initWithDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = PXZoomableInlineHeaderSectionInfoMetaDataStore;
  v6 = [(PXZoomableInlineHeaderSectionInfoMetaDataStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
  }

  return v7;
}

@end