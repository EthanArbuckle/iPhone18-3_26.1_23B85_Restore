@interface CPUIGridImageRenderer
- (CPUIGridImageRenderer)init;
- (CPUIGridImageRenderer)initWithImage:(id)a3 unread:(BOOL)a4 scale:(double)a5;
- (UIImage)image;
- (void)setBaseImage:(id)a3;
@end

@implementation CPUIGridImageRenderer

- (UIImage)image
{
  v2 = self;
  v3 = CPUIGridImageRenderer.image.getter();

  return v3;
}

- (void)setBaseImage:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CPUIGridImageRenderer_baseImage);
  *(&self->super.isa + OBJC_IVAR___CPUIGridImageRenderer_baseImage) = a3;
  v3 = a3;
}

- (CPUIGridImageRenderer)initWithImage:(id)a3 unread:(BOOL)a4 scale:(double)a5
{
  *(&self->super.isa + OBJC_IVAR___CPUIGridImageRenderer_unread) = a4;
  *(&self->super.isa + OBJC_IVAR___CPUIGridImageRenderer_baseImage) = a3;
  *(&self->super.isa + OBJC_IVAR___CPUIGridImageRenderer_scale) = a5;
  v7.receiver = self;
  v7.super_class = CPUIGridImageRenderer;
  v5 = a3;
  return [(CPUIGridImageRenderer *)&v7 init];
}

- (CPUIGridImageRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end