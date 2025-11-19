@interface HDSampleCountQueryServer
- (HDSampleCountQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
@end

@implementation HDSampleCountQueryServer

- (HDSampleCountQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v16.receiver = self;
  v16.super_class = HDSampleCountQueryServer;
  v11 = [(HDQueryServer *)&v16 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 queryDescriptors];
    v13 = [v12 copy];
    queryDescriptors = v11->_queryDescriptors;
    v11->_queryDescriptors = v13;
  }

  return v11;
}

- (void)_queue_start
{
  v34 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = HDSampleCountQueryServer;
  [(HDQueryServer *)&v32 _queue_start];
  if ([(NSArray *)self->_queryDescriptors count])
  {
    v3 = [(HDQueryServer *)self clientProxy];
    v22 = [v3 remoteObjectProxy];

    v4 = MEMORY[0x277CBEB38];
    v5 = [(NSArray *)self->_queryDescriptors count];
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v21 = [v4 dictionaryWithCapacity:v6];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_queryDescriptors;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = *v29;
LABEL_7:
      v9 = 0;
      while (1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v27 = 0;
        v11 = HKWithAutoreleasePool();
        v12 = 0;
        if (v11)
        {
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:v25[3]];
          [v21 setObject:v13 forKeyedSubscript:v10];
        }

        else
        {
          v13 = [(HDQueryServer *)self queryUUID];
          [v22 client_deliverError:v12 forQuery:v13];
        }

        _Block_object_dispose(&v24, 8);
        if (!v11)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v7)
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:

      obj = [(HDQueryServer *)self queryUUID];
      [v22 client_deliverSampleCountDictionary:v21 forQuery:obj];
    }
  }

  else
  {
    v14 = [(HDQueryServer *)self clientProxy];
    v15 = [v14 remoteObjectProxy];

    v16 = [(HDQueryServer *)self profile];
    v24 = 0;
    v17 = [HDSampleEntity sampleCountsByTypeForProfile:v16 error:&v24];
    v18 = v24;

    v19 = [(HDQueryServer *)self queryUUID];
    if (v17)
    {
      [v15 client_deliverSampleTypeCountDictionary:v17 forQuery:v19];
    }

    else
    {
      [v15 client_deliverError:v18 forQuery:v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

BOOL __40__HDSampleCountQueryServer__queue_start__block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) sampleType];
  v5 = [*(a1 + 32) _filter];
  v6 = [*(a1 + 40) profile];
  v7 = [v5 predicateWithProfile:v6];

  v8 = [objc_msgSend(v4 "dataObjectClass")];
  v9 = [*(a1 + 40) profile];
  *(*(*(a1 + 48) + 8) + 24) = [v8 countOfSamplesWithType:v4 profile:v9 matchingPredicate:v7 withError:a2];

  v10 = *a2 == 0;
  return v10;
}

@end