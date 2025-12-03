@interface NSCalendar(ContentKit)
- (id)wf_dateFromComponentsInCurrentTimeZone:()ContentKit;
@end

@implementation NSCalendar(ContentKit)

- (id)wf_dateFromComponentsInCurrentTimeZone:()ContentKit
{
  v4 = [a3 copy];
  timeZone = [self timeZone];
  [v4 setTimeZone:timeZone];

  v6 = [self dateFromComponents:v4];

  return v6;
}

@end