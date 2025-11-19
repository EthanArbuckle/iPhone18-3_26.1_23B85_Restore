@interface HDHealthRecordsXPCServiceClient
- (HDHealthRecordsXPCServiceClient)initWithListenerEndpoint:(id)a3;
- (id)_actionCompletionOnClientQueue:(id)a3;
- (id)_objectCompletionOnClientQueue:(id)a3;
- (id)exportedInterface;
- (id)rulesVersionForFHIRDocumentExtractionWithError:(id *)a3;
- (id)supportedFHIRConfigurationWithError:(id *)a3;
- (void)_performWithProxyHandler:(id)a3 errorHandler:(id)a4;
- (void)_synchronousPerformWithProxyHandler:(id)a3 errorHandler:(id)a4;
- (void)compareExistingPatientResourceData:(id)a3 incomingPatientResourceData:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)executeFHIRExtractionRequest:(id)a3 completion:(id)a4;
- (void)executeFHIRReferenceExtractionRequest:(id)a3 completion:(id)a4;
- (void)extractAttachmentContentFromFHIRResource:(id)a3 completion:(id)a4;
- (void)fetchSpotlightSearchResultsForQueryString:(id)a3 completion:(id)a4;
- (void)indexClinicalDocumentsWithRequest:(id)a3 completion:(id)a4;
- (void)optInDataForFHIRDocumentWithRequest:(id)a3 redactor:(id)a4 completion:(id)a5;
- (void)preprocessSignedClinicalData:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)preprocessSignedClinicalDataFHIRResourceObject:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)processOriginalSignedClinicalDataRecords:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)processSignedClinicalDataContextCollection:(id)a3 completion:(id)a4;
- (void)reprocessOriginalSignedClinicalDataRecords:(id)a3 options:(unint64_t)a4 completion:(id)a5;
@end

@implementation HDHealthRecordsXPCServiceClient

- (HDHealthRecordsXPCServiceClient)initWithListenerEndpoint:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDHealthRecordsXPCServiceClient;
  v5 = [(HDHealthRecordsXPCServiceClient *)&v12 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueue();
    clientQueue = v5->_clientQueue;
    v5->_clientQueue = v6;

    v8 = objc_alloc(MEMORY[0x277CCDE80]);
    if (v4)
    {
      v9 = [v8 initWithListenerEndpoint:v4];
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

- (id)rulesVersionForFHIRDocumentExtractionWithError:(id *)a3
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
      if (a3)
      {
        v7 = v5;
        *a3 = v6;
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

- (id)supportedFHIRConfigurationWithError:(id *)a3
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
      if (a3)
      {
        v7 = v5;
        *a3 = v6;
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

- (void)executeFHIRReferenceExtractionRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__HDHealthRecordsXPCServiceClient_executeFHIRReferenceExtractionRequest_completion___block_invoke;
  v12[3] = &unk_2796DCF28;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HDHealthRecordsXPCServiceClient_executeFHIRReferenceExtractionRequest_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)executeFHIRExtractionRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HDHealthRecordsXPCServiceClient_executeFHIRExtractionRequest_completion___block_invoke;
  v12[3] = &unk_2796DCF28;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__HDHealthRecordsXPCServiceClient_executeFHIRExtractionRequest_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)compareExistingPatientResourceData:(id)a3 incomingPatientResourceData:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:a5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __109__HDHealthRecordsXPCServiceClient_compareExistingPatientResourceData_incomingPatientResourceData_completion___block_invoke;
  v16[3] = &unk_2796DCF50;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__HDHealthRecordsXPCServiceClient_compareExistingPatientResourceData_incomingPatientResourceData_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v16 errorHandler:v14];
}

