@interface LiveActivityScheduleRequest
- (_TtC10NewsDaemon27LiveActivityScheduleRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LiveActivityScheduleRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  LiveActivityScheduleRequest.encode(with:)(coderCopy);
}

- (_TtC10NewsDaemon27LiveActivityScheduleRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end