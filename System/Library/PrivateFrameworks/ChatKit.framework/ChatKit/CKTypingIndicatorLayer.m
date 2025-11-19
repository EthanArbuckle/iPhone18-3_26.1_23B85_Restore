@interface CKTypingIndicatorLayer
+ (CGRect)largeBubbleFrame;
+ (CGSize)defaultSize;
- (CKTypingIndicatorLayer)init;
- (UIColor)defaultBubbleColor;
- (UIColor)defaultThinkingDotColor;
- (double)convertedCurrentMediaTime;
- (double)defaultBubbleOpacity;
- (double)defaultThinkingDotOpacity;
- (id)initHighlighted:(BOOL)a3;
- (id)resolvedColor:(id)a3 forTraitCollection:(id)a4;
- (void)_buildIconImage;
- (void)_buildThinkingDots;
- (void)_setup;
- (void)_updateBubbleOpacity;
- (void)_updateForImage;
- (void)resizeBackgroundSublayersForVisualConfiguration:(id)a3;
- (void)setBubbleOpacity:(double)a3;
- (void)setIconImage:(id)a3;
- (void)setTraitCollection:(id)a3;
- (void)setTranscriptBackgroundLuminance:(double)a3;
- (void)setUpMaterialLayersForVisualConfiguration:(id)a3;
- (void)startGrowAnimationWithCompletionBlock:(id)a3;
- (void)startPulseAnimation;
- (void)startShrinkAnimationWithCompletionBlock:(id)a3;
- (void)stopAnimation;
- (void)stopPulseAnimation;
- (void)updateBackgroundOpacity:(double)a3;
- (void)updateMaterials;
@end

@implementation CKTypingIndicatorLayer

- (CKTypingIndicatorLayer)init
{
  v5.receiver = self;
  v5.super_class = CKTypingIndicatorLayer;
  v2 = [(CKTypingIndicatorLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKTypingIndicatorLayer *)v2 _setup];
  }

  return v3;
}

- (id)initHighlighted:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CKTypingIndicatorLayer;
  v4 = [(CKTypingIndicatorLayer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_highlighted = a3;
    [(CKTypingIndicatorLayer *)v4 _setup];
  }

  return v5;
}

- (double)convertedCurrentMediaTime
{
  v3 = CACurrentMediaTime();

  [(CKTypingIndicatorLayer *)self convertTime:0 fromLayer:v3];
  return result;
}

- (void)setBubbleOpacity:(double)a3
{
  if (vabdd_f64(self->_bubbleOpacity, a3) > 0.0001)
  {
    self->_bubbleOpacity = a3;
    [(CKTypingIndicatorLayer *)self _updateBubbleOpacity];
  }
}

- (id)resolvedColor:(id)a3 forTraitCollection:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [v5 resolvedColorWithTraitCollection:a4];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (void)setTraitCollection:(id)a3
{
  v5 = a3;
  if (([(UITraitCollection *)self->_traitCollection isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_traitCollection, a3);
    [(CKTypingIndicatorLayer *)self updateMaterials];
    [(CKTypingIndicatorLayer *)self _updateBubbleOpacity];
  }
}

- (void)setTranscriptBackgroundLuminance:(double)a3
{
  if (vabdd_f64(self->_transcriptBackgroundLuminance, a3) > 0.0001)
  {
    self->_transcriptBackgroundLuminance = a3;
    [(CKTypingIndicatorLayer *)self updateMaterials];
  }
}

- (void)setIconImage:(id)a3
{
  v5 = a3;
  iconImage = self->_iconImage;
  if (iconImage != v5)
  {
    v8 = v5;
    v7 = [iconImage isEqual:v5];
    v5 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_iconImage, a3);
      [(CKTypingIndicatorLayer *)self _updateForImage];
      v5 = v8;
    }
  }
}

