@interface CSTipsManager
+ (CSTipsManager)shared;
- (CSTipsManager)init;
- (void)dismissMicTipWithAnimated:(BOOL)animated;
- (void)registerMicTipInViewController:(id)controller sourceView:(id)view;
@end

@implementation CSTipsManager

+ (CSTipsManager)shared
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EDDC620 != -1)
  {
    swift_once();
  }

  v2 = qword_27EDDCB40;

  return v2;
}

- (void)registerMicTipInViewController:(id)controller sourceView:(id)view
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  viewCopy = view;
  selfCopy = self;
  sub_244244624(controllerCopy, viewCopy);
}

- (void)dismissMicTipWithAnimated:(BOOL)animated
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_244245F30(animated);
}

- (CSTipsManager)init
{
  ObjectType = swift_getObjectType();
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR___CSTipsManager____lazy_storage___micTip;
  *v4 = xmmword_24425C7B0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 2) = 0;
  *(&self->super.isa + OBJC_IVAR___CSTipsManager_micTipView) = 0;
  *(&self->super.isa + OBJC_IVAR___CSTipsManager_tipObservationTask) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  v5 = [(CSTipsManager *)&v7 init];

  return v5;
}

@end