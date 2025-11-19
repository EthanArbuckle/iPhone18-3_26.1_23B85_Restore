@interface HDSampleIteratorQueryServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)requiredEntitlements;
- (HDSampleIteratorQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)objectTypes;
- (void)_queue_deliverSamples:(void *)a3 queryCursor:(uint64_t)a4 deliverResults:;
- (void)_queue_start;
@end

@implementation HDSampleIteratorQueryServer

- (HDSampleIteratorQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v16.receiver = self;
  v16.super_class = HDSampleIteratorQueryServer;
  v11 = [(HDQueryServer *)&v16 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 queryCursor];
    v13 = [v12 copy];
    queryCursor = v11->_queryCursor;
    v11->_queryCursor = v13;

    v11->_limit = [v10 limit];
  }

  return v11;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = [a3 queryCursor];
  v7 = [v6 queryDescriptors];
  v8 = [v7 count];

  if (!v8)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:3 description:@"Missing sample type for query"];
  }

  return v8 != 0;
}

- (id)objectTypes
{
  v2 = [(HKSampleIteratorQueryCursor *)self->_queryCursor queryDescriptors];
  v3 = [v2 hk_mapToSet:&__block_literal_global_160];

  return v3;
}

- (void)_queue_start
{
  v21 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HDSampleIteratorQueryServer;
  [(HDQueryServer *)&v16 _queue_start];
  queryCursor = self->_queryCursor;
  limit = self->_limit;
  v14[4] = self;
  v15 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__HDSampleIteratorQueryServer__queue_start__block_invoke;
  v14[3] = &unk_2786257A0;
  v5 = [(HDBatchedQueryServer *)self batchObjectsWithMultitypeQueryCursor:queryCursor includeDeletedObjects:0 limit:limit error:&v15 batchHandler:v14];
  v6 = v15;
  if (v5 > 2)
  {
    if (v5 == 4)
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC308];
      if (!os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *buf = 138543362;
      v18 = self;
      v9 = "%{public}@: Canceled during enumeration";
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_17;
      }

      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC308];
      if (!os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *buf = 138543362;
      v18 = self;
      v9 = "%{public}@: Suspended during enumeration";
    }

    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
    goto LABEL_17;
  }

  if (v5 == 1)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC308];
    if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Encountered error enumerating update results: %{public}@", buf, 0x16u);
    }

    v11 = [(HDQueryServer *)self clientProxy];
    v12 = [(HDQueryServer *)self queryUUID];
    [v11 client_deliverError:v6 forQuery:v12];

    goto LABEL_17;
  }

  if (v5 != 2)
  {
LABEL_17:

    goto LABEL_18;
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v18 = self;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@: Client no longer authorized", buf, 0xCu);
  }

  [(HDSampleIteratorQueryServer *)self _queue_deliverSamples:self->_queryCursor queryCursor:1 deliverResults:?];
LABEL_18:
  [(HDQueryServer *)self setDataCount:self->_deliveredResultCount];

  v13 = *MEMORY[0x277D85DE8];
}

void __43__HDSampleIteratorQueryServer__queue_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = [v9 filteredSamplesForClientWithSamples:a2];
  *(*(a1 + 32) + 224) += [v11 count];
  [(HDSampleIteratorQueryServer *)*(a1 + 32) _queue_deliverSamples:v11 queryCursor:v10 deliverResults:a6];
}

- (void)_queue_deliverSamples:(void *)a3 queryCursor:(uint64_t)a4 deliverResults:
{
  if (a1)
  {
    v7 = a3;
    v8 = a2;
    v9 = [a1 queryQueue];
    dispatch_assert_queue_V2(v9);

    v11 = [a1 clientProxy];
    v10 = [a1 queryUUID];
    [v11 client_deliverSampleObjects:v8 queryCursor:v7 deliverResults:a4 query:v10];
  }
}

@end