- (void)_setup
{
  v45 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration platformConfiguration];
  [(CKTypingIndicatorLayer *)self setVisualConfiguration:v45];
  v3 = [(CKTypingIndicatorLayer *)self defaultThinkingDotColor];
  v4 = [(CKTypingIndicatorLayer *)self resolvedColor:v3 forTraitCollection:self->_traitCollection];
  thinkingDotColor = self->_thinkingDotColor;
  self->_thinkingDotColor = v4;

  [(CKTypingIndicatorLayer *)self defaultThinkingDotOpacity];
  self->_thinkingDotOpacity = v6;
  [(CKTypingIndicatorLayer *)self defaultBubbleOpacity];
  self->_bubbleOpacity = v7;
  [(CKTypingIndicatorLayer *)self frame];
  v9 = v8;
  v11 = v10;
  [objc_opt_class() defaultSize];
  [(CKTypingIndicatorLayer *)self setFrame:v9, v11, v12, v13];
  [(CKTypingIndicatorLayer *)self setUpMaterialLayersForVisualConfiguration:v45];
  [(CKTypingIndicatorLayer *)self updateMaterials];
  [v45 defaultBackgroundLayerOutset];
  v15 = v14;
  [(CKTypingIndicatorLayer *)self bounds];
  v17 = v16;
  [(CKTypingIndicatorLayer *)self bounds];
  v19 = v18;
  v20 = objc_alloc_init(CKTypingIndicatorPunchOutLayer);
  [(CKTypingIndicatorLayer *)self setPunchOutLayer:v20];

  v21 = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [v21 setFrame:{v15, v15, v17, v19}];

  v22 = [(CKTypingIndicatorLayer *)self punchOutLayer];
  v23 = [(CKTypingIndicatorLayer *)self backgroundLayer];
  [v23 setMask:v22];

  v24 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration enlargedPunchOutConfiguration];
  v25 = [[CKTypingIndicatorPunchOutLayer alloc] initWithVisualConfiguration:v24];
  [(CKTypingIndicatorLayer *)self setVibrantStrokePunchOutLayer:v25];

  v26 = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [v26 setFrame:{v15, v15, v17, v19}];

  v27 = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  v28 = [(CKTypingIndicatorLayer *)self vibrancyLayer];
  [v28 setMask:v27];

  v29 = objc_alloc_init(MEMORY[0x1E6979398]);
  v30 = [(CKTypingIndicatorLayer *)self visualConfiguration];
  [v30 largeBubbleAnchorPoint];
  v32 = v31;
  v34 = v33;

  [objc_opt_class() largeBubbleFrame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [(CALayer *)v29 setAnchorPoint:v32, v34];
  [(CALayer *)v29 setPosition:v36, v38];
  [(CALayer *)v29 setBounds:0.0, 0.0, v40, v42];
  [(CKTypingIndicatorLayer *)self addSublayer:v29];
  v43 = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [v43 setAlignedContentLayer:v29];

  thinkingDotContainer = self->_thinkingDotContainer;
  self->_thinkingDotContainer = v29;

  [(CKTypingIndicatorLayer *)self _updateBubbleOpacity];
  [(CKTypingIndicatorLayer *)self _updateForImage];
}

- (void)_updateForImage
{
  v3 = [(CKTypingIndicatorLayer *)self iconImage];
  v4 = v3 != 0;

  v5 = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [v5 setIsWiderForImageIcon:v4];

  v6 = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [v6 setIsWiderForImageIcon:v4];

  v7 = [(CKTypingIndicatorLayer *)self visualConfiguration];
  [(CKTypingIndicatorLayer *)self resizeBackgroundSublayersForVisualConfiguration:v7];

  [(CKTypingIndicatorLayer *)self _buildIconImage];

  [(CKTypingIndicatorLayer *)self _buildThinkingDots];
}

