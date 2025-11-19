@interface SGMetricsDissector
- (BOOL)_shouldSampleMessage;
- (SGMetricsDissector)initWithEntityStore:(id)a3;
- (void)dissectMailMessage:(id)a3 entity:(id)a4 context:(id)a5;
- (void)dissectTextMessage:(id)a3 entity:(id)a4 context:(id)a5;
@end

@implementation SGMetricsDissector

- (void)dissectTextMessage:(id)a3 entity:(id)a4 context:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31 = self;
  if ([(SGMetricsDissector *)self _shouldSampleMessage])
  {
    v11 = [v8 sender];
    v12 = [v11 handles];
    if (![v12 count])
    {

LABEL_16:
      goto LABEL_17;
    }

    v13 = [v8 recipients];

    if (v13)
    {
      v14 = [v9 duplicateKey];
      v11 = [v14 bundleId];

      if (v11)
      {
        v15 = [v8 isSent];
        v16 = objc_autoreleasePoolPush();
        v17 = v16;
        if (v15)
        {
          context = v16;
          v30 = v10;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v18 = [v8 recipients];
          v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v33;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v33 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = [*(*(&v32 + 1) + 8 * i) handles];
                v24 = [v23 objectAtIndexedSubscript:0];
                [SGMetricsHelper recordConversationTurnWithDetail:v24 received:0 throughApp:v11 withStore:v31->_store];
              }

              v20 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
            }

            while (v20);
          }

          objc_autoreleasePoolPop(context);
          v10 = v30;
        }

        else
        {
          v25 = [v8 sender];
          v26 = [v25 handles];
          v27 = [v26 objectAtIndexedSubscript:0];
          [SGMetricsHelper recordConversationTurnWithDetail:v27 received:1 throughApp:v11 withStore:v31->_store];

          objc_autoreleasePoolPop(v17);
        }
      }

      goto LABEL_16;
    }
  }

LABEL_17:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)dissectMailMessage:(id)a3 entity:(id)a4 context:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  if ([(SGMetricsDissector *)self _shouldSampleMessage])
  {
    v12 = [v8 from];
    if (v12)
    {
      v13 = v12;
      v14 = [v8 to];

      if (v14)
      {
        v15 = [v9 duplicateKey];
        v16 = [v15 bundleId];

        if (v16)
        {
          if ([v8 isSent])
          {
            v28 = v10;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            obj = [v8 to];
            v17 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v31;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v31 != v19)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v21 = *(*(&v30 + 1) + 8 * i);
                  v22 = objc_autoreleasePoolPush();
                  v23 = [v21 emailAddress];
                  [SGMetricsHelper recordConversationTurnWithDetail:v23 received:0 throughApp:v16 withStore:v11->_store];

                  objc_autoreleasePoolPop(v22);
                }

                v18 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
              }

              while (v18);
            }

            v10 = v28;
          }

          else
          {
            v24 = objc_autoreleasePoolPush();
            v25 = [v8 from];
            v26 = [v25 emailAddress];
            [SGMetricsHelper recordConversationTurnWithDetail:v26 received:1 throughApp:v16 withStore:v11->_store];

            objc_autoreleasePoolPop(v24);
          }
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldSampleMessage
{
  v2 = objc_autoreleasePoolPush();
  v3 = vcvts_n_f32_u32(arc4random_uniform(0xFFFFFFFF), 0x20uLL) <= 0.00001;
  objc_autoreleasePoolPop(v2);
  return v3;
}

- (SGMetricsDissector)initWithEntityStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGMetricsDissector;
  v6 = [(SGMetricsDissector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

@end