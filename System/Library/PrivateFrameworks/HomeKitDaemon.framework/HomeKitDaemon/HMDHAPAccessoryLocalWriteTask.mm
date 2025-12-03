@interface HMDHAPAccessoryLocalWriteTask
- (void)_dispatchToAccessory:(id)accessory requests:(id)requests logEvent:(id)event completion:(id)completion;
@end

@implementation HMDHAPAccessoryLocalWriteTask

- (void)_dispatchToAccessory:(id)accessory requests:(id)requests logEvent:(id)event completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  requestsCopy = requests;
  eventCopy = event;
  completionCopy = completion;
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = requestsCopy;
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

  sourceType = [(HMDHAPAccessoryTask *)self sourceType];
  context = [(HMDHAPAccessoryTask *)self context];
  biomeSource = [context biomeSource];
  context2 = [(HMDHAPAccessoryTask *)self context];
  requestMessage = [context2 requestMessage];
  workQueue = [(HMDHAPAccessoryTask *)self workQueue];
  [accessoryCopy writeCharacteristicValues:v12 source:sourceType biomeSource:biomeSource message:requestMessage queue:workQueue logEvent:eventCopy completionHandler:completionCopy];

  v27 = *MEMORY[0x277D85DE8];
}

@end