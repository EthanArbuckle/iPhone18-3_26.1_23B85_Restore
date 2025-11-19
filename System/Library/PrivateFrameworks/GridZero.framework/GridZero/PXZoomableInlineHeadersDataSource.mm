@interface PXZoomableInlineHeadersDataSource
- (PXZoomableInlineHeadersDataSource)initWithAssetsDataSource:(id)a3 level:(unint64_t)a4 metaDataStore:(id)a5;
- (void)dealloc;
@end

@implementation PXZoomableInlineHeadersDataSource

- (void)dealloc
{
  free(self->_sectionInfos);
  v3.receiver = self;
  v3.super_class = PXZoomableInlineHeadersDataSource;
  [(PXZoomableInlineHeadersDataSource *)&v3 dealloc];
}

- (PXZoomableInlineHeadersDataSource)initWithAssetsDataSource:(id)a3 level:(unint64_t)a4 metaDataStore:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = PXZoomableInlineHeadersDataSource;
  v11 = [(PXZoomableInlineHeadersDataSource *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetsDataSource, a3);
    v12->_level = a4;
    v13 = [v9 fetchResultInfoProvider];
    if (!v13)
    {
      v14 = PXAssertGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_error_impl(&dword_21ABF3000, v14, OS_LOG_TYPE_ERROR, "%@ expects that the data source vends fetchResultInfoProviders", buf, 0xCu);
      }
    }

    if ([v9 numberOfSections] < 1)
    {
      v16 = 0;
    }

    else
    {
      *buf = [v9 identifier];
      *&buf[8] = xmmword_21AC7D620;
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = [v13 sortOrderForFetchResultAtSectionIndexPath:buf];
      v16 = v15 == 1;
      if (v15 == 2)
      {
        v16 = 2;
      }
    }

    v12->_type = v16;
    v17 = [v10 numberOfSectionInfosForLevel:a4];
    v12->_numberOfSections = v17;
    if (v17)
    {
      v18 = malloc_type_malloc(32 * v17, 0x1000040E0EAB150uLL);
      v12->_sectionInfos = v18;
      memcpy(v18, [v10 sectionInfosForLevel:a4], 32 * v12->_numberOfSections);
    }
  }

  return v12;
}

@end