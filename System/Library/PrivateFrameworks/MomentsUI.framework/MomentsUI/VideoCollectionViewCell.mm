@interface VideoCollectionViewCell
- (_TtC9MomentsUI23VideoCollectionViewCell)initWithCoder:(id)a3;
@end

@implementation VideoCollectionViewCell

- (_TtC9MomentsUI23VideoCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9MomentsUI23VideoCollectionViewCell_videoView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v5 = static MutableVideoViewModel.empty;
  v8 = 3;
  v6 = objc_allocWithZone(type metadata accessor for VideoView());
  *(&self->super.super.super.super.super.super.isa + v4) = VideoView.init(viewModel:style:)(v5, &v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end