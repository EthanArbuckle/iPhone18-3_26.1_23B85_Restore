@interface Gallery.BlurrableImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithCoder:(id)coder;
- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithFrame:(CGRect)frame;
- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithImage:(id)image;
- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation Gallery.BlurrableImageView

- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = _s18BlurrableImageViewCMa();
  height = [(Gallery.BlurrableImageView *)&v9 initWithFrame:x, y, width, height];
  sub_1908FE79C();

  return height;
}

- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = _s18BlurrableImageViewCMa();
  coderCopy = coder;
  v5 = [(Gallery.BlurrableImageView *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1908FE79C();
  }

  return v6;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_19097B168(v4, v6);

  return v8 & 1;
}

- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCV7ChatKit7GalleryP33_99FE8760838F51A859574FB00D81095318BlurrableImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end