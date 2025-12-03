@interface SFTabSnapshotContent
- (SFTabSnapshotContent)init;
- (SFTabSnapshotContent)initWithImage:(id)image bannerHeight:(double)height topBackdropHeight:(double)backdropHeight isValid:(BOOL)valid horizontalObscuredPercentage:(UIEdgeInsets)percentage;
- (UIEdgeInsets)horizontalObscuredPercentage;
- (void)setImage:(id)image;
@end

@implementation SFTabSnapshotContent

- (SFTabSnapshotContent)initWithImage:(id)image bannerHeight:(double)height topBackdropHeight:(double)backdropHeight isValid:(BOOL)valid horizontalObscuredPercentage:(UIEdgeInsets)percentage
{
  v7 = self + OBJC_IVAR___SFTabSnapshotContent_wrapped;
  *v7 = height;
  *(v7 + 1) = image;
  v7[16] = valid;
  *(v7 + 3) = backdropHeight;
  *(v7 + 1) = percentage;
  v10.receiver = self;
  v10.super_class = SFTabSnapshotContent;
  imageCopy = image;
  return [(SFTabSnapshotContent *)&v10 init];
}

- (void)setImage:(id)image
{
  v4 = *&self->wrapped[OBJC_IVAR___SFTabSnapshotContent_wrapped];
  *&self->wrapped[OBJC_IVAR___SFTabSnapshotContent_wrapped] = image;
  imageCopy = image;
}

- (UIEdgeInsets)horizontalObscuredPercentage
{
  v2 = *&self->wrapped[OBJC_IVAR___SFTabSnapshotContent_wrapped + 24];
  v3 = *&self->wrapped[OBJC_IVAR___SFTabSnapshotContent_wrapped + 32];
  v4 = *&self->wrapped[OBJC_IVAR___SFTabSnapshotContent_wrapped + 40];
  v5 = *&self->wrapped[OBJC_IVAR___SFTabSnapshotContent_wrapped + 48];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (SFTabSnapshotContent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end