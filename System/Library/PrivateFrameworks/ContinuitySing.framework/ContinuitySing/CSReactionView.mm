@interface CSReactionView
- (CSReactionView)init;
- (CSReactionView)initWithCoder:(id)coder;
- (CSReactionView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)showReaction:(id)reaction from:(id)from;
- (void)showReactionSendingAnimation:(id)animation at:(CGPoint)at;
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
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for CSReactionView();
  [(CSReactionView *)&v5 dealloc];
}

- (CSReactionView)initWithCoder:(id)coder
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_244242BB0();
}

- (void)showReaction:(id)reaction from:(id)from
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
  selfCopy = self;
  sub_24423E8E8(v5, v7, v8, v10);
}

- (void)showReactionSendingAnimation:(id)animation at:(CGPoint)at
{
  y = at.y;
  x = at.x;
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_244257A78();
  v9 = v8;
  selfCopy = self;
  sub_24423FC9C(v7, v9, x, y);
}

- (CSReactionView)initWithFrame:(CGRect)frame
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