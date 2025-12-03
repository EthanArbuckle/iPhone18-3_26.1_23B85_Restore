@interface CPUIGridImageRenderer
- (CPUIGridImageRenderer)init;
- (CPUIGridImageRenderer)initWithImage:(id)image unread:(BOOL)unread scale:(double)scale;
- (UIImage)image;
- (void)setBaseImage:(id)image;
@end

@implementation CPUIGridImageRenderer

- (UIImage)image
{
  selfCopy = self;
  v3 = CPUIGridImageRenderer.image.getter();

  return v3;
}

- (void)setBaseImage:(id)image
{
  v4 = *(&self->super.isa + OBJC_IVAR___CPUIGridImageRenderer_baseImage);
  *(&self->super.isa + OBJC_IVAR___CPUIGridImageRenderer_baseImage) = image;
  imageCopy = image;
}

- (CPUIGridImageRenderer)initWithImage:(id)image unread:(BOOL)unread scale:(double)scale
{
  *(&self->super.isa + OBJC_IVAR___CPUIGridImageRenderer_unread) = unread;
  *(&self->super.isa + OBJC_IVAR___CPUIGridImageRenderer_baseImage) = image;
  *(&self->super.isa + OBJC_IVAR___CPUIGridImageRenderer_scale) = scale;
  v7.receiver = self;
  v7.super_class = CPUIGridImageRenderer;
  imageCopy = image;
  return [(CPUIGridImageRenderer *)&v7 init];
}

- (CPUIGridImageRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end