@interface CKRecordID
+ (id)fc_staticSecureSentinelRecordID;
+ (id)fc_staticSentinelRecordID;
@end

@implementation CKRecordID

+ (id)fc_staticSecureSentinelRecordID
{
  objc_opt_self();
  v0 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"static_sentinel_secure"];

  return v0;
}

+ (id)fc_staticSentinelRecordID
{
  objc_opt_self();
  v0 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"static_sentinel"];

  return v0;
}

@end