@interface AccessibleFloatingTabBarControl
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (_TtC13FitnessCoreUI31AccessibleFloatingTabBarControl)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI31AccessibleFloatingTabBarControl)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation AccessibleFloatingTabBarControl

- (_TtC13FitnessCoreUI31AccessibleFloatingTabBarControl)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC13FitnessCoreUI31AccessibleFloatingTabBarControl)initWithCoder:(id)coder
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_20C3A6178();
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  configurationCopy = configuration;
  selfCopy = self;
  v7 = sub_20C3A6298();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
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
  selfCopy = self;
  v7 = sub_20C3A5194(0, 0, 0, sub_20C3A6718, v5);

  return v7;
}

@end