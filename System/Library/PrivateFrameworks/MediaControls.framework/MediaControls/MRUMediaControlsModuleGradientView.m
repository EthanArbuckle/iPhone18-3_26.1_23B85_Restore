@interface MRUMediaControlsModuleGradientView
- (BOOL)isGradientEnabled;
- (UIImage)backdropImage;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackdropImage:(id)a3;
- (void)setIsGradientEnabled:(BOOL)a3;
@end

@implementation MRUMediaControlsModuleGradientView

- (BOOL)isGradientEnabled
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleGradientView_isGradientEnabled;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setIsGradientEnabled:(BOOL)a3
{
  v4 = self;
  sub_1A229A534(a3);
}

- (UIImage)backdropImage
{
  v2 = *((*MEMORY[0x1E69E7D40] & **(&self->super.super.super.isa + OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView)) + 0x60);
  v3 = self;
  v4 = v2();

  return v4;
}

- (void)setBackdropImage:(id)a3
{
  v5 = *((*MEMORY[0x1E69E7D40] & **(&self->super.super.super.isa + OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView)) + 0x78);
  v6 = a3;
  v7 = self;
  v5(a3);
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MediaControlsModuleGradientView();
  v2 = v5.receiver;
  [(MRUMediaControlsModuleGradientView *)&v5 layoutSubviews];
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions_];
  v4 = *&v2[OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer];
  [v2 bounds];
  [v4 setFrame_];
  [v3 commit];
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1A229B284();
}

@end