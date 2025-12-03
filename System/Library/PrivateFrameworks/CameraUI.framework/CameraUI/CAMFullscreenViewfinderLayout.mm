@interface CAMFullscreenViewfinderLayout
- ($3B1716E7537CC2F16D6737AAC3CCCADB)geometryForElapsedTimeView:(SEL)view viewportFrame:(id)frame orientation:(CGRect)orientation systemOverlayVisible:(int64_t)visible;
- (CAMFullscreenViewfinderLayout)initWithReferenceBounds:(CGRect)bounds shutterIntrinsicSize:(CGSize)size;
- (CGRect)alignmentRectForBottomRightControlOfSize:(CGSize)size;
- (CGRect)alignmentRectForShutterControl;
- (CGRect)frameForBottomControl:(id)control betweenShutterAndLeftControl:(id)leftControl;
- (CGRect)frameForBottomControl:(id)control betweenShutterAndRightControl:(id)rightControl;
- (CGRect)frameForBottomLeftControl:(id)control;
- (CGRect)frameForBottomRightControl:(id)control;
- (CGRect)frameForContentClippingContainer;
- (CGRect)frameForControlStatusBar;
- (CGRect)frameForShutterControl:(id)control;
- (CGRect)referenceBounds;
- (CGRect)viewportFrameForAspectRatio:(int64_t)ratio accessoryAreaExpanded:(BOOL)expanded smartStyleControlsExpanded:(BOOL)controlsExpanded;
- (CGRect)viewportFrameForAspectRatio:(int64_t)ratio usingAppDrawer:(BOOL)drawer accessoryAreaExpanded:(BOOL)expanded;
- (CGSize)shutterIntrinsicSize;
- (CGSize)viewportSizeForAspectRatio:(int64_t)ratio;
- (UIEdgeInsets)_safeAreaInsets;
- (void)_updateSafeAreaInsets;
- (void)setFrontCameraInset:(double)inset;
- (void)setReferenceBounds:(CGRect)bounds;
- (void)setScreenScale:(double)scale;
@end

@implementation CAMFullscreenViewfinderLayout

- (CAMFullscreenViewfinderLayout)initWithReferenceBounds:(CGRect)bounds shutterIntrinsicSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = bounds.size.height;
  v7 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v16.receiver = self;
  v16.super_class = CAMFullscreenViewfinderLayout;
  v10 = [(CAMFullscreenViewfinderLayout *)&v16 init];
  if (v10)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
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

- (void)setReferenceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!CGRectEqualToRect(bounds, self->_referenceBounds))
  {
    self->_referenceBounds.origin.x = x;
    self->_referenceBounds.origin.y = y;
    self->_referenceBounds.size.width = width;
    self->_referenceBounds.size.height = height;

    [(CAMFullscreenViewfinderLayout *)self _updateSafeAreaInsets];
  }
}

- (void)setScreenScale:(double)scale
{
  if (self->_screenScale != scale)
  {
    self->_screenScale = scale;
    [(CAMFullscreenViewfinderLayout *)self _updateSafeAreaInsets];
  }
}

- (void)setFrontCameraInset:(double)inset
{
  if (self->_frontCameraInset != inset)
  {
    self->_frontCameraInset = inset;
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

- (CGSize)viewportSizeForAspectRatio:(int64_t)ratio
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

- (CGRect)viewportFrameForAspectRatio:(int64_t)ratio usingAppDrawer:(BOOL)drawer accessoryAreaExpanded:(BOOL)expanded
{
  [(CAMFullscreenViewfinderLayout *)self viewportFrameForAspectRatio:ratio accessoryAreaExpanded:expanded smartStyleControlsExpanded:0];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)viewportFrameForAspectRatio:(int64_t)ratio accessoryAreaExpanded:(BOOL)expanded smartStyleControlsExpanded:(BOOL)controlsExpanded
{
  controlsExpandedCopy = controlsExpanded;
  [(CAMFullscreenViewfinderLayout *)self referenceBounds:ratio];
  v9 = v8;
  v11 = v10;
  [(CAMFullscreenViewfinderLayout *)self viewportSizeForAspectRatio:ratio];
  v14 = v12 / v13;

  [CAMChromeViewSpec viewportWithAspectRatio:controlsExpandedCopy viewSize:v14 smartStyleControlsExpanded:v9, v11];
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

- (CGRect)frameForShutterControl:(id)control
{
  controlCopy = control;
  [(CAMFullscreenViewfinderLayout *)self referenceBounds];
  [(CAMFullscreenViewfinderLayout *)self alignmentRectForShutterControl];
  [controlCopy frameForAlignmentRect:? availableWidth:?];
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

- (CGRect)frameForBottomLeftControl:(id)control
{
  controlCopy = control;
  [(CAMFullscreenViewfinderLayout *)self alignmentRectForShutterControl];
  [controlCopy intrinsicContentSize];
  UIRectCenteredYInRectScale();
  [controlCopy frameForAlignmentRect:0];
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

- (CGRect)frameForBottomControl:(id)control betweenShutterAndLeftControl:(id)leftControl
{
  leftControlCopy = leftControl;
  controlCopy = control;
  [(CAMFullscreenViewfinderLayout *)self alignmentRectForShutterControl];
  v9 = v8;
  rect = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(CAMFullscreenViewfinderLayout *)self frameForBottomLeftControl:leftControlCopy];
  [leftControlCopy alignmentRectForFrame:?];
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
  [controlCopy intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [controlCopy frameForAlignmentRect:?];
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

- (CGRect)frameForBottomRightControl:(id)control
{
  controlCopy = control;
  [controlCopy intrinsicContentSize];
  [(CAMFullscreenViewfinderLayout *)self alignmentRectForBottomRightControlOfSize:?];
  [controlCopy frameForAlignmentRect:?];
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

- (CGRect)alignmentRectForBottomRightControlOfSize:(CGSize)size
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

- (CGRect)frameForBottomControl:(id)control betweenShutterAndRightControl:(id)rightControl
{
  rightControlCopy = rightControl;
  controlCopy = control;
  [(CAMFullscreenViewfinderLayout *)self alignmentRectForShutterControl];
  v9 = v8;
  rect = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(CAMFullscreenViewfinderLayout *)self frameForBottomRightControl:rightControlCopy];
  [rightControlCopy alignmentRectForFrame:?];
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
  [controlCopy intrinsicContentSize];
  UIRectCenteredAboutPointScale();
  [controlCopy frameForAlignmentRect:?];
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

- ($3B1716E7537CC2F16D6737AAC3CCCADB)geometryForElapsedTimeView:(SEL)view viewportFrame:(id)frame orientation:(CGRect)orientation systemOverlayVisible:(int64_t)visible
{
  v7 = a7;
  height = orientation.size.height;
  width = orientation.size.width;
  y = orientation.origin.y;
  x = orientation.origin.x;
  frameCopy = frame;
  *retstr = *CAMViewGeometryZero;
  [frameCopy intrinsicContentSize];
  v17 = v16;
  retstr->var0.size.width = v18;
  retstr->var0.size.height = v16;
  CAMOrientationTransform(visible, &retstr->var2);
  UIRectGetCenter();
  v20 = v19;
  retstr->var1.x = v21;
  retstr->var1.y = v19;
  v22 = v17 * 0.5;
  UIRoundToViewScale();
  if (visible < 3)
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
  if (visible == 3)
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

  else if (visible == 4)
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