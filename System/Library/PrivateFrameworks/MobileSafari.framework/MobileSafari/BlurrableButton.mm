@interface BlurrableButton
- (_TtC12MobileSafari15BlurrableButton)initWithCoder:(id)a3;
- (_TtC12MobileSafari15BlurrableButton)initWithFrame:(CGRect)a3;
@end

@implementation BlurrableButton

- (_TtC12MobileSafari15BlurrableButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari15BlurrableButton____lazy_storage___blurRadius) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BlurrableButton();
  v7 = [(BlurrableButton *)&v9 initWithFrame:x, y, width, height];
  sub_18B7C46DC(v7, type metadata accessor for BlurrableButton);

  return v7;
}

- (_TtC12MobileSafari15BlurrableButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12MobileSafari15BlurrableButton____lazy_storage___blurRadius) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BlurrableButton();
  v4 = a3;
  v5 = [(BlurrableButton *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_18B7C46DC(v7, type metadata accessor for BlurrableButton);
  }

  return v6;
}

@end