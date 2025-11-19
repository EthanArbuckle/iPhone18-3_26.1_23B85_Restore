@interface NSCalendar(ContentKit)
- (id)wf_dateFromComponentsInCurrentTimeZone:()ContentKit;
@end

@implementation NSCalendar(ContentKit)

- (id)wf_dateFromComponentsInCurrentTimeZone:()ContentKit
{
  v4 = [a3 copy];
  v5 = [a1 timeZone];
  [v4 setTimeZone:v5];

  v6 = [a1 dateFromComponents:v4];

  return v6;
}

@end