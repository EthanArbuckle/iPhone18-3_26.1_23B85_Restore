@interface Gallery.ImagePlaygroundIconView
- (_TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation Gallery.ImagePlaygroundIconView

- (_TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView_imagePlaygroundIconImageView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v9 = OBJC_IVAR____TtCV7ChatKit7GalleryP33_F9FFDDFCD3D97E162E1C88AA3426E03A23ImagePlaygroundIconView_imagePlaygroundBackgroundImageView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v12.receiver = self;
  v12.super_class = _s23ImagePlaygroundIconViewCMa();
  height = [(Gallery.ImagePlaygroundIconView *)&v12 initWithFrame:x, y, width, height];
  sub_190978DC8();

  return height;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_190978FE4();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190979200();
}

@end