@interface CAMVideoConfigurationStatusIndicator
- ($3B1716E7537CC2F16D6737AAC3CCCADB)_labelGeometryForSize:(SEL)a3 originX:(CGSize)a4 originY:(double)a5;
- (BOOL)_togglesFramerateForTouchAtLocation:(CGPoint)a3;
- (BOOL)_togglesResolutionForTouchAtLocation:(CGPoint)a3;
- (BOOL)_togglesResolutionOrFramerateForTouchAtLocation:(CGPoint)a3;
- (CAMVideoConfigurationStatusIndicator)init;
- (CAMVideoConfigurationStatusIndicator)initWithLayoutStyle:(int64_t)a3;
- (CAMVideoConfigurationStatusIndicatorDelegate)touchDelegate;
- (CGSize)_framerateSize;
- (CGSize)_resolutionSize;
- (CGSize)_separatorSize;
- (CGSize)_sizingForLabel:(id)a3 minWidth:(double)a4 spacing:(double)a5;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)alignmentRectInsets;
- (UIView)_framerateLabelSnapshot;
- (UIView)_resolutionLabelSnapshot;
- (double)_minTextWidth;
- (id)_framerateString;
- (id)_resolutionString;
- (id)hudItemForAccessibilityHUDManager:(id)a3;
- (void)_handleTouchAtLocation:(CGPoint)a3;
- (void)_updateAppearanceAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)selectedByAccessibilityHUDManager:(id)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setResolution:(int64_t)a3 framerate:(int64_t)a4 animated:(BOOL)a5;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation CAMVideoConfigurationStatusIndicator

- (CAMVideoConfigurationStatusIndicator)init
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 cam_initialLayoutStyle];

  return [(CAMVideoConfigurationStatusIndicator *)self initWithLayoutStyle:v4];
}

- (CAMVideoConfigurationStatusIndicator)initWithLayoutStyle:(int64_t)a3
{
  v20.receiver = self;
  v20.super_class = CAMVideoConfigurationStatusIndicator;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(CAMControlStatusIndicator *)&v20 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    v8->_layoutStyle = a3;
    v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
    resolutionLabel = v9->__resolutionLabel;
    v9->__resolutionLabel = v10;

    [(UILabel *)v9->__resolutionLabel setNumberOfLines:1];
    v12 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v9->__resolutionLabel setTextColor:v12];

    [(UILabel *)v9->__resolutionLabel setTextAlignment:1];
    [(CAMVideoConfigurationStatusIndicator *)v9 addSubview:v9->__resolutionLabel];
    v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
    separatorLabel = v9->__separatorLabel;
    v9->__separatorLabel = v13;

    [(UILabel *)v9->__separatorLabel setNumberOfLines:1];
    v15 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v9->__separatorLabel setTextColor:v15];

    [(UILabel *)v9->__separatorLabel setTextAlignment:1];
    [(CAMVideoConfigurationStatusIndicator *)v9 addSubview:v9->__separatorLabel];
    v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
    framerateLabel = v9->__framerateLabel;
    v9->__framerateLabel = v16;

    [(UILabel *)v9->__framerateLabel setNumberOfLines:1];
    v18 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v9->__framerateLabel setTextColor:v18];

    [(UILabel *)v9->__framerateLabel setTextAlignment:1];
    [(CAMVideoConfigurationStatusIndicator *)v9 addSubview:v9->__framerateLabel];
    [(CAMVideoConfigurationStatusIndicator *)v9 _updateAppearanceAnimated:0];
  }

  return v9;
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    self->_layoutStyle = a3;
    [(CAMVideoConfigurationStatusIndicator *)self _updateAppearanceAnimated:0];
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  v3 = [(CAMVideoConfigurationStatusIndicator *)self layoutStyle];
  if ((v3 - 2) >= 2)
  {
    if (v3 == 1)
    {
      v8 = 2.0;
      v5 = 4.0;
      v6 = 8.0;
      v7 = 8.0;
      goto LABEL_7;
    }

    if (v3)
    {
      v8 = *MEMORY[0x1E69DDCE0];
      v7 = *(MEMORY[0x1E69DDCE0] + 8);
      v5 = *(MEMORY[0x1E69DDCE0] + 16);
      v6 = *(MEMORY[0x1E69DDCE0] + 24);
      goto LABEL_7;
    }
  }

  [(CAMVideoConfigurationStatusIndicator *)self intrinsicContentSize];
  v5 = (42.0 - v4) * 0.5;
  v6 = 6.0;
  v7 = 6.0;
  v8 = v5;
