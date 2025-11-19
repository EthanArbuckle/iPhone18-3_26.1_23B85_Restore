@interface AccessibleFloatingTabBarControl
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (_TtC13FitnessCoreUI31AccessibleFloatingTabBarControl)initWithCoder:(id)a3;
- (_TtC13FitnessCoreUI31AccessibleFloatingTabBarControl)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
@end

@implementation AccessibleFloatingTabBarControl

- (_TtC13FitnessCoreUI31AccessibleFloatingTabBarControl)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_20C3A3AC0(x, y, width, height);

  return v7;
}

- (_TtC13FitnessCoreUI31AccessibleFloatingTabBarControl)initWithCoder:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_20C3A6178();
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  v7 = sub_20C3A6298();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C38BD08(0, &qword_27C7AD550);
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v6 = self;
  v7 = sub_20C3A5194(0, 0, 0, sub_20C3A6718, v5);

  return v7;
}

@end