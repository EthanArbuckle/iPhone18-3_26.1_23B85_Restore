@interface CollapsedTabAccessoryViewController.MiniPlayerContainer
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer)initWithCoder:(id)coder;
- (_TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CollapsedTabAccessoryViewController.MiniPlayerContainer

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1C59364E4();
}

- (_TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_hidesBackground) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_contentView) = 0;
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_1C5BA6940(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end