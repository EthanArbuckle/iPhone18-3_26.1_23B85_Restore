@interface ActionSetContainerSummaryGridViewController
- (BOOL)presentationCoordinator:(id)a3 shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)a4 view:(id)a5;
- (_TtC6HomeUI43ActionSetContainerSummaryGridViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4;
- (id)initUsingCompositionalLayoutWithItemManager:(id)a3;
@end

@implementation ActionSetContainerSummaryGridViewController

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_20D0EDC78(v4);

  return v6;
}

- (id)detailsViewControllerForPresentationCoordinator:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_20D0EDDC0(v6, v7);

  return v9;
}

- (BOOL)presentationCoordinator:(id)a3 shouldBeginInteractivePresentationWithTouchLocation:(CGPoint)a4 view:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v11 = self;
  v12 = sub_20D0EDFD4(v9, v10, x, y);

  return v12 & 1;
}

- (_TtC6HomeUI43ActionSetContainerSummaryGridViewController)initWithItemManager:(id)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)initUsingCompositionalLayoutWithItemManager:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end