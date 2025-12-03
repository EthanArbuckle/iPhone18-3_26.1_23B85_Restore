@interface AccessoryDetailsHelper.ContainedServicesViewRepresentable.Coordinator
- (_TtCVC6HomeUI22AccessoryDetailsHelperP33_8271E4BC195F45270057A2710E22519634ContainedServicesViewRepresentable11Coordinator)init;
- (id)detailsViewControllerFor:(id)for item:(id)item;
@end

@implementation AccessoryDetailsHelper.ContainedServicesViewRepresentable.Coordinator

- (id)detailsViewControllerFor:(id)for item:(id)item
{
  forCopy = for;
  itemCopy = item;
  selfCopy = self;
  v9 = sub_20D059000(forCopy, itemCopy);

  return v9;
}

- (_TtCVC6HomeUI22AccessoryDetailsHelperP33_8271E4BC195F45270057A2710E22519634ContainedServicesViewRepresentable11Coordinator)init
{
  *(&self->super.isa + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelperP33_8271E4BC195F45270057A2710E22519634ContainedServicesViewRepresentable11Coordinator_parentChangeObservation) = 0;
  *(&self->super.isa + OBJC_IVAR____TtCVC6HomeUI22AccessoryDetailsHelperP33_8271E4BC195F45270057A2710E22519634ContainedServicesViewRepresentable11Coordinator_navigationItemTitleObservation) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AccessoryDetailsHelper.ContainedServicesViewRepresentable.Coordinator();
  return [(AccessoryDetailsHelper.ContainedServicesViewRepresentable.Coordinator *)&v3 init];
}

@end