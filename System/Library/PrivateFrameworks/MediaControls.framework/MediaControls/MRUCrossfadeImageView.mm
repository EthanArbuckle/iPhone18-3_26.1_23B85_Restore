@interface MRUCrossfadeImageView
- (MRUCrossfadeImageView)initWithCoder:(id)coder;
- (UIImage)image;
- (int64_t)contentMode;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)mode;
- (void)transitionTo:(id)to;
@end

@implementation MRUCrossfadeImageView

- (UIImage)image
{
  v2 = (&self->super.super.super.isa + OBJC_IVAR___MRUCrossfadeImageView_primaryImageView);
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___MRUCrossfadeImageView_primaryImageView);
  selfCopy = self;
  isHidden = [v3 isHidden];
  v6 = (&selfCopy->super.super.super.isa + OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView);
  if (!isHidden)
  {
    v6 = v2;
  }

  image = [*v6 image];

  return image;
}

- (int64_t)contentMode
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CrossfadeImageView();
  return [(MRUCrossfadeImageView *)&v3 contentMode];
}

- (void)setContentMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CrossfadeImageView();
  v4 = v5.receiver;
  [(MRUCrossfadeImageView *)&v5 setContentMode:mode];
  [*&v4[OBJC_IVAR___MRUCrossfadeImageView_primaryImageView] setContentMode_];
  [*&v4[OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView] setContentMode_];
}

- (MRUCrossfadeImageView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR___MRUCrossfadeImageView_primaryImageView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v5 = OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CrossfadeImageView();
  v2 = v5.receiver;
  [(MRUCrossfadeImageView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR___MRUCrossfadeImageView_primaryImageView];
  [v2 bounds];
  [v3 setFrame_];
  v4 = *&v2[OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView];
  [v2 bounds];
  [v4 setFrame_];
}

- (void)transitionTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  sub_1A22B68F4(to);
}

@end