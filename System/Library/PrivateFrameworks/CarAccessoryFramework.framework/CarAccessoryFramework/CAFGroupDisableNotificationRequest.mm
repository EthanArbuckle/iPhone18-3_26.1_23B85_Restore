@interface CAFGroupDisableNotificationRequest
- (id)groupRequestValueForRequests:(id)requests;
- (id)requestForCharacteristic:(id)characteristic;
- (id)requestForControl:(id)control;
- (void)addControl:(id)control;
- (void)completedRequests:(id)requests withResponse:(id)response;
@end

@implementation CAFGroupDisableNotificationRequest

- (void)addControl:(id)control
{
  controlCopy = control;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CAFGroupDisableNotificationRequest_addControl___block_invoke;
  v6[3] = &unk_27890D548;
  v6[4] = self;
  v7 = controlCopy;
  v5 = controlCopy;
  [(CAFGroupRequest *)self _lockedPerformBlock:v6];
}

uint64_t __49__CAFGroupDisableNotificationRequest_addControl___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestForControl:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _addRequest:v2];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)requestForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if ([characteristicCopy notifies])
  {
    v4 = [(CAFRequest *)CAFDisableNotificationRequest requestWithCharacteristic:characteristicCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)requestForControl:(id)control
{
  controlCopy = control;
  if ([controlCopy notifies])
  {
    v4 = [(CAFRequest *)CAFDisableNotificationRequest requestWithControl:controlCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)groupRequestValueForRequests:(id)requests
{
  v25 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  objc_opt_class();
  v4 = requestsCopy;
  if (!v4 || (v5 = v4, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = CAFGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CAFGroupEnableNotificationRequest groupRequestValueForRequests:v6];
    }

    v5 = 0;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        characteristic = [v13 characteristic];
        registrationInstanceIDs = [characteristic registrationInstanceIDs];
        [v7 addObjectsFromArray:registrationInstanceIDs];

        control = [v13 control];
        registrationInstanceIDs2 = [control registrationInstanceIDs];
        [v7 addObjectsFromArray:registrationInstanceIDs2];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)completedRequests:(id)requests withResponse:(id)response
{
  v46 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  values = [response values];

  if (values)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = requestsCopy;
    obj = requestsCopy;
    v7 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v40;
      do
      {
        v10 = 0;
        do
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v39 + 1) + 8 * v10);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          characteristic = [v11 characteristic];
          registrationInstanceIDs = [characteristic registrationInstanceIDs];

          v14 = [registrationInstanceIDs countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v36;
            do
            {
              v17 = 0;
              do
              {
                if (*v36 != v16)
                {
                  objc_enumerationMutation(registrationInstanceIDs);
                }

                v18 = *(*(&v35 + 1) + 8 * v17);
                characteristic2 = [v11 characteristic];
                [characteristic2 handleRegistrationWithInstanceID:v18 registered:0];

                ++v17;
              }

              while (v15 != v17);
              v15 = [registrationInstanceIDs countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v15);
          }

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          control = [v11 control];
          registrationInstanceIDs2 = [control registrationInstanceIDs];

          v22 = [registrationInstanceIDs2 countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v32;
            do
            {
              v25 = 0;
              do
              {
                if (*v32 != v24)
                {
                  objc_enumerationMutation(registrationInstanceIDs2);
                }

                v26 = *(*(&v31 + 1) + 8 * v25);
                control2 = [v11 control];
                [control2 handleRegistrationWithInstanceID:v26 registered:0];

                ++v25;
              }

              while (v23 != v25);
              v23 = [registrationInstanceIDs2 countByEnumeratingWithState:&v31 objects:v43 count:16];
            }

            while (v23);
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v8);
    }

    requestsCopy = v29;
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end