@interface HMDRecordChangedLogEvent
+ (id)legacyRecordChanged:(id)a3;
+ (id)recordChanged:(id)a3;
@end

@implementation HMDRecordChangedLogEvent

+ (id)legacyRecordChanged:(id)a3
{
  v3 = a3;
  v4 = [[HMDRecordChangedLogEvent alloc] initWithChangedRecord:v3 isLegacy:1];

  return v4;
}

+ (id)recordChanged:(id)a3
{
  v3 = a3;
  v4 = [[HMDRecordChangedLogEvent alloc] initWithChangedRecord:v3 isLegacy:0];

  return v4;
}

@end