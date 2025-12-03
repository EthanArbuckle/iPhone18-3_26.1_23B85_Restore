@interface DynamicTypeTextView
- (NSString)text;
- (_TtC12GameStoreKit19DynamicTypeTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (int64_t)textAlignment;
- (void)buttonShapesDidChange;
- (void)setAttributedText:(id)text;
- (void)setFont:(id)font;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
@end

@implementation DynamicTypeTextView

- (void)setFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_24F25DFC4(font);
}

- (void)setTextColor:(id)color
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for DynamicTypeTextView();
  colorCopy = color;
  v5 = v8.receiver;
  [(DynamicTypeTextView *)&v8 setTextColor:colorCopy];
  textColor = [v5 textColor];
  v7 = *&v5[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedTextColor];
  *&v5[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedTextColor] = textColor;

  sub_24F25C664();
}

- (void)setAttributedText:(id)text
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DynamicTypeTextView();
  textCopy = text;
  v5 = v6.receiver;
  [(DynamicTypeTextView *)&v6 setAttributedText:textCopy];
  if ((v5[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView_isUpdatingAttributedText] & 1) == 0)
  {
    sub_24F25C664();
  }
}

- (NSString)text
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DynamicTypeTextView();
  v2 = v7.receiver;
  text = [(DynamicTypeTextView *)&v7 text];
  if (text)
  {
    v4 = text;
    sub_24F92B0D8();

    v5 = sub_24F92B098();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setText:(id)text
{
  if (text)
  {
    sub_24F92B0D8();
    selfCopy = self;
    v5 = sub_24F92B098();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for DynamicTypeTextView();
  [(DynamicTypeTextView *)&v7 setText:v5];

  sub_24F25C664();
}

- (int64_t)textAlignment
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DynamicTypeTextView();
  return [(DynamicTypeTextView *)&v3 textAlignment];
}

- (void)setTextAlignment:(int64_t)alignment
{
  v7 = 0;
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x1F0);
  selfCopy = self;
  v4(&v7);
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for DynamicTypeTextView();
  [(DynamicTypeTextView *)&v6 setTextAlignment:alignment];
}

- (void)buttonShapesDidChange
{
  selfCopy = self;
  sub_24F25C4D8();
}

- (_TtC12GameStoreKit19DynamicTypeTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end