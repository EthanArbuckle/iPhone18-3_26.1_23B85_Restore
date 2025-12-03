@interface IMDSmartRepliesManager
+ (id)sharedManager;
- (id)messageIndexingJobWithSize:(int64_t)size context:(id)context timingCollection:(id)collection;
@end

@implementation IMDSmartRepliesManager

+ (id)sharedManager
{
  if (qword_1EBA53A80 != -1)
  {
    sub_1B7CF8AC0();
  }

  v3 = qword_1EBA53A68;

  return v3;
}

- (id)messageIndexingJobWithSize:(int64_t)size context:(id)context timingCollection:(id)collection
{
  v5 = objc_alloc_init(IMDSmartRepliesMessageDonationJob);

  return v5;
}

@end