@interface CKSendLaterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKSendLaterView)initWithCoder:(id)a3;
- (CKSendLaterView)initWithFrame:(CGRect)a3;
- (void)removeDelegate:(id)a3;
@end

@implementation CKSendLaterView

- (CKSendLaterView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR___CKSendLaterView_cancellables) = MEMORY[0x1E69E7CD0];
  *(&self->super.super.super.isa + OBJC_IVAR___CKSendLaterView_hostingView) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___CKSendLaterView_hostingView);
  if (v3)
  {
    [v3 sizeThatFits_];
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)removeDelegate:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_unknownObjectRetain();
    v7 = self;
    swift_unknownObjectRelease();
    if (v6 == a3)
    {
      swift_unknownObjectWeakAssign();
    }

    swift_unknownObjectRelease();
  }
}

- (CKSendLaterView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end