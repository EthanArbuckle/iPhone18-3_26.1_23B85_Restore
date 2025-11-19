@interface HMMTRAttributeReportDistributor
- (HMMTRAttributeReportDistributor)init;
- (id)registerHandlerForAttributePath:(id)a3 queue:(id)a4 handler:(id)a5;
- (void)allAttributesReady;
- (void)deregisterHandlerForAttributePath:(id)a3 registry:(id)a4;
- (void)distributeAttributeReport:(id)a3;
@end

@implementation HMMTRAttributeReportDistributor

- (void)allAttributesReady
{
  v30 = *MEMORY[0x277D85DE8];
  [(HMMTRAttributeReportDistributor *)self setAllAttributesReported:1];
  v3 = [(HMMTRAttributeReportDistributor *)self receivers];
  v4 = [v3 copy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v17)
  {
    v16 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [obj objectForKeyedSubscript:{*(*(&v24 + 1) + 8 * i), v16}];
        v7 = [v6 copy];

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v20 + 1) + 8 * j);
              v14 = [v13 queue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __53__HMMTRAttributeReportDistributor_allAttributesReady__block_invoke;
              block[3] = &unk_2786F0CA8;
              block[4] = v13;
              dispatch_async(v14, block);
            }

            v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v10);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v17);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __53__HMMTRAttributeReportDistributor_allAttributesReady__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) receiver];
  v1[2](v1, 0);
}

- (void)distributeAttributeReport:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(HMMTRAttributeReportDistributor *)self receivers];
    v9 = [v8 objectForKeyedSubscript:v7];
    v10 = [v9 copy];

    if (v10)
    {
      v19 = v10;
      v20 = v7;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            v17 = [v16 queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __61__HMMTRAttributeReportDistributor_distributeAttributeReport___block_invoke;
            block[3] = &unk_2786EF328;
            block[4] = v16;
            v22 = v4;
            dispatch_async(v17, block);
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      v10 = v19;
      v7 = v20;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __61__HMMTRAttributeReportDistributor_distributeAttributeReport___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) receiver];
  v2[2](v2, *(a1 + 40));
}

- (void)deregisterHandlerForAttributePath:(id)a3 registry:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(HMMTRAttributeReportDistributor *)self receivers];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    [v8 removeObject:v9];
  }
}

- (id)registerHandlerForAttributePath:(id)a3 queue:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(HMMTRAttributeReportDistributor *)self receivers];
  v12 = [v11 objectForKeyedSubscript:v8];

  if (!v12)
  {
    v13 = [MEMORY[0x277CBEB18] array];
    v14 = [(HMMTRAttributeReportDistributor *)self receivers];
    [v14 setObject:v13 forKeyedSubscript:v8];
  }

  v15 = [[HMMTRAttributeReportDistributorRegistry alloc] initWithQueue:v10 receiver:v9];

  v16 = [(HMMTRAttributeReportDistributor *)self receivers];
  v17 = [v16 objectForKeyedSubscript:v8];
  [v17 addObject:v15];

  if ([(HMMTRAttributeReportDistributor *)self allAttributesReported])
  {
    [(HMMTRAttributeReportDistributor *)self allAttributesReady];
  }

  return v15;
}

- (HMMTRAttributeReportDistributor)init
{
  v6.receiver = self;
  v6.super_class = HMMTRAttributeReportDistributor;
  v2 = [(HMMTRAttributeReportDistributor *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    receivers = v2->_receivers;
    v2->_receivers = v3;
  }

  return v2;
}

@end