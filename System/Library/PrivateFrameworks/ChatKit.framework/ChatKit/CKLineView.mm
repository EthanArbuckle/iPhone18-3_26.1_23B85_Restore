@interface CKLineView
- (CKLineView)initWithFrame:(CGRect)a3;
- (id)_lineShapeOutlineFilterForInterfaceStyle:(int64_t)a3;
- (void)_updateMaterialWithLuminance:(double)a3 interfaceStyle:(int64_t)a4;
- (void)_updateReplyLineColor;
- (void)addFilter:(id)a3;
- (void)addLineViewAnimation:(id)a3 forKey:(id)a4;
- (void)clearFilters;
- (void)setFrame:(CGRect)a3;
- (void)setLineViewPath:(CGPath *)a3;
- (void)setLineViewStrokeEnd:(double)a3;
- (void)setMaterialsEnabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKLineView

- (void)setLineViewStrokeEnd:(double)a3
{
  [(CAShapeLayer *)self->_lineShapeLayer setStrokeEnd:?];
  lineShapeOutlineLayer = self->_lineShapeOutlineLayer;

  [(CAShapeLayer *)lineShapeOutlineLayer setStrokeEnd:a3];
}

- (void)setLineViewPath:(CGPath *)a3
{
  [(CAShapeLayer *)self->_lineShapeLayer setPath:?];
  lineShapeOutlineLayer = self->_lineShapeOutlineLayer;

  [(CAShapeLayer *)lineShapeOutlineLayer setPath:a3];
}

- (void)addLineViewAnimation:(id)a3 forKey:(id)a4
{
  lineShapeLayer = self->_lineShapeLayer;
  v7 = a4;
  v8 = a3;
  [(CAShapeLayer *)lineShapeLayer addAnimation:v8 forKey:v7];
  [(CAShapeLayer *)self->_lineShapeOutlineLayer addAnimation:v8 forKey:v7];
}

- (void)setMaterialsEnabled:(BOOL)a3
{
  if (self->_materialsEnabled != a3)
  {
    v4 = a3;
    self->_materialsEnabled = a3;
    v6 = [(CKLineView *)self layer];
    v7 = v6;
    if (v4)
    {
      [v6 setAllowsGroupBlending:0];

      v8 = objc_alloc_init(MEMORY[0x1E6979310]);
      [(CKLineView *)self setMaterialLayer:v8];

      v9 = [(CKLineView *)self layer];
      v10 = [(CKLineView *)self materialLayer];
      [v9 insertSublayer:v10 atIndex:0];

      v11 = [(CKLineView *)self lineShapeLayer];
      [v11 removeFromSuperlayer];

      v12 = [(CKLineView *)self materialLayer];
      v13 = [(CKLineView *)self lineShapeLayer];
      [v12 setMask:v13];

      v14 = [MEMORY[0x1E69794A0] layer];
      [(CKLineView *)self setLineShapeOutlineLayer:v14];

      v15 = [(CKLineView *)self lineShapeOutlineLayer];
      [v15 setFillColor:0];

      v16 = [(CKLineView *)self lineShapeOutlineLayer];
      v17 = [MEMORY[0x1E69DC888] blackColor];
      [v16 setStrokeColor:{objc_msgSend(v17, "CGColor")}];

      v18 = [(CKLineView *)self lineShapeOutlineLayer];
      [v18 setLineCap:*MEMORY[0x1E6979E78]];

      v19 = [(CKLineView *)self lineShapeOutlineLayer];
      [v19 setLineJoin:*MEMORY[0x1E6979E98]];

      v20 = [(CKLineView *)self layer];
      v21 = [(CKLineView *)self lineShapeOutlineLayer];
      [v20 insertSublayer:v21 atIndex:0];
    }

    else
    {
      [v6 setAllowsGroupBlending:1];

      v22 = [(CKLineView *)self materialLayer];
      [v22 removeFromSuperlayer];

      [(CKLineView *)self setMaterialLayer:0];
      v23 = [(CKLineView *)self lineShapeOutlineLayer];
      [v23 removeFromSuperlayer];

      [(CKLineView *)self setLineShapeOutlineLayer:0];
      v20 = [(CKLineView *)self layer];
      v21 = [(CKLineView *)self lineShapeLayer];
      [v20 addSublayer:v21];
    }

    [(CKLineView *)self _updateReplyLineColor];
  }
}

