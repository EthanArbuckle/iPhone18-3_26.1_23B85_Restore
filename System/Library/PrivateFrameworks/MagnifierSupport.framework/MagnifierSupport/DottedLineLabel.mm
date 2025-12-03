@interface DottedLineLabel
- (_TtC16MagnifierSupport15DottedLineLabel)initWithFrame:(CGRect)frame;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation DottedLineLabel

- (void)drawTextInRect:(CGRect)rect
{
  v4 = UIEdgeInsetsInsetRect_0(rect.origin.x);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for DottedLineLabel();
  selfCopy = self;
  [(DottedLineLabel *)&v12 drawTextInRect:v4, v6, v8, v10];
}

- (_TtC16MagnifierSupport15DottedLineLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DottedLineLabel();
  return [(DottedLineLabel *)&v8 initWithFrame:x, y, width, height];
}

@end