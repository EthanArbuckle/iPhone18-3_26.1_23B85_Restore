@interface DRServerManager
- (DRServerManager)init;
- (id)getClientFromClientDictionary:(id)dictionary fromAvail:(BOOL)avail;
- (id)identifierFromOptions:(id)options;
- (void)addAvailableDataTypesToClient:(id)client dataTypes:(unint64_t)types connectionID:(unsigned int)d completion:(id)completion;
- (void)addRequestedDataTypes:(id)types types:(unint64_t)a4;
- (void)removeAvailableDataTypesToClient:(id)client dataTypes:(unint64_t)types connectionID:(unsigned int)d completion:(id)completion;
- (void)removeRequestedDataTypes:(id)types types:(unint64_t)a4;
- (void)setupAAS;
- (void)setupRapport;
@end

@implementation DRServerManager

- (DRServerManager)init
{
  v12.receiver = self;
  v12.super_class = DRServerManager;
  v2 = [(DRServerManager *)&v12 init];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  clientDictionary = v2->_clientDictionary;
  v2->_clientDictionary = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cidDictionary = v2->_cidDictionary;
  v2->_cidDictionary = v5;

  data = [MEMORY[0x277CBEA90] data];
  wxRoute = v2->_wxRoute;
  v2->_wxRoute = data;

  v9 = dispatch_queue_create("com.apple.DataRelay.clientDictionaryQueue", 0);
  clientDictionaryQueue = v2->_clientDictionaryQueue;
  v2->_clientDictionaryQueue = v9;

  [(DRServerManager *)v2 setupRapport];
  [(DRServerManager *)v2 setupAAS];
  return v2;
}

- (void)addRequestedDataTypes:(id)types types:(unint64_t)a4
{
  typesCopy = types;
  v7 = [(DRServerManager *)self getClientFromClientDictionary:typesCopy fromAvail:0];
  if (gLogCategory_DRServerManager <= 50 && (gLogCategory_DRServerManager != -1 || _LogCategory_Initialize()))
  {
    [DRServerManager addRequestedDataTypes:a4 types:?];
  }

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__DRServerManager_addRequestedDataTypes_types___block_invoke;
  v9[3] = &unk_278F4EC58;
  objc_copyWeak(&v11, &location);
  v8 = typesCopy;
  v10 = v8;
  [v7 addRequestedDataTypes:a4 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __47__DRServerManager_addRequestedDataTypes_types___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = +[DataRelayAnalytics getInstance];
    [v4 updateSetupReturnStatus:v3];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained clientDictionary];
    [v5 setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

- (void)removeRequestedDataTypes:(id)types types:(unint64_t)a4
{
  typesCopy = types;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy_;
  v13[4] = __Block_byref_object_dispose_;
  v14 = 0;
  clientDictionaryQueue = self->_clientDictionaryQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__DRServerManager_removeRequestedDataTypes_types___block_invoke;
  v9[3] = &unk_278F4ECA8;
  v9[4] = self;
  v10 = typesCopy;
  v11 = v13;
  v12 = a4;
  v8 = typesCopy;
  dispatch_sync(clientDictionaryQueue, v9);

  _Block_object_dispose(v13, 8);
}

void __50__DRServerManager_removeRequestedDataTypes_types___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_initWeak(&location, *(a1 + 32));
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(*(v5 + 8) + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__DRServerManager_removeRequestedDataTypes_types___block_invoke_2;
  v8[3] = &unk_278F4EC80;
  v10 = v5;
  objc_copyWeak(&v11, &location);
  v9 = *(a1 + 40);
  [v7 removeRequestedDataTypes:v6 completion:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__DRServerManager_removeRequestedDataTypes_types___block_invoke_2(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) shouldDeactivate])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = [WeakRetained clientDictionaryQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __50__DRServerManager_removeRequestedDataTypes_types___block_invoke_3;
    v4[3] = &unk_278F4EB70;
    v5 = *(a1 + 32);
    objc_copyWeak(&v6, (a1 + 48));
    dispatch_async(v3, v4);

    objc_destroyWeak(&v6);
  }
}

void __50__DRServerManager_removeRequestedDataTypes_types___block_invoke_3(uint64_t a1)
{
  v2 = +[DataRelayAnalytics getInstance];
  [v2 setDRSessionEnded];

  if (gLogCategory_DRServerManager <= 40 && (gLogCategory_DRServerManager != -1 || _LogCategory_Initialize()))
  {
    __50__DRServerManager_removeRequestedDataTypes_types___block_invoke_3_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained clientDictionary];
  [v3 removeObjectForKey:*(a1 + 32)];
}

- (void)addAvailableDataTypesToClient:(id)client dataTypes:(unint64_t)types connectionID:(unsigned int)d completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  v12 = [(DRServerManager *)self getClientFromClientDictionary:clientCopy fromAvail:1];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__DRServerManager_addAvailableDataTypesToClient_dataTypes_connectionID_completion___block_invoke;
  v15[3] = &unk_278F4ECD0;
  objc_copyWeak(v19, &location);
  v13 = clientCopy;
  v16 = v13;
  v14 = completionCopy;
  selfCopy = self;
  v18 = v14;
  dCopy = d;
  v19[1] = types;
  [v12 addAvailableDataTypes:types completion:v15];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __83__DRServerManager_addAvailableDataTypesToClient_dataTypes_connectionID_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    v3 = +[DataRelayAnalytics getInstance];
    [v3 updateSetupReturnStatus:v9];

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = [WeakRetained clientDictionary];
    [v5 setObject:0 forKeyedSubscript:*(a1 + 32)];

    v6 = *(a1 + 48);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = *(v6 + 16);
  }

  else
  {
    [*(a1 + 40) addToCidDictionary:*(a1 + 72) idsIdentifier:*(a1 + 32) dataTypes:*(a1 + 64)];
    v8 = *(a1 + 48);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *(v8 + 16);
  }

  v7();
