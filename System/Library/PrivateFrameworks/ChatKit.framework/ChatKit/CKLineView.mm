@interface CKLineView
- (CKLineView)initWithFrame:(CGRect)frame;
- (id)_lineShapeOutlineFilterForInterfaceStyle:(int64_t)style;
- (void)_updateMaterialWithLuminance:(double)luminance interfaceStyle:(int64_t)style;
- (void)_updateReplyLineColor;
- (void)addFilter:(id)filter;
- (void)addLineViewAnimation:(id)animation forKey:(id)key;
- (void)clearFilters;
- (void)setFrame:(CGRect)frame;
- (void)setLineViewPath:(CGPath *)path;
- (void)setLineViewStrokeEnd:(double)end;
- (void)setMaterialsEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKLineView

- (void)setLineViewStrokeEnd:(double)end
{
  [(CAShapeLayer *)self->_lineShapeLayer setStrokeEnd:?];
  lineShapeOutlineLayer = self->_lineShapeOutlineLayer;

  [(CAShapeLayer *)lineShapeOutlineLayer setStrokeEnd:end];
}

- (void)setLineViewPath:(CGPath *)path
{
  [(CAShapeLayer *)self->_lineShapeLayer setPath:?];
  lineShapeOutlineLayer = self->_lineShapeOutlineLayer;

  [(CAShapeLayer *)lineShapeOutlineLayer setPath:path];
}

- (void)addLineViewAnimation:(id)animation forKey:(id)key
{
  lineShapeLayer = self->_lineShapeLayer;
  keyCopy = key;
  animationCopy = animation;
  [(CAShapeLayer *)lineShapeLayer addAnimation:animationCopy forKey:keyCopy];
  [(CAShapeLayer *)self->_lineShapeOutlineLayer addAnimation:animationCopy forKey:keyCopy];
}

- (void)setMaterialsEnabled:(BOOL)enabled
{
  if (self->_materialsEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_materialsEnabled = enabled;
    layer = [(CKLineView *)self layer];
    v7 = layer;
    if (enabledCopy)
    {
      [layer setAllowsGroupBlending:0];

      v8 = objc_alloc_init(MEMORY[0x1E6979310]);
      [(CKLineView *)self setMaterialLayer:v8];

      layer2 = [(CKLineView *)self layer];
      materialLayer = [(CKLineView *)self materialLayer];
      [layer2 insertSublayer:materialLayer atIndex:0];

      lineShapeLayer = [(CKLineView *)self lineShapeLayer];
      [lineShapeLayer removeFromSuperlayer];

      materialLayer2 = [(CKLineView *)self materialLayer];
      lineShapeLayer2 = [(CKLineView *)self lineShapeLayer];
      [materialLayer2 setMask:lineShapeLayer2];

      layer3 = [MEMORY[0x1E69794A0] layer];
      [(CKLineView *)self setLineShapeOutlineLayer:layer3];

      lineShapeOutlineLayer = [(CKLineView *)self lineShapeOutlineLayer];
      [lineShapeOutlineLayer setFillColor:0];

      lineShapeOutlineLayer2 = [(CKLineView *)self lineShapeOutlineLayer];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      [lineShapeOutlineLayer2 setStrokeColor:{objc_msgSend(blackColor, "CGColor")}];

      lineShapeOutlineLayer3 = [(CKLineView *)self lineShapeOutlineLayer];
      [lineShapeOutlineLayer3 setLineCap:*MEMORY[0x1E6979E78]];

      lineShapeOutlineLayer4 = [(CKLineView *)self lineShapeOutlineLayer];
      [lineShapeOutlineLayer4 setLineJoin:*MEMORY[0x1E6979E98]];

      layer4 = [(CKLineView *)self layer];
      lineShapeOutlineLayer5 = [(CKLineView *)self lineShapeOutlineLayer];
      [layer4 insertSublayer:lineShapeOutlineLayer5 atIndex:0];
    }

    else
    {
      [layer setAllowsGroupBlending:1];

      materialLayer3 = [(CKLineView *)self materialLayer];
      [materialLayer3 removeFromSuperlayer];

      [(CKLineView *)self setMaterialLayer:0];
      lineShapeOutlineLayer6 = [(CKLineView *)self lineShapeOutlineLayer];
      [lineShapeOutlineLayer6 removeFromSuperlayer];

      [(CKLineView *)self setLineShapeOutlineLayer:0];
      layer4 = [(CKLineView *)self layer];
      lineShapeOutlineLayer5 = [(CKLineView *)self lineShapeLayer];
      [layer4 addSublayer:lineShapeOutlineLayer5];
    }

    [(CKLineView *)self _updateReplyLineColor];
  }
}

