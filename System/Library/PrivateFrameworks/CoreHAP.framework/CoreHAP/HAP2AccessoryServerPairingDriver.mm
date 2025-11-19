@interface HAP2AccessoryServerPairingDriver
+ (id)_generateWorkItemsForAuthMethod:(unint64_t)a3;
- (HAP2AccessoryServerEncoding)encoding;
- (HAP2AccessoryServerPairingDriver)initWithTransport:(id)a3 secureTransportFactory:(id)a4 encoding:(id)a5 featureFlags:(unint64_t)a6;
- (HAP2AccessoryServerPairingDriver)initWithTransport:(id)a3 secureTransportFactory:(id)a4 encoding:(id)a5 featureFlags:(unint64_t)a6 workItems:(id)a7;
- (HAP2AccessoryServerPairingDriverDelegate)delegate;
- (HAP2AccessoryServerTransport)transport;
- (HAP2UnpairedAccessoryServer)accessoryServer;
- (HAPAccessoryPairingRequest)pairingRequest;
- (HAPSRPPairSetupSession)pairingSession;
- (HMFActivity)pairingActivity;
- (NSError)cancelError;
- (NSString)description;
- (id)currentWorkItem;
- (id)moveToNextWorkItem;
- (id)pairAccessory:(id)a3 pairingRequest:(id)a4 delegate:(id)a5;
- (void)_cancelWithError:(id)a3;
- (void)_pairingFinishedWithError:(id)a3;
- (void)cancelWithError:(id)a3;
- (void)setAccessoryServer:(id)a3;
- (void)setCancelError:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPairingRequest:(id)a3;
- (void)setPairingSession:(id)a3;
- (void)workItem:(id)a3 finishedWithError:(id)a4;
@end

@implementation HAP2AccessoryServerPairingDriver

- (HMFActivity)pairingActivity
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingActivity);

  return WeakRetained;
}

- (NSString)description
{
  v3 = [(HAP2AccessoryServerPairingDriver *)self accessoryServer];
  v4 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HAP2AccessoryServerPairingDriver;
  v5 = [(HAP2LoggingObject *)&v10 description];
  v6 = [v3 name];
  v7 = [v3 deviceID];
  v8 = [v4 stringWithFormat:@"%@ [%@/%@]", v5, v6, v7];

  return v8;
}

- (void)workItem:(id)a3 finishedWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAP2AccessoryServerPairingDriver *)self operationQueue];
  [v8 assertCurrentQueue];

  v9 = [(HAP2AccessoryServerPairingDriver *)self currentWorkItem];
  v10 = [v6 isEqual:v9];

  if (v10)
  {
    v11 = [(HAP2AccessoryServerPairingDriver *)self pairingActivity];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAP2AccessoryServerPairingDriver currentWorkItemIndex](self, "currentWorkItemIndex")}];
    v13 = MEMORY[0x277CCABB0];
    v14 = [(HAP2AccessoryServerPairingDriver *)self workItems];
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];

    [v7 domain];
    [v7 code];
    if (v7)
    {
      [(HAP2AccessoryServerPairingDriver *)self _pairingFinishedWithError:v7];
    }

    else
    {
      v16 = [(HAP2AccessoryServerPairingDriver *)self moveToNextWorkItem];
      if (v16)
      {
        [v11 begin];
        v17 = v11;
        [v16 startWithPairingDriver:self];
        __HMFActivityScopeLeave();
      }

      else
      {
        [(HAP2AccessoryServerPairingDriver *)self _pairingFinishedWithError:0];
      }
    }
  }
}

- (void)_pairingFinishedWithError:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAP2AccessoryServerPairingDriver *)self operationQueue];
  [v5 assertCurrentQueue];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v6 = hap2Log_accessory;
  v7 = os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    *buf = 138412546;
    v23 = self;
    v24 = 2112;
    v25 = v4;
    v8 = "%@ Finished with error: %@";
    v9 = v6;
    v10 = 22;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v23 = self;
    v8 = "%@ Finished successfully";
    v9 = v6;
    v10 = 12;
  }

  _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_9:
  v11 = v4 == 0;
  [(HAP2AccessoryServerPairingDriver *)self setPairingRequest:0];
  [(HAP2AccessoryServerPairingDriver *)self setPairingSession:0];
  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__HAP2AccessoryServerPairingDriver__pairingFinishedWithError___block_invoke;
  v19[3] = &unk_2786D6EB0;
  objc_copyWeak(&v21, buf);
  v12 = v4;
  v20 = v12;
  v13 = MEMORY[0x231885210](v19);
  v14 = v13;
  if (v11)
  {
    (*(v13 + 16))(v13);
  }

  else
  {
    v15 = [(HAP2AccessoryServerPairingDriver *)self transport];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__HAP2AccessoryServerPairingDriver__pairingFinishedWithError___block_invoke_2;
    v17[3] = &unk_2786D5D70;
    v17[4] = self;
    v18 = v14;
    [v15 closeWithError:0 completion:v17];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x277D85DE8];
}

