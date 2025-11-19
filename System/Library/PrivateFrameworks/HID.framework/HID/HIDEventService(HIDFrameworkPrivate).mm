@interface HIDEventService(HIDFrameworkPrivate)
- (id)eventStatistics;
@end

@implementation HIDEventService(HIDFrameworkPrivate)

- (id)eventStatistics
{
  v0 = _IOHIDServiceCopyEventCounts();

  return v0;
}

@end