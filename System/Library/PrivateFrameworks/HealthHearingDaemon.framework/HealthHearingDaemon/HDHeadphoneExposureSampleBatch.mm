@interface HDHeadphoneExposureSampleBatch
+ (id)batchWithAddedSamples:(id)samples anchor:(id)anchor;
+ (id)batchWithJournaledSamples:(id)samples;
- (id)_initWithSamples:(id)samples journaled:(BOOL)journaled anchor:(id)anchor;
@end

@implementation HDHeadphoneExposureSampleBatch

+ (id)batchWithJournaledSamples:(id)samples
{
  samplesCopy = samples;
  v4 = [objc_alloc(objc_opt_class()) _initWithSamples:samplesCopy journaled:1 anchor:0];

  return v4;
}

+ (id)batchWithAddedSamples:(id)samples anchor:(id)anchor
{
  anchorCopy = anchor;
  samplesCopy = samples;
  v7 = [objc_alloc(objc_opt_class()) _initWithSamples:samplesCopy journaled:0 anchor:anchorCopy];

  return v7;
}

- (id)_initWithSamples:(id)samples journaled:(BOOL)journaled anchor:(id)anchor
{
  journaledCopy = journaled;
  samplesCopy = samples;
  anchorCopy = anchor;
  v11 = anchorCopy;
  if (journaledCopy)
  {
    if (!anchorCopy)
    {
      goto LABEL_5;
    }

    [HDHeadphoneExposureSampleBatch _initWithSamples:a2 journaled:self anchor:&v18];
  }

  else
  {
    if (anchorCopy)
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
    v13 = [samplesCopy copy];
    samples = v12->_samples;
    v12->_samples = v13;

    v12->_journaled = journaledCopy;
    objc_storeStrong(&v12->_anchor, anchor);
    v12->_canTriggerUserNotification = [samplesCopy hk_containsObjectPassingTest:&__block_literal_global_0];
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