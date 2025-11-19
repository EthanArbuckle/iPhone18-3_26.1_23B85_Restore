@interface DRClientManager
- (DRClientManager)init;
- (NSArray)availableServers;
- (id)addAvailableDataTypes:(unint64_t)a3 device:(id)a4 wxAddress:(id)a5;
- (id)addAvailableDataTypesFromPairedCompanion:(unint64_t)a3 wxAddress:(id)a4;
- (id)identifierFromOptions:(id)a3;
- (id)removeAvailableDataTypes:(unint64_t)a3 device:(id)a4 wxAddress:(id)a5;
- (id)removeAvailableDataTypesFromPairedCompanion:(unint64_t)a3 wxAddress:(id)a4;
- (unint64_t)dataTypesForPeer:(unint64_t)a3 model:(id)a4 majorVersion:(int64_t)a5 minorVersion:(int64_t)a6;
- (void)setupRapport;
- (void)wxAddressChanged:(id)a3 wxAddress:(id)a4;
@end

@implementation DRClientManager

- (DRClientManager)init
{
  v6.receiver = self;
  v6.super_class = DRClientManager;
  v2 = [(DRClientManager *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  serverDictionary = v2->_serverDictionary;
  v2->_serverDictionary = v3;

  [(DRClientManager *)v2 setupRapport];
  return v2;
}

- (unint64_t)dataTypesForPeer:(unint64_t)a3 model:(id)a4 majorVersion:(int64_t)a5 minorVersion:(int64_t)a6
{
  v8 = a4;
  if ([v8 hasPrefix:@"Watch"])
  {
    if (a5 > 11)
    {
      goto LABEL_12;
    }
  }

  else if (([v8 hasPrefix:@"iPhone"] & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"iPad") || objc_msgSend(v8, "hasPrefix:", @"AppleTV"))
  {
    if (a5 > 18)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = [v8 containsString:@"Mac"];
    if (a5 >= 16 && (v10 & 1) != 0)
    {
      goto LABEL_12;
    }
  }

  if (gLogCategory_DRClientManager <= 50 && (gLogCategory_DRClientManager != -1 || _LogCategory_Initialize()))
  {
    [DRClientManager dataTypesForPeer:model:majorVersion:minorVersion:];
  }

  a3 = 0;
LABEL_12:

  return a3;
}

- (id)addAvailableDataTypes:(unint64_t)a3 device:(id)a4 wxAddress:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 modelIdentifier];
  if (v8)
  {
    [v8 operatingSystemVersion];
    v11 = v20;
    [v8 operatingSystemVersion];
    v12 = v18;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
  }

  v13 = [(DRClientManager *)self dataTypesForPeer:a3 model:v10 majorVersion:v11 minorVersion:v12, v17, v18, v19, v20, v21, v22];

  v14 = [v8 uniqueID];
  v15 = [(DRClientManager *)self addAvailableDataTypes:v14 dataTypes:v13 wxAddress:v9 fromServer:0];

  return v15;
}

- (id)removeAvailableDataTypes:(unint64_t)a3 device:(id)a4 wxAddress:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 modelIdentifier];
  if (v8)
  {
    [v8 operatingSystemVersion];
    v11 = v20;
    [v8 operatingSystemVersion];
    v12 = v18;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
  }

  v13 = [(DRClientManager *)self dataTypesForPeer:a3 model:v10 majorVersion:v11 minorVersion:v12, v17, v18, v19, v20, v21, v22];

  v14 = [v8 uniqueID];
  v15 = [(DRClientManager *)self removeAvailableDataTypes:v14 dataTypes:v13 wxAddress:v9 fromServer:0];

  return v15;
}

- (id)addAvailableDataTypesFromPairedCompanion:(unint64_t)a3 wxAddress:(id)a4
{
  v6 = MEMORY[0x277D2BCF8];
  v7 = a4;
  v8 = [v6 sharedInstance];
  v9 = [v8 getActivePairedDevice];

  v10 = [v9 valueForProperty:*MEMORY[0x277D2BC20]];
  v11 = [v10 componentsSeparatedByString:@"."];
  v12 = [v11 objectAtIndex:0];
  v13 = [v12 integerValue];

  v14 = [v10 componentsSeparatedByString:@"."];
  v15 = [v14 objectAtIndex:1];
  v16 = [v15 integerValue];

  v17 = [v9 valueForProperty:*MEMORY[0x277D2BBC0]];
  v18 = [(DRClientManager *)self dataTypesForPeer:a3 model:v17 majorVersion:v13 minorVersion:v16];

  v19 = [(DRClientManager *)self addAvailableDataTypes:@"RPDestinationIdentifierPairedCompanion" dataTypes:v18 wxAddress:v7 fromServer:0];

  return v19;
}