- (void)_updateMaterialWithLuminance:(double)luminance interfaceStyle:(int64_t)style
{
  v29[1] = *MEMORY[0x1E69E9840];
  if ([(CKLineView *)self materialsEnabled])
  {
    [(CKLineView *)self luminance];
    if (v7 != luminance || [(CKLineView *)self style]!= style)
    {
      [(CKLineView *)self setLuminance:luminance];
      [(CKLineView *)self setStyle:style];
      v8 = +[_TtC7ChatKit29CKBubbleMaterialConfiguration grayConfiguration];
      traitCollection = [(CKLineView *)self traitCollection];
      v10 = [v8 resolvedWithTraitCollection:traitCollection onBackgroundWithAverageLuminance:luminance];
      materialLayer = [(CKLineView *)self materialLayer];
      [v10 backdropScale];
      [materialLayer setScale:?];

      materialLayer2 = [(CKLineView *)self materialLayer];
      backdropColor = [v10 backdropColor];
      [materialLayer2 setBackgroundColor:{objc_msgSend(backdropColor, "CGColor")}];

      materialLayer3 = [(CKLineView *)self materialLayer];
      filters = [v10 filters];
      [materialLayer3 setFilters:filters];

      v16 = [(CKLineView *)self _lineShapeOutlineFilterForInterfaceStyle:style];
      if (v16)
      {
        lineShapeOutlineLayer = [(CKLineView *)self lineShapeOutlineLayer];
        v29[0] = v16;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
        [lineShapeOutlineLayer setFilters:v18];
      }

      traitCollection2 = [(CKLineView *)self traitCollection];
      [traitCollection2 displayScale];
      v21 = v20;

      v22 = +[CKUIBehavior sharedBehaviors];
      [v22 replyLineWidth];
      v24 = v23;
      v25 = +[CKUIBehavior sharedBehaviors];
      [v25 balloonOutlineWidthForScreenScale:v21];
      v27 = v24 + v26;

      lineShapeOutlineLayer2 = [(CKLineView *)self lineShapeOutlineLayer];
      [lineShapeOutlineLayer2 setLineWidth:v27];
    }
  }
}

