@interface NSDate(Serialization)
+ (id)_dateWithString:()Serialization;
- (id)serialize;
@end

@implementation NSDate(Serialization)

- (id)serialize
{
  v2 = formatter();
  v3 = [v2 stringFromDate:a1];

  return v3;
}

+ (id)_dateWithString:()Serialization
{
  v3 = a3;
  v4 = formatter();
  v5 = [v4 dateFromString:v3];

  return v5;
}

@end