- (id)removeAvailableDataTypesFromPairedCompanion:(unint64_t)a3 wxAddress:(id)a4
{
  v6 = MEMORY[0x277D2BCF8];
  v7 = a4;
  v8 = [v6 sharedInstance];
  v9 = [v8 getActivePairedDevice];

  v10 = [v9 valueForProperty:*MEMORY[0x277D2BC20]];
  v11 = [v10 componentsSeparatedByString:@"."];
  v12 = [v11 objectAtIndex:0];
  v13 = [v12 integerValue];

  v14 = [v10 componentsSeparatedByString:@"."];
  v15 = [v14 objectAtIndex:1];
  v16 = [v15 integerValue];

  v17 = [v9 valueForProperty:*MEMORY[0x277D2BBC0]];
  v18 = [(DRClientManager *)self dataTypesForPeer:a3 model:v17 majorVersion:v13 minorVersion:v16];

  v19 = [(DRClientManager *)self removeAvailableDataTypes:@"RPDestinationIdentifierPairedCompanion" dataTypes:v18 wxAddress:v7 fromServer:0];

  return v19;
}

void __72__DRClientManager_addAvailableDataTypes_dataTypes_wxAddress_fromServer___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_DRClientManager <= 50 && (gLogCategory_DRClientManager != -1 || _LogCategory_Initialize()))
  {
    __72__DRClientManager_addAvailableDataTypes_dataTypes_wxAddress_fromServer___block_invoke_cold_1(a1);
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __72__DRClientManager_addAvailableDataTypes_dataTypes_wxAddress_fromServer___block_invoke_2;
  v13 = &unk_278F4EB70;
  v14 = a1[4];
  objc_copyWeak(&v15, a1 + 6);
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  [WeakRetained setInternalDisconnectHandler:&v10];

  v5 = objc_loadWeakRetained(a1 + 6);
  v6 = [v5 serverFoundHandler];

  if (v6)
  {
    v7 = objc_loadWeakRetained(a1 + 6);
    v8 = [v7 serverFoundHandler];
    v9 = objc_loadWeakRetained(a1 + 5);
    (v8)[2](v8, v9);
  }

  objc_destroyWeak(&v15);
}

void __72__DRClientManager_addAvailableDataTypes_dataTypes_wxAddress_fromServer___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_DRClientManager <= 50 && (gLogCategory_DRClientManager != -1 || _LogCategory_Initialize()))
  {
    __72__DRClientManager_addAvailableDataTypes_dataTypes_wxAddress_fromServer___block_invoke_2_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v3 = [v4 removeAvailableDataTypes:*(a1 + 32) dataTypes:-1 wxAddress:0 fromServer:1];
  }
}

void __75__DRClientManager_removeAvailableDataTypes_dataTypes_wxAddress_fromServer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained shouldDeactivate];

  if (v3)
  {
    if (gLogCategory_DRClientManager <= 50 && (gLogCategory_DRClientManager != -1 || _LogCategory_Initialize()))
    {
      __75__DRClientManager_removeAvailableDataTypes_dataTypes_wxAddress_fromServer___block_invoke_cold_1(a1);
    }

    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = [v4 serverDictionary];
    [v5 removeObjectForKey:*(a1 + 32)];

    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = [v6 serverLostHandler];

    if (v7)
    {
      v10 = objc_loadWeakRetained((a1 + 48));
      v8 = [v10 serverLostHandler];
      v9 = objc_loadWeakRetained((a1 + 40));
      (v8)[2](v8, v9);
    }
  }
}

