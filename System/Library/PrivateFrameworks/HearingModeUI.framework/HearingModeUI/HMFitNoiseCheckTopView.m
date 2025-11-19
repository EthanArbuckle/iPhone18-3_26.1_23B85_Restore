@interface HMFitNoiseCheckTopView
+ (int64_t)budStatusWithLeftBudGood:(BOOL)a3 rightBudGood:(BOOL)a4;
- (_TtC13HearingModeUI22HMFitNoiseCheckTopView)initWithCoder:(id)a3;
- (_TtC13HearingModeUI22HMFitNoiseCheckTopView)initWithFrame:(CGRect)a3;
- (void)testRun;
- (void)transitionToCheckReady;
- (void)transitionToFitCheck;
- (void)transitionToFitCheckResultWithBudState:(int64_t)a3 actionStringBlock:(id)a4;
- (void)transitionToFitNudging;
- (void)transitionToNoiseNudging;
- (void)transitionToNoiseNudgingPassed;
@end

@implementation HMFitNoiseCheckTopView

+ (int64_t)budStatusWithLeftBudGood:(BOOL)a3 rightBudGood:(BOOL)a4
{
  v4 = 4;
  if (!a4)
  {
    v4 = 1;
  }

  v5 = 5;
  if (a4)
  {
    v5 = 2;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

- (_TtC13HearingModeUI22HMFitNoiseCheckTopView)initWithCoder:(id)a3
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
  v2 = self;
  sub_25206057C();
}

- (void)transitionToFitCheck
{
  v2 = self;
  sub_2520606DC();
}

- (void)transitionToFitCheckResultWithBudState:(int64_t)a3 actionStringBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_manager);
  v10 = self;
  sub_252063F24();
  v8 = sub_25205F998();
  sub_25205F418(a3, 1, 0);

  sub_25205D310(*(&v10->super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_headphoneDevice), a3);
  v9 = sub_2520646F4();

  v6[2](v6, v9);

  _Block_release(v6);
}

- (void)transitionToFitNudging
{
  v2 = self;
  sub_252060AE8();
}

- (void)transitionToNoiseNudging
{
  v2 = self;
  sub_252060C68();
}

- (void)transitionToNoiseNudgingPassed
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI22HMFitNoiseCheckTopView_manager);
  v7 = self;
  sub_252063F24();
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & v7->super.super.super.isa) + 0xB0))();
  [v4 setHidden_];

  v5 = (*((*v3 & v7->super.super.super.isa) + 0x98))();
  [v5 setHidden_];

  v6 = sub_25205F998();
  [v6 setHidden_];
}

- (void)testRun
{
  v2 = self;
  sub_252060FCC();
}

- (_TtC13HearingModeUI22HMFitNoiseCheckTopView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end