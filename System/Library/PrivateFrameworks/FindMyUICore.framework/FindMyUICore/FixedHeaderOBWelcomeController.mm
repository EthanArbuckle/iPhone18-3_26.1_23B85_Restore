@interface FixedHeaderOBWelcomeController
- (double)_contentViewHeight;
@end

@implementation FixedHeaderOBWelcomeController

- (double)_contentViewHeight
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_24B0D75C0();
  v5 = v4;

  return v5;
}

@end