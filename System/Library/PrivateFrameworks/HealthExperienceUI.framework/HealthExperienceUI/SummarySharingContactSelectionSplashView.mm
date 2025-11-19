@interface SummarySharingContactSelectionSplashView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (_TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView)initWithCoder:(id)a3;
@end

@implementation SummarySharingContactSelectionSplashView

- (_TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_openContactsHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = sub_1BA4A15D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1588();
  v11 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_openContactsHandler);
  if (v11)
  {
    v12 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC18HealthExperienceUI40SummarySharingContactSelectionSplashView_openContactsHandler);
    v13 = self;
    v14 = sub_1B9F0F1B4(v11, v12);
    v11(v14);
    sub_1B9F0E310(v11);
  }

  (*(v8 + 8))(v10, v7);
  return 0;
}

@end