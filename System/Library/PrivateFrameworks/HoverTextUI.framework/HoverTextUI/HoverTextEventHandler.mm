@interface HoverTextEventHandler
- (BOOL)handlePointerEvent:(id)event;
@end

@implementation HoverTextEventHandler

- (BOOL)handlePointerEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_25467AE04(event);

  return 0;
}

@end