@interface NTPBCKRecordType(FCAdditions)
+ (id)fc_articleRecordType;
@end

@implementation NTPBCKRecordType(FCAdditions)

+ (id)fc_articleRecordType
{
  v0 = objc_alloc_init(MEMORY[0x1E69B6DA8]);
  [v0 setName:@"Article"];

  return v0;
}

@end