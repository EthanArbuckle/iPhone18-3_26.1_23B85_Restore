@interface CHSWidgetIcon
- (CGImage)image;
- (CGSize)pixelSize;
- (CGSize)size;
- (CHSWidgetIcon)init;
- (CHSWidgetIcon)initWithImage:(CGImage *)a3 size:(CGSize)a4 scale:(double)a5 pixelSize:(CGSize)a6;
- (double)scale;
- (void)setImage:(CGImage *)a3;
- (void)setScale:(double)a3;
@end

@implementation CHSWidgetIcon

- (CGSize)size
{
  v2 = sub_195F56CB8(self, a2, &OBJC_IVAR___CHSWidgetIcon_size);
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)scale
{
  v3 = OBJC_IVAR___CHSWidgetIcon_scale;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setScale:(double)a3
{
  v5 = OBJC_IVAR___CHSWidgetIcon_scale;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (CGSize)pixelSize
{
  v2 = sub_195F56CB8(self, a2, &OBJC_IVAR___CHSWidgetIcon_pixelSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGImage)image
{
  v3 = OBJC_IVAR___CHSWidgetIcon_image;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setImage:(CGImage *)a3
{
  v5 = OBJC_IVAR___CHSWidgetIcon_image;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (CHSWidgetIcon)initWithImage:(CGImage *)a3 size:(CGSize)a4 scale:(double)a5 pixelSize:(CGSize)a6
{
  *(&self->super.isa + OBJC_IVAR___CHSWidgetIcon_image) = a3;
  *(&self->super.isa + OBJC_IVAR___CHSWidgetIcon_size) = a4;
  *(&self->super.isa + OBJC_IVAR___CHSWidgetIcon_scale) = a5;
  *(&self->super.isa + OBJC_IVAR___CHSWidgetIcon_pixelSize) = a6;
  v8.receiver = self;
  v8.super_class = CHSWidgetIcon;
  v6 = a3;
  return [(CHSWidgetIcon *)&v8 init];
}

- (CHSWidgetIcon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end