- (void)_buildIconImage
{
  v3 = [(CKTypingIndicatorLayer *)self iconImageLayer];
  if (self->_iconImage)
  {
    if (v3)
    {
      v21 = v3;
      [v3 setContents:?];
    }

    else
    {
      v21 = [MEMORY[0x1E6979398] layer];
      iconImage = self->_iconImage;
      v5 = [(CKTypingIndicatorLayer *)self visualConfiguration];
      [v5 iconImageFrame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      Width = CGImageGetWidth(iconImage);
      if (Width == CGImageGetHeight(iconImage))
      {
        v15 = [(CKTypingIndicatorLayer *)self visualConfiguration];
        [v15 iconImageSquareFrame];
        v7 = v16;
        v9 = v17;
        v11 = v18;
        v13 = v19;
      }

      [v21 setFrame:{v7, v9, v11, v13}];
      [v21 setMasksToBounds:1];
      [v21 setCornerCurve:*MEMORY[0x1E69796E8]];
      [v21 setCornerRadius:v13 * 0.5];
      [v21 setContents:self->_iconImage];
      [v21 setContentsGravity:*MEMORY[0x1E6979DF0]];
      [(CKTypingIndicatorLayer *)self setIconImageLayer:v21];
      v20 = [(CKTypingIndicatorLayer *)self thinkingDotContainer];
      [v20 addSublayer:v21];
    }
  }

  else
  {
    v21 = v3;
    [v3 removeFromSuperlayer];
    [(CKTypingIndicatorLayer *)self setIconImageLayer:0];
  }
}

- (void)_buildThinkingDots
{
  v38[2] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.0];
  [(CALayer *)self->_thinkingDot removeAllAnimations];
  [(CAReplicatorLayer *)self->_thinkingDots removeFromSuperlayer];
  [(CALayer *)self->_thinkingDot removeFromSuperlayer];
  thinkingDot = self->_thinkingDot;
  self->_thinkingDot = 0;

  thinkingDots = self->_thinkingDots;
  self->_thinkingDots = 0;

  v5 = [MEMORY[0x1E6979398] layer];
  v6 = self->_thinkingDot;
  self->_thinkingDot = v5;

  v7 = [(CKTypingIndicatorLayer *)self visualConfiguration];
  [v7 thinkingDotDiameter];
  v9 = v8;

  [(CALayer *)self->_thinkingDot setFrame:0.0, 0.0, v9, v9];
  [(CALayer *)self->_thinkingDot setCornerRadius:v9 * 0.5];
  v10 = self->_thinkingDot;
  v11 = [(CKTypingIndicatorLayer *)self thinkingDotColor];
  -[CALayer setBackgroundColor:](v10, "setBackgroundColor:", [v11 CGColor]);

  v12 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  v38[0] = &unk_1F04E87A8;
  v13 = MEMORY[0x1E696AD98];
  [(CKTypingIndicatorLayer *)self thinkingDotOpacity];
  v14 = [v13 numberWithDouble:?];
  v38[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  [v12 setValues:v15];

  [v12 setKeyTimes:&unk_1F04E68D0];
  [v12 setCalculationMode:*MEMORY[0x1E69795A8]];
  [v12 setDuration:0.5];
  LODWORD(v16) = 1061271823;
  LODWORD(v17) = 1014679044;
  LODWORD(v18) = 1058306785;
  LODWORD(v19) = 1.0;
  v20 = [MEMORY[0x1E69793D0] functionWithControlPoints:v16 :v17 :v18 :v19];
  [v12 setTimingFunction:v20];

  LODWORD(v21) = 2139095040;
  [v12 setRepeatCount:v21];
  [v12 setAutoreverses:1];
  [v12 setFillMode:*MEMORY[0x1E69797E0]];
  [(CALayer *)self->_thinkingDot addAnimation:v12 forKey:@"Opacity"];
  v22 = [MEMORY[0x1E6979430] layer];
  v23 = self->_thinkingDots;
  self->_thinkingDots = v22;

  v24 = [(CKTypingIndicatorLayer *)self visualConfiguration];
  [v24 thinkingDotsOffset];
  v26 = v25;
  v28 = v27;

  v29 = [(CKTypingIndicatorLayer *)self iconImage];
  if (v29)
  {
    v30 = [(CKTypingIndicatorLayer *)self visualConfiguration];
    [v30 iconImageFrame];
    MaxX = CGRectGetMaxX(v39);
    v32 = [(CKTypingIndicatorLayer *)self visualConfiguration];
    [v32 iconImageTrailingSpace];
    v26 = MaxX + v33;
  }

  [(CAReplicatorLayer *)self->_thinkingDots setFrame:v26, v28, 0.0, 0.0];
  [(CAReplicatorLayer *)self->_thinkingDots setInstanceCount:3];
  v34 = self->_thinkingDots;
  v35 = [(CKTypingIndicatorLayer *)self visualConfiguration];
  [v35 thinkingDotSpace];
  CATransform3DMakeTranslation(&v37, v36, 0.0, 0.0);
  [(CAReplicatorLayer *)v34 setInstanceTransform:&v37];

  [(CAReplicatorLayer *)self->_thinkingDots setInstanceDelay:0.25];
  [(CAReplicatorLayer *)self->_thinkingDots addSublayer:self->_thinkingDot];
  [(CALayer *)self->_thinkingDotContainer addSublayer:self->_thinkingDots];
  [MEMORY[0x1E6979518] commit];
}

- (void)_updateBubbleOpacity
{
  [(CKTypingIndicatorLayer *)self bubbleOpacity];

  [(CKTypingIndicatorLayer *)self updateBackgroundOpacity:?];
}

- (void)startGrowAnimationWithCompletionBlock:(id)a3
{
  v4 = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [v4 startGrowAnimationWithCompletionBlock:0];

  v5 = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [v5 startGrowAnimationWithCompletionBlock:0];
}

- (void)startPulseAnimation
{
  [(CKTypingIndicatorLayer *)self stopPulseAnimation];
  [MEMORY[0x1E6979518] begin];
  v3 = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [v3 startPulseAnimation];

  v4 = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [v4 startPulseAnimation];

  [(CKTypingIndicatorLayer *)self _buildThinkingDots];
  v5 = MEMORY[0x1E6979518];

  [v5 commit];
}

- (void)stopPulseAnimation
{
  [(CKTypingIndicatorLayer *)self thinkingDotOpacity];
  *&v3 = v3;
  [(CALayer *)self->_thinkingDot setOpacity:v3];
  [(CALayer *)self->_thinkingDot removeAllAnimations];
  v4 = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [v4 stopPulseAnimation];

  v5 = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [v5 stopPulseAnimation];
}

- (void)startShrinkAnimationWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [v5 startShrinkAnimationWithCompletionBlock:v4];

  v6 = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [v6 startShrinkAnimationWithCompletionBlock:v4];
}

