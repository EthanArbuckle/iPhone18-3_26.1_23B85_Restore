@interface ThreeDimensionalArtworkGradientBackgroundView
- (_TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView)initWithCoder:(id)a3;
- (_TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ThreeDimensionalArtworkGradientBackgroundView

- (_TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  result = sub_24F92CA88();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ThreeDimensionalArtworkGradientBackgroundView();
  v2 = v5.receiver;
  [(ThreeDimensionalArtworkGradientBackgroundView *)&v5 layoutSubviews];
  [v2 bounds];
  [v2 setFrame_];
  v3 = *&v2[OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientView];
  [v2 bounds];
  [v3 setFrame_];
  v4 = *&v2[OBJC_IVAR____TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView_gradientLayer];
  [v2 bounds];
  [v4 setFrame_];
}

- (_TtC12GameStoreKit45ThreeDimensionalArtworkGradientBackgroundView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end