LABEL_7:
}

- (void)removeAvailableDataTypesToClient:(id)client dataTypes:(unint64_t)types connectionID:(unsigned int)d completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy_;
  v22[4] = __Block_byref_object_dispose_;
  v23 = 0;
  objc_initWeak(&location, self);
  clientDictionaryQueue = self->_clientDictionaryQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__DRServerManager_removeAvailableDataTypesToClient_dataTypes_connectionID_completion___block_invoke;
  v15[3] = &unk_278F4ED20;
  v15[4] = self;
  v16 = clientCopy;
  dCopy = d;
  v19[1] = types;
  v17 = completionCopy;
  v18 = v22;
  v13 = completionCopy;
  v14 = clientCopy;
  objc_copyWeak(v19, &location);
  dispatch_sync(clientDictionaryQueue, v15);
  objc_destroyWeak(v19);

  objc_destroyWeak(&location);
  _Block_object_dispose(v22, 8);
}

void __86__DRServerManager_removeAvailableDataTypesToClient_dataTypes_connectionID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) removeFromCidDictionary:*(a1 + 80) idsIdentifier:*(a1 + 40) dataTypes:*(a1 + 72)];
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = *(a1 + 72);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__DRServerManager_removeAvailableDataTypesToClient_dataTypes_connectionID_completion___block_invoke_2;
  v9[3] = &unk_278F4ECF8;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = v7;
  v12 = v8;
  objc_copyWeak(&v13, (a1 + 64));
  v10 = *(a1 + 40);
  [v5 removeAvailableDataTypes:v6 completion:v9];

  objc_destroyWeak(&v13);
}

void __86__DRServerManager_removeAvailableDataTypesToClient_dataTypes_connectionID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  if ([*(*(*(a1 + 48) + 8) + 40) shouldDeactivate])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v6 = [WeakRetained clientDictionaryQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __86__DRServerManager_removeAvailableDataTypesToClient_dataTypes_connectionID_completion___block_invoke_3;
    v7[3] = &unk_278F4EB70;
    v8 = *(a1 + 32);
    objc_copyWeak(&v9, (a1 + 56));
    dispatch_async(v6, v7);

    objc_destroyWeak(&v9);
  }
}

