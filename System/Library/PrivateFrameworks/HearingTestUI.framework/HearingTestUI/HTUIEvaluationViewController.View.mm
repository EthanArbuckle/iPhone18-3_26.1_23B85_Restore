@interface HTUIEvaluationViewController.View
- (_TtCC13HearingTestUI28HTUIEvaluationViewController4View)initWithCoder:(id)a3;
- (_TtCC13HearingTestUI28HTUIEvaluationViewController4View)initWithFrame:(CGRect)a3;
- (void)didTapHear;
- (void)updateProgressTo:(double)a3 immediately:(BOOL)a4;
@end

@implementation HTUIEvaluationViewController.View

- (_TtCC13HearingTestUI28HTUIEvaluationViewController4View)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (_TtCC13HearingTestUI28HTUIEvaluationViewController4View)initWithCoder:(id)a3
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_20CDA09C4();
}

- (void)updateProgressTo:(double)a3 immediately:(BOOL)a4
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_progressViewModel);
  v7 = self;
  sub_20CDB6D08(a4);
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
    v4 = self;
    v5 = sub_20CD84E14(v2);
    v2(v5);
    sub_20CD84E24(v2);
  }

  else
  {
    v6 = self;
  }

  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_metalAnimation);
  sub_20CDA66F0();
}

@end