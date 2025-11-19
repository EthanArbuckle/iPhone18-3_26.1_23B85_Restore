@interface NSDateFormatter(MTAdditions)
- (id)stringFromDate:()MTAdditions withRelativeToTimeZone:;
@end

@implementation NSDateFormatter(MTAdditions)

- (id)stringFromDate:()MTAdditions withRelativeToTimeZone:
{
  v6 = a3;
  v7 = [a4 secondsFromGMTForDate:v6];
  v8 = [a1 timeZone];
  v9 = (v7 - [v8 secondsFromGMTForDate:v6]);

  v10 = [v6 dateByAddingTimeInterval:v9];

  v11 = [a1 stringFromDate:v10];

  return v11;
}

@end