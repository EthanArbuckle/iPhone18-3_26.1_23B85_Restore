@interface HDDocumentQueryServer
- (BOOL)validateConfiguration:(id *)a3;
- (HDDocumentQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_unsupportedDocumentTypeError;
- (uint64_t)_deliverAuthorizedSamplesToClient:(uint64_t)a3 errorOut:;
- (void)_queue_start;
@end

@implementation HDDocumentQueryServer

- (HDDocumentQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v16.receiver = self;
  v16.super_class = HDDocumentQueryServer;
  v11 = [(HDQueryServer *)&v16 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v11->_maxResults = [v10 limit];
    v12 = [v10 sortDescriptors];
    sortDescriptors = v11->_sortDescriptors;
    v11->_sortDescriptors = v12;

    v11->_includeDocumentData = [v10 includeDocumentData];
    v11->_suspended = 0;
    authorizedSamples = v11->_authorizedSamples;
    v11->_authorizedSamples = 0;

    v11->_clientSampleIndex = 0;
  }

  return v11;
}

- (BOOL)validateConfiguration:(id *)a3
{
  v5 = [(HDQueryServer *)self objectType];
  v6 = [v5 code];

  if (v6 == 107)
  {
    v10.receiver = self;
    v10.super_class = HDDocumentQueryServer;
    return [(HDQueryServer *)&v10 validateConfiguration:a3];
  }

  else
  {
    v8 = [(HDDocumentQueryServer *)self _unsupportedDocumentTypeError];
    if (v8)
    {
      if (a3)
      {
        v9 = v8;
        *a3 = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    return 0;
  }
}

- (id)_unsupportedDocumentTypeError
{
  v1 = a1;
  if (a1)
  {
    v2 = MEMORY[0x277CCA9B8];
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = [v1 objectType];
    v1 = [v2 hk_errorForInvalidArgument:@"@" class:v3 selector:sel__unsupportedDocumentTypeError format:{@"[%@] Unsupported document type: %@", v4, v5}];
  }

  return v1;
}

uint64_t __81__HDDocumentQueryServer__samplesBeforeAuthorizationWithSortDescriptors_errorOut___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldStopProcessingQuery])
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  else
  {
    v6 = [*(a1 + 32) _shouldSuspendQuery];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    if (!v6)
    {
      [v8 addObject:v3];
      v9 = 1;
      goto LABEL_7;
    }

    *(v7 + 40) = 0;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (uint64_t)_deliverAuthorizedSamplesToClient:(uint64_t)a3 errorOut:
{
  v4 = a2;
  if (a1)
  {
    v5 = [*(a1 + 216) count];
    if (*(a1 + 224) < v5)
    {
      v21 = 0x283C2F1E8;
      while (1)
      {
        if ([a1 _shouldStopProcessingQuery])
        {
          goto LABEL_17;
        }

        if ([a1 _shouldSuspendQuery])
        {
          *(a1 + 208) = 1;
          goto LABEL_17;
        }

        v6 = [*(a1 + 216) objectAtIndex:*(a1 + 224)];
        v7 = v4;
        v24 = 0;
        v25 = &v24;
        v26 = 0x3032000000;
        v27 = __Block_byref_object_copy__1;
        v28 = __Block_byref_object_dispose__1;
        v8 = v6;
        v9 = v8;
        v29 = v8;
        if (*(a1 + 232) != 1)
        {
          break;
        }

        v10 = [v8 UUID];
        v11 = HDDataEntityPredicateForDataUUID();

        v12 = [a1 newDataEntityEnumerator];
        [v12 setPredicate:v11];
        v13 = [a1 objectType];
        v14 = [v13 code];

        if (v14 == 107)
        {
          [v12 setEncodingOption:MEMORY[0x277CBEC38] forKey:0x283C2F1C8];
          [v12 setEncodingOption:MEMORY[0x277CBEC38] forKey:v21];
        }

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __59__HDDocumentQueryServer__deliverOneSample_client_errorOut___block_invoke;
        v23[3] = &unk_278613718;
        v23[4] = &v24;
        v15 = [v12 enumerateWithError:a3 handler:v23];

        v16 = v25[5];
        if (v16)
        {
          goto LABEL_12;
        }

LABEL_13:
        _Block_object_dispose(&v24, 8);

        if (!v15)
        {
          a1 = 0;
          goto LABEL_20;
        }

        v18 = *(a1 + 224) + 1;
        *(a1 + 224) = v18;
        if (v18 >= v5)
        {
          goto LABEL_17;
        }
      }

      v15 = 1;
      v16 = v8;
      if (!v8)
      {
        goto LABEL_13;
      }

LABEL_12:
      v17 = [a1 queryUUID];
      [v7 client_deliverDocument:v16 query:v17];

      goto LABEL_13;
    }

LABEL_17:
    if (*(a1 + 224) >= v5)
    {
      v19 = [a1 queryUUID];
      [v4 client_deliverDocument:0 query:v19];
    }

    a1 = 1;
  }

LABEL_20:

  return a1;
}

- (void)_queue_start
{
  v49 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = HDDocumentQueryServer;
  [(HDQueryServer *)&v42 _queue_start];
  v4 = [(HDQueryServer *)self clientProxy];
  if (!self->_suspended)
  {
    sortDescriptors = self->_sortDescriptors;
    v41 = 0;
    v9 = sortDescriptors;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__1;
    v47 = __Block_byref_object_dispose__1;
    v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [(HDQueryServer *)self objectType];
    v11 = [v10 code];

    if (v11 == 107)
    {
      v12 = [(HDQueryServer *)self sampleType];
      v13 = [(HDQueryServer *)self authorizationStatusRecordForType:v12 error:&v41];

      if (v13)
      {
        if ([v13 canRead])
        {
          v14 = [(HDQueryServer *)self newDataEntityEnumerator];
          v15 = [(HDQueryServer *)self filter];
          [v14 setFilter:v15];

          v16 = [v13 restrictedSourceEntities];
          [v14 setRestrictedSourceEntities:v16];

          v17 = [(HDQueryServer *)self sampleAuthorizationFilter];
          [v14 setAuthorizationFilter:v17];

          [v14 setSortDescriptors:v9];
          v18 = [(HDQueryServer *)self objectType];
          v19 = [v18 code] == 107;

          if (v19)
          {
            [v14 setEncodingOption:MEMORY[0x277CBEC38] forKey:0x283C2F1C8];
          }

          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __81__HDDocumentQueryServer__samplesBeforeAuthorizationWithSortDescriptors_errorOut___block_invoke;
          v43[3] = &unk_2786136F0;
          v43[4] = self;
          v43[5] = &buf;
          [v14 enumerateWithError:&v41 handler:v43];
        }

        v6 = *(*(&buf + 1) + 40);
        goto LABEL_17;
      }
    }

    else
    {
      v20 = [(HDDocumentQueryServer *)self _unsupportedDocumentTypeError];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
        v41 = v21;
      }

      v13 = 0;
    }

    v6 = 0;
LABEL_17:

    _Block_object_dispose(&buf, 8);
    v23 = v41;
    if (v23)
    {
      v24 = v23;
      v7 = [(HDQueryServer *)self queryUUID];
      [v4 client_deliverError:v24 forQuery:v7];
    }

    else
    {
      self->_clientSampleIndex = 0;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v36 = __37__HDDocumentQueryServer__queue_start__block_invoke;
      v37 = &unk_278613740;
      v38 = self;
      v39 = v4;
      v40 = a2;
      v6 = v6;
      v25 = v35;
      v26 = [(HDQueryServer *)self objectType];
      v27 = [v26 code];

      if (v27 == 107)
      {
        v28 = [(HDQueryServer *)self delegate];
        v29 = v6;
        v30 = [[HDObjectAuthorizationRequestContext alloc] initWithSamples:v29 metadata:0];

        [(HDObjectAuthorizationRequestContext *)v30 setPersistSession:0];
        [(HDObjectAuthorizationRequestContext *)v30 setPromptWithNoSamples:0];
        [v28 queryServer:self requestsAuthorizationWithContext:v30 completion:v25];
      }

      else
      {
        v28 = [(HDDocumentQueryServer *)self _unsupportedDocumentTypeError];
        v36(v25, 0, v28);
      }

      v7 = 0;
    }

    goto LABEL_23;
  }

  self->_suspended = 0;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
  {
    v32 = v5;
    v33 = [(HDQueryServer *)self queryUUID];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v33;
    _os_log_debug_impl(&dword_228986000, v32, OS_LOG_TYPE_DEBUG, "resume query %{public}@.", &buf, 0xCu);
  }

  v34 = 0;
  [(HDDocumentQueryServer *)self _deliverAuthorizedSamplesToClient:v4 errorOut:&v34];
  v6 = v34;
  if (v6)
  {
    v7 = [(HDQueryServer *)self queryUUID];
    [v4 client_deliverError:v6 forQuery:v7];
LABEL_23:
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __37__HDDocumentQueryServer__queue_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__HDDocumentQueryServer__queue_start__block_invoke_2;
    v14[3] = &unk_2786131A8;
    v14[4] = v8;
    v15 = v5;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v16 = v9;
    v17 = v10;
    [v8 scheduleDatabaseAccessOnQueueWithBlock:v14];
  }

  else
  {
    if (!v6)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"HDDocumentQueryServer.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
    }

    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) queryUUID];
    [v11 client_deliverError:v7 forQuery:v12];
  }
}

void __37__HDDocumentQueryServer__queue_start__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 216), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v10 = 0;
  v4 = [(HDDocumentQueryServer *)v2 _deliverAuthorizedSamplesToClient:v3 errorOut:&v10];
  v5 = v10;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    if (!v5)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"HDDocumentQueryServer.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"secondPassError != nil"}];
    }

    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) queryUUID];
    [v7 client_deliverError:v6 forQuery:v8];
  }
}

@end