- (void)stopAnimation
{
  v3 = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [v3 stopAnimation];

  v4 = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [v4 stopAnimation];
}

+ (CGSize)defaultSize
{
  v2 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration platformConfiguration];
  [v2 defaultSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIColor)defaultBubbleColor
{
  v2 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration platformConfiguration];
  v3 = [v2 defaultBubbleColor];

  return v3;
}

- (UIColor)defaultThinkingDotColor
{
  v2 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration platformConfiguration];
  v3 = [v2 defaultThinkingDotColor];

  return v3;
}

- (double)defaultThinkingDotOpacity
{
  v2 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration platformConfiguration];
  [v2 defaultThinkingDotOpacity];
  v4 = v3;

  return v4;
}

- (double)defaultBubbleOpacity
{
  v2 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration platformConfiguration];
  [v2 defaultBubbleOpacity];
  v4 = v3;

  return v4;
}

+ (CGRect)largeBubbleFrame
{
  v2 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration platformConfiguration];
  [v2 largeBubbleFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setUpMaterialLayersForVisualConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  CKTypingIndicatorLayer.setUpMaterialLayers(for:)(v4);
}

- (void)resizeBackgroundSublayersForVisualConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  CKTypingIndicatorLayer.resizeBackgroundSublayers(for:)(v4);
}

- (void)updateMaterials
{
  v2 = self;
  CKTypingIndicatorLayer.updateMaterials()();
}

- (void)updateBackgroundOpacity:(double)a3
{
  v4 = self;
  CKTypingIndicatorLayer.updateBackgroundOpacity(_:)(a3);
}

@end