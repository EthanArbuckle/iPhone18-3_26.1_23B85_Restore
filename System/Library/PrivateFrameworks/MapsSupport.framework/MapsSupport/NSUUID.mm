@interface NSUUID
+ (BOOL)isValidUUIDString:(id)string;
@end

@implementation NSUUID

+ (BOOL)isValidUUIDString:(id)string
{
  stringCopy = string;
  v4 = [[NSUUID alloc] initWithUUIDString:stringCopy];

  return v4 != 0;
}

@end