void __62__HAP2AccessoryServerPairingDriver__pairingFinishedWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = v2;
  if (v2)
  {
    [v2 pairingDriver:WeakRetained didCompleteWithError:*(a1 + 32)];
  }
}

void __62__HAP2AccessoryServerPairingDriver__pairingFinishedWithError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) operationQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__HAP2AccessoryServerPairingDriver__pairingFinishedWithError___block_invoke_3;
  v3[3] = &unk_2786D6490;
  v4 = *(a1 + 40);
  [v2 addBlock:v3];
}

- (void)_cancelWithError:(id)a3
{
  v8 = a3;
  v4 = [(HAP2AccessoryServerPairingDriver *)self operationQueue];
  [v4 assertCurrentQueue];

  v5 = [(HAP2AccessoryServerPairingDriver *)self cancelError];

  if (!v5)
  {
    [(HAP2AccessoryServerPairingDriver *)self setCancelError:v8];
    v6 = [(HAP2AccessoryServerPairingDriver *)self currentWorkItem];
    v7 = v6;
    if (v6)
    {
      [v6 cancelWithError:v8];
    }

    else
    {
      [(HAP2AccessoryServerPairingDriver *)self _pairingFinishedWithError:v8];
    }
  }
}

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HAP2AccessoryServerPairingDriver *)self operationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HAP2AccessoryServerPairingDriver_cancelWithError___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__HAP2AccessoryServerPairingDriver_cancelWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cancelWithError:*(a1 + 32)];
}

- (id)currentWorkItem
{
  v3 = [(HAP2AccessoryServerPairingDriver *)self operationQueue];
  [v3 assertCurrentQueue];

  v4 = [(HAP2AccessoryServerPairingDriver *)self currentWorkItemIndex];
  v5 = [(HAP2AccessoryServerPairingDriver *)self workItems];
  v6 = [v5 count];

  if (v4 >= v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(HAP2AccessoryServerPairingDriver *)self workItems];
    v8 = [v7 objectAtIndexedSubscript:v4];
  }

  return v8;
}

- (id)moveToNextWorkItem
{
  v3 = [(HAP2AccessoryServerPairingDriver *)self operationQueue];
  [v3 assertCurrentQueue];

  [(HAP2AccessoryServerPairingDriver *)self setCurrentWorkItemIndex:[(HAP2AccessoryServerPairingDriver *)self currentWorkItemIndex]+ 1];

  return [(HAP2AccessoryServerPairingDriver *)self currentWorkItem];
}

- (id)pairAccessory:(id)a3 pairingRequest:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(HAP2AccessoryServerPairingDriver *)self accessoryServer];

  if ([v9 conformsToProtocol:&unk_283EB5C18])
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = objc_alloc(MEMORY[0x277D0F770]);
  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x231884350](self, a2);
  v17 = [v15 stringWithFormat:@"%@, %s:%ld", v16, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/HAP2/Pairing/HAP2AccessoryServerPairingDriver.m", 316];
  v18 = [v14 initWithName:v17];

  [(HAP2AccessoryServerPairingDriver *)self setPairingRequest:v10];
  [(HAP2AccessoryServerPairingDriver *)self setAccessoryServer:v13];
  [(HAP2AccessoryServerPairingDriver *)self setDelegate:v11];
  [(HAP2AccessoryServerPairingDriver *)self setPairingActivity:v18];
  if (!self->_operationQueue)
  {
    v19 = [v13 operationQueue];
    [(HAP2AccessoryServerPairingDriver *)self setOperationQueue:v19];
  }

  objc_initWeak(&location, self);
  v20 = [(HAP2AccessoryServerPairingDriver *)self operationQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__HAP2AccessoryServerPairingDriver_pairAccessory_pairingRequest_delegate___block_invoke;
  v23[3] = &unk_2786D6EB0;
  objc_copyWeak(&v25, &location);
  v21 = v18;
  v24 = v21;
  [v20 addBlock:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return self;
}

void __74__HAP2AccessoryServerPairingDriver_pairAccessory_pairingRequest_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCurrentWorkItemIndex:0];
  [*(a1 + 32) begin];
  v4 = *(a1 + 32);
  v3 = [WeakRetained currentWorkItem];
  [v3 startWithPairingDriver:WeakRetained];

  __HMFActivityScopeLeave();
}