- (CKLineView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKLineView;
  v3 = [(CKLineView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    layer = [MEMORY[0x1E69794A0] layer];
    [(CKLineView *)v3 setLineShapeLayer:layer];
    layer2 = [(CKLineView *)v3 layer];
    [layer2 addSublayer:layer];

    layer3 = [(CKLineView *)v3 layer];
    [layer3 setMasksToBounds:0];

    layer4 = [(CKLineView *)v3 layer];
    [layer4 setAllowsGroupBlending:1];
  }

  return v3;
}

- (id)_lineShapeOutlineFilterForInterfaceStyle:(int64_t)style
{
  if (![(CKLineView *)self materialsEnabled])
  {
    goto LABEL_6;
  }

  if (style != 2)
  {
    if (style == 1)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      theme = [v4 theme];
      lightBalloonOutlineVibrancyFilter = [theme lightBalloonOutlineVibrancyFilter];
      goto LABEL_8;
    }

    if (style)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_9;
    }
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  lightBalloonOutlineVibrancyFilter = [theme darkBalloonOutlineVibrancyFilter];
LABEL_8:
  v7 = lightBalloonOutlineVibrancyFilter;

LABEL_9:

  return v7;
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CKLineView;
  [(CKLineView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (self->_lineShapeLayer)
  {
    [(CKLineView *)self bounds];
    [(CAShapeLayer *)self->_lineShapeLayer setFrame:?];
  }

  if (self->_lineShapeOutlineLayer)
  {
    [(CKLineView *)self bounds];
    [(CAShapeLayer *)self->_lineShapeOutlineLayer setFrame:?];
  }

  if (self->_materialLayer)
  {
    [(CKLineView *)self bounds];
    [(CABackdropLayer *)self->_materialLayer setFrame:?];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CKLineView;
  changeCopy = change;
  [(CKLineView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CKLineView *)self traitCollection:v8.receiver];
  -[CKLineView setMaterialsEnabled:](self, "setMaterialsEnabled:", [v5 isTranscriptBackgroundActive]);

  traitCollection = [(CKLineView *)self traitCollection];
  v7 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v7)
  {
    [(CKLineView *)self _updateReplyLineColor];
  }
}

- (void)_updateReplyLineColor
{
  if ([(CKLineView *)self materialsEnabled]|| [(CKLineView *)self shouldUseDarkFSMStrokeColor])
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    theme = [v4 theme];
    replyLineColor = [theme replyLineColor];

    blackColor = replyLineColor;
  }

  v10 = blackColor;
  v6 = blackColor;
  cGColor = [v10 CGColor];
  lineShapeLayer = [(CKLineView *)self lineShapeLayer];
  [lineShapeLayer setStrokeColor:cGColor];
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  if (![(CKLineView *)self materialsEnabled])
  {
    balloonBackdropFilters = [filterCopy balloonBackdropFilters];
    v5 = [balloonBackdropFilters count];

    if (v5)
    {
      layer = [(CKLineView *)self layer];
      [layer setAllowsGroupBlending:0];

      backdropFilterLayer = [(CKLineView *)self backdropFilterLayer];
      if (!backdropFilterLayer)
      {
        backdropFilterLayer = objc_alloc_init(MEMORY[0x1E6979310]);
        [backdropFilterLayer setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
        [backdropFilterLayer setGroupName:@"FSMBackdropGroup"];
        [backdropFilterLayer setScale:0.25];
        lineShapeLayer = [(CKLineView *)self lineShapeLayer];
        [backdropFilterLayer setMask:lineShapeLayer];

        [(CKLineView *)self bounds];
        [backdropFilterLayer setFrame:?];
        [(CKLineView *)self setBackdropFilterLayer:backdropFilterLayer];
        layer2 = [(CKLineView *)self layer];
        [layer2 insertSublayer:backdropFilterLayer atIndex:0];
      }

      balloonBackdropFilters2 = [filterCopy balloonBackdropFilters];
      [backdropFilterLayer setFilters:balloonBackdropFilters2];

      lineShapeLayer2 = [(CKLineView *)self lineShapeLayer];
      layer3 = [(CKLineView *)self layer];
      [layer3 setMask:lineShapeLayer2];
    }

    layer4 = [(CKLineView *)self layer];
    balloonFilters = [filterCopy balloonFilters];
    [layer4 setFilters:balloonFilters];

    layer5 = [(CKLineView *)self layer];
    balloonCompositingFilter = [filterCopy balloonCompositingFilter];
    [layer5 setCompositingFilter:balloonCompositingFilter];

    [(CKLineView *)self setShouldUseDarkFSMStrokeColor:1];
  }
}

- (void)clearFilters
{
  if (![(CKLineView *)self materialsEnabled])
  {
    layer = [(CKLineView *)self layer];
    [layer setFilters:0];

    layer2 = [(CKLineView *)self layer];
    [layer2 setCompositingFilter:0];

    [(CKLineView *)self setShouldUseDarkFSMStrokeColor:0];
    layer3 = [(CKLineView *)self layer];
    [layer3 setMask:0];

    [(CKLineView *)self setBackdropFilterLayer:0];
    layer4 = [(CKLineView *)self layer];
    [layer4 setAllowsGroupBlending:1];
  }
}

@end