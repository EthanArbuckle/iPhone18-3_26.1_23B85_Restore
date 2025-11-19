@interface Gallery.BlurrableImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithCoder:(id)a3;
- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithFrame:(CGRect)a3;
- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithImage:(id)a3;
- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation Gallery.BlurrableImageView

- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = _s18BlurrableImageViewCMa();
  v7 = [(Gallery.BlurrableImageView *)&v9 initWithFrame:x, y, width, height];
  sub_1908FE79C();

  return v7;
}

- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = _s18BlurrableImageViewCMa();
  v4 = a3;
  v5 = [(Gallery.BlurrableImageView *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1908FE79C();
  }

  return v6;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_19097B168(v4, v6);

  return v8 & 1;
}

- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithImage:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end