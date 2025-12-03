@interface MLHostResult
- (_TtC20LighthouseBackground12MLHostResult)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MLHostResult

- (_TtC20LighthouseBackground12MLHostResult)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_status) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_policy) = 1;
  v4 = (&self->super.isa + OBJC_IVAR____TtC20LighthouseBackground12MLHostResult_error);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(MLHostResult *)&v6 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MLHostResult.encode(with:)(coderCopy);
}

@end