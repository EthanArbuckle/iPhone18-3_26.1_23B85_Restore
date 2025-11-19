@interface Gallery.ImagePlaygroundIconView
- (_TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation Gallery.ImagePlaygroundIconView

- (_TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView_imagePlaygroundIconImageView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v9 = OBJC_IVAR____TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView_imagePlaygroundBackgroundImageView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v12.receiver = self;
  v12.super_class = _s23ImagePlaygroundIconViewCMa();
  v10 = [(Gallery.ImagePlaygroundIconView *)&v12 initWithFrame:x, y, width, height];
  sub_190978DC8();

  return v10;
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_190978FE4();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190979200();
}

@end