void __86__DRServerManager_removeAvailableDataTypesToClient_dataTypes_connectionID_completion___block_invoke_3(uint64_t a1)
{
  v2 = +[DataRelayAnalytics getInstance];
  [v2 setDRSessionEnded];

  if (gLogCategory_DRServerManager <= 40 && (gLogCategory_DRServerManager != -1 || _LogCategory_Initialize()))
  {
    __86__DRServerManager_removeAvailableDataTypesToClient_dataTypes_connectionID_completion___block_invoke_3_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained clientDictionary];
  [v3 removeObjectForKey:*(a1 + 32)];
}

- (id)getClientFromClientDictionary:(id)dictionary fromAvail:(BOOL)avail
{
  dictionaryCopy = dictionary;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  clientDictionaryQueue = self->_clientDictionaryQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__DRServerManager_getClientFromClientDictionary_fromAvail___block_invoke;
  v11[3] = &unk_278F4ED48;
  v12 = dictionaryCopy;
  v13 = &v15;
  v11[4] = self;
  availCopy = avail;
  v8 = dictionaryCopy;
  dispatch_sync(clientDictionaryQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __59__DRServerManager_getClientFromClientDictionary_fromAvail___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(v2[1] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(v2[1] + 8) + 40))
  {
    if (gLogCategory_DRServerManager <= 50 && (gLogCategory_DRServerManager != -1 || _LogCategory_Initialize()))
    {
      __59__DRServerManager_getClientFromClientDictionary_fromAvail___block_invoke_cold_1(v2, a1);
    }

    v6 = [[DRClient alloc] initWithIdentifier:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(*(a1 + 32) + 16) setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 40)];
    [*(*(*(a1 + 48) + 8) + 40) setWxRoute:*(*(a1 + 32) + 40)];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__DRServerManager_getClientFromClientDictionary_fromAvail___block_invoke_2;
    v11[3] = &unk_278F4E898;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    [*(*(*(a1 + 48) + 8) + 40) setInternalDisconnectHandler:v11];
  }
}

uint64_t __59__DRServerManager_getClientFromClientDictionary_fromAvail___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_DRServerManager <= 50 && (gLogCategory_DRServerManager != -1 || _LogCategory_Initialize()))
  {
    __59__DRServerManager_getClientFromClientDictionary_fromAvail___block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 removeRequestedDataTypes:v3 types:-1];
}

- (id)identifierFromOptions:(id)options
{
  v3 = *MEMORY[0x277D442E8];
  optionsCopy = options;
  Int64 = CFDictionaryGetInt64();
  v6 = MEMORY[0x277D442D0];
  if (Int64 < 0)
  {
    v6 = MEMORY[0x277D442A8];
  }

  v7 = [optionsCopy objectForKeyedSubscript:*v6];

  return v7;
}

