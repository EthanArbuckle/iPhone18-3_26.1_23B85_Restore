@interface Gallery.SlideshowTileView
- (_TtCV7ChatKit7Gallery17SlideshowTileView)initWithCoder:(id)coder;
- (_TtCV7ChatKit7Gallery17SlideshowTileView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation Gallery.SlideshowTileView

- (_TtCV7ChatKit7Gallery17SlideshowTileView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_visibleImageViews) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_currentImageIndex) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV7ChatKit7Gallery17SlideshowTileView_badgeIconImageView) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190979C90();
}

- (_TtCV7ChatKit7Gallery17SlideshowTileView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end