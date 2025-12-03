@interface PXPhotosSlideAnimationDelegate
- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)range;
- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)range;
- (void)animation:(id)animation prepareWithRootLayout:(id)layout viewportShift:(CGPoint)shift;
@end

@implementation PXPhotosSlideAnimationDelegate

- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)range
{
  v13.receiver = self;
  v13.super_class = PXPhotosSlideAnimationDelegate;
  [(PXGDefaultAnimationDelegate *)&v13 animation:animation adjustGeometries:geometries styles:styles infos:infos forSpriteDisappearingFromRootIndexRange:?];
  v10 = HIDWORD(*&range);
  if (HIDWORD(*&range))
  {
    y = self->_viewportShift.y;
    p_var1 = &geometries->var0.var1;
    do
    {
      *p_var1 = *p_var1 - y;
      p_var1 += 4;
      --v10;
    }

    while (v10);
  }
}

- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)range
{
  v13.receiver = self;
  v13.super_class = PXPhotosSlideAnimationDelegate;
  [(PXGDefaultAnimationDelegate *)&v13 animation:animation adjustGeometries:geometries styles:styles infos:infos forSpriteAppearingIntoRootIndexRange:?];
  v10 = HIDWORD(*&range);
  if (HIDWORD(*&range))
  {
    y = self->_viewportShift.y;
    p_var1 = &geometries->var0.var1;
    do
    {
      *p_var1 = y + *p_var1;
      p_var1 += 4;
      --v10;
    }

    while (v10);
  }
}

- (void)animation:(id)animation prepareWithRootLayout:(id)layout viewportShift:(CGPoint)shift
{
  y = shift.y;
  x = shift.x;
  v8.receiver = self;
  v8.super_class = PXPhotosSlideAnimationDelegate;
  [(PXGDefaultAnimationDelegate *)&v8 animation:animation prepareWithRootLayout:layout viewportShift:?];
  self->_viewportShift.x = x;
  self->_viewportShift.y = y;
}

@end