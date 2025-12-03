@interface DetailsSearchControllerRepresentable.SearchControllerCoordinator
- (_TtCV7ChatKit36DetailsSearchControllerRepresentable27SearchControllerCoordinator)init;
- (void)batchDownloadNotificationFired:(id)fired;
- (void)detailsSearchController:(id)controller requestsPushOfSearchController:(id)searchController;
- (void)detailsSearchControllerContentDidChange:(id)change;
@end

@implementation DetailsSearchControllerRepresentable.SearchControllerCoordinator

- (void)detailsSearchControllerContentDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_19091BF88(changeCopy);
}

- (void)detailsSearchController:(id)controller requestsPushOfSearchController:(id)searchController
{
  controllerCopy = controller;
  searchControllerCopy = searchController;
  selfCopy = self;
  sub_19091CFF8(searchControllerCopy);
}

- (void)batchDownloadNotificationFired:(id)fired
{
  firedCopy = fired;
  selfCopy = self;
  sub_19091D21C();
}

- (_TtCV7ChatKit36DetailsSearchControllerRepresentable27SearchControllerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end