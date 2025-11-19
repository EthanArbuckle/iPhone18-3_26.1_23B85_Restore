@interface PlatformView
- (_TtC11CalculateUIP33_B02995F901750D8E8BCF7362F91ACDD912PlatformView)initWithCoder:(id)a3;
- (_TtC11CalculateUIP33_B02995F901750D8E8BCF7362F91ACDD912PlatformView)initWithFrame:(CGRect)a3;
@end

@implementation PlatformView

- (_TtC11CalculateUIP33_B02995F901750D8E8BCF7362F91ACDD912PlatformView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PlatformView();
  return [(PlatformView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11CalculateUIP33_B02995F901750D8E8BCF7362F91ACDD912PlatformView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlatformView();
  v4 = a3;
  v5 = [(PlatformView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end