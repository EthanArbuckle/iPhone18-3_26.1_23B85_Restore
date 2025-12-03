@interface DTProcessorTraceTapMessage
- (DTProcessorTraceTapMessage)init;
- (id)initAsKind:(int)kind;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DTProcessorTraceTapMessage

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2480257F8(coderCopy);
}

- (id)initAsKind:(int)kind
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (DTProcessorTraceTapMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end