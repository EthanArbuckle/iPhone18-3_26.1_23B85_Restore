@interface DSRemotePairingStore
- (DSRemotePairingStore)init;
- (void)fetchPairedDevicesOnQueue:(id)a3 completion:(id)a4;
@end

@implementation DSRemotePairingStore

- (DSRemotePairingStore)init
{
  if (self)
  {
    v3 = dispatch_queue_create("RemotePairingStoreQueue", 0);
    [(DSRemotePairingStore *)self setWorkQueue:v3];

    v4 = objc_alloc_init(DSRemotePairingWrapper);
    [(DSRemotePairingStore *)self setRemotePairingSwift:v4];
  }

  return self;
}

- (void)fetchPairedDevicesOnQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DSRemotePairingStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DSRemotePairingStore_fetchPairedDevicesOnQueue_completion___block_invoke;
  block[3] = &unk_2788F2C48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __61__DSRemotePairingStore_fetchPairedDevicesOnQueue_completion___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy_;
  v68[4] = __Block_byref_object_dispose_;
  v69 = 0;
  v3 = [*(a1 + 32) remotePairingSwift];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __61__DSRemotePairingStore_fetchPairedDevicesOnQueue_completion___block_invoke_2;
  v67[3] = &unk_2788F2BB0;
  v67[4] = v68;
  v4 = [v3 getPairedDevicesWithCompletion:v67];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v5)
  {
    v6 = *v64;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v64 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v63 + 1) + 8 * i);
        v9 = [v2 indexOfObject:v8];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v2 addObject:v8];
        }

        else
        {
          v1 = [v2 objectAtIndexedSubscript:v9];
          v10 = [v1 datePaired];
          v11 = [v8 datePaired];
          v12 = [v10 earlierDate:v11];
          [v1 setDatePaired:v12];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v5);
  }

  v52 = lockdown_copy_paired_host_info();
  if (v52)
  {
    [v52 allKeys];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v48 = v60 = 0u;
    v13 = [v48 countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (!v13)
    {
      goto LABEL_41;
    }

    v51 = *v60;
    while (1)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v60 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v15 = *(*(&v59 + 1) + 8 * j);
        v16 = [v52 objectForKey:v15];
        v17 = [DSPairedComputer alloc];
        v18 = [v16 objectForKey:@"HostName"];
        v19 = [(DSPairedComputer *)v17 initWithDeviceName:v18];

        [(DSPairedComputer *)v19 setLockdownFrameworkKey:v15];
        v20 = [v16 objectForKey:@"SystemBUID"];
        [(DSPairedComputer *)v19 setLockdownFrameworkIdentifier:v20];

        v21 = [v16 objectForKey:@"SerialNumber"];

        if (v21)
        {
          v22 = [v16 objectForKey:@"SerialNumber"];
          if ([v22 length])
          {
            [(DSPairedComputer *)v19 setSerialNumber:v22];
          }
        }

        v23 = [v16 objectForKey:@"MarketingName"];

        if (v23)
        {
          v24 = [v16 objectForKey:@"MarketingName"];
          [(DSPairedComputer *)v19 setMarketingName:v24];
        }

        v25 = [v16 objectForKey:@"WallTimeWhenCreated"];

        if (v25)
        {
          v26 = [v16 objectForKey:@"WallTimeWhenCreated"];
          v27 = [v26 unsignedLongLongValue];

          v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v27];
          [(DSPairedComputer *)v19 setDatePaired:v28];
        }

        v29 = [v2 indexOfObject:v19];
        if (v29 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = [(DSPairedComputer *)v19 serialNumber];
          v31 = v30 == 0;

          if (!v31)
          {
            goto LABEL_29;
          }

          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __61__DSRemotePairingStore_fetchPairedDevicesOnQueue_completion___block_invoke_2;
          v57[3] = &unk_2788F2BD8;
          v32 = v19;
          v58 = v32;
          v29 = [v2 indexOfObjectPassingTest:v57];
          if (v29 == 0x7FFFFFFFFFFFFFFFLL)
          {

LABEL_29:
            [v2 addObject:v19];
            goto LABEL_39;
          }

          v33 = [v2 objectAtIndexedSubscript:v29];
          NSLog(&cfstr_UsingSoftMatch.isa, v33, v32);
        }

        v34 = [v2 objectAtIndexedSubscript:v29];
        v35 = [v34 datePaired];
        v36 = [(DSPairedComputer *)v19 datePaired];
        v37 = [v35 earlierDate:v36];
        [v34 setDatePaired:v37];

        v38 = [(DSPairedComputer *)v19 marketingName];
        if (v38)
        {
          v39 = [(DSPairedComputer *)v19 marketingName];
          v1 = v39;
        }

        else
        {
          v39 = [v34 marketingName];
          v49 = v39;
        }

        [v34 setMarketingName:v39];
        v40 = v49;
        if (v38)
        {
          v40 = v1;
        }

        v41 = [v34 lockdownFrameworkIdentifier];

        if (v41)
        {
          NSLog(&cfstr_ErrorOverwriti.isa);
        }

        v42 = [(DSPairedComputer *)v19 lockdownFrameworkIdentifier];
        [v34 setLockdownFrameworkIdentifier:v42];

        v43 = [(DSPairedComputer *)v19 lockdownFrameworkKey];
        [v34 setLockdownFrameworkKey:v43];

LABEL_39:
      }

      v13 = [v48 countByEnumeratingWithState:&v59 objects:v70 count:16];
      if (!v13)
      {
LABEL_41:

        break;
      }
    }
  }

  [v2 sortUsingComparator:&__block_literal_global];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DSRemotePairingStore_fetchPairedDevicesOnQueue_completion___block_invoke_4;
  block[3] = &unk_2788F2C20;
  v44 = *(a1 + 40);
  v55 = *(a1 + 48);
  v56 = v68;
  v54 = v2;
  v45 = v2;
  dispatch_async(v44, block);

  _Block_object_dispose(v68, 8);
  v46 = *MEMORY[0x277D85DE8];
}

void __61__DSRemotePairingStore_fetchPairedDevicesOnQueue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

BOOL __61__DSRemotePairingStore_fetchPairedDevicesOnQueue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) deviceName];
  v5 = [v3 deviceName];
  if ([v4 isEqualToString:v5])
  {
    v6 = [v3 lockdownFrameworkIdentifier];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __61__DSRemotePairingStore_fetchPairedDevicesOnQueue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 datePaired];
  v6 = [v4 datePaired];

  v7 = [v5 compare:v6];
  return v7;
}

@end