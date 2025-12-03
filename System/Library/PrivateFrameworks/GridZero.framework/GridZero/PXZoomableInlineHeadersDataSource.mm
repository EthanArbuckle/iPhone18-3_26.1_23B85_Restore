@interface PXZoomableInlineHeadersDataSource
- (PXZoomableInlineHeadersDataSource)initWithAssetsDataSource:(id)source level:(unint64_t)level metaDataStore:(id)store;
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

- (PXZoomableInlineHeadersDataSource)initWithAssetsDataSource:(id)source level:(unint64_t)level metaDataStore:(id)store
{
  v23 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  storeCopy = store;
  v20.receiver = self;
  v20.super_class = PXZoomableInlineHeadersDataSource;
  v11 = [(PXZoomableInlineHeadersDataSource *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetsDataSource, source);
    v12->_level = level;
    fetchResultInfoProvider = [sourceCopy fetchResultInfoProvider];
    if (!fetchResultInfoProvider)
    {
      v14 = PXAssertGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_error_impl(&dword_21ABF3000, v14, OS_LOG_TYPE_ERROR, "%@ expects that the data source vends fetchResultInfoProviders", buf, 0xCu);
      }
    }

    if ([sourceCopy numberOfSections] < 1)
    {
      v16 = 0;
    }

    else
    {
      *buf = [sourceCopy identifier];
      *&buf[8] = xmmword_21AC7D620;
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = [fetchResultInfoProvider sortOrderForFetchResultAtSectionIndexPath:buf];
      v16 = v15 == 1;
      if (v15 == 2)
      {
        v16 = 2;
      }
    }

    v12->_type = v16;
    v17 = [storeCopy numberOfSectionInfosForLevel:level];
    v12->_numberOfSections = v17;
    if (v17)
    {
      v18 = malloc_type_malloc(32 * v17, 0x1000040E0EAB150uLL);
      v12->_sectionInfos = v18;
      memcpy(v18, [storeCopy sectionInfosForLevel:level], 32 * v12->_numberOfSections);
    }
  }

  return v12;
}

@end