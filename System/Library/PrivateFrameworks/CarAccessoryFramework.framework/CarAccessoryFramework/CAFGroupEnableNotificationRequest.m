@interface CAFGroupEnableNotificationRequest
- (id)groupRequestValueForRequests:(id)a3;
- (id)requestForCharacteristic:(id)a3;
- (id)requestForControl:(id)a3;
- (void)addControl:(id)a3;
- (void)completedRequests:(id)a3 withResponse:(id)a4;
@end

@implementation CAFGroupEnableNotificationRequest

- (void)addControl:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__CAFGroupEnableNotificationRequest_addControl___block_invoke;
  v6[3] = &unk_27890D548;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CAFGroupRequest *)self _lockedPerformBlock:v6];
}

uint64_t __48__CAFGroupEnableNotificationRequest_addControl___block_invoke(uint64_t a1)
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
    v4 = [(CAFRequest *)CAFEnableNotificationRequest requestWithCharacteristic:v3];
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
    v4 = [(CAFRequest *)CAFEnableNotificationRequest requestWithControl:v3];
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
  v63 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 values];

  if (v7)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v43 = v5;
    obj = v5;
    v46 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (!v46)
    {
      goto LABEL_37;
    }

    v45 = *v57;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v57 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v8;
        v9 = *(*(&v56 + 1) + 8 * v8);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v10 = [v9 characteristic];
        v11 = [v10 registrationInstanceIDs];

        v12 = [v11 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v53;
          do
          {
            v15 = 0;
            do
            {
              if (*v53 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v52 + 1) + 8 * v15);
              v17 = [v6 values];
              v18 = [v17 objectForKeyedSubscript:v16];

              v19 = [MEMORY[0x277CBEB68] null];
              v20 = [v18 isEqual:v19];

              if (v20)
              {
                v21 = [v9 characteristic];
                v22 = v21;
                v23 = v16;
                v24 = 0;
LABEL_16:
                [v21 handleRegistrationWithInstanceID:v23 value:v24 registered:1];
                goto LABEL_17;
              }

              v21 = [v9 characteristic];
              v22 = v21;
              v23 = v16;
              if (v18)
              {
                v24 = v18;
                goto LABEL_16;
              }

              [v21 handleRegistrationWithInstanceID:v16 registered:0];
LABEL_17:

              ++v15;
            }

            while (v13 != v15);
            v25 = [v11 countByEnumeratingWithState:&v52 objects:v61 count:16];
            v13 = v25;
          }

          while (v25);
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v26 = [v9 control];
        v27 = [v26 registrationInstanceIDs];

        v28 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
        if (!v28)
        {
          goto LABEL_35;
        }

        v29 = v28;
        v30 = *v49;
        do
        {
          v31 = 0;
          do
          {
            if (*v49 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v48 + 1) + 8 * v31);
            v33 = [v6 values];
            v34 = [v33 objectForKeyedSubscript:v32];

            v35 = [MEMORY[0x277CBEB68] null];
            v36 = [v34 isEqual:v35];

            if (v36)
            {
              v37 = [v9 control];
              v38 = v37;
              v39 = v32;
              v40 = 0;
LABEL_30:
              [v37 handleRegistrationWithInstanceID:v39 value:v40 registered:1];
              goto LABEL_31;
            }

            v37 = [v9 control];
            v38 = v37;
            v39 = v32;
            if (v34)
            {
              v40 = v34;
              goto LABEL_30;
            }

            [v37 handleRegistrationWithInstanceID:v32 registered:0];
LABEL_31:

            ++v31;
          }

          while (v29 != v31);
          v41 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
          v29 = v41;
        }

        while (v41);
LABEL_35:

        v8 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (!v46)
      {
LABEL_37:

        v5 = v43;
        break;
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

@end