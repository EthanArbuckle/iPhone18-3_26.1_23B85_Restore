@interface LivePhotoCollectionCell
- (_TtC9MomentsUI23LivePhotoCollectionCell)initWithCoder:(id)coder;
@end

@implementation LivePhotoCollectionCell

- (_TtC9MomentsUI23LivePhotoCollectionCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9MomentsUI23LivePhotoCollectionCell_livePhotoView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v5 = static MutableLivePhotoViewModel.empty;
  v8 = 2;
  v6 = objc_allocWithZone(type metadata accessor for LivePhotoView());
  *(&self->super.super.super.super.super.super.isa + v4) = LivePhotoView.init(viewModel:style:)(v5, &v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end