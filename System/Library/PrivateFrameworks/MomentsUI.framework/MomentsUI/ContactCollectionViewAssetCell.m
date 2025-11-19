@interface ContactCollectionViewAssetCell
- (_TtC9MomentsUI30ContactCollectionViewAssetCell)initWithCoder:(id)a3;
@end

@implementation ContactCollectionViewAssetCell

- (_TtC9MomentsUI30ContactCollectionViewAssetCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9MomentsUI30ContactCollectionViewAssetCell_contactView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v5 = static MutableContactViewModel.empty;
  v8 = 3;
  v6 = objc_allocWithZone(type metadata accessor for ContactView());
  *(&self->super.super.super.super.super.super.isa + v4) = ContactView.init(viewModel:style:)(v5, &v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end