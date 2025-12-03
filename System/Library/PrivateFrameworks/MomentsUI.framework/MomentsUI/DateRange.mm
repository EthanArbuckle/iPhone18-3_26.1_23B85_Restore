@interface DateRange
- (_TtC9MomentsUI9DateRange)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DateRange

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  DateRange.encode(with:)(coderCopy);
}

- (_TtC9MomentsUI9DateRange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end