LABEL_7:
  result.right = v6;
  result.bottom = v5;
  result.left = v7;
  result.top = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CAMVideoConfigurationStatusIndicator *)self _resolutionSize];
  v4 = v3;
  v6 = v5;
  [(CAMVideoConfigurationStatusIndicator *)self _separatorSize];
  v8 = v7;
  v10 = v9;
  [(CAMVideoConfigurationStatusIndicator *)self _framerateSize];
  v13 = v4 + v8 + v12;
  if (v6 >= v10)
  {
    v14 = v6;
  }

  else
  {
    v14 = v10;
  }

  if (v14 >= v11)
  {
    v11 = v14;
  }

  result.height = v11;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  v52.receiver = self;
  v52.super_class = CAMVideoConfigurationStatusIndicator;
  [(CAMControlStatusIndicator *)&v52 layoutSubviews];
  [(CAMVideoConfigurationStatusIndicator *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CAMVideoConfigurationStatusIndicator *)self intrinsicContentSize];
  UIRoundToViewScale();
  UIRoundToViewScale();
  if (([(CAMControlStatusIndicator *)self orientation]- 3) <= 1)
  {
    v11 = v10;
    v12 = v8;
    v13 = v6;
    v14 = v4;
    [(CAMVideoConfigurationStatusIndicator *)self _resolutionSize];
    v16 = v15;
    [(CAMVideoConfigurationStatusIndicator *)self _minTextWidth];
    v18 = v17;
    [(CAMVideoConfigurationStatusIndicator *)self _minTextWidth];
    if (v16 - v19 <= 0.0)
    {
      v4 = v14;
      v6 = v13;
      v8 = v12;
      v10 = v11;
    }

    else
    {
      v20 = v18 <= 0.0;
      v4 = v14;
      v6 = v13;
      v8 = v12;
      v10 = v11;
      if (!v20)
      {
        UIRoundToViewScale();
      }
    }
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  [(CAMVideoConfigurationStatusIndicator *)self _resolutionSize];
  [CAMVideoConfigurationStatusIndicator _labelGeometryForSize:"_labelGeometryForSize:originX:originY:" originX:? originY:?];
  v21 = [(CAMVideoConfigurationStatusIndicator *)self _resolutionLabel];
  v42 = v48;
  v43 = v49;
  v44 = v50;
  v45 = v51;
  v40 = v46;
  v41 = v47;
  CAMViewSetGeometry(v21, &v40);

  v22 = [(CAMVideoConfigurationStatusIndicator *)self _resolutionLabelSnapshot];
  v42 = v48;
  v43 = v49;
  v44 = v50;
  v45 = v51;
  v40 = v46;
  v41 = v47;
  CAMViewSetGeometry(v22, &v40);

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  [(CAMVideoConfigurationStatusIndicator *)self _separatorSize];
  [CAMVideoConfigurationStatusIndicator _labelGeometryForSize:"_labelGeometryForSize:originX:originY:" originX:? originY:?];
  v23 = [(CAMVideoConfigurationStatusIndicator *)self _separatorLabel];
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v45;
  v34 = v40;
  v35 = v41;
  CAMViewSetGeometry(v23, &v34);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  [(CAMVideoConfigurationStatusIndicator *)self _framerateSize];
  [CAMVideoConfigurationStatusIndicator _labelGeometryForSize:"_labelGeometryForSize:originX:originY:" originX:? originY:?];
  v24 = [(CAMVideoConfigurationStatusIndicator *)self _framerateLabel];
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  CAMViewSetGeometry(v24, &v28);

  v25 = [(CAMVideoConfigurationStatusIndicator *)self _framerateLabelSnapshot];
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  CAMViewSetGeometry(v25, &v28);

  v26 = [(CAMVideoConfigurationStatusIndicator *)self _borderImageView];

  if (v26)
  {
    v27 = [(CAMVideoConfigurationStatusIndicator *)self _borderImageView];
    [v27 setFrame:{v4, v6, v8, v10}];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [a3 anyObject];
  [v5 locationInView:self];
  [(CAMVideoConfigurationStatusIndicator *)self _handleTouchAtLocation:?];
}

- (void)setResolution:(int64_t)a3 framerate:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  if (self->_framerate == a4)
  {
    resolution = self->_resolution;
    if (resolution == a3)
    {
      return;
    }

    if (a5)
    {
      goto LABEL_7;
    }
  }

  else if (a5)
  {
    v10 = [(CAMVideoConfigurationStatusIndicator *)self _framerateLabelSnapshot];
    [v10 removeFromSuperview];

    v11 = [(CAMVideoConfigurationStatusIndicator *)self _framerateLabel];
    v12 = [CAMFrameworkUtilities snapshotForCrossFadingView:v11 fadeOutDuration:1 fadeOutDelay:0.15 fadeInDuration:0.0 fadeInDelay:0.125 embedSnapshot:0.1];
    [(CAMVideoConfigurationStatusIndicator *)self set_framerateLabelSnapshot:v12];

    resolution = self->_resolution;
LABEL_7:
    if (resolution != a3)
    {
      v13 = [(CAMVideoConfigurationStatusIndicator *)self _resolutionLabelSnapshot];
      [v13 removeFromSuperview];

      v14 = [(CAMVideoConfigurationStatusIndicator *)self _resolutionLabel];
      v15 = [CAMFrameworkUtilities snapshotForCrossFadingView:v14 fadeOutDuration:1 fadeOutDelay:0.15 fadeInDuration:0.0 fadeInDelay:0.125 embedSnapshot:0.1];
      [(CAMVideoConfigurationStatusIndicator *)self set_resolutionLabelSnapshot:v15];
    }
  }

  [(CAMVideoConfigurationStatusIndicator *)self setResolution:a3];
  [(CAMVideoConfigurationStatusIndicator *)self setFramerate:a4];

  [(CAMVideoConfigurationStatusIndicator *)self _updateAppearanceAnimated:v5];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (a4)
  {
    [(CAMVideoConfigurationStatusIndicator *)self layoutIfNeeded];
    v7.receiver = self;
    v7.super_class = CAMVideoConfigurationStatusIndicator;
    [(CAMControlStatusIndicator *)&v7 setOrientation:a3 animated:0];
    [(CAMVideoConfigurationStatusIndicator *)self setNeedsLayout];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__CAMVideoConfigurationStatusIndicator_setOrientation_animated___block_invoke;
    v6[3] = &unk_1E76F77B0;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v6 options:0 animations:0.3 completion:0.0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CAMVideoConfigurationStatusIndicator;
    [(CAMControlStatusIndicator *)&v7 setOrientation:a3 animated:?];
    [(CAMVideoConfigurationStatusIndicator *)self setNeedsLayout];
  }
}