- (void)extractAttachmentContentFromFHIRResource:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HDHealthRecordsXPCServiceClient_extractAttachmentContentFromFHIRResource_completion___block_invoke;
  v12[3] = &unk_2796DCF28;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__HDHealthRecordsXPCServiceClient_extractAttachmentContentFromFHIRResource_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)optInDataForFHIRDocumentWithRequest:(id)a3 redactor:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:a5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__HDHealthRecordsXPCServiceClient_optInDataForFHIRDocumentWithRequest_redactor_completion___block_invoke;
  v16[3] = &unk_2796DCF50;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__HDHealthRecordsXPCServiceClient_optInDataForFHIRDocumentWithRequest_redactor_completion___block_invoke_2;
  v14[3] = &unk_2796DBFF8;
  v15 = v19;
  v11 = v19;
  v12 = v9;
  v13 = v8;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v16 errorHandler:v14];
}

- (void)preprocessSignedClinicalData:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__HDHealthRecordsXPCServiceClient_preprocessSignedClinicalData_options_completion___block_invoke;
  v14[3] = &unk_2796DCF78;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HDHealthRecordsXPCServiceClient_preprocessSignedClinicalData_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v14 errorHandler:v12];
}

- (void)preprocessSignedClinicalDataFHIRResourceObject:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__HDHealthRecordsXPCServiceClient_preprocessSignedClinicalDataFHIRResourceObject_options_completion___block_invoke;
  v14[3] = &unk_2796DCF78;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__HDHealthRecordsXPCServiceClient_preprocessSignedClinicalDataFHIRResourceObject_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v14 errorHandler:v12];
}

- (void)reprocessOriginalSignedClinicalDataRecords:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__HDHealthRecordsXPCServiceClient_reprocessOriginalSignedClinicalDataRecords_options_completion___block_invoke;
  v14[3] = &unk_2796DCF78;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HDHealthRecordsXPCServiceClient_reprocessOriginalSignedClinicalDataRecords_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v14 errorHandler:v12];
}

- (void)processOriginalSignedClinicalDataRecords:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__HDHealthRecordsXPCServiceClient_processOriginalSignedClinicalDataRecords_options_completion___block_invoke;
  v14[3] = &unk_2796DCF78;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__HDHealthRecordsXPCServiceClient_processOriginalSignedClinicalDataRecords_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v14 errorHandler:v12];
}

- (void)processSignedClinicalDataContextCollection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__HDHealthRecordsXPCServiceClient_processSignedClinicalDataContextCollection_completion___block_invoke;
  v12[3] = &unk_2796DCF28;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__HDHealthRecordsXPCServiceClient_processSignedClinicalDataContextCollection_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)indexClinicalDocumentsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__HDHealthRecordsXPCServiceClient_indexClinicalDocumentsWithRequest_completion___block_invoke;
  v12[3] = &unk_2796DCF28;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HDHealthRecordsXPCServiceClient_indexClinicalDocumentsWithRequest_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)fetchSpotlightSearchResultsForQueryString:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HDHealthRecordsXPCServiceClient *)self _objectCompletionOnClientQueue:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__HDHealthRecordsXPCServiceClient_fetchSpotlightSearchResultsForQueryString_completion___block_invoke;
  v12[3] = &unk_2796DCF28;
  v13 = v6;
  v14 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__HDHealthRecordsXPCServiceClient_fetchSpotlightSearchResultsForQueryString_completion___block_invoke_2;
  v10[3] = &unk_2796DBFF8;
  v11 = v14;
  v8 = v14;
  v9 = v6;
  [(HDHealthRecordsXPCServiceClient *)self _performWithProxyHandler:v12 errorHandler:v10];
}

- (void)_performWithProxyHandler:(id)a3 errorHandler:(id)a4
{
  v7 = a3;
  v6 = [(_HKXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:a4];
  if (v6)
  {
    v7[2](v7, v6);
  }
}

- (void)_synchronousPerformWithProxyHandler:(id)a3 errorHandler:(id)a4
{
  v7 = a3;
  v6 = [(_HKXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:a4];
  if (v6)
  {
    v7[2](v7, v6);
  }
}

- (id)_objectCompletionOnClientQueue:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HDHealthRecordsXPCServiceClient__objectCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_2796DC368;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
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

- (id)_actionCompletionOnClientQueue:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HDHealthRecordsXPCServiceClient__actionCompletionOnClientQueue___block_invoke;
  v8[3] = &unk_2796DCFC8;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
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