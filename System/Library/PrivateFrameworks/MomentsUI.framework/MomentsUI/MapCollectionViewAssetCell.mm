@interface MapCollectionViewAssetCell
- (_TtC9MomentsUI26MapCollectionViewAssetCell)initWithCoder:(id)coder;
@end

@implementation MapCollectionViewAssetCell

- (_TtC9MomentsUI26MapCollectionViewAssetCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9MomentsUI26MapCollectionViewAssetCell_mapView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v5 = static MutableMapViewModel.empty;
  v8 = 3;
  v6 = objc_allocWithZone(type metadata accessor for MapView());
  *(&self->super.super.super.super.super.super.isa + v4) = MapView.init(viewModel:style:)(v5, &v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end