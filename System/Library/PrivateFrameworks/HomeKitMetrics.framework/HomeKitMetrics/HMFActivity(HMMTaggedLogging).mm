@interface HMFActivity(HMMTaggedLogging)
+ (id)currentTagProcessorList;
- (id)tagProcessorList;
@end

@implementation HMFActivity(HMMTaggedLogging)

- (id)tagProcessorList
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__HMFActivity_HMMTaggedLogging__tagProcessorList__block_invoke;
  v3[3] = &unk_2786F9010;
  v3[4] = self;
  v3[5] = &v4;
  [self synchronizeWithActivityLock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

+ (id)currentTagProcessorList
{
  _currentActivity = [MEMORY[0x277D0F770] _currentActivity];
  tagProcessorList = [_currentActivity tagProcessorList];

  return tagProcessorList;
}

@end