@interface CKDebugTicker
+ (_TtC7ChatKit13CKDebugTicker)sharedTicker;
- (void)showAndLogValueWhileRecordingWithWindowScene:(id)scene parentWindow:(id)window;
- (void)showWithWindowScene:(id)scene parentWindow:(id)window;
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
  selfCopy = self;
  sub_190D295B4();
}

- (void)showAndLogValueWhileRecordingWithWindowScene:(id)scene parentWindow:(id)window
{
  sceneCopy = scene;
  windowCopy = window;
  selfCopy = self;
  sub_190D29950(sceneCopy, windowCopy);
}

- (void)showWithWindowScene:(id)scene parentWindow:(id)window
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_logFrequency) = 0;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_displayLink);
  sceneCopy = scene;
  windowCopy = window;
  selfCopy = self;
  if (v6)
  {
    [v6 setPaused_];
  }

  sub_190D29CA8(scene, window);
}

@end