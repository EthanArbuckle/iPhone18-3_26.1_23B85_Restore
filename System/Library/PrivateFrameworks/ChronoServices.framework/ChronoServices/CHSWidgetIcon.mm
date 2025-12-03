@interface CHSWidgetIcon
- (CGImage)image;
- (CGSize)pixelSize;
- (CGSize)size;
- (CHSWidgetIcon)init;
- (CHSWidgetIcon)initWithImage:(CGImage *)image size:(CGSize)size scale:(double)scale pixelSize:(CGSize)pixelSize;
- (double)scale;
- (void)setImage:(CGImage *)image;
- (void)setScale:(double)scale;
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

- (void)setScale:(double)scale
{
  v5 = OBJC_IVAR___CHSWidgetIcon_scale;
  swift_beginAccess();
  *(&self->super.isa + v5) = scale;
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

- (void)setImage:(CGImage *)image
{
  v5 = OBJC_IVAR___CHSWidgetIcon_image;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = image;
  imageCopy = image;
}

- (CHSWidgetIcon)initWithImage:(CGImage *)image size:(CGSize)size scale:(double)scale pixelSize:(CGSize)pixelSize
{
  *(&self->super.isa + OBJC_IVAR___CHSWidgetIcon_image) = image;
  *(&self->super.isa + OBJC_IVAR___CHSWidgetIcon_size) = size;
  *(&self->super.isa + OBJC_IVAR___CHSWidgetIcon_scale) = scale;
  *(&self->super.isa + OBJC_IVAR___CHSWidgetIcon_pixelSize) = pixelSize;
  v8.receiver = self;
  v8.super_class = CHSWidgetIcon;
  imageCopy = image;
  return [(CHSWidgetIcon *)&v8 init];
}

- (CHSWidgetIcon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end