- (void)wxAddressChanged:(id)a3 wxAddress:(id)a4
{
  v8 = a4;
  v6 = [(NSMutableDictionary *)self->_serverDictionary objectForKeyedSubscript:a3];
  v7 = v6;
  if (v6)
  {
    [v6 setWxAddress:v8];
  }

  else if (gLogCategory_DRClientManager <= 90 && (gLogCategory_DRClientManager != -1 || _LogCategory_Initialize()))
  {
    [DRClientManager wxAddressChanged:wxAddress:];
  }
}

- (id)identifierFromOptions:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D44270]];
  v5 = [v4 isEqual:&unk_285B1CA20];

  if (v5)
  {
    v6 = @"RPDestinationIdentifierPairedCompanion";
  }

  else
  {
    v7 = *MEMORY[0x277D442E8];
    Int64 = CFDictionaryGetInt64();
    v9 = MEMORY[0x277D442D0];
    if (Int64 < 0)
    {
      v9 = MEMORY[0x277D442A8];
    }

    v6 = [v3 objectForKeyedSubscript:*v9];
  }

  return v6;
}

- (void)setupRapport
{
  if (gLogCategory_DRClientManager <= 50 && (gLogCategory_DRClientManager != -1 || _LogCategory_Initialize()))
  {
    [DRClientManager setupRapport];
  }

  v3 = objc_alloc_init(MEMORY[0x277D44160]);
  rapportClient = self->_rapportClient;
  self->_rapportClient = v3;

  [(RPCompanionLinkClient *)self->_rapportClient setControlFlags:46];
  objc_initWeak(&location, self);
  v5 = self->_rapportClient;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__DRClientManager_setupRapport__block_invoke;
  v12[3] = &unk_278F4EBE8;
  v12[4] = self;
  objc_copyWeak(&v13, &location);
  [(RPCompanionLinkClient *)v5 registerRequestID:@"com.apple.datarelay.addavailabledatatypes" options:0 handler:v12];
  v6 = self->_rapportClient;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__DRClientManager_setupRapport__block_invoke_2;
  v10[3] = &unk_278F4EBE8;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  [(RPCompanionLinkClient *)v6 registerRequestID:@"com.apple.datarelay.removeavailabledatatypes" options:0 handler:v10];
  v7 = self->_rapportClient;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__DRClientManager_setupRapport__block_invoke_3;
  v8[3] = &unk_278F4EC10;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  [(RPCompanionLinkClient *)v7 registerEventID:@"com.apple.datarelay.wxaddresschanged" options:0 handler:v8];
  [(RPCompanionLinkClient *)self->_rapportClient activateWithCompletion:&__block_literal_global_1];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __31__DRClientManager_setupRapport__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a2;
  v15 = [v7 identifierFromOptions:a3];
  v10 = [v9 objectForKey:@"dataTypes"];
  v11 = [v10 unsignedLongLongValue];

  v12 = [v9 objectForKey:@"wxAddress"];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained addAvailableDataTypes:v15 dataTypes:v11 wxAddress:v12 fromServer:1];

  (*(v8 + 2))(v8, 0, 0, 0);
}

void __31__DRClientManager_setupRapport__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a2;
  v15 = [v7 identifierFromOptions:a3];
  v10 = [v9 objectForKey:@"dataTypes"];
  v11 = [v10 unsignedLongLongValue];

  v12 = [v9 objectForKey:@"wxAddress"];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained removeAvailableDataTypes:v15 dataTypes:v11 wxAddress:v12 fromServer:1];

  (*(v8 + 2))(v8, 0, 0, 0);
}

void __31__DRClientManager_setupRapport__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v9 = [v5 identifierFromOptions:a3];
  v7 = [v6 objectForKey:@"wxAddress"];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained wxAddressChanged:v9 wxAddress:v7];
}

uint64_t __31__DRClientManager_setupRapport__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v7 = v2;
    v3 = +[DataRelayAnalytics getInstance];
    [v3 updateSetupReturnStatus:v7];

    v4 = v7;
    if (gLogCategory_DRClientManager <= 90)
    {
      if (gLogCategory_DRClientManager != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        __31__DRClientManager_setupRapport__block_invoke_4_cold_1(v4);
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (NSArray)availableServers
{
  if ([(NSMutableDictionary *)self->_serverDictionary count])
  {
    v3 = [(NSMutableDictionary *)self->_serverDictionary allValues];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

void __31__DRClientManager_setupRapport__block_invoke_4_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

@end