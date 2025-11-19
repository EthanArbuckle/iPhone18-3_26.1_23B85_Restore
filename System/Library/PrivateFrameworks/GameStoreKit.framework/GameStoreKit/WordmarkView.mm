@interface WordmarkView
- (BOOL)hasContent;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC12GameStoreKit12WordmarkView)initWithCoder:(id)a3;
- (_TtC12GameStoreKit12WordmarkView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation WordmarkView

- (_TtC12GameStoreKit12WordmarkView)initWithFrame:(CGRect)a3
{
  v3 = sub_24F00BF0C(1, 0, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (_TtC12GameStoreKit12WordmarkView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  result = sub_24F92CA88();
  __break(1u);
  return result;
}

- (BOOL)hasContent
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView) image];
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

- (void)layoutSubviews
{
  v2 = self;
  WordmarkView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = WordmarkView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = WordmarkView.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

@end