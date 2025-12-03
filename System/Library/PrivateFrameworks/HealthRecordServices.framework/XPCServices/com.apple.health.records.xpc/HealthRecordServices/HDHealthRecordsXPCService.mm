@interface HDHealthRecordsXPCService
- (HDHealthRecordDocumentProcessor)FHIRProcessor;
- (HDHealthRecordsXPCService)initWithHealthRecordDocumentConfiguration:(id)configuration;
- (id)remoteInterface;
- (void)remote_compareExistingPatientResourceData:(id)data incomingPatientResourceData:(id)resourceData completion:(id)completion;
- (void)remote_executeFHIRExtractionRequest:(id)request completion:(id)completion;
- (void)remote_executeFHIRReferenceExtractionRequest:(id)request completion:(id)completion;
- (void)remote_extractAttachmentContentFromFHIRResource:(id)resource completion:(id)completion;
- (void)remote_fetchSpotlightSearchResultsForQueryString:(id)string completion:(id)completion;
- (void)remote_indexClinicalDocumentsWithRequest:(id)request completion:(id)completion;
- (void)remote_optInDataForFHIRDocumentWithRequest:(id)request redactor:(id)redactor completion:(id)completion;
- (void)remote_preprocessSignedClinicalData:(id)data options:(unint64_t)options completion:(id)completion;
- (void)remote_preprocessSignedClinicalDataFHIRResourceObject:(id)object options:(unint64_t)options completion:(id)completion;
- (void)remote_processOriginalSignedClinicalDataRecords:(id)records options:(unint64_t)options completion:(id)completion;
- (void)remote_processSignedClinicalDataContextCollection:(id)collection completion:(id)completion;
- (void)remote_reprocessOriginalRecords:(id)records options:(unint64_t)options completion:(id)completion;
- (void)remote_rulesVersionForFHIRDocumentExtractionWithCompletion:(id)completion;
- (void)remote_supportedFHIRConfigurationWithCompletion:(id)completion;
@end

@implementation HDHealthRecordsXPCService

- (HDHealthRecordsXPCService)initWithHealthRecordDocumentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [(HDHealthRecordsXPCService *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthDocumentConfiguration, configuration);
  }

  return v7;
}

- (void)remote_rulesVersionForFHIRDocumentExtractionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_100002F48(a2, self);
  }

  fHIRProcessor = [(HDHealthRecordsXPCService *)self FHIRProcessor];
  extractionRulesetVersion = [fHIRProcessor extractionRulesetVersion];
  completionCopy[2](completionCopy, extractionRulesetVersion, 0);
}

- (void)remote_supportedFHIRConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_100002FC4(a2, self);
  }

  fHIRProcessor = [(HDHealthRecordsXPCService *)self FHIRProcessor];
  supportedFHIRConfiguration = [fHIRProcessor supportedFHIRConfiguration];
  completionCopy[2](completionCopy, supportedFHIRConfiguration, 0);
}

- (void)remote_executeFHIRReferenceExtractionRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = requestCopy;
    v8 = completionCopy;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }
}

- (void)remote_compareExistingPatientResourceData:(id)data incomingPatientResourceData:(id)resourceData completion:(id)completion
{
  dataCopy = data;
  resourceDataCopy = resourceData;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = dataCopy;
    v11 = resourceDataCopy;
    v12 = completionCopy;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }
}

- (void)remote_executeFHIRExtractionRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = requestCopy;
    v8 = completionCopy;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }
}

- (void)remote_extractAttachmentContentFromFHIRResource:(id)resource completion:(id)completion
{
  resourceCopy = resource;
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = resourceCopy;
    v8 = completionCopy;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }
}

- (void)remote_optInDataForFHIRDocumentWithRequest:(id)request redactor:(id)redactor completion:(id)completion
{
  requestCopy = request;
  redactorCopy = redactor;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = requestCopy;
    v11 = redactorCopy;
    v12 = completionCopy;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }
}

- (void)remote_preprocessSignedClinicalData:(id)data options:(unint64_t)options completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = dataCopy;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)remote_preprocessSignedClinicalDataFHIRResourceObject:(id)object options:(unint64_t)options completion:(id)completion
{
  objectCopy = object;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = objectCopy;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)remote_reprocessOriginalRecords:(id)records options:(unint64_t)options completion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = recordsCopy;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)remote_processOriginalSignedClinicalDataRecords:(id)records options:(unint64_t)options completion:(id)completion
{
  recordsCopy = records;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = recordsCopy;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)remote_processSignedClinicalDataContextCollection:(id)collection completion:(id)completion
{
  collectionCopy = collection;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = collectionCopy;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)remote_indexClinicalDocumentsWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = requestCopy;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (void)remote_fetchSpotlightSearchResultsForQueryString:(id)string completion:(id)completion
{
  stringCopy = string;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = stringCopy;
  HKDispatchAsyncOnGlobalConcurrentQueue();
}

- (HDHealthRecordDocumentProcessor)FHIRProcessor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_FHIRProcessor)
  {
    healthDocumentConfiguration = selfCopy->_healthDocumentConfiguration;
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
        [v10 handleFailureInMethod:a2 object:selfCopy file:@"HDHealthRecordsXPCService.m" lineNumber:297 description:{@"Error loading pipeline configuration: %@", v6}];

        v5 = 0;
      }
    }

    v7 = [[HDHealthRecordDocumentProcessor alloc] initWithConfiguration:v5];
    [(HDHealthRecordsXPCService *)selfCopy setFHIRProcessor:v7];
  }

  objc_sync_exit(selfCopy);

  FHIRProcessor = selfCopy->_FHIRProcessor;

  return FHIRProcessor;
}

- (id)remoteInterface
{
  v2 = objc_alloc_init(NSXPCInterface);

  return v2;
}

@end