@interface NSDate(CDMJSONSerialization)
- (id)_cdm_safeJSONString;
@end

@implementation NSDate(CDMJSONSerialization)

- (id)_cdm_safeJSONString
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZ"];
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  [v2 setTimeZone:systemTimeZone];

  v4 = [v2 stringFromDate:self];

  return v4;
}

@end