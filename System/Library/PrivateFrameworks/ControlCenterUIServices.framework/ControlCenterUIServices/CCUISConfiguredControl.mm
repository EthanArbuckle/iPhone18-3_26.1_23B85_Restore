@interface CCUISConfiguredControl
- (CCUISConfiguredControl)init;
- (CCUISConfiguredControl)initWithIdentity:(id)identity type:(unint64_t)type size:(unint64_t)size;
- (NSString)description;
@end

@implementation CCUISConfiguredControl

- (CCUISConfiguredControl)initWithIdentity:(id)identity type:(unint64_t)type size:(unint64_t)size
{
  *(&self->super.isa + OBJC_IVAR___CCUISConfiguredControl_identity) = identity;
  *(&self->super.isa + OBJC_IVAR___CCUISConfiguredControl_type) = type;
  *(&self->super.isa + OBJC_IVAR___CCUISConfiguredControl_size) = size;
  v7.receiver = self;
  v7.super_class = CCUISConfiguredControl;
  identityCopy = identity;
  return [(CCUISConfiguredControl *)&v7 init];
}

- (NSString)description
{
  selfCopy = self;
  CCUISConfiguredControl.description.getter();

  v3 = sub_2442B4878();

  return v3;
}

- (CCUISConfiguredControl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end