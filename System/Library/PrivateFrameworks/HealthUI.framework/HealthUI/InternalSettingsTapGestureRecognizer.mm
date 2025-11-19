@interface InternalSettingsTapGestureRecognizer
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC8HealthUI36InternalSettingsTapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
@end

@implementation InternalSettingsTapGestureRecognizer

- (_TtC8HealthUI36InternalSettingsTapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    swift_unknownObjectRetain();
    sub_1C3D20774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = InternalSettingsTapGestureRecognizer.init(target:action:)(v8, a4);

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = _s8HealthUI36InternalSettingsTapGestureRecognizerC07gestureG0_13shouldReceiveSbSo09UIGestureG0C_So7UITouchCtF_0(v7, v8);

  return v10;
}

@end