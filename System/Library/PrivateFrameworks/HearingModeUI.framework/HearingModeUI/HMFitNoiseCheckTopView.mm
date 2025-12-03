@interface HMFitNoiseCheckTopView
+ (int64_t)budStatusWithLeftBudGood:(BOOL)good rightBudGood:(BOOL)budGood;
- (_TtC13HearingModeUI22HMFitNoiseCheckTopView)initWithCoder:(id)coder;
- (_TtC13HearingModeUI22HMFitNoiseCheckTopView)initWithFrame:(CGRect)frame;
- (void)testRun;
- (void)transitionToCheckReady;
- (void)transitionToFitCheck;
- (void)transitionToFitCheckResultWithBudState:(int64_t)state actionStringBlock:(id)block;
- (void)transitionToFitNudging;
- (void)transitionToNoiseNudging;
- (void)transitionToNoiseNudgingPassed;
@end

@implementation HMFitNoiseCheckTopView

+ (int64_t)budStatusWithLeftBudGood:(BOOL)good rightBudGood:(BOOL)budGood
{
  v4 = 4;
  if (!budGood)
  {
    v4 = 1;
  }

  v5 = 5;
  if (budGood)
  {
    v5 = 2;
  }

  if (good)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

- (_TtC13HearingModeUI22HMFitNoiseCheckTopView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitCheckView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topFitNudgingView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView____lazy_storage___topNoiseNudgingView) = 0;
  result = sub_252064A74();
  __break(1u);
  return result;
}

- (void)transitionToCheckReady
{
  selfCopy = self;
  sub_25206057C();
}

- (void)transitionToFitCheck
{
  selfCopy = self;
  sub_2520606DC();
}

- (void)transitionToFitCheckResultWithBudState:(int64_t)state actionStringBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_manager);
  selfCopy = self;
  sub_252063F24();
  v8 = sub_25205F998();
  sub_25205F418(state, 1, 0);

  sub_25205D310(*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_headphoneDevice), state);
  v9 = sub_2520646F4();

  v6[2](v6, v9);

  _Block_release(v6);
}

- (void)transitionToFitNudging
{
  selfCopy = self;
  sub_252060AE8();
}

- (void)transitionToNoiseNudging
{
  selfCopy = self;
  sub_252060C68();
}

- (void)transitionToNoiseNudgingPassed
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_manager);
  selfCopy = self;
  sub_252063F24();
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.isa) + 0xB0))();
  [v4 setHidden_];

  v5 = (*((*v3 & selfCopy->super.super.super.isa) + 0x98))();
  [v5 setHidden_];

  v6 = sub_25205F998();
  [v6 setHidden_];
}

- (void)testRun
{
  selfCopy = self;
  sub_252060FCC();
}

- (_TtC13HearingModeUI22HMFitNoiseCheckTopView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end