- (void)setupRapport
{
  if (gLogCategory_DRServerManager <= 50 && (gLogCategory_DRServerManager != -1 || _LogCategory_Initialize()))
  {
    [DRServerManager setupRapport];
  }

  v3 = objc_alloc_init(MEMORY[0x277D44160]);
  rapportClient = self->_rapportClient;
  self->_rapportClient = v3;

  [(RPCompanionLinkClient *)self->_rapportClient setControlFlags:46];
  objc_initWeak(&location, self);
  v5 = self->_rapportClient;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__DRServerManager_setupRapport__block_invoke;
  v10[3] = &unk_278F4EBE8;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  [(RPCompanionLinkClient *)v5 registerRequestID:@"com.apple.datarelay.addrequesteddatatypes" options:0 handler:v10];
  v6 = self->_rapportClient;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__DRServerManager_setupRapport__block_invoke_2;
  v8[3] = &unk_278F4EBE8;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  [(RPCompanionLinkClient *)v6 registerRequestID:@"com.apple.datarelay.removerequesteddatatypes" options:0 handler:v8];
  [(RPCompanionLinkClient *)self->_rapportClient activateWithCompletion:&__block_literal_global_2];
  if (gLogCategory_DRServerManager <= 50 && (gLogCategory_DRServerManager != -1 || _LogCategory_Initialize()))
  {
    v7 = [(RPCompanionLinkClient *)self->_rapportClient description];
    LogPrintF();
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __31__DRServerManager_setupRapport__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a2;
  v12 = [v7 identifierFromOptions:a3];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [v9 objectForKey:@"dataTypes"];

  [WeakRetained addRequestedDataTypes:v12 types:{objc_msgSend(v11, "unsignedLongLongValue")}];
  (*(v8 + 2))(v8, 0, 0, 0);
}

void __31__DRServerManager_setupRapport__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a2;
  v12 = [v7 identifierFromOptions:a3];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [v9 objectForKey:@"dataTypes"];

  [WeakRetained removeRequestedDataTypes:v12 types:{objc_msgSend(v11, "unsignedLongLongValue")}];
  (*(v8 + 2))(v8, 0, 0, 0);
}

uint64_t __31__DRServerManager_setupRapport__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (gLogCategory_DRServerManager <= 90)
    {
      v6 = v2;
      if (gLogCategory_DRServerManager != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __31__DRServerManager_setupRapport__block_invoke_3_cold_1(v3);
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setupAAS
{
  v3 = objc_alloc_init(MEMORY[0x277CEF820]);
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__DRServerManager_setupAAS__block_invoke;
  v4[3] = &unk_278F4EDC0;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [v3 setAaDeviceRouteChangedHandler:v4];
  [v3 activateWithCompletion:&__block_literal_global_35];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __27__DRServerManager_setupAAS__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (a2)
    {
      v7 = [v5 bluetoothAddressData];
      v8 = a1 + 32;
LABEL_7:
      v11 = *(*v8 + 40);
      *(*v8 + 40) = v7;

      goto LABEL_8;
    }

    v8 = a1 + 32;
    if ([*(*(a1 + 32) + 40) length])
    {
      v9 = [v6 bluetoothAddressData];
      v10 = [v9 isEqualToData:*(*v8 + 40)];

      if (v10)
      {
        v7 = [MEMORY[0x277CBEA90] data];
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  if (gLogCategory_DRServerManager <= 50 && (gLogCategory_DRServerManager != -1 || _LogCategory_Initialize()))
  {
    __27__DRServerManager_setupAAS__block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = [WeakRetained clientDictionaryQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __27__DRServerManager_setupAAS__block_invoke_2;
  v14[3] = &unk_278F4ED98;
  objc_copyWeak(&v15, (a1 + 40));
  v14[4] = *(a1 + 32);
  dispatch_async(v13, v14);

  objc_destroyWeak(&v15);
}

void __27__DRServerManager_setupAAS__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained clientDictionary];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__DRServerManager_setupAAS__block_invoke_3;
  v4[3] = &unk_278F4ED70;
  v4[4] = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __27__DRServerManager_setupAAS__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (gLogCategory_DRServerManager <= 90)
    {
      v6 = v2;
      if (gLogCategory_DRServerManager != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __27__DRServerManager_setupAAS__block_invoke_4_cold_1(v3);
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)addRequestedDataTypes:(uint64_t)a1 types:.cold.1(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"WxDM6"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"WxHRM"];
    }

    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"None";
  }

  LogPrintF();
}

uint64_t __59__DRServerManager_getClientFromClientDictionary_fromAvail___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  *(a2 + 56);
  v3 = *a1;
  return LogPrintF();
}

void __31__DRServerManager_setupRapport__block_invoke_3_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

void __27__DRServerManager_setupAAS__block_invoke_4_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

@end