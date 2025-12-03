@interface MAGObjectUnderstandingService
- (_TtC16MagnifierSupport29MAGObjectUnderstandingService)init;
- (void)session:(id)session didUpdateDetectedObjects:(id)objects;
@end

@implementation MAGObjectUnderstandingService

- (void)session:(id)session didUpdateDetectedObjects:(id)objects
{
  sub_257BD2C2C(0, &qword_27F8F6598);
  v6 = sub_257ECF810();
  sessionCopy = session;
  selfCopy = self;
  sub_257C575A8(v6);
}

- (_TtC16MagnifierSupport29MAGObjectUnderstandingService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end