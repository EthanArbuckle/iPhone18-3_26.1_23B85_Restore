@interface AccessoryPairedViewModel
- (void)primaryButtonAction;
- (void)secondaryButtonAction;
@end

@implementation AccessoryPairedViewModel

- (void)primaryButtonAction
{

  sub_24B0CD4D4();
}

- (void)secondaryButtonAction
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B0CD5C8();
}

@end