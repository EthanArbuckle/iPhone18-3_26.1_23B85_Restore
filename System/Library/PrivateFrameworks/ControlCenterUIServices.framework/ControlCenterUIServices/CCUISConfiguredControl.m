@interface CCUISConfiguredControl
- (CCUISConfiguredControl)init;
- (CCUISConfiguredControl)initWithIdentity:(id)a3 type:(unint64_t)a4 size:(unint64_t)a5;
- (NSString)description;
@end

@implementation CCUISConfiguredControl

- (CCUISConfiguredControl)initWithIdentity:(id)a3 type:(unint64_t)a4 size:(unint64_t)a5
{
  *(&self->super.isa + OBJC_IVAR___CCUISConfiguredControl_identity) = a3;
  *(&self->super.isa + OBJC_IVAR___CCUISConfiguredControl_type) = a4;
  *(&self->super.isa + OBJC_IVAR___CCUISConfiguredControl_size) = a5;
  v7.receiver = self;
  v7.super_class = CCUISConfiguredControl;
  v5 = a3;
  return [(CCUISConfiguredControl *)&v7 init];
}

- (NSString)description
{
  v2 = self;
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