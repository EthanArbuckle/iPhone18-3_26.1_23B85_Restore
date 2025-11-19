@interface MapCollectionViewSmallAssetCell
- (_TtC9MomentsUI31MapCollectionViewSmallAssetCell)initWithCoder:(id)a3;
@end

@implementation MapCollectionViewSmallAssetCell

- (_TtC9MomentsUI31MapCollectionViewSmallAssetCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9MomentsUI31MapCollectionViewSmallAssetCell_mapView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v5 = static MutableMapViewModel.empty;
  v8 = 1;
  v6 = objc_allocWithZone(type metadata accessor for MapView());
  *(&self->super.super.super.super.super.super.isa + v4) = MapView.init(viewModel:style:)(v5, &v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end