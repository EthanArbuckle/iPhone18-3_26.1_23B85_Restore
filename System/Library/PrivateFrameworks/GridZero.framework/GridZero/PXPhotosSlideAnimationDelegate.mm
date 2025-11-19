@interface PXPhotosSlideAnimationDelegate
- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)a7;
- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)a7;
- (void)animation:(id)a3 prepareWithRootLayout:(id)a4 viewportShift:(CGPoint)a5;
@end

@implementation PXPhotosSlideAnimationDelegate

- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)a7
{
  v13.receiver = self;
  v13.super_class = PXPhotosSlideAnimationDelegate;
  [(PXGDefaultAnimationDelegate *)&v13 animation:a3 adjustGeometries:a4 styles:a5 infos:a6 forSpriteDisappearingFromRootIndexRange:?];
  v10 = HIDWORD(*&a7);
  if (HIDWORD(*&a7))
  {
    y = self->_viewportShift.y;
    p_var1 = &a4->var0.var1;
    do
    {
      *p_var1 = *p_var1 - y;
      p_var1 += 4;
      --v10;
    }

    while (v10);
  }
}

- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)a7
{
  v13.receiver = self;
  v13.super_class = PXPhotosSlideAnimationDelegate;
  [(PXGDefaultAnimationDelegate *)&v13 animation:a3 adjustGeometries:a4 styles:a5 infos:a6 forSpriteAppearingIntoRootIndexRange:?];
  v10 = HIDWORD(*&a7);
  if (HIDWORD(*&a7))
  {
    y = self->_viewportShift.y;
    p_var1 = &a4->var0.var1;
    do
    {
      *p_var1 = y + *p_var1;
      p_var1 += 4;
      --v10;
    }

    while (v10);
  }
}

- (void)animation:(id)a3 prepareWithRootLayout:(id)a4 viewportShift:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8.receiver = self;
  v8.super_class = PXPhotosSlideAnimationDelegate;
  [(PXGDefaultAnimationDelegate *)&v8 animation:a3 prepareWithRootLayout:a4 viewportShift:?];
  self->_viewportShift.x = x;
  self->_viewportShift.y = y;
}

@end