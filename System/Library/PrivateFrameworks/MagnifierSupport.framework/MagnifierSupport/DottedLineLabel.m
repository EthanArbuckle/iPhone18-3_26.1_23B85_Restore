@interface DottedLineLabel
- (_TtC16MagnifierSupport15DottedLineLabel)initWithFrame:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation DottedLineLabel

- (void)drawTextInRect:(CGRect)a3
{
  v4 = UIEdgeInsetsInsetRect_0(a3.origin.x);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for DottedLineLabel();
  v11 = self;
  [(DottedLineLabel *)&v12 drawTextInRect:v4, v6, v8, v10];
}

- (_TtC16MagnifierSupport15DottedLineLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DottedLineLabel();
  return [(DottedLineLabel *)&v8 initWithFrame:x, y, width, height];
}

@end