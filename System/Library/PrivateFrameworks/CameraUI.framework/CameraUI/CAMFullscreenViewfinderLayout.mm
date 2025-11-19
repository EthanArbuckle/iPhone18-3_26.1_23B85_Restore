@interface CAMFullscreenViewfinderLayout
- ($3B1716E7537CC2F16D6737AAC3CCCADB)geometryForElapsedTimeView:(SEL)a3 viewportFrame:(id)a4 orientation:(CGRect)a5 systemOverlayVisible:(int64_t)a6;
- (CAMFullscreenViewfinderLayout)initWithReferenceBounds:(CGRect)a3 shutterIntrinsicSize:(CGSize)a4;
- (CGRect)alignmentRectForBottomRightControlOfSize:(CGSize)a3;
- (CGRect)alignmentRectForShutterControl;
- (CGRect)frameForBottomControl:(id)a3 betweenShutterAndLeftControl:(id)a4;
- (CGRect)frameForBottomControl:(id)a3 betweenShutterAndRightControl:(id)a4;
- (CGRect)frameForBottomLeftControl:(id)a3;
- (CGRect)frameForBottomRightControl:(id)a3;
- (CGRect)frameForContentClippingContainer;
- (CGRect)frameForControlStatusBar;
- (CGRect)frameForShutterControl:(id)a3;
- (CGRect)referenceBounds;
- (CGRect)viewportFrameForAspectRatio:(int64_t)a3 accessoryAreaExpanded:(BOOL)a4 smartStyleControlsExpanded:(BOOL)a5;
- (CGRect)viewportFrameForAspectRatio:(int64_t)a3 usingAppDrawer:(BOOL)a4 accessoryAreaExpanded:(BOOL)a5;
- (CGSize)shutterIntrinsicSize;
- (CGSize)viewportSizeForAspectRatio:(int64_t)a3;
- (UIEdgeInsets)_safeAreaInsets;
- (void)_updateSafeAreaInsets;
- (void)setFrontCameraInset:(double)a3;
- (void)setReferenceBounds:(CGRect)a3;
- (void)setScreenScale:(double)a3;
@end

@implementation CAMFullscreenViewfinderLayout

- (CAMFullscreenViewfinderLayout)initWithReferenceBounds:(CGRect)a3 shutterIntrinsicSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.size.height;
  v7 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16.receiver = self;
  v16.super_class = CAMFullscreenViewfinderLayout;
  v10 = [(CAMFullscreenViewfinderLayout *)&v16 init];
  if (v10)
  {
    v11 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v11 scale];
    v10->_screenScale = v12;

    v10->_referenceBounds.origin.x = x;
    v10->_referenceBounds.origin.y = y;
    v10->_referenceBounds.size.width = v7;
    v10->_referenceBounds.size.height = v6;
    v10->_shutterIntrinsicSize.width = width;
    v10->_shutterIntrinsicSize.height = height;
    v13 = +[CAMCaptureCapabilities capabilities];
    [v13 frontCameraInset];
    v10->_frontCameraInset = v14;

    [(CAMFullscreenViewfinderLayout *)v10 _updateSafeAreaInsets];
  }

  return v10;
}

- (void)setReferenceBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_referenceBounds))
  {
    self->_referenceBounds.origin.x = x;
    self->_referenceBounds.origin.y = y;
    self->_referenceBounds.size.width = width;
    self->_referenceBounds.size.height = height;

    [(CAMFullscreenViewfinderLayout *)self _updateSafeAreaInsets];
  }
}

- (void)setScreenScale:(double)a3
{
  if (self->_screenScale != a3)
  {
    self->_screenScale = a3;
    [(CAMFullscreenViewfinderLayout *)self _updateSafeAreaInsets];
  }
}

- (void)setFrontCameraInset:(double)a3
{
  if (self->_frontCameraInset != a3)
  {
    self->_frontCameraInset = a3;
    [(CAMFullscreenViewfinderLayout *)self _updateSafeAreaInsets];
  }
}

