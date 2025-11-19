@interface HMDHAPAccessoryLocalWriteTask
- (void)_dispatchToAccessory:(id)a3 requests:(id)a4 logEvent:(id)a5 completion:(id)a6;
@end

@implementation HMDHAPAccessoryLocalWriteTask

- (void)_dispatchToAccessory:(id)a3 requests:(id)a4 logEvent:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v10 = a4;
  v28 = a5;
  v11 = a6;
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      v17 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * v17);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        if (v20)
        {
          [v12 addObject:v20];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  v21 = [(HMDHAPAccessoryTask *)self sourceType];
  v22 = [(HMDHAPAccessoryTask *)self context];
  v23 = [v22 biomeSource];
  v24 = [(HMDHAPAccessoryTask *)self context];
  v25 = [v24 requestMessage];
  v26 = [(HMDHAPAccessoryTask *)self workQueue];
  [v29 writeCharacteristicValues:v12 source:v21 biomeSource:v23 message:v25 queue:v26 logEvent:v28 completionHandler:v11];

  v27 = *MEMORY[0x277D85DE8];
}

@end