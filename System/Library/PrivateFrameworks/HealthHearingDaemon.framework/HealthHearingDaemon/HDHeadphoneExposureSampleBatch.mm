@interface HDHeadphoneExposureSampleBatch
+ (id)batchWithAddedSamples:(id)a3 anchor:(id)a4;
+ (id)batchWithJournaledSamples:(id)a3;
- (id)_initWithSamples:(id)a3 journaled:(BOOL)a4 anchor:(id)a5;
@end

@implementation HDHeadphoneExposureSampleBatch

+ (id)batchWithJournaledSamples:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _initWithSamples:v3 journaled:1 anchor:0];

  return v4;
}

+ (id)batchWithAddedSamples:(id)a3 anchor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) _initWithSamples:v6 journaled:0 anchor:v5];

  return v7;
}

- (id)_initWithSamples:(id)a3 journaled:(BOOL)a4 anchor:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v6)
  {
    if (!v10)
    {
      goto LABEL_5;
    }

    [HDHeadphoneExposureSampleBatch _initWithSamples:a2 journaled:self anchor:&v18];
  }

  else
  {
    if (v10)
    {
      goto LABEL_5;
    }

    [HDHeadphoneExposureSampleBatch _initWithSamples:a2 journaled:self anchor:&v18];
  }

LABEL_5:
  v17.receiver = self;
  v17.super_class = HDHeadphoneExposureSampleBatch;
  v12 = [(HDHeadphoneExposureSampleBatch *)&v17 init];
  if (v12)
  {
    v13 = [v9 copy];
    samples = v12->_samples;
    v12->_samples = v13;

    v12->_journaled = v6;
    objc_storeStrong(&v12->_anchor, a5);
    v12->_canTriggerUserNotification = [v9 hk_containsObjectPassingTest:&__block_literal_global_0];
    v15 = v12;
  }

  return v12;
}

- (uint64_t)_initWithSamples:(uint64_t)a1 journaled:(uint64_t)a2 anchor:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"HDHeadphoneExposureSampleBatch.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"anchor != nil"}];
}

- (uint64_t)_initWithSamples:(uint64_t)a1 journaled:(uint64_t)a2 anchor:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"HDHeadphoneExposureSampleBatch.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"anchor == nil"}];
}

@end