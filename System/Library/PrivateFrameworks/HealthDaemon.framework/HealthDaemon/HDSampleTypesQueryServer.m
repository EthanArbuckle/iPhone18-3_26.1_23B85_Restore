@interface HDSampleTypesQueryServer
- (void)_queue_start;
@end

@implementation HDSampleTypesQueryServer

- (void)_queue_start
{
  v28 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = HDSampleTypesQueryServer;
  [(HDQueryServer *)&v26 _queue_start];
  v3 = [(HDQueryServer *)self clientProxy];
  v4 = [v3 remoteObjectProxy];

  v5 = [(HDQueryServer *)self queryUUID];
  v6 = [(HDQueryServer *)self filter];
  v7 = [(HDQueryServer *)self profile];
  v8 = [v6 predicateWithProfile:v7];

  v9 = [(HDQueryServer *)self profile];
  v25 = 0;
  v10 = [HDSampleEntity sampleTypesForSamplesMatchingPredicate:v8 profile:v9 error:&v25];
  v11 = v25;

  -[HDQueryServer setDataCount:](self, "setDataCount:", [v10 count]);
  if (v11)
  {
    [v4 client_deliverError:v11 forQuery:v5];
  }

  else
  {
    v20 = v5;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v15);
    }

    v5 = v20;
    [v4 client_deliverSampleTypes:v12 query:v20];
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end