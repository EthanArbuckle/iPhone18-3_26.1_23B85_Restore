@interface PlatformView
- (_TtC11CalculateUIP33_B02995F901750D8E8BCF7362F91ACDD912PlatformView)initWithCoder:(id)coder;
- (_TtC11CalculateUIP33_B02995F901750D8E8BCF7362F91ACDD912PlatformView)initWithFrame:(CGRect)frame;
@end

@implementation PlatformView

- (_TtC11CalculateUIP33_B02995F901750D8E8BCF7362F91ACDD912PlatformView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlatformView();
  return [(PlatformView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11CalculateUIP33_B02995F901750D8E8BCF7362F91ACDD912PlatformView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlatformView();
  coderCopy = coder;
  v5 = [(PlatformView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end