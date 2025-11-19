@interface CSReactionView
- (CSReactionView)init;
- (CSReactionView)initWithCoder:(id)a3;
- (CSReactionView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)showReaction:(id)a3 from:(id)a4;
- (void)showReactionSendingAnimation:(id)a3 at:(CGPoint)a4;
@end

@implementation CSReactionView

- (CSReactionView)init
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = CSReactionView.init()();

  return v2;
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___CSReactionView_cleanupTimer);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for CSReactionView();
  [(CSReactionView *)&v5 dealloc];
}

- (CSReactionView)initWithCoder:(id)a3
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_244242BB0();
}

- (void)showReaction:(id)a3 from:(id)a4
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_244257A78();
  v7 = v6;
  v8 = sub_244257A78();
  v10 = v9;
  v11 = self;
  sub_24423E8E8(v5, v7, v8, v10);
}

- (void)showReactionSendingAnimation:(id)a3 at:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_244257A78();
  v9 = v8;
  v10 = self;
  sub_24423FC9C(v7, v9, x, y);
}

- (CSReactionView)initWithFrame:(CGRect)a3
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end