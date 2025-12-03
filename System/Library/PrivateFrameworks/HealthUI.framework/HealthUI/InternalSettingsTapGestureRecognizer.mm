@interface InternalSettingsTapGestureRecognizer
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC8HealthUI36InternalSettingsTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation InternalSettingsTapGestureRecognizer

- (_TtC8HealthUI36InternalSettingsTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (target)
  {
    swift_unknownObjectRetain();
    sub_1C3D20774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = InternalSettingsTapGestureRecognizer.init(target:action:)(v8, action);

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v10 = _s8HealthUI36InternalSettingsTapGestureRecognizerC07gestureG0_13shouldReceiveSbSo09UIGestureG0C_So7UITouchCtF_0(recognizerCopy, touchCopy);

  return v10;
}

@end