- (void)_updateMaterialWithLuminance:(double)a3 interfaceStyle:(int64_t)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  if ([(CKLineView *)self materialsEnabled])
  {
    [(CKLineView *)self luminance];
    if (v7 != a3 || [(CKLineView *)self style]!= a4)
    {
      [(CKLineView *)self setLuminance:a3];
      [(CKLineView *)self setStyle:a4];
      v8 = +[_TtC7ChatKit29CKBubbleMaterialConfiguration grayConfiguration];
      v9 = [(CKLineView *)self traitCollection];
      v10 = [v8 resolvedWithTraitCollection:v9 onBackgroundWithAverageLuminance:a3];
      v11 = [(CKLineView *)self materialLayer];
      [v10 backdropScale];
      [v11 setScale:?];

      v12 = [(CKLineView *)self materialLayer];
      v13 = [v10 backdropColor];
      [v12 setBackgroundColor:{objc_msgSend(v13, "CGColor")}];

      v14 = [(CKLineView *)self materialLayer];
      v15 = [v10 filters];
      [v14 setFilters:v15];

      v16 = [(CKLineView *)self _lineShapeOutlineFilterForInterfaceStyle:a4];
      if (v16)
      {
        v17 = [(CKLineView *)self lineShapeOutlineLayer];
        v29[0] = v16;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
        [v17 setFilters:v18];
      }

      v19 = [(CKLineView *)self traitCollection];
      [v19 displayScale];
      v21 = v20;

      v22 = +[CKUIBehavior sharedBehaviors];
      [v22 replyLineWidth];
      v24 = v23;
      v25 = +[CKUIBehavior sharedBehaviors];
      [v25 balloonOutlineWidthForScreenScale:v21];
      v27 = v24 + v26;

      v28 = [(CKLineView *)self lineShapeOutlineLayer];
      [v28 setLineWidth:v27];
    }
  }
}

- (CKLineView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKLineView;
  v3 = [(CKLineView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69794A0] layer];
    [(CKLineView *)v3 setLineShapeLayer:v4];
    v5 = [(CKLineView *)v3 layer];
    [v5 addSublayer:v4];

    v6 = [(CKLineView *)v3 layer];
    [v6 setMasksToBounds:0];

    v7 = [(CKLineView *)v3 layer];
    [v7 setAllowsGroupBlending:1];
  }

  return v3;
}

- (id)_lineShapeOutlineFilterForInterfaceStyle:(int64_t)a3
{
  if (![(CKLineView *)self materialsEnabled])
  {
    goto LABEL_6;
  }

  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      v5 = [v4 theme];
      v6 = [v5 lightBalloonOutlineVibrancyFilter];
      goto LABEL_8;
    }

    if (a3)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_9;
    }
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v5 darkBalloonOutlineVibrancyFilter];
LABEL_8:
  v7 = v6;

LABEL_9:

  return v7;
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CKLineView;
  [(CKLineView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKLineView;
  v4 = a3;
  [(CKLineView *)&v8 traitCollectionDidChange:v4];
  v5 = [(CKLineView *)self traitCollection:v8.receiver];
  -[CKLineView setMaterialsEnabled:](self, "setMaterialsEnabled:", [v5 isTranscriptBackgroundActive]);

  v6 = [(CKLineView *)self traitCollection];
  v7 = [v6 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v7)
  {
    [(CKLineView *)self _updateReplyLineColor];
  }
}

- (void)_updateReplyLineColor
{
  if ([(CKLineView *)self materialsEnabled]|| [(CKLineView *)self shouldUseDarkFSMStrokeColor])
  {
    v3 = [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 theme];
    v9 = [v5 replyLineColor];

    v3 = v9;
  }

  v10 = v3;
  v6 = v3;
  v7 = [v10 CGColor];
  v8 = [(CKLineView *)self lineShapeLayer];
  [v8 setStrokeColor:v7];
}

- (void)addFilter:(id)a3
{
  v17 = a3;
  if (![(CKLineView *)self materialsEnabled])
  {
    v4 = [v17 balloonBackdropFilters];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(CKLineView *)self layer];
      [v6 setAllowsGroupBlending:0];

      v7 = [(CKLineView *)self backdropFilterLayer];
      if (!v7)
      {
        v7 = objc_alloc_init(MEMORY[0x1E6979310]);
        [v7 setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
        [v7 setGroupName:@"FSMBackdropGroup"];
        [v7 setScale:0.25];
        v8 = [(CKLineView *)self lineShapeLayer];
        [v7 setMask:v8];

        [(CKLineView *)self bounds];
        [v7 setFrame:?];
        [(CKLineView *)self setBackdropFilterLayer:v7];
        v9 = [(CKLineView *)self layer];
        [v9 insertSublayer:v7 atIndex:0];
      }

      v10 = [v17 balloonBackdropFilters];
      [v7 setFilters:v10];

      v11 = [(CKLineView *)self lineShapeLayer];
      v12 = [(CKLineView *)self layer];
      [v12 setMask:v11];
    }

    v13 = [(CKLineView *)self layer];
    v14 = [v17 balloonFilters];
    [v13 setFilters:v14];

    v15 = [(CKLineView *)self layer];
    v16 = [v17 balloonCompositingFilter];
    [v15 setCompositingFilter:v16];

    [(CKLineView *)self setShouldUseDarkFSMStrokeColor:1];
  }
}

- (void)clearFilters
{
  if (![(CKLineView *)self materialsEnabled])
  {
    v3 = [(CKLineView *)self layer];
    [v3 setFilters:0];

    v4 = [(CKLineView *)self layer];
    [v4 setCompositingFilter:0];

    [(CKLineView *)self setShouldUseDarkFSMStrokeColor:0];
    v5 = [(CKLineView *)self layer];
    [v5 setMask:0];

    [(CKLineView *)self setBackdropFilterLayer:0];
    v6 = [(CKLineView *)self layer];
    [v6 setAllowsGroupBlending:1];
  }
}

@end