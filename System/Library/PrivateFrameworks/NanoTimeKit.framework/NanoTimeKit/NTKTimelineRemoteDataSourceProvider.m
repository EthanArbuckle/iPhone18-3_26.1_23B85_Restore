@interface NTKTimelineRemoteDataSourceProvider
- (CLKComplicationDataSource)dataSource;
- (NTKTimelineRemoteDataSourceProvider)initWithDataSource:(id)a3;
- (void)getCurrentEntryForComplication:(id)a3 completion:(id)a4;
- (void)getEntriesForComplication:(id)a3 afterDate:(id)a4 limit:(unint64_t)a5 completion:(id)a6;
- (void)tl_getDataSourceWithCompletion:(id)a3;
@end

@implementation NTKTimelineRemoteDataSourceProvider

- (NTKTimelineRemoteDataSourceProvider)initWithDataSource:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NTKTimelineRemoteDataSourceProvider;
  v5 = [(NTKTimelineRemoteDataSourceProvider *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[NTKTimelineDataSourceWrapper alloc] initWithDataSource:v4];
    wrapper = v6->_wrapper;
    v6->_wrapper = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v6->_operationQueue;
    v6->_operationQueue = v9;

    [(NSOperationQueue *)v6->_operationQueue setMaxConcurrentOperationCount:1];
    v6->_timeout = 10.0;
  }

  return v6;
}

- (void)getCurrentEntryForComplication:(id)a3 completion:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277D71518]) initWithIdentifiable:v6 timeout:1 entryLimit:self->_timeout];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__NTKTimelineRemoteDataSourceProvider_getCurrentEntryForComplication_completion___block_invoke;
  v18[3] = &unk_278780198;
  v9 = v6;
  v19 = v9;
  v20 = v7;
  v10 = v7;
  [v8 setOperationCompletionBlock:v18];
  v11 = objc_alloc(MEMORY[0x277D71510]);
  v21[0] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v13 = [v11 initWithProvider:self operations:v12 providerTimeout:self->_timeout operationTimeout:self->_timeout];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__NTKTimelineRemoteDataSourceProvider_getCurrentEntryForComplication_completion___block_invoke_69;
  v16[3] = &unk_27877E820;
  v17 = v9;
  v14 = v9;
  [v13 setSessionCompletionBlock:v16];
  v15 = [(NTKTimelineRemoteDataSourceProvider *)self operationQueue];
  [v15 addOperation:v13];
}

void __81__NTKTimelineRemoteDataSourceProvider_getCurrentEntryForComplication_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 timeline];
  v4 = [v3 nowEntry];

  v5 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Current entry fetched for complication %@ : %@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __81__NTKTimelineRemoteDataSourceProvider_getCurrentEntryForComplication_completion___block_invoke_69(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Current entry session for complication %@ finished.", &v4, 0xCu);
  }
}

- (void)getEntriesForComplication:(id)a3 afterDate:(id)a4 limit:(unint64_t)a5 completion:(id)a6
{
  v27[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = MEMORY[0x277D71508];
  v13 = a4;
  v14 = [[v12 alloc] initWithIdentifiable:v10 afterDate:v13 timeout:a5 entryLimit:self->_timeout];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __92__NTKTimelineRemoteDataSourceProvider_getEntriesForComplication_afterDate_limit_completion___block_invoke;
  v24[3] = &unk_2787801C0;
  v15 = v10;
  v25 = v15;
  v26 = v11;
  v16 = v11;
  [v14 setOperationCompletionBlock:v24];
  v17 = objc_alloc(MEMORY[0x277D71510]);
  v27[0] = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v19 = [v17 initWithProvider:self operations:v18 providerTimeout:self->_timeout operationTimeout:self->_timeout];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__NTKTimelineRemoteDataSourceProvider_getEntriesForComplication_afterDate_limit_completion___block_invoke_73;
  v22[3] = &unk_27877E820;
  v23 = v15;
  v20 = v15;
  [v19 setSessionCompletionBlock:v22];
  v21 = [(NTKTimelineRemoteDataSourceProvider *)self operationQueue];
  [v21 addOperation:v19];
}

void __92__NTKTimelineRemoteDataSourceProvider_getEntriesForComplication_afterDate_limit_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a2 timelineEntries];
  v4 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Entries fetched for complication %@ : %@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __92__NTKTimelineRemoteDataSourceProvider_getEntriesForComplication_afterDate_limit_completion___block_invoke_73(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Extend session for complication %@ finished.", &v4, 0xCu);
  }
}

- (CLKComplicationDataSource)dataSource
{
  v2 = [(NTKTimelineRemoteDataSourceProvider *)self wrapper];
  v3 = [v2 dataSource];

  return v3;
}

- (void)tl_getDataSourceWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(NTKTimelineRemoteDataSourceProvider *)self wrapper];
  if (v4)
  {
    v6[2](v6, v4, 0);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKComplicationTimelineDomain" code:404 userInfo:&unk_284189A98];
    (v6)[2](v6, 0, v5);
  }
}

@end