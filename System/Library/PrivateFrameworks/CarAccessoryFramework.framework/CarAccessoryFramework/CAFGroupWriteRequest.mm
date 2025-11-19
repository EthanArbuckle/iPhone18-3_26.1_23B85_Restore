@interface CAFGroupWriteRequest
- (id)groupRequestValueForRequests:(id)a3;
- (void)addCharacteristic:(id)a3 value:(id)a4;
- (void)addCharacteristicsAndValues:(id)a3;
- (void)completedRequests:(id)a3 withResponse:(id)a4;
@end

@implementation CAFGroupWriteRequest

- (void)addCharacteristic:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__CAFGroupWriteRequest_addCharacteristic_value___block_invoke;
  v10[3] = &unk_27890D598;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  [(CAFGroupRequest *)self _lockedPerformBlock:v10];
}

uint64_t __48__CAFGroupWriteRequest_addCharacteristic_value___block_invoke(uint64_t a1)
{
  v2 = [CAFWriteRequest requestWithCharacteristic:*(a1 + 32) value:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 48) _addRequest:v2];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)addCharacteristicsAndValues:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__CAFGroupWriteRequest_addCharacteristicsAndValues___block_invoke;
  v6[3] = &unk_27890D548;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CAFGroupRequest *)self _lockedPerformBlock:v6];
}

uint64_t __52__CAFGroupWriteRequest_addCharacteristicsAndValues___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__CAFGroupWriteRequest_addCharacteristicsAndValues___block_invoke_2;
  v3[3] = &unk_27890D5C0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

uint64_t __52__CAFGroupWriteRequest_addCharacteristicsAndValues___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [CAFWriteRequest requestWithCharacteristic:a2 value:a3];
  if (v4)
  {
    [*(a1 + 32) _addRequest:v4];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)groupRequestValueForRequests:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (!v5 || (v6 = v5, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v7 = CAFGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CAFGroupWriteRequest groupRequestValueForRequests:v7];
    }

    v6 = 0;
  }

  v21 = v5;
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 value];
        v16 = v15;
        if (!v15)
        {
          v3 = [MEMORY[0x277CBEB68] null];
          v16 = v3;
        }

        v17 = [v14 characteristic];
        v18 = [v17 instanceID];
        [v8 setObject:v16 forKeyedSubscript:v18];

        if (!v15)
        {
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)completedRequests:(id)a3 withResponse:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 values];

  if (v7)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v5;
    v8 = v5;
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
          v14 = [v6 values];
          v15 = [v13 characteristic];
          v16 = [v15 instanceID];
          v17 = [v14 objectForKeyedSubscript:v16];

          if (v17)
          {
            v18 = [v13 characteristic];
            v19 = [v13 characteristic];
            v20 = [v19 instanceID];
            [v18 handleWrite:v20 value:v17];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    v5 = v22;
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end