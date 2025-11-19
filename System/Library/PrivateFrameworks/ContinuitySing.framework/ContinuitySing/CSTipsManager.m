@interface CSTipsManager
+ (CSTipsManager)shared;
- (CSTipsManager)init;
- (void)dismissMicTipWithAnimated:(BOOL)a3;
- (void)registerMicTipInViewController:(id)a3 sourceView:(id)a4;
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

- (void)registerMicTipInViewController:(id)a3 sourceView:(id)a4
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_244244624(v7, v8);
}

- (void)dismissMicTipWithAnimated:(BOOL)a3
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_244245F30(a3);
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