@interface AccessoryUnpairedViewModel
- (void)secondaryButtonAction;
@end

@implementation AccessoryUnpairedViewModel

- (void)secondaryButtonAction
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B0D07B4();
}

@end