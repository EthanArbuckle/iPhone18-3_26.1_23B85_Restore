@interface HUActivityLogViewControllerFactory
+ (id)createActivityLogViewControllerWith:(id)with activityLogCoordinator:(id)coordinator;
- (HUActivityLogViewControllerFactory)init;
@end

@implementation HUActivityLogViewControllerFactory

+ (id)createActivityLogViewControllerWith:(id)with activityLogCoordinator:(id)coordinator
{
  sub_20D565C28();
  sub_20D0723B4();
  swift_retain_n();
  withCopy = with;
  v7 = sub_20D566888();
  v9 = v8;
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820588));
  v11 = sub_20D07240C(coordinator, v7, v9);

  return v11;
}

- (HUActivityLogViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = HUActivityLogViewControllerFactory;
  return [(HUActivityLogViewControllerFactory *)&v3 init];
}

@end