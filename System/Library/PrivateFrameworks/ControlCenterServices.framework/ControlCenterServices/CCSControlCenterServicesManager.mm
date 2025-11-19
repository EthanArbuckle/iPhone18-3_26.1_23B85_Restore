@interface CCSControlCenterServicesManager
+ (void)startServices;
- (CCSControlCenterServicesManager)init;
@end

@implementation CCSControlCenterServicesManager

+ (void)startServices
{
  sub_24428F21C();
  v2 = sub_24428F20C();
  sub_24428F1FC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  _sSo31CCSControlCenterServicesManagerC07ControlbC0E05startC0yyFZ_0();

  MEMORY[0x2821FEB70](v2);
}

- (CCSControlCenterServicesManager)init
{
  v3.receiver = self;
  v3.super_class = CCSControlCenterServicesManager;
  return [(CCSControlCenterServicesManager *)&v3 init];
}

@end