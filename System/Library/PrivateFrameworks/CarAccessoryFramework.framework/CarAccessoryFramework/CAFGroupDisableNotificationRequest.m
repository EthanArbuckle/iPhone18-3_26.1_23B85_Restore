@interface CAFGroupDisableNotificationRequest
- (id)groupRequestValueForRequests:(id)a3;
- (id)requestForCharacteristic:(id)a3;
- (id)requestForControl:(id)a3;
- (void)addControl:(id)a3;
- (void)completedRequests:(id)a3 withResponse:(id)a4;
@end

@implementation CAFGroupDisableNotificationRequest

- (void)addControl:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CAFGroupDisableNotificationRequest_addControl___block_invoke;
  v6[3] = &unk_27890D548;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (id)requestForCharacteristic:(id)a3
{
  v3 = a3;
  if ([v3 notifies])
  {
    v4 = [(CAFRequest *)CAFDisableNotificationRequest requestWithCharacteristic:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)requestForControl:(id)a3
{
  v3 = a3;
  if ([v3 notifies])
  {
    v4 = [(CAFRequest *)CAFDisableNotificationRequest requestWithControl:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)groupRequestValueForRequests:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  v4 = v3;
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
        v14 = [v13 characteristic];
        v15 = [v14 registrationInstanceIDs];
        [v7 addObjectsFromArray:v15];

        v16 = [v13 control];
        v17 = [v16 registrationInstanceIDs];
        [v7 addObjectsFromArray:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)completedRequests:(id)a3 withResponse:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 values];

  if (v6)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = v5;
    obj = v5;
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
          v12 = [v11 characteristic];
          v13 = [v12 registrationInstanceIDs];

          v14 = [v13 countByEnumeratingWithState:&v35 objects:v44 count:16];
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
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v35 + 1) + 8 * v17);
                v19 = [v11 characteristic];
                [v19 handleRegistrationWithInstanceID:v18 registered:0];

                ++v17;
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v15);
          }

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v20 = [v11 control];
          v21 = [v20 registrationInstanceIDs];

          v22 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
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
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v31 + 1) + 8 * v25);
                v27 = [v11 control];
                [v27 handleRegistrationWithInstanceID:v26 registered:0];

                ++v25;
              }

              while (v23 != v25);
              v23 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
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

    v5 = v29;
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end