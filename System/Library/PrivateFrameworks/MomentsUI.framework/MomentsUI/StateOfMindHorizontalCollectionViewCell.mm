@interface StateOfMindHorizontalCollectionViewCell
- (_TtC9MomentsUI39StateOfMindHorizontalCollectionViewCell)initWithCoder:(id)a3;
@end

@implementation StateOfMindHorizontalCollectionViewCell

- (_TtC9MomentsUI39StateOfMindHorizontalCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9MomentsUI39StateOfMindHorizontalCollectionViewCell_stateOfMindView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v5 = static MutableStateOfMindViewModel.empty;
  v8 = 4;
  v6 = objc_allocWithZone(type metadata accessor for StateOfMindView());
  *(&self->super.super.super.super.super.super.isa + v4) = StateOfMindView.init(viewModel:style:)(v5, &v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end