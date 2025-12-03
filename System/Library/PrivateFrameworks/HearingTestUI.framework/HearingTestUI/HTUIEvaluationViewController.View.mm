@interface HTUIEvaluationViewController.View
- (_TtCC13HearingTestUI28HTUIEvaluationViewController4View)initWithCoder:(id)coder;
- (_TtCC13HearingTestUI28HTUIEvaluationViewController4View)initWithFrame:(CGRect)frame;
- (void)didTapHear;
- (void)updateProgressTo:(double)to immediately:(BOOL)immediately;
@end

@implementation HTUIEvaluationViewController.View

- (_TtCC13HearingTestUI28HTUIEvaluationViewController4View)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = HTUIEvaluationViewController.View.init(frame:)(x, y, width, height);

  return v7;
}

- (_TtCC13HearingTestUI28HTUIEvaluationViewController4View)initWithCoder:(id)coder
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_20CDA09C4();
}

- (void)updateProgressTo:(double)to immediately:(BOOL)immediately
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_progressViewModel);
  selfCopy = self;
  sub_20CDB6D08(immediately);
}

- (void)didTapHear
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_didTapHearHandler);
  if (v2)
  {
    v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_didTapHearHandler);
    selfCopy = self;
    v5 = sub_20CD84E14(v2);
    v2(v5);
    sub_20CD84E24(v2);
  }

  else
  {
    selfCopy2 = self;
  }

  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_metalAnimation);
  sub_20CDA66F0();
}

@end