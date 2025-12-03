@interface DynamicTypeButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC12GameStoreKit17DynamicTypeButton)initWithCoder:(id)coder;
- (_TtC12GameStoreKit17DynamicTypeButton)initWithFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DynamicTypeButton

- (_TtC12GameStoreKit17DynamicTypeButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory) = 0;
  v8 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  v9 = sub_24F922378();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v11.receiver = self;
  v11.super_class = type metadata accessor for DynamicTypeButton();
  return [(ImageAlignedButton *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC12GameStoreKit17DynamicTypeButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory) = 0;
  v4 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  v5 = sub_24F922378();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_24F92CA88();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v16.receiver = self;
  v16.super_class = type metadata accessor for DynamicTypeButton();
  v5 = v16.receiver;
  [(DynamicTypeButton *)&v16 sizeThatFits:width, height];
  v7 = v6;
  v9 = v8;
  titleLabel = [v5 titleLabel];
  if (titleLabel)
  {
    v11 = titleLabel;
    [titleLabel measurementsWithFitting:v5 in:{width, height}];
    v13 = v12;

    if (v9 <= v13)
    {
      v9 = v13;
    }
  }

  else
  {
  }

  v14 = v7;
  v15 = v9;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24EAB36F4(change);
}

@end