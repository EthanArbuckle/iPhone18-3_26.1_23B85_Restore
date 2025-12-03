@interface DUCalendarEvent
- (void)encodeWithCoder:(id)coder;
@end

@implementation DUCalendarEvent

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232C05894();
}

@end