- (void)_updateSafeAreaInsets
{
  [(CAMFullscreenViewfinderLayout *)self referenceBounds];
  v4 = v3;
  [(CAMFullscreenViewfinderLayout *)self viewportSizeForAspectRatio:1];
  v6 = v4 - v5;
  v7 = MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 24);
  [(CAMFullscreenViewfinderLayout *)self screenScale];
  UIRoundToScale();
  v11 = v10;
  v12 = v6 - v10;
  [(CAMFullscreenViewfinderLayout *)self frameForControlStatusBar];
  if (v12 >= v13 + 33.0)
  {
    [(CAMFullscreenViewfinderLayout *)self frontCameraInset];
    if (v15 <= 45.0)
    {
      v14 = 33.0;
    }

    else
    {
      v11 = v11 + -15.0;
      v14 = 48.0;
    }
  }

  else
  {
    v14 = *v7;
  }

  self->__safeAreaInsets.top = v14;
  self->__safeAreaInsets.left = v8;
  self->__safeAreaInsets.bottom = v11;
  self->__safeAreaInsets.right = v9;
}

- (CGSize)viewportSizeForAspectRatio:(int64_t)a3
{
  [(CAMFullscreenViewfinderLayout *)self referenceBounds];
  v5 = v4;
  [(CAMFullscreenViewfinderLayout *)self screenScale];
  UIRoundToScale();
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGRect)viewportFrameForAspectRatio:(int64_t)a3 usingAppDrawer:(BOOL)a4 accessoryAreaExpanded:(BOOL)a5
{
  [(CAMFullscreenViewfinderLayout *)self viewportFrameForAspectRatio:a3 accessoryAreaExpanded:a5 smartStyleControlsExpanded:0];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)viewportFrameForAspectRatio:(int64_t)a3 accessoryAreaExpanded:(BOOL)a4 smartStyleControlsExpanded:(BOOL)a5
{
  v5 = a5;
  [(CAMFullscreenViewfinderLayout *)self referenceBounds:a3];
  v9 = v8;
  v11 = v10;
  [(CAMFullscreenViewfinderLayout *)self viewportSizeForAspectRatio:a3];
  v14 = v12 / v13;

  [CAMChromeViewSpec viewportWithAspectRatio:v5 viewSize:v14 smartStyleControlsExpanded:v9, v11];
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)frameForContentClippingContainer
{
  [(CAMFullscreenViewfinderLayout *)self referenceBounds];

  [CAMChromeViewSpec contentFrameForViewSize:v2, v3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)frameForShutterControl:(id)a3
{
  v4 = a3;
  [(CAMFullscreenViewfinderLayout *)self referenceBounds];
  [(CAMFullscreenViewfinderLayout *)self alignmentRectForShutterControl];
  [v4 frameForAlignmentRect:? availableWidth:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)alignmentRectForShutterControl
{
  [(CAMFullscreenViewfinderLayout *)self referenceBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CAMFullscreenViewfinderLayout *)self shutterIntrinsicSize];
  [(CAMFullscreenViewfinderLayout *)self screenScale];
  v24 = v11;
  UIRectCenteredXInRectScale();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [CAMChromeViewSpec shutterButtonCenterBottomInsetForViewSize:v8, v10, v24];
  v19 = v18;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v20 = CGRectGetMaxY(v25) - v19 + v17 * -0.5;
  v21 = v13;
  v22 = v15;
  v23 = v17;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v20;
  result.origin.x = v21;
  return result;
}

- (CGRect)frameForControlStatusBar
{
  [(CAMFullscreenViewfinderLayout *)self referenceBounds];

  [CAMChromeViewSpec topBarFrameForViewSize:v2, v3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)frameForBottomLeftControl:(id)a3
{
  v4 = a3;
  [(CAMFullscreenViewfinderLayout *)self alignmentRectForShutterControl];
  [v4 intrinsicContentSize];
  UIRectCenteredYInRectScale();
  [v4 frameForAlignmentRect:0];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)frameForBottomControl:(id)a3 betweenShutterAndLeftControl:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CAMFullscreenViewfinderLayout *)self alignmentRectForShutterControl];
  v9 = v8;
  rect = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(CAMFullscreenViewfinderLayout *)self frameForBottomLeftControl:v6];
  [v6 alignmentRectForFrame:?];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v37.origin.x = v9;
  v37.origin.y = v11;
  v37.size.width = v13;
  v37.size.height = v15;
  CGRectGetMinX(v37);
  v38.origin.x = v17;
  v38.origin.y = v19;
  v38.size.width = v21;
  v38.size.height = v23;
  CGRectGetMaxX(v38);
  v39.origin.x = rect;
  v39.origin.y = v11;
  v39.size.width = v13;
  v39.size.height = v15;
  CGRectGetMidY(v39);
  [v7 intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [v7 frameForAlignmentRect:?];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGRect)frameForBottomRightControl:(id)a3
{
  v4 = a3;
  [v4 intrinsicContentSize];
  [(CAMFullscreenViewfinderLayout *)self alignmentRectForBottomRightControlOfSize:?];
  [v4 frameForAlignmentRect:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)alignmentRectForBottomRightControlOfSize:(CGSize)a3
{
  [(CAMFullscreenViewfinderLayout *)self alignmentRectForShutterControl];
  +[CAMChromeViewSpec previewOverlayButtonSideMargin];
  [(CAMFullscreenViewfinderLayout *)self referenceBounds];
  CGRectGetMaxX(v8);
  UIRectCenteredYInRectScale();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)frameForBottomControl:(id)a3 betweenShutterAndRightControl:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(CAMFullscreenViewfinderLayout *)self alignmentRectForShutterControl];
  v9 = v8;
  rect = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(CAMFullscreenViewfinderLayout *)self frameForBottomRightControl:v6];
  [v6 alignmentRectForFrame:?];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v37.origin.x = v9;
  v37.origin.y = v11;
  v37.size.width = v13;
  v37.size.height = v15;
  CGRectGetMaxX(v37);
  v38.origin.x = v17;
  v38.origin.y = v19;
  v38.size.width = v21;
  v38.size.height = v23;
  CGRectGetMinX(v38);
  v39.origin.x = rect;
  v39.origin.y = v11;
  v39.size.width = v13;
  v39.size.height = v15;
  CGRectGetMidY(v39);
  [v7 intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [v7 frameForAlignmentRect:?];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)geometryForElapsedTimeView:(SEL)a3 viewportFrame:(id)a4 orientation:(CGRect)a5 systemOverlayVisible:(int64_t)a6
{
  v7 = a7;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a4;
  *retstr = *CAMViewGeometryZero;
  [v15 intrinsicContentSize];
  v17 = v16;
  retstr->var0.size.width = v18;
  retstr->var0.size.height = v16;
  CAMOrientationTransform(a6, &retstr->var2);
  UIRectGetCenter();
  v20 = v19;
  retstr->var1.x = v21;
  retstr->var1.y = v19;
  v22 = v17 * 0.5;
  UIRoundToViewScale();
  if (a6 < 3)
  {
    [(CAMFullscreenViewfinderLayout *)self frameForControlStatusBar];
    v24 = v48.origin.y;
    MidY = CGRectGetMidY(v48);
    retstr->var1.y = MidY;
    v26 = +[CAMCaptureCapabilities capabilities];
    [v26 frontCameraInset];
    v28 = v27 + 2.0;

    v29 = MidY - v22 + v24;
    if (v28 > v29)
    {
      retstr->var1.y = MidY + v28 - v29;
    }

    UIRoundToViewScale();
    goto LABEL_5;
  }

  v31 = v23;
  if (a6 == 3)
  {
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    retstr->var1.x = CGRectGetMaxX(v50) - v31 + -8.0;
    if (v7)
    {
      v32 = +[CAMCaptureCapabilities capabilities];
      [v32 frameForPhysicalButton:6];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      v51.origin.x = v34;
      v51.origin.y = v36;
      v51.size.width = v38;
      v51.size.height = v40;
      MinY = CGRectGetMinY(v51);
      v42 = *&retstr->var2.a;
      v47[2] = retstr->var1;
      v47[3] = v42;
      v43 = *&retstr->var2.tx;
      v47[4] = *&retstr->var2.c;
      v47[5] = v43;
      size = retstr->var0.size;
      v47[0] = retstr->var0.origin;
      v47[1] = size;
      CAMFrameForGeometry(v47);
      v45 = CGRectGetMaxY(v52) + 88.0;
      if (v45 > MinY)
      {
        v30 = v20 - (v45 - MinY);
LABEL_5:
        retstr->var1.y = v30;
      }
    }
  }

  else if (a6 == 4)
  {
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    retstr->var1.x = v31 + CGRectGetMinX(v49) + 8.0;
  }

  return result;
}

- (CGRect)referenceBounds
{
  x = self->_referenceBounds.origin.x;
  y = self->_referenceBounds.origin.y;
  width = self->_referenceBounds.size.width;
  height = self->_referenceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)shutterIntrinsicSize
{
  width = self->_shutterIntrinsicSize.width;
  height = self->_shutterIntrinsicSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)_safeAreaInsets
{
  top = self->__safeAreaInsets.top;
  left = self->__safeAreaInsets.left;
  bottom = self->__safeAreaInsets.bottom;
  right = self->__safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end