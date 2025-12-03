@interface NSTextContentManager(Helper)
- (uint64_t)_rangeFromTextRange_emk:()Helper;
@end

@implementation NSTextContentManager(Helper)

- (uint64_t)_rangeFromTextRange_emk:()Helper
{
  v4 = a3;
  documentRange = [self documentRange];
  location = [documentRange location];
  location2 = [v4 location];
  v8 = [self offsetFromLocation:location toLocation:location2];

  location3 = [v4 location];
  endLocation = [v4 endLocation];

  [self offsetFromLocation:location3 toLocation:endLocation];
  return v8;
}

@end