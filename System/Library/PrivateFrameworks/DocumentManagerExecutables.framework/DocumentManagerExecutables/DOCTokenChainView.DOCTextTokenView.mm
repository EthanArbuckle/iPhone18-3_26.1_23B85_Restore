@interface DOCTokenChainView.DOCTextTokenView
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (_TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView)initWithCoder:(id)a3;
- (_TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView)initWithFrame:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation DOCTokenChainView.DOCTextTokenView

- (_TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (self + OBJC_IVAR____TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView_padding);
  *v7 = xmmword_249BA24E0;
  v7[1] = xmmword_249BA24E0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCTokenChainView.DOCTextTokenView();
  v8 = [(DOCTokenChainView.DOCTextTokenView *)&v10 initWithFrame:x, y, width, height];
  [(DOCTokenChainView.DOCTextTokenView *)v8 setOpaque:0];
  return v8;
}

- (_TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView_padding);
  *v3 = xmmword_249BA24E0;
  v3[1] = xmmword_249BA24E0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCTokenChainView.DOCTextTokenView();
  return [(DOCTokenChainView.DOCTextTokenView *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCTokenChainView.DOCTextTokenView();
  v4 = v5.receiver;
  [(DOCTokenChainView.DOCTextTokenView *)&v5 setHighlighted:v3];
  DOCTokenChainView.DOCTextTokenView.updateAppearance()();
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCTokenChainView.DOCTextTokenView();
  v2 = v4.receiver;
  [(DOCTokenChainView.DOCTextTokenView *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v3 setCornerRadius_];
}

- (CGSize)intrinsicContentSize
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for DOCTokenChainView.DOCTextTokenView();
  v2 = v11.receiver;
  [(DOCTokenChainView.DOCTextTokenView *)&v11 intrinsicContentSize];
  v4 = v3;
  v5 = *&v2[OBJC_IVAR____TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView_padding];
  v6 = *&v2[OBJC_IVAR____TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView_padding + 16];
  v8 = v7 + *&v2[OBJC_IVAR____TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView_padding + 8] + *&v2[OBJC_IVAR____TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView_padding + 24];

  v9 = v4 + v5 + v6;
  v10 = v8;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)drawTextInRect:(CGRect)a3
{
  v4 = UIEdgeInsetsInsetRect(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView_padding), *(&self->super.super.super._responderFlags + OBJC_IVAR____TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView_padding));
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for DOCTokenChainView.DOCTextTokenView();
  v11 = self;
  [(DOCTokenChainView.DOCTextTokenView *)&v12 drawTextInRect:v4, v6, v8, v10];
}

@end