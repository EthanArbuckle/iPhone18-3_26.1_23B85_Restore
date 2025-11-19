@interface DetailsSearchControllerRepresentable.SearchControllerCoordinator
- (_TtCV7ChatKit36DetailsSearchControllerRepresentable27SearchControllerCoordinator)init;
- (void)batchDownloadNotificationFired:(id)a3;
- (void)detailsSearchController:(id)a3 requestsPushOfSearchController:(id)a4;
- (void)detailsSearchControllerContentDidChange:(id)a3;
@end

@implementation DetailsSearchControllerRepresentable.SearchControllerCoordinator

- (void)detailsSearchControllerContentDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19091BF88(v4);
}

- (void)detailsSearchController:(id)a3 requestsPushOfSearchController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_19091CFF8(v7);
}

- (void)batchDownloadNotificationFired:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19091D21C();
}

- (_TtCV7ChatKit36DetailsSearchControllerRepresentable27SearchControllerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end