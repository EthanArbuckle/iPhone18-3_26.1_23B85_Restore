@interface HDHealthRecordsXPCService
- (HDHealthRecordDocumentProcessor)FHIRProcessor;
- (HDHealthRecordsXPCService)initWithHealthRecordDocumentConfiguration:(id)a3;
- (id)remoteInterface;
- (void)remote_compareExistingPatientResourceData:(id)a3 incomingPatientResourceData:(id)a4 completion:(id)a5;
- (void)remote_executeFHIRExtractionRequest:(id)a3 completion:(id)a4;
- (void)remote_executeFHIRReferenceExtractionRequest:(id)a3 completion:(id)a4;
- (void)remote_extractAttachmentContentFromFHIRResource:(id)a3 completion:(id)a4;
- (void)remote_fetchSpotlightSearchResultsForQueryString:(id)a3 completion:(id)a4;
- (void)remote_indexClinicalDocumentsWithRequest:(id)a3 completion:(id)a4;
- (void)remote_optInDataForFHIRDocumentWithRequest:(id)a3 redactor:(id)a4 completion:(id)a5;
- (void)remote_preprocessSignedClinicalData:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)remote_preprocessSignedClinicalDataFHIRResourceObject:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)remote_processOriginalSignedClinicalDataRecords:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)remote_processSignedClinicalDataContextCollection:(id)a3 completion:(id)a4;
- (void)remote_reprocessOriginalRecords:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)remote_rulesVersionForFHIRDocumentExtractionWithCompletion:(id)a3;
- (void)remote_supportedFHIRConfigurationWithCompletion:(id)a3;
@end

@implementation HDHealthRecordsXPCService

- (HDHealthRecordsXPCService)initWithHealthRecordDocumentConfiguration:(id)a3
{
  v5 = a3;
  v6 = [(HDHealthRecordsXPCService *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthDocumentConfiguration, a3);
  }

  return v7;
}

- (void)remote_rulesVersionForFHIRDocumentExtractionWithCompletion:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    sub_100002F48(a2, self);
  }

  v5 = [(HDHealthRecordsXPCService *)self FHIRProcessor];
  v6 = [v5 extractionRulesetVersion];
  v7[2](v7, v6, 0);
}

- (void)remote_supportedFHIRConfigurationWithCompletion:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    sub_100002FC4(a2, self);
  }

  v5 = [(HDHealthRecordsXPCService *)self FHIRProcessor];
  v6 = [v5 supportedFHIRConfiguration];
  v7[2](v7, v6, 0);
}

- (void)remote_executeFHIRReferenceExtractionRequest:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }
}

- (void)remote_compareExistingPatientResourceData:(id)a3 incomingPatientResourceData:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }
}

- (void)remote_executeFHIRExtractionRequest:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }
}

- (void)remote_extractAttachmentContentFromFHIRResource:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }
}

- (void)remote_optInDataForFHIRDocumentWithRequest:(id)a3 redactor:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }
}

- (void)remote_preprocessSignedClinicalData:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v6 = a3;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)remote_preprocessSignedClinicalDataFHIRResourceObject:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v6 = a3;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)remote_reprocessOriginalRecords:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v6 = a3;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)remote_processOriginalSignedClinicalDataRecords:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v6 = a3;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)remote_processSignedClinicalDataContextCollection:(id)a3 completion:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)remote_indexClinicalDocumentsWithRequest:(id)a3 completion:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)remote_fetchSpotlightSearchResultsForQueryString:(id)a3 completion:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (HDHealthRecordDocumentProcessor)FHIRProcessor
{
  v3 = self;
  objc_sync_enter(v3);
  if (!v3->_FHIRProcessor)
  {
    healthDocumentConfiguration = v3->_healthDocumentConfiguration;
    if (healthDocumentConfiguration)
    {
      v5 = healthDocumentConfiguration;
      v6 = 0;
    }

    else
    {
      v11 = 0;
      v5 = [HDHealthRecordDocumentTypeConfiguration configurationWithError:&v11];
      v6 = v11;
      if (!v5)
      {
        v10 = +[NSAssertionHandler currentHandler];
        [v10 handleFailureInMethod:a2 object:v3 file:@"HDHealthRecordsXPCService.m" lineNumber:297 description:{@"Error loading pipeline configuration: %@", v6}];

        v5 = 0;
      }
    }

    v7 = [[HDHealthRecordDocumentProcessor alloc] initWithConfiguration:v5];
    [(HDHealthRecordsXPCService *)v3 setFHIRProcessor:v7];
  }

  objc_sync_exit(v3);

  FHIRProcessor = v3->_FHIRProcessor;

  return FHIRProcessor;
}

- (id)remoteInterface
{
  v2 = objc_alloc_init(NSXPCInterface);

  return v2;
}

@end