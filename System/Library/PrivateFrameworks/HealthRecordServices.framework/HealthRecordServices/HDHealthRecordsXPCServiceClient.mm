@interface HDHealthRecordsXPCServiceClient
- (HDHealthRecordsXPCServiceClient)initWithListenerEndpoint:(id)endpoint;
- (id)_actionCompletionOnClientQueue:(id)queue;
- (id)_objectCompletionOnClientQueue:(id)queue;
- (id)exportedInterface;
- (id)rulesVersionForFHIRDocumentExtractionWithError:(id *)error;
- (id)supportedFHIRConfigurationWithError:(id *)error;
- (void)_performWithProxyHandler:(id)handler errorHandler:(id)errorHandler;
- (void)_synchronousPerformWithProxyHandler:(id)handler errorHandler:(id)errorHandler;
- (void)compareExistingPatientResourceData:(id)data incomingPatientResourceData:(id)resourceData completion:(id)completion;
- (void)dealloc;
- (void)executeFHIRExtractionRequest:(id)request completion:(id)completion;
- (void)executeFHIRReferenceExtractionRequest:(id)request completion:(id)completion;
- (void)extractAttachmentContentFromFHIRResource:(id)resource completion:(id)completion;
- (void)fetchSpotlightSearchResultsForQueryString:(id)string completion:(id)completion;
- (void)indexClinicalDocumentsWithRequest:(id)request completion:(id)completion;
- (void)optInDataForFHIRDocumentWithRequest:(id)request redactor:(id)redactor completion:(id)completion;
- (void)preprocessSignedClinicalData:(id)data options:(unint64_t)options completion:(id)completion;
- (void)preprocessSignedClinicalDataFHIRResourceObject:(id)object options:(unint64_t)options completion:(id)completion;
- (void)processOriginalSignedClinicalDataRecords:(id)records options:(unint64_t)options completion:(id)completion;
- (void)processSignedClinicalDataContextCollection:(id)collection completion:(id)completion;
- (void)reprocessOriginalSignedClinicalDataRecords:(id)records options:(unint64_t)options completion:(id)completion;
@end

@implementation HDHealthRecordsXPCServiceClient

- (HDHealthRecordsXPCServiceClient)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v12.receiver = self;
  v12.super_class = HDHealthRecordsXPCServiceClient;
  v5 = [(HDHealthRecordsXPCServiceClient *)&v12 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueue();
    clientQueue = v5->_clientQueue;
    v5->_clientQueue = v6;

    v8 = objc_alloc(MEMORY[0x277CCDE80]);
    if (endpointCopy)
    {
      v9 = [v8 initWithListenerEndpoint:endpointCopy];
    }

    else
    {
      v9 = [v8 initWithServiceName:@"com.apple.health.records"];
    }

    connection = v5->_connection;
    v5->_connection = v9;

    [(_HKXPCConnection *)v5->_connection setExportedObject:v5];
    [(_HKXPCConnection *)v5->_connection resume];
  }

  return v5;
}

