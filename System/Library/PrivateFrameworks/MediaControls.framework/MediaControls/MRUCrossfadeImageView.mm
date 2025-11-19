@interface MRUCrossfadeImageView
- (MRUCrossfadeImageView)initWithCoder:(id)a3;
- (UIImage)image;
- (int64_t)contentMode;
- (void)layoutSubviews;
- (void)setContentMode:(int64_t)a3;
- (void)transitionTo:(id)a3;
@end

@implementation MRUCrossfadeImageView

- (UIImage)image
{
  v2 = (&self->super.super.super.isa + OBJC_IVAR___MRUCrossfadeImageView_primaryImageView);
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___MRUCrossfadeImageView_primaryImageView);
  v4 = self;
  v5 = [v3 isHidden];
  v6 = (&v4->super.super.super.isa + OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView);
  if (!v5)
  {
    v6 = v2;
  }

  v7 = [*v6 image];

  return v7;
}

- (int64_t)contentMode
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CrossfadeImageView();
  return [(MRUCrossfadeImageView *)&v3 contentMode];
}

- (void)setContentMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CrossfadeImageView();
  v4 = v5.receiver;
  [(MRUCrossfadeImageView *)&v5 setContentMode:a3];
  [*&v4[OBJC_IVAR___MRUCrossfadeImageView_primaryImageView] setContentMode_];
  [*&v4[OBJC_IVAR___MRUCrossfadeImageView_secondaryImageView] setContentMode_];
}

- (MRUCrossfadeImageView)initWithCoder:(id)a3
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

- (void)transitionTo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1A22B68F4(a3);
}

@end