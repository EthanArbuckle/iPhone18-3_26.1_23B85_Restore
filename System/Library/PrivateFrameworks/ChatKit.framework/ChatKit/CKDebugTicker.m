@interface CKDebugTicker
+ (_TtC7ChatKit13CKDebugTicker)sharedTicker;
- (void)showAndLogValueWhileRecordingWithWindowScene:(id)a3 parentWindow:(id)a4;
- (void)showWithWindowScene:(id)a3 parentWindow:(id)a4;
- (void)tick;
@end

@implementation CKDebugTicker

+ (_TtC7ChatKit13CKDebugTicker)sharedTicker
{
  if (qword_1EAD46B50 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD46B58;

  return v3;
}

- (void)tick
{
  v2 = self;
  sub_190D295B4();
}

- (void)showAndLogValueWhileRecordingWithWindowScene:(id)a3 parentWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_190D29950(v6, v7);
}

- (void)showWithWindowScene:(id)a3 parentWindow:(id)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_logFrequency) = 0;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_displayLink);
  v7 = a3;
  v8 = a4;
  v9 = self;
  if (v6)
  {
    [v6 setPaused_];
  }

  sub_190D29CA8(a3, a4);
}

@end