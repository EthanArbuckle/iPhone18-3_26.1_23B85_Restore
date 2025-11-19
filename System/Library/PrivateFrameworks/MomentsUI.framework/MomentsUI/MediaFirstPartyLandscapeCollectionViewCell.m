@interface MediaFirstPartyLandscapeCollectionViewCell
- (_TtC9MomentsUI42MediaFirstPartyLandscapeCollectionViewCell)initWithCoder:(id)a3;
@end

@implementation MediaFirstPartyLandscapeCollectionViewCell

- (_TtC9MomentsUI42MediaFirstPartyLandscapeCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9MomentsUI42MediaFirstPartyLandscapeCollectionViewCell_mediaFirstPartyView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v5 = static MutableMediaFirstPartyViewModel.empty;
  v8 = 2;
  v6 = objc_allocWithZone(type metadata accessor for MediaFirstPartyView());
  *(&self->super.super.super.super.super.super.isa + v4) = MediaFirstPartyView.init(viewModel:style:)(v5, &v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end