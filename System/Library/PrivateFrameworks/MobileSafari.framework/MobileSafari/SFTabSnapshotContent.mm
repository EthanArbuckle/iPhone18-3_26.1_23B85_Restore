@interface SFTabSnapshotContent
- (SFTabSnapshotContent)init;
- (SFTabSnapshotContent)initWithImage:(id)a3 bannerHeight:(double)a4 topBackdropHeight:(double)a5 isValid:(BOOL)a6 horizontalObscuredPercentage:(UIEdgeInsets)a7;
- (UIEdgeInsets)horizontalObscuredPercentage;
- (void)setImage:(id)a3;
@end

@implementation SFTabSnapshotContent

- (SFTabSnapshotContent)initWithImage:(id)a3 bannerHeight:(double)a4 topBackdropHeight:(double)a5 isValid:(BOOL)a6 horizontalObscuredPercentage:(UIEdgeInsets)a7
{
  v7 = self + OBJC_IVAR___SFTabSnapshotContent_wrapped;
  *v7 = a4;
  *(v7 + 1) = a3;
  v7[16] = a6;
  *(v7 + 3) = a5;
  *(v7 + 1) = a7;
  v10.receiver = self;
  v10.super_class = SFTabSnapshotContent;
  v8 = a3;
  return [(SFTabSnapshotContent *)&v10 init];
}

- (void)setImage:(id)a3
{
  v4 = *&self->wrapped[OBJC_IVAR___SFTabSnapshotContent_wrapped];
  *&self->wrapped[OBJC_IVAR___SFTabSnapshotContent_wrapped] = a3;
  v3 = a3;
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