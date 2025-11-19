@interface NSDate(Utilities)
+ (uint64_t)mt_longMillisecondsSince1970;
+ (uint64_t)mt_millisecondsSince1970;
- (uint64_t)mt_millisecondsSince1970;
@end

@implementation NSDate(Utilities)

+ (uint64_t)mt_millisecondsSince1970
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [a1 mt_longMillisecondsSince1970];

  return [v1 numberWithLongLong:v2];
}

- (uint64_t)mt_millisecondsSince1970
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [a1 mt_longMillisecondsSince1970];

  return [v1 numberWithLongLong:v2];
}

+ (uint64_t)mt_longMillisecondsSince1970
{
  v0 = +[MTFrameworkEnvironment sharedEnvironment];
  v1 = [v0 date];
  [v1 timeIntervalSince1970];
  v3 = (v2 * 1000.0);

  return v3;
}

@end