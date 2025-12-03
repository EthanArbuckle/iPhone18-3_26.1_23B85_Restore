@interface HDDocumentQueryServer
- (BOOL)validateConfiguration:(id *)configuration;
- (HDDocumentQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_unsupportedDocumentTypeError;
- (uint64_t)_deliverAuthorizedSamplesToClient:(uint64_t)client errorOut:;
- (void)_queue_start;
@end

@implementation HDDocumentQueryServer

- (HDDocumentQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = HDDocumentQueryServer;
  v11 = [(HDQueryServer *)&v16 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v11->_maxResults = [configurationCopy limit];
    sortDescriptors = [configurationCopy sortDescriptors];
    sortDescriptors = v11->_sortDescriptors;
    v11->_sortDescriptors = sortDescriptors;

    v11->_includeDocumentData = [configurationCopy includeDocumentData];
    v11->_suspended = 0;
    authorizedSamples = v11->_authorizedSamples;
    v11->_authorizedSamples = 0;

    v11->_clientSampleIndex = 0;
  }

  return v11;
}

- (BOOL)validateConfiguration:(id *)configuration
{
  objectType = [(HDQueryServer *)self objectType];
  code = [objectType code];

  if (code == 107)
  {
    v10.receiver = self;
    v10.super_class = HDDocumentQueryServer;
    return [(HDQueryServer *)&v10 validateConfiguration:configuration];
  }

  else
  {
    _unsupportedDocumentTypeError = [(HDDocumentQueryServer *)self _unsupportedDocumentTypeError];
    if (_unsupportedDocumentTypeError)
    {
      if (configuration)
      {
        v9 = _unsupportedDocumentTypeError;
        *configuration = _unsupportedDocumentTypeError;
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
  selfCopy = self;
  if (self)
  {
    v2 = MEMORY[0x277CCA9B8];
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    objectType = [selfCopy objectType];
    selfCopy = [v2 hk_errorForInvalidArgument:@"@" class:v3 selector:sel__unsupportedDocumentTypeError format:{@"[%@] Unsupported document type: %@", v4, objectType}];
  }

  return selfCopy;
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

- (uint64_t)_deliverAuthorizedSamplesToClient:(uint64_t)client errorOut:
{
  v4 = a2;
  if (self)
  {
    v5 = [*(self + 216) count];
    if (*(self + 224) < v5)
    {
      v21 = 0x283C2F1E8;
      while (1)
      {
        if ([self _shouldStopProcessingQuery])
        {
          goto LABEL_17;
        }

        if ([self _shouldSuspendQuery])
        {
          *(self + 208) = 1;
          goto LABEL_17;
        }

        v6 = [*(self + 216) objectAtIndex:*(self + 224)];
        v7 = v4;
        v24 = 0;
        v25 = &v24;
        v26 = 0x3032000000;
        v27 = __Block_byref_object_copy__1;
        v28 = __Block_byref_object_dispose__1;
        v8 = v6;
        v9 = v8;
        v29 = v8;
        if (*(self + 232) != 1)
        {
          break;
        }

        uUID = [v8 UUID];
        v11 = HDDataEntityPredicateForDataUUID();

        newDataEntityEnumerator = [self newDataEntityEnumerator];
        [newDataEntityEnumerator setPredicate:v11];
        objectType = [self objectType];
        code = [objectType code];

        if (code == 107)
        {
          [newDataEntityEnumerator setEncodingOption:MEMORY[0x277CBEC38] forKey:0x283C2F1C8];
          [newDataEntityEnumerator setEncodingOption:MEMORY[0x277CBEC38] forKey:v21];
        }

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __59__HDDocumentQueryServer__deliverOneSample_client_errorOut___block_invoke;
        v23[3] = &unk_278613718;
        v23[4] = &v24;
        v15 = [newDataEntityEnumerator enumerateWithError:client handler:v23];

        v16 = v25[5];
        if (v16)
        {
          goto LABEL_12;
        }

LABEL_13:
        _Block_object_dispose(&v24, 8);

        if (!v15)
        {
          self = 0;
          goto LABEL_20;
        }

        v18 = *(self + 224) + 1;
        *(self + 224) = v18;
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
      queryUUID = [self queryUUID];
      [v7 client_deliverDocument:v16 query:queryUUID];

      goto LABEL_13;
    }

LABEL_17:
    if (*(self + 224) >= v5)
    {
      queryUUID2 = [self queryUUID];
      [v4 client_deliverDocument:0 query:queryUUID2];
    }

    self = 1;
  }

LABEL_20:

  return self;
}

- (void)_queue_start
{
  v49 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = HDDocumentQueryServer;
  [(HDQueryServer *)&v42 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
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
    objectType = [(HDQueryServer *)self objectType];
    code = [objectType code];

    if (code == 107)
    {
      sampleType = [(HDQueryServer *)self sampleType];
      v13 = [(HDQueryServer *)self authorizationStatusRecordForType:sampleType error:&v41];

      if (v13)
      {
        if ([v13 canRead])
        {
          newDataEntityEnumerator = [(HDQueryServer *)self newDataEntityEnumerator];
          filter = [(HDQueryServer *)self filter];
          [newDataEntityEnumerator setFilter:filter];

          restrictedSourceEntities = [v13 restrictedSourceEntities];
          [newDataEntityEnumerator setRestrictedSourceEntities:restrictedSourceEntities];

          sampleAuthorizationFilter = [(HDQueryServer *)self sampleAuthorizationFilter];
          [newDataEntityEnumerator setAuthorizationFilter:sampleAuthorizationFilter];

          [newDataEntityEnumerator setSortDescriptors:v9];
          objectType2 = [(HDQueryServer *)self objectType];
          v19 = [objectType2 code] == 107;

          if (v19)
          {
            [newDataEntityEnumerator setEncodingOption:MEMORY[0x277CBEC38] forKey:0x283C2F1C8];
          }

          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __81__HDDocumentQueryServer__samplesBeforeAuthorizationWithSortDescriptors_errorOut___block_invoke;
          v43[3] = &unk_2786136F0;
          v43[4] = self;
          v43[5] = &buf;
          [newDataEntityEnumerator enumerateWithError:&v41 handler:v43];
        }

        v6 = *(*(&buf + 1) + 40);
        goto LABEL_17;
      }
    }

    else
    {
      _unsupportedDocumentTypeError = [(HDDocumentQueryServer *)self _unsupportedDocumentTypeError];
      v21 = _unsupportedDocumentTypeError;
      if (_unsupportedDocumentTypeError)
      {
        v22 = _unsupportedDocumentTypeError;
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
      queryUUID = [(HDQueryServer *)self queryUUID];
      [clientProxy client_deliverError:v24 forQuery:queryUUID];
    }

    else
    {
      self->_clientSampleIndex = 0;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v36 = __37__HDDocumentQueryServer__queue_start__block_invoke;
      v37 = &unk_278613740;
      selfCopy = self;
      v39 = clientProxy;
      v40 = a2;
      v6 = v6;
      v25 = v35;
      objectType3 = [(HDQueryServer *)self objectType];
      code2 = [objectType3 code];

      if (code2 == 107)
      {
        delegate = [(HDQueryServer *)self delegate];
        v29 = v6;
        v30 = [[HDObjectAuthorizationRequestContext alloc] initWithSamples:v29 metadata:0];

        [(HDObjectAuthorizationRequestContext *)v30 setPersistSession:0];
        [(HDObjectAuthorizationRequestContext *)v30 setPromptWithNoSamples:0];
        [delegate queryServer:self requestsAuthorizationWithContext:v30 completion:v25];
      }

      else
      {
        delegate = [(HDDocumentQueryServer *)self _unsupportedDocumentTypeError];
        v36(v25, 0, delegate);
      }

      queryUUID = 0;
    }

    goto LABEL_23;
  }

  self->_suspended = 0;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_DEBUG))
  {
    v32 = v5;
    queryUUID2 = [(HDQueryServer *)self queryUUID];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = queryUUID2;
    _os_log_debug_impl(&dword_228986000, v32, OS_LOG_TYPE_DEBUG, "resume query %{public}@.", &buf, 0xCu);
  }

  v34 = 0;
  [(HDDocumentQueryServer *)self _deliverAuthorizedSamplesToClient:clientProxy errorOut:&v34];
  v6 = v34;
  if (v6)
  {
    queryUUID = [(HDQueryServer *)self queryUUID];
    [clientProxy client_deliverError:v6 forQuery:queryUUID];
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