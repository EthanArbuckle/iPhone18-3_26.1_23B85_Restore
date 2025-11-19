@interface DynamicTypeTextView
- (NSString)text;
- (_TtC12GameStoreKit19DynamicTypeTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (int64_t)textAlignment;
- (void)buttonShapesDidChange;
- (void)setAttributedText:(id)a3;
- (void)setFont:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
@end

@implementation DynamicTypeTextView

- (void)setFont:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_24F25DFC4(a3);
}

- (void)setTextColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for DynamicTypeTextView();
  v4 = a3;
  v5 = v8.receiver;
  [(DynamicTypeTextView *)&v8 setTextColor:v4];
  v6 = [v5 textColor];
  v7 = *&v5[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedTextColor];
  *&v5[OBJC_IVAR____TtC12GameStoreKit19DynamicTypeTextView__cachedTextColor] = v6;

  sub_24F25C664();
}

- (void)setAttributedText:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DynamicTypeTextView();
  v4 = a3;
  v5 = v6.receiver;
  [(DynamicTypeTextView *)&v6 setAttributedText:v4];
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
  v3 = [(DynamicTypeTextView *)&v7 text];
  if (v3)
  {
    v4 = v3;
    sub_24F92B0D8();

    v5 = sub_24F92B098();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setText:(id)a3
{
  if (a3)
  {
    sub_24F92B0D8();
    v4 = self;
    v5 = sub_24F92B098();
  }

  else
  {
    v6 = self;
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

- (void)setTextAlignment:(int64_t)a3
{
  v7 = 0;
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x1F0);
  v5 = self;
  v4(&v7);
  v6.receiver = v5;
  v6.super_class = type metadata accessor for DynamicTypeTextView();
  [(DynamicTypeTextView *)&v6 setTextAlignment:a3];
}

- (void)buttonShapesDidChange
{
  v2 = self;
  sub_24F25C4D8();
}

- (_TtC12GameStoreKit19DynamicTypeTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end