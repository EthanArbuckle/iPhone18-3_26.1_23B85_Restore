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
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  queryUUID = [(HDQueryServer *)self queryUUID];
  filter = [(HDQueryServer *)self filter];
  profile = [(HDQueryServer *)self profile];
  v8 = [filter predicateWithProfile:profile];

  profile2 = [(HDQueryServer *)self profile];
  v25 = 0;
  v10 = [HDSampleEntity sampleTypesForSamplesMatchingPredicate:v8 profile:profile2 error:&v25];
  v11 = v25;

  -[HDQueryServer setDataCount:](self, "setDataCount:", [v10 count]);
  if (v11)
  {
    [remoteObjectProxy client_deliverError:v11 forQuery:queryUUID];
  }

  else
  {
    v20 = queryUUID;
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

    queryUUID = v20;
    [remoteObjectProxy client_deliverSampleTypes:v12 query:v20];
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end