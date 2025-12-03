@interface MTShadowView
- ($850582C412A153471A31AA7BEC9075BC)shadowAttributes;
- (CGRect)frameWithContentWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTShadowView)initWithShadowAttributes:(id *)attributes maskCornerRadius:(double)radius;
- (MTShadowView)initWithShadowAttributes:(id *)attributes maskCornerRadius:(double)radius continuousCorners:(BOOL)corners;
- (UIEdgeInsets)shadowOutsets;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateShadowOutsetsIfNecessary;
- (void)_updateShadowVisualStyling;
- (void)_validateImage;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setShadowColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MTShadowView

- (void)didMoveToSuperview
{
  superview = [(MTShadowView *)self superview];

  if (superview)
  {

    [(MTShadowView *)self _updateShadowVisualStyling];
  }
}

- (UIEdgeInsets)shadowOutsets
{
  [(MTShadowView *)self _updateShadowOutsetsIfNecessary];
  top = self->_shadowOutsets.top;
  left = self->_shadowOutsets.left;
  bottom = self->_shadowOutsets.bottom;
  right = self->_shadowOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateShadowOutsetsIfNecessary
{
  p_shadowOutsets = &self->_shadowOutsets;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_shadowOutsets.top, *MEMORY[0x277D768C8]), vceqq_f64(*&self->_shadowOutsets.bottom, *(MEMORY[0x277D768C8] + 16))))))
  {
    v3 = MEMORY[0x277D755B8];
    p_shadowAttributes = &self->_shadowAttributes;
    traitCollection = [(MTShadowView *)self traitCollection];
    [traitCollection displayScale];
    v6 = *&p_shadowAttributes->offset.height;
    v11[0] = *&p_shadowAttributes->opacity;
    v11[1] = v6;
    [v3 mt_edgeOutsetsForShadowProperties:v11 scale:?];
    p_shadowOutsets->top = v7;
    p_shadowOutsets->left = v8;
    p_shadowOutsets->bottom = v9;
    p_shadowOutsets->right = v10;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MTShadowView;
  [(MTShadowView *)&v3 layoutSubviews];
  [(MTShadowView *)self _validateImage];
}

- (void)_validateImage
{
  image = [(MTShadowView *)self image];

  image2 = [(MTShadowView *)self image];
  [image2 scale];
  v6 = v5;

  traitCollection = [(MTShadowView *)self traitCollection];
  [traitCollection displayScale];
  v9 = v8;

  [(MTShadowView *)self bounds];
  v11 = v10;
  v13 = v12;
  [(MTShadowView *)self shadowOutsets];
  v16 = v11 - (v14 + v15);
  v19 = v13 - (v17 + v18);
  if (!image || v6 != v9 || (MTDimensionsForContinuousCornerRadiusInBounds(), v26 = v21, v27 = v20, MTResizableAreaForCornerDimensionsInBounds(), MTDimensionsForContinuousCornerRadiusInBounds(), MTResizableAreaForCornerDimensionsInBounds(), !BSSizeEqualToSize()) || (BSSizeEqualToSize() & 1) == 0)
  {
    self->_maskSizeForCurrentImage.width = v16;
    self->_maskSizeForCurrentImage.height = v19;
    maskCornerRadius = self->_maskCornerRadius;
    continuousCorners = self->_continuousCorners;
    v24 = *&self->_shadowAttributes.offset.height;
    v28[0] = *&self->_shadowAttributes.opacity;
    v28[1] = v24;
    v25 = [MEMORY[0x277D755B8] mt_resizableShadowTemplateImageWithAttributes:v28 scale:continuousCorners maskCornerRadius:v9 continuousCorners:maskCornerRadius maskSize:{v16, v19, v26, v27}];
    [(MTShadowView *)self setImage:v25];
  }
}

- (MTShadowView)initWithShadowAttributes:(id *)attributes maskCornerRadius:(double)radius continuousCorners:(BOOL)corners
{
  v13.receiver = self;
  v13.super_class = MTShadowView;
  v8 = [(MTShadowView *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&attributes->var1.height;
    *(v8 + 584) = *&attributes->var0;
    *(v8 + 600) = v10;
    *(v8 + 67) = radius;
    v8[528] = corners;
    layer = [v8 layer];
    [layer setAllowsHitTesting:0];
  }

  return v9;
}

- (MTShadowView)initWithShadowAttributes:(id *)attributes maskCornerRadius:(double)radius
{
  v4 = *&attributes->var1.height;
  v6[0] = *&attributes->var0;
  v6[1] = v4;
  return [(MTShadowView *)self initWithShadowAttributes:v6 maskCornerRadius:1 continuousCorners:radius];
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [colorCopy copy];
    shadowColor = self->_shadowColor;
    self->_shadowColor = v4;

    [(MTShadowView *)self _updateShadowVisualStyling];
  }
}

- (CGRect)frameWithContentWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MTShadowView *)self shadowOutsets];
  v7 = v11.n128_f64[0];
  v8 = v12.n128_f64[0];
  v9 = v13.n128_f64[0];
  v10 = v14.n128_f64[0];
  v11.n128_f64[0] = x;
  v12.n128_f64[0] = y;
  v13.n128_f64[0] = width;
  v14.n128_f64[0] = height;

  MTRectApplyOutsets(v11, v12, v13, v14, v7, v8, v9, v10);
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  BSRectWithSize();
  [(MTShadowView *)self frameWithContentWithFrame:?];
  v5 = v4;
  v7 = v6;
  result.height = v7;
  result.width = v5;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = MTShadowView;
  [(MTShadowView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(MTShadowView *)self _updateShadowVisualStyling];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = MTShadowView;
  [(MTShadowView *)&v12 traitCollectionDidChange:changeCopy];
  traitCollection = [(MTShadowView *)self traitCollection];
  [traitCollection displayScale];
  v7 = v6;
  [changeCopy displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    v10 = *(MEMORY[0x277D768C8] + 16);
    *&self->_shadowOutsets.top = *MEMORY[0x277D768C8];
    *&self->_shadowOutsets.bottom = v10;
    [(MTShadowView *)self setNeedsLayout];
  }

  v11 = [MEMORY[0x277D75D28] bs_nextViewControllerForView:self];
  [v11 bs_traitCollectionDidChange:changeCopy forManagedTraitEnvironment:self];
}

- (void)_updateShadowVisualStyling
{
  if (self->_shadowColor)
  {
    [(UIView *)self mt_removeAllVisualStyling];
    shadowColor = self->_shadowColor;

    [(MTShadowView *)self setTintColor:shadowColor];
  }

  else
  {
    [(MTShadowView *)self setTintColor:0];
    traitCollection = [(MTShadowView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    v6 = @"platterVibrantShadowLight";
    if (userInterfaceStyle == 2)
    {
      v6 = @"platterVibrantShadowDark";
    }

    v7 = v6;

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [MTVisualStylingProvider _visualStylingProviderForStyleSetNamed:v7 inBundle:v8];

    v9 = [v10 _visualStylingForStyle:1];
    [(UIView *)self mt_replaceVisualStyling:v9];
  }
}

- ($850582C412A153471A31AA7BEC9075BC)shadowAttributes
{
  v3 = *&self[18].var2;
  *&retstr->var0 = self[18].var1;
  *&retstr->var1.height = v3;
  return self;
}

@end