@interface HMDRecordChangedLogEvent
+ (id)legacyRecordChanged:(id)changed;
+ (id)recordChanged:(id)changed;
@end

@implementation HMDRecordChangedLogEvent

+ (id)legacyRecordChanged:(id)changed
{
  changedCopy = changed;
  v4 = [[HMDRecordChangedLogEvent alloc] initWithChangedRecord:changedCopy isLegacy:1];

  return v4;
}

+ (id)recordChanged:(id)changed
{
  changedCopy = changed;
  v4 = [[HMDRecordChangedLogEvent alloc] initWithChangedRecord:changedCopy isLegacy:0];

  return v4;
}

@end