- (void)dealloc
{
  [(_HKXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = HDHealthRecordsXPCServiceClient;
  [(HDHealthRecordsXPCServiceClient *)&v3 dealloc];
}

- (id)rulesVersionForFHIRDocumentExtractionWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HDHealthRecordsXPCServiceClient_rulesVersionForFHIRDocumentExtractionWithError___block_invoke;
  v11[3] = &unk_2796DCED8;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__HDHealthRecordsXPCServiceClient_rulesVersionForFHIRDocumentExtractionWithError___block_invoke_3;
  v10[3] = &unk_2796DBE78;
  v10[4] = &v12;
  [(HDHealthRecordsXPCServiceClient *)self _synchronousPerformWithProxyHandler:v11 errorHandler:v10];
  v4 = v19[5];
  if (!v4)
  {
    v5 = v13[5];
    v6 = v5;
    if (v5)
    {
      if (error)
      {
        v7 = v5;
        *error = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v4 = v19[5];
  }

  v8 = v4;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __82__HDHealthRecordsXPCServiceClient_rulesVersionForFHIRDocumentExtractionWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__HDHealthRecordsXPCServiceClient_rulesVersionForFHIRDocumentExtractionWithError___block_invoke_2;
  v3[3] = &unk_2796DCEB0;
  v4 = *(a1 + 32);
  return [a2 remote_rulesVersionForFHIRDocumentExtractionWithCompletion:v3];
}

void __82__HDHealthRecordsXPCServiceClient_rulesVersionForFHIRDocumentExtractionWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)supportedFHIRConfigurationWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HDHealthRecordsXPCServiceClient_supportedFHIRConfigurationWithError___block_invoke;
  v11[3] = &unk_2796DCED8;
  v11[4] = &v18;
  v11[5] = &v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__HDHealthRecordsXPCServiceClient_supportedFHIRConfigurationWithError___block_invoke_3;
  v10[3] = &unk_2796DBE78;
  v10[4] = &v12;
  [(HDHealthRecordsXPCServiceClient *)self _synchronousPerformWithProxyHandler:v11 errorHandler:v10];
  v4 = v19[5];
  if (!v4)
  {
    v5 = v13[5];
    v6 = v5;
    if (v5)
    {
      if (error)
      {
        v7 = v5;
        *error = v6;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v4 = v19[5];
  }

  v8 = v4;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __71__HDHealthRecordsXPCServiceClient_supportedFHIRConfigurationWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__HDHealthRecordsXPCServiceClient_supportedFHIRConfigurationWithError___block_invoke_2;
  v3[3] = &unk_2796DCF00;
  v4 = *(a1 + 32);
  return [a2 remote_supportedFHIRConfigurationWithCompletion:v3];
}

void __71__HDHealthRecordsXPCServiceClient_supportedFHIRConfigurationWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)executeFHIRReferenceExtractionRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  v7 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__HDHealthRecordsXPCServiceClient_executeFHIRReferenceExtractionRequest_completion___block_invoke;
  v12[3] = &unk_2796DCF28;
  v13 = requestCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HDHealthRecordsXPCServiceClient_executeFHIRReferenceExtractionRequest_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = requestCopy;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)executeFHIRExtractionRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  v7 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HDHealthRecordsXPCServiceClient_executeFHIRExtractionRequest_completion___block_invoke;
  v12[3] = &unk_2796DCF28;
  v13 = requestCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__HDHealthRecordsXPCServiceClient_executeFHIRExtractionRequest_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = requestCopy;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)compareExistingPatientResourceData:(id)data incomingPatientResourceData:(id)resourceData completion:(id)completion
{
  dataCopy = data;
  resourceDataCopy = resourceData;
  v10 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:completion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __109__HDHealthRecordsXPCServiceClient_compareExistingPatientResourceData_incomingPatientResourceData_completion___block_invoke;
  v16[3] = &unk_2796DCF50;
  v17 = dataCopy;
  v18 = resourceDataCopy;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__HDHealthRecordsXPCServiceClient_compareExistingPatientResourceData_incomingPatientResourceData_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = resourceDataCopy;
  v13 = dataCopy;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v16 errorHandler:v14];
}

- (void)extractAttachmentContentFromFHIRResource:(id)resource completion:(id)completion
{
  resourceCopy = resource;
  v7 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HDHealthRecordsXPCServiceClient_extractAttachmentContentFromFHIRResource_completion___block_invoke;
  v12[3] = &unk_2796DCF28;
  v13 = resourceCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__HDHealthRecordsXPCServiceClient_extractAttachmentContentFromFHIRResource_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = resourceCopy;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)optInDataForFHIRDocumentWithRequest:(id)request redactor:(id)redactor completion:(id)completion
{
  requestCopy = request;
  redactorCopy = redactor;
  v10 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:completion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__HDHealthRecordsXPCServiceClient_optInDataForFHIRDocumentWithRequest_redactor_completion___block_invoke;
  v16[3] = &unk_2796DCF50;
  v17 = requestCopy;
  v18 = redactorCopy;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__HDHealthRecordsXPCServiceClient_optInDataForFHIRDocumentWithRequest_redactor_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = redactorCopy;
  v13 = requestCopy;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v16 errorHandler:v14];
}

- (void)preprocessSignedClinicalData:(id)data options:(unint64_t)options completion:(id)completion
{
  dataCopy = data;
  v9 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__HDHealthRecordsXPCServiceClient_preprocessSignedClinicalData_options_completion___block_invoke;
  v14[3] = &unk_2796DCF78;
  v15 = dataCopy;
  optionsCopy = options;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HDHealthRecordsXPCServiceClient_preprocessSignedClinicalData_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = dataCopy;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v14 errorHandler:v12];
}

- (void)preprocessSignedClinicalDataFHIRResourceObject:(id)object options:(unint64_t)options completion:(id)completion
{
  objectCopy = object;
  v9 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__HDHealthRecordsXPCServiceClient_preprocessSignedClinicalDataFHIRResourceObject_options_completion___block_invoke;
  v14[3] = &unk_2796DCF78;
  v15 = objectCopy;
  optionsCopy = options;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__HDHealthRecordsXPCServiceClient_preprocessSignedClinicalDataFHIRResourceObject_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = objectCopy;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v14 errorHandler:v12];
}

