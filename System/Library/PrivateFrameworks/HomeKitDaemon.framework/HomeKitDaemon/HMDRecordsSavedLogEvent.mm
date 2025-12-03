@interface HMDRecordsSavedLogEvent
+ (id)legacyRecordsSaved:(id)saved;
+ (id)recordsSaved:(id)saved;
@end

@implementation HMDRecordsSavedLogEvent

+ (id)legacyRecordsSaved:(id)saved
{
  savedCopy = saved;
  v4 = [[HMDRecordsSavedLogEvent alloc] initWithSavedRecords:savedCopy isLegacy:1];

  return v4;
}

+ (id)recordsSaved:(id)saved
{
  savedCopy = saved;
  v4 = [[HMDRecordsSavedLogEvent alloc] initWithSavedRecords:savedCopy isLegacy:0];

  return v4;
}

@end