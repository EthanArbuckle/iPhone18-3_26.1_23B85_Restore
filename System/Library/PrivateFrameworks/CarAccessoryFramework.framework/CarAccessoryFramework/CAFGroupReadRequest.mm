@interface CAFGroupReadRequest
- (id)groupRequestValueForRequests:(id)requests;
- (id)requestForCharacteristic:(id)characteristic;
- (void)completedRequests:(id)requests withResponse:(id)response;
@end

@implementation CAFGroupReadRequest

- (id)requestForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if ([characteristicCopy readable])
  {
    v4 = [(CAFRequest *)CAFReadRequest requestWithCharacteristic:characteristicCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)groupRequestValueForRequests:(id)requests
{
  v22 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  objc_opt_class();
  v4 = requestsCopy;
  if (!v4 || (v5 = v4, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = CAFGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CAFGroupReadRequest groupRequestValueForRequests:v6];
    }

    v5 = 0;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        characteristic = [*(*(&v17 + 1) + 8 * i) characteristic];
        readInstanceIDs = [characteristic readInstanceIDs];
        [v7 addObjectsFromArray:readInstanceIDs];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)completedRequests:(id)requests withResponse:(id)response
{
  v28 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  responseCopy = response;
  values = [responseCopy values];

  if (values)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = requestsCopy;
    v8 = requestsCopy;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          values2 = [responseCopy values];
          characteristic = [v13 characteristic];
          instanceID = [characteristic instanceID];
          v17 = [values2 objectForKeyedSubscript:instanceID];

          if (v17)
          {
            characteristic2 = [v13 characteristic];
            characteristic3 = [v13 characteristic];
            instanceID2 = [characteristic3 instanceID];
            [characteristic2 handleRead:instanceID2 value:v17];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    requestsCopy = v22;
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end