- (void)reprocessOriginalSignedClinicalDataRecords:(id)records options:(unint64_t)options completion:(id)completion
{
  recordsCopy = records;
  v9 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__HDHealthRecordsXPCServiceClient_reprocessOriginalSignedClinicalDataRecords_options_completion___block_invoke;
  v14[3] = &unk_2796DCF78;
  v15 = recordsCopy;
  optionsCopy = options;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HDHealthRecordsXPCServiceClient_reprocessOriginalSignedClinicalDataRecords_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = recordsCopy;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v14 errorHandler:v12];
}

- (void)processOriginalSignedClinicalDataRecords:(id)records options:(unint64_t)options completion:(id)completion
{
  recordsCopy = records;
  v9 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__HDHealthRecordsXPCServiceClient_processOriginalSignedClinicalDataRecords_options_completion___block_invoke;
  v14[3] = &unk_2796DCF78;
  v15 = recordsCopy;
  optionsCopy = options;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__HDHealthRecordsXPCServiceClient_processOriginalSignedClinicalDataRecords_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = recordsCopy;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v14 errorHandler:v12];
}

- (void)processSignedClinicalDataContextCollection:(id)collection completion:(id)completion
{
  collectionCopy = collection;
  v7 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__HDHealthRecordsXPCServiceClient_processSignedClinicalDataContextCollection_completion___block_invoke;
  v12[3] = &unk_2796DCF28;
  v13 = collectionCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__HDHealthRecordsXPCServiceClient_processSignedClinicalDataContextCollection_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = collectionCopy;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)indexClinicalDocumentsWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  v7 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__HDHealthRecordsXPCServiceClient_indexClinicalDocumentsWithRequest_completion___block_invoke;
  v12[3] = &unk_2796DCF28;
  v13 = requestCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HDHealthRecordsXPCServiceClient_indexClinicalDocumentsWithRequest_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = requestCopy;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)fetchSpotlightSearchResultsForQueryString:(id)string completion:(id)completion
{
  stringCopy = string;
  v7 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:completion];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__HDHealthRecordsXPCServiceClient_fetchSpotlightSearchResultsForQueryString_completion___block_invoke;
  v12[3] = &unk_2796DCF28;
  v13 = stringCopy;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__HDHealthRecordsXPCServiceClient_fetchSpotlightSearchResultsForQueryString_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = stringCopy;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)_performWithProxyHandler:(id)handler errorHandler:(id)errorHandler
{
  handlerCopy = handler;
  v6 = [(_HKXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:errorHandler];
  if (v6)
  {
    handlerCopy[2](handlerCopy, v6);
  }
}

- (void)_synchronousPerformWithProxyHandler:(id)handler errorHandler:(id)errorHandler
{
  handlerCopy = handler;
  v6 = [(_HKXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:errorHandler];
  if (v6)
  {
    handlerCopy[2](handlerCopy, v6);
  }
}

- (id)_objectCompletionOnClientQueue:(id)queue
{
  queueCopy = queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HDHealthRecordsXPCServiceClient__objectCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_2796DC368;
  v8[4] = self;
  v9 = queueCopy;
  v5 = queueCopy;
  v6 = [v8 copy];

  return v6;
}

void __66__HDHealthRecordsXPCServiceClient__objectCompletionOnClientQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HDHealthRecordsXPCServiceClient__objectCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_2796DC340;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __66__HDHealthRecordsXPCServiceClient__objectCompletionOnClientQueue___block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (id)_actionCompletionOnClientQueue:(id)queue
{
  queueCopy = queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HDHealthRecordsXPCServiceClient__actionCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_2796DCFC8;
  v8[4] = self;
  v9 = queueCopy;
  v5 = queueCopy;
  v6 = [v8 copy];

  return v6;
}

void __66__HDHealthRecordsXPCServiceClient__actionCompletionOnClientQueue___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HDHealthRecordsXPCServiceClient__actionCompletionOnClientQueue___block_invoke_2;
  block[3] = &unk_2796DCFA0;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __66__HDHealthRecordsXPCServiceClient__actionCompletionOnClientQueue___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (id)exportedInterface
{
  v2 = objc_alloc_init(MEMORY[0x277CCAE90]);

  return v2;
}

@end