@interface ActionSetContainerSummaryGridViewController
- (BOOL)presentationCoordinator:(id)coordinator shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)location view:(id)view;
- (_TtC6HomeUI43ActionSetContainerSummaryGridViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item;
- (id)initUsingCompositionalLayoutWithItemManager:(id)manager;
@end

@implementation ActionSetContainerSummaryGridViewController

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  selfCopy = self;
  v6 = sub_20D0EDC78(moduleCopy);

  return v6;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)coordinator item:(id)item
{
  coordinatorCopy = coordinator;
  itemCopy = item;
  selfCopy = self;
  v9 = sub_20D0EDDC0(coordinatorCopy, itemCopy);

  return v9;
}

- (BOOL)presentationCoordinator:(id)coordinator shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)location view:(id)view
{
  y = location.y;
  x = location.x;
  coordinatorCopy = coordinator;
  viewCopy = view;
  selfCopy = self;
  v12 = sub_20D0EDFD4(coordinatorCopy, viewCopy, x, y);

  return v12 & 1;
}

- (_TtC6HomeUI43ActionSetContainerSummaryGridViewController)initWithItemManager:(id)manager collectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)manager
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end