- (void)setCancelError:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerPairingDriver *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HAP2AccessoryServerPairingDriver_setCancelError___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

- (NSError)cancelError
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19076;
  v11 = __Block_byref_object_dispose__19077;
  v12 = 0;
  v3 = [(HAP2AccessoryServerPairingDriver *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HAP2AccessoryServerPairingDriver_cancelError__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerPairingDriver *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HAP2AccessoryServerPairingDriver_setDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

- (HAP2AccessoryServerPairingDriverDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19076;
  v11 = __Block_byref_object_dispose__19077;
  v12 = 0;
  v3 = [(HAP2AccessoryServerPairingDriver *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HAP2AccessoryServerPairingDriver_delegate__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __44__HAP2AccessoryServerPairingDriver_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (void)setAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerPairingDriver *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HAP2AccessoryServerPairingDriver_setAccessoryServer___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

- (HAP2UnpairedAccessoryServer)accessoryServer
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19076;
  v11 = __Block_byref_object_dispose__19077;
  v12 = 0;
  v3 = [(HAP2AccessoryServerPairingDriver *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HAP2AccessoryServerPairingDriver_accessoryServer__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __51__HAP2AccessoryServerPairingDriver_accessoryServer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (void)setPairingRequest:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerPairingDriver *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HAP2AccessoryServerPairingDriver_setPairingRequest___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

- (HAPAccessoryPairingRequest)pairingRequest
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19076;
  v11 = __Block_byref_object_dispose__19077;
  v12 = 0;
  v3 = [(HAP2AccessoryServerPairingDriver *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__HAP2AccessoryServerPairingDriver_pairingRequest__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (HAP2AccessoryServerEncoding)encoding
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19076;
  v11 = __Block_byref_object_dispose__19077;
  v12 = 0;
  v3 = [(HAP2AccessoryServerPairingDriver *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HAP2AccessoryServerPairingDriver_encoding__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (HAP2AccessoryServerTransport)transport
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19076;
  v11 = __Block_byref_object_dispose__19077;
  v12 = 0;
  v3 = [(HAP2AccessoryServerPairingDriver *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__HAP2AccessoryServerPairingDriver_transport__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setPairingSession:(id)a3
{
  v4 = a3;
  v5 = [(HAP2AccessoryServerPairingDriver *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HAP2AccessoryServerPairingDriver_setPairingSession___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

- (HAPSRPPairSetupSession)pairingSession
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__19076;
  v11 = __Block_byref_object_dispose__19077;
  v12 = 0;
  v3 = [(HAP2AccessoryServerPairingDriver *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__HAP2AccessoryServerPairingDriver_pairingSession__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (HAP2AccessoryServerPairingDriver)initWithTransport:(id)a3 secureTransportFactory:(id)a4 encoding:(id)a5 featureFlags:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_class();
  v14 = 1;
  v15 = 2;
  v16 = 4;
  v17 = 5;
  if ((a6 & 0x10) != 0)
  {
    v17 = 6;
  }

  if ((a6 & 8) == 0)
  {
    v16 = v17;
  }

  if ((a6 & 2) == 0)
  {
    v15 = v16;
  }

  if ((a6 & 1) == 0)
  {
    v14 = v15;
  }

  if ((a6 & 0xBF) != 0)
  {
    v18 = v14;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v13 _generateWorkItemsForAuthMethod:v18];
  v20 = [(HAP2AccessoryServerPairingDriver *)self initWithTransport:v12 secureTransportFactory:v11 encoding:v10 featureFlags:a6 workItems:v19];

  if (v20)
  {
    v21 = v20;
  }

  return v20;
}

- (HAP2AccessoryServerPairingDriver)initWithTransport:(id)a3 secureTransportFactory:(id)a4 encoding:(id)a5 featureFlags:(unint64_t)a6 workItems:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = HAP2AccessoryServerPairingDriver;
  v17 = [(HAP2AccessoryServerPairingDriver *)&v23 init];
  if (v17)
  {
    v18 = [HAP2PropertyLock lockWithName:@"HAP2AccessoryServerPairingDriver.propertyLock"];
    propertyLock = v17->_propertyLock;
    v17->_propertyLock = v18;

    objc_storeStrong(&v17->_transport, a3);
    objc_storeStrong(&v17->_secureTransportFactory, a4);
    objc_storeStrong(&v17->_encoding, a5);
    v17->_featureFlags = a6;
    if ((a6 & 0xBF) != 0)
    {
      if (a6)
      {
        v20 = 1;
      }

      else if ((a6 & 2) != 0)
      {
        v20 = 2;
      }

      else if ((a6 & 8) != 0)
      {
        v20 = 4;
      }

      else
      {
        v20 = 5;
        if ((a6 & 0x10) != 0)
        {
          v20 = 6;
        }
      }
    }

    else
    {
      v20 = 0;
    }

    v17->_authMethod = v20;
    objc_storeStrong(&v17->_workItems, a7);
    v21 = v17;
  }

  return v17;
}

+ (id)_generateWorkItemsForAuthMethod:(unint64_t)a3
{
  v3 = 0;
  v21[7] = *MEMORY[0x277D85DE8];
  if (a3 > 2)
  {
    if (a3 <= 4)
    {
      if (a3 != 3)
      {
        v4 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem openConnection];
        v20[0] = v4;
        v5 = [HAP2AccessoryServerPairingDriverPairSetupWorkItem pairSetupWithType:5];
        v20[1] = v5;
        v6 = +[HAP2AccessoryServerPairingDriverMFiCertWorkItem checkCertificate];
        v20[2] = v6;
        v7 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem closeConnection];
        v20[3] = v7;
        v8 = MEMORY[0x277CBEA60];
        v9 = v20;
LABEL_15:
        v3 = [v8 arrayWithObjects:v9 count:4];
        goto LABEL_16;
      }

LABEL_14:
      v4 = [HAP2AccessoryServerPairingDriverAuthPromptWorkItem promptForType:2];
      v17[0] = v4;
      v5 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem openConnection];
      v17[1] = v5;
      v6 = [HAP2AccessoryServerPairingDriverPairSetupWorkItem pairSetupWithType:1];
      v17[2] = v6;
      v7 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem closeConnection];
      v17[3] = v7;
      v8 = MEMORY[0x277CBEA60];
      v9 = v17;
      goto LABEL_15;
    }

    if (a3 != 5)
    {
      if (a3 != 6)
      {
        goto LABEL_17;
      }

      v4 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem openConnection];
      v19[0] = v4;
      v5 = [HAP2AccessoryServerPairingDriverPairSetupWorkItem pairSetupWithType:6];
      v19[1] = v5;
      v6 = +[HAP2AccessoryServerPairingDriverMFiCertWorkItem checkCertificate];
      v19[2] = v6;
      v7 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem closeConnection];
      v19[3] = v7;
      v10 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem openConnection];
      v19[4] = v10;
      v11 = [HAP2AccessoryServerPairingDriverPairSetupWorkItem pairSetupWithType:7];
      v19[5] = v11;
      v12 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem closeConnection];
      v19[6] = v12;
      v13 = MEMORY[0x277CBEA60];
      v14 = v19;
      goto LABEL_12;
    }

LABEL_13:
    v4 = [HAP2AccessoryServerPairingDriverAuthPromptWorkItem promptForType:1];
    v18[0] = v4;
    v5 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem openConnection];
    v18[1] = v5;
    v6 = [HAP2AccessoryServerPairingDriverPairSetupWorkItem pairSetupWithType:0];
    v18[2] = v6;
    v7 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem closeConnection];
    v18[3] = v7;
    v8 = MEMORY[0x277CBEA60];
    v9 = v18;
    goto LABEL_15;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  if (a3 == 1)
  {
    goto LABEL_14;
  }

  if (a3 != 2)
  {
    goto LABEL_17;
  }

  v4 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem openConnection];
  v21[0] = v4;
  v5 = [HAP2AccessoryServerPairingDriverPairSetupWorkItem pairSetupWithType:3];
  v21[1] = v5;
  v6 = +[HAP2AccessoryServerPairingDriverSoftwareAuthWorkItem doSoftwareAuth];
  v21[2] = v6;
  v7 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem closeConnection];
  v21[3] = v7;
  v10 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem openConnection];
  v21[4] = v10;
  v11 = [HAP2AccessoryServerPairingDriverPairSetupWorkItem pairSetupWithType:4];
  v21[5] = v11;
  v12 = +[HAP2AccessoryServerPairingDriverTransportControlWorkItem closeConnection];
  v21[6] = v12;
  v13 = MEMORY[0x277CBEA60];
  v14 = v21;
LABEL_12:
  v3 = [v13 arrayWithObjects:v14 count:7];

LABEL_16:
LABEL_17:
  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

@end