@interface NSTextContentManager(Helper)
- (uint64_t)_rangeFromTextRange_emk:()Helper;
@end

@implementation NSTextContentManager(Helper)

- (uint64_t)_rangeFromTextRange_emk:()Helper
{
  v4 = a3;
  v5 = [a1 documentRange];
  v6 = [v5 location];
  v7 = [v4 location];
  v8 = [a1 offsetFromLocation:v6 toLocation:v7];

  v9 = [v4 location];
  v10 = [v4 endLocation];

  [a1 offsetFromLocation:v9 toLocation:v10];
  return v8;
}

@end