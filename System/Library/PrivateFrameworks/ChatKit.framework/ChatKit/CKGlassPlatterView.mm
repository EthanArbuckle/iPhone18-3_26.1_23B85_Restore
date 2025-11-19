@interface CKGlassPlatterView
- (_TtC7ChatKit18CKGlassPlatterView)initWithCoder:(id)a3;
- (_TtC7ChatKit18CKGlassPlatterView)initWithFrame:(CGRect)a3;
@end

@implementation CKGlassPlatterView

- (_TtC7ChatKit18CKGlassPlatterView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CKGlassPlatterView();
  v7 = [(CKGlassPlatterView *)&v9 initWithFrame:x, y, width, height];
  [(UIView *)v7 ck_applyGlassBackground];
  return v7;
}

- (_TtC7ChatKit18CKGlassPlatterView)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for CKGlassPlatterView();
  v4 = a3;
  v5 = [(CKGlassPlatterView *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    [(UIView *)v7 ck_applyGlassBackground:v9.receiver];
  }

  return v6;
}

@end