@interface HMDRecordsSavedLogEvent
+ (id)legacyRecordsSaved:(id)a3;
+ (id)recordsSaved:(id)a3;
@end

@implementation HMDRecordsSavedLogEvent

+ (id)legacyRecordsSaved:(id)a3
{
  v3 = a3;
  v4 = [[HMDRecordsSavedLogEvent alloc] initWithSavedRecords:v3 isLegacy:1];

  return v4;
}

+ (id)recordsSaved:(id)a3
{
  v3 = a3;
  v4 = [[HMDRecordsSavedLogEvent alloc] initWithSavedRecords:v3 isLegacy:0];

  return v4;
}

@end