- (id)_resolutionString
{
  v2 = [(CAMVideoConfigurationStatusIndicator *)self resolution]- 1;
  if (v2 > 3)
  {
    v3 = &stru_1F1660A30;
  }

  else
  {
    v3 = CAMLocalizedFrameworkString(off_1E76F85C8[v2], 0);
  }

  return v3;
}

- (id)_framerateString
{
  v2 = [(CAMVideoConfigurationStatusIndicator *)self framerate]- 1;
  if (v2 > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1A3A67FA8[v2];
  }

  v4 = [objc_opt_class() integerFormatter];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

- ($3B1716E7537CC2F16D6737AAC3CCCADB)_labelGeometryForSize:(SEL)a3 originX:(CGSize)a4 originY:(double)a5
{
  height = a4.height;
  width = a4.width;
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  UIRectGetCenter();
  v13 = v12;
  v15 = v14;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  CAMOrientationTransform([(CAMControlStatusIndicator *)self orientation], &v18);
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  CAMViewGeometryMake(v17, retstr, v13, v15, v10, v11, width, height);
  return result;
}

- (CGSize)_sizingForLabel:(id)a3 minWidth:(double)a4 spacing:(double)a5
{
  [a3 intrinsicContentSize];
  UICeilToViewScale();
  v6 = v5;
  UICeilToViewScale();
  v8 = v7;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (double)_minTextWidth
{
  v2 = [(CAMVideoConfigurationStatusIndicator *)self layoutStyle];
  result = 30.0;
  if (v2 == 1)
  {
    return 0.0;
  }

  return result;
}

- (void)_updateAppearanceAnimated:(BOOL)a3
{
  v3 = a3;
  v38[2] = *MEMORY[0x1E69E9840];
  v5 = [CAMFont cameraMonospacedFontOfSize:14.0];
  v6 = [CAMFont cameraKerningForFont:v5];
  v7 = *MEMORY[0x1E69DB660];
  v37[0] = *MEMORY[0x1E69DB648];
  v37[1] = v7;
  v38[0] = v5;
  v38[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  if ([(CAMVideoConfigurationStatusIndicator *)self resolution])
  {
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = [(CAMVideoConfigurationStatusIndicator *)self _resolutionString];
    v11 = [v9 initWithString:v10 attributes:v8];
    v12 = [(CAMVideoConfigurationStatusIndicator *)self _resolutionLabel];
    [v12 setAttributedText:v11];
  }

  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  v14 = [(CAMVideoConfigurationStatusIndicator *)self _separatorString];
  v15 = [v13 initWithString:v14 attributes:v8];
  v16 = [(CAMVideoConfigurationStatusIndicator *)self _separatorLabel];
  [v16 setAttributedText:v15];

  if ([(CAMVideoConfigurationStatusIndicator *)self framerate])
  {
    v17 = objc_alloc(MEMORY[0x1E696AAB0]);
    v18 = [(CAMVideoConfigurationStatusIndicator *)self _framerateString];
    v19 = [v17 initWithString:v18 attributes:v8];
    v20 = [(CAMVideoConfigurationStatusIndicator *)self _framerateLabel];
    [v20 setAttributedText:v19];
  }

  v21 = [(CAMVideoConfigurationStatusIndicator *)self layoutStyle];
  [(CAMVideoConfigurationStatusIndicator *)self _minTextWidth];
  v23 = v22;
  v24 = [(CAMVideoConfigurationStatusIndicator *)self _resolutionLabel];
  [(CAMVideoConfigurationStatusIndicator *)self _sizingForLabel:v24 minWidth:v23 spacing:13.0 - CAMPixelWidthForView(self)];
  [(CAMVideoConfigurationStatusIndicator *)self set_resolutionSize:?];

  v25 = [(CAMVideoConfigurationStatusIndicator *)self _separatorLabel];
  [(CAMVideoConfigurationStatusIndicator *)self _sizingForLabel:v25 minWidth:16.0 spacing:0.0];
  [(CAMVideoConfigurationStatusIndicator *)self set_separatorSize:?];

  v26 = [(CAMVideoConfigurationStatusIndicator *)self _framerateLabel];
  [(CAMVideoConfigurationStatusIndicator *)self _sizingForLabel:v26 minWidth:v23 spacing:13.0 - CAMPixelWidthForView(self)];
  [(CAMVideoConfigurationStatusIndicator *)self set_framerateSize:?];

  v27 = [(CAMVideoConfigurationStatusIndicator *)self _borderImageView];

  if (v21 == 1)
  {
    if (!v27)
    {
      v28 = MEMORY[0x1E69DCAB8];
      v29 = CAMCameraUIFrameworkBundle();
      v30 = [v28 imageNamed:@"CAMFramerateIndicatorBorder" inBundle:v29];

      [v30 size];
      v33 = [v30 resizableImageWithCapInsets:1 resizingMode:{v31 * 0.5, v32 * 0.5, v31 * 0.5, v32 * 0.5}];
      v34 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v33];
      borderImageView = self->__borderImageView;
      self->__borderImageView = v34;

      [(CAMVideoConfigurationStatusIndicator *)self addSubview:self->__borderImageView];
LABEL_10:
    }
  }

  else if (v27)
  {
    [(UIImageView *)self->__borderImageView removeFromSuperview];
    v30 = self->__borderImageView;
    self->__borderImageView = 0;
    goto LABEL_10;
  }

  [(CAMVideoConfigurationStatusIndicator *)self setNeedsLayout];
  v36 = [(CAMControlStatusIndicator *)self delegate];
  [v36 controlStatusIndicatorDidChangeIntrinsicContentSize:self animated:v3];
}

- (BOOL)_togglesResolutionOrFramerateForTouchAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CAMVideoConfigurationStatusIndicator *)self bounds];
  v10 = CGRectInset(v9, -15.0, -15.0);
  v5 = x;
  v6 = y;

  return CGRectContainsPoint(v10, *&v5);
}

- (BOOL)_togglesResolutionForTouchAtLocation:(CGPoint)a3
{
  x = a3.x;
  v5 = [(CAMVideoConfigurationStatusIndicator *)self _togglesResolutionOrFramerateForTouchAtLocation:a3.x, a3.y];
  v6 = [(CAMVideoConfigurationStatusIndicator *)self _separatorLabel];
  [v6 center];
  v8 = v7;

  return x < v8 && v5;
}

- (BOOL)_togglesFramerateForTouchAtLocation:(CGPoint)a3
{
  x = a3.x;
  v5 = [(CAMVideoConfigurationStatusIndicator *)self _togglesResolutionOrFramerateForTouchAtLocation:a3.x, a3.y];
  v6 = [(CAMVideoConfigurationStatusIndicator *)self _separatorLabel];
  [v6 center];
  v8 = v7;

  return x > v8 && v5;
}

- (void)_handleTouchAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CAMVideoConfigurationStatusIndicator *)self touchDelegate];
  v7 = [v6 videoConfigurationStatusIndicatorShouldRespondToTap:self];

  if (v7)
  {
    if ([(CAMVideoConfigurationStatusIndicator *)self _togglesResolutionForTouchAtLocation:x, y])
    {
      v8 = [(CAMVideoConfigurationStatusIndicator *)self touchDelegate];
      [v8 videoConfigurationStatusIndicatorDidTapResolution:self];
    }

    else
    {
      if (![(CAMVideoConfigurationStatusIndicator *)self _togglesFramerateForTouchAtLocation:x, y])
      {
        return;
      }

      v8 = [(CAMVideoConfigurationStatusIndicator *)self touchDelegate];
      [v8 videoConfigurationStatusIndicatorDidTapFramerate:self];
    }
  }
}

- (id)hudItemForAccessibilityHUDManager:(id)a3
{
  [a3 locationOfAccessibilityGestureInView:self];
  v5 = v4;
  v7 = v6;
  if ([(CAMVideoConfigurationStatusIndicator *)self _togglesResolutionForTouchAtLocation:?])
  {
    v8 = [(CAMVideoConfigurationStatusIndicator *)self _resolutionString];
  }

  else
  {
    if (![(CAMVideoConfigurationStatusIndicator *)self _togglesFramerateForTouchAtLocation:v5, v7])
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = [(CAMVideoConfigurationStatusIndicator *)self _framerateString];
  }

  v9 = v8;
  if (v8)
  {
    v10 = objc_alloc(MEMORY[0x1E69DC618]);
    v11 = [v10 initWithTitle:v9 image:0 imageInsets:0 scaleImage:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    goto LABEL_9;
  }

LABEL_8:
  v11 = 0;
LABEL_9:

  return v11;
}

- (void)selectedByAccessibilityHUDManager:(id)a3
{
  [a3 locationOfAccessibilityGestureInView:self];

  [(CAMVideoConfigurationStatusIndicator *)self _handleTouchAtLocation:?];
}

- (CAMVideoConfigurationStatusIndicatorDelegate)touchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_touchDelegate);

  return WeakRetained;
}

- (UIView)_resolutionLabelSnapshot
{
  WeakRetained = objc_loadWeakRetained(&self->__resolutionLabelSnapshot);

  return WeakRetained;
}

- (UIView)_framerateLabelSnapshot
{
  WeakRetained = objc_loadWeakRetained(&self->__framerateLabelSnapshot);

  return WeakRetained;
}

- (CGSize)_resolutionSize
{
  width = self->__resolutionSize.width;
  height = self->__resolutionSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_separatorSize
{
  width = self->__separatorSize.width;
  height = self->__separatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_framerateSize
{
  width = self->__framerateSize.width;
  height = self->__framerateSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end