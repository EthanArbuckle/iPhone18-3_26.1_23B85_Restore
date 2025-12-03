@interface CKTypingIndicatorLayer
+ (CGRect)largeBubbleFrame;
+ (CGSize)defaultSize;
- (CKTypingIndicatorLayer)init;
- (UIColor)defaultBubbleColor;
- (UIColor)defaultThinkingDotColor;
- (double)convertedCurrentMediaTime;
- (double)defaultBubbleOpacity;
- (double)defaultThinkingDotOpacity;
- (id)initHighlighted:(BOOL)highlighted;
- (id)resolvedColor:(id)color forTraitCollection:(id)collection;
- (void)_buildIconImage;
- (void)_buildThinkingDots;
- (void)_setup;
- (void)_updateBubbleOpacity;
- (void)_updateForImage;
- (void)resizeBackgroundSublayersForVisualConfiguration:(id)configuration;
- (void)setBubbleOpacity:(double)opacity;
- (void)setIconImage:(id)image;
- (void)setTraitCollection:(id)collection;
- (void)setTranscriptBackgroundLuminance:(double)luminance;
- (void)setUpMaterialLayersForVisualConfiguration:(id)configuration;
- (void)startGrowAnimationWithCompletionBlock:(id)block;
- (void)startPulseAnimation;
- (void)startShrinkAnimationWithCompletionBlock:(id)block;
- (void)stopAnimation;
- (void)stopPulseAnimation;
- (void)updateBackgroundOpacity:(double)opacity;
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

- (id)initHighlighted:(BOOL)highlighted
{
  v7.receiver = self;
  v7.super_class = CKTypingIndicatorLayer;
  v4 = [(CKTypingIndicatorLayer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_highlighted = highlighted;
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

- (void)setBubbleOpacity:(double)opacity
{
  if (vabdd_f64(self->_bubbleOpacity, opacity) > 0.0001)
  {
    self->_bubbleOpacity = opacity;
    [(CKTypingIndicatorLayer *)self _updateBubbleOpacity];
  }
}

- (id)resolvedColor:(id)color forTraitCollection:(id)collection
{
  colorCopy = color;
  v6 = colorCopy;
  if (collection)
  {
    v7 = [colorCopy resolvedColorWithTraitCollection:collection];
  }

  else
  {
    v7 = colorCopy;
  }

  v8 = v7;

  return v8;
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (([(UITraitCollection *)self->_traitCollection isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_traitCollection, collection);
    [(CKTypingIndicatorLayer *)self updateMaterials];
    [(CKTypingIndicatorLayer *)self _updateBubbleOpacity];
  }
}

- (void)setTranscriptBackgroundLuminance:(double)luminance
{
  if (vabdd_f64(self->_transcriptBackgroundLuminance, luminance) > 0.0001)
  {
    self->_transcriptBackgroundLuminance = luminance;
    [(CKTypingIndicatorLayer *)self updateMaterials];
  }
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  iconImage = self->_iconImage;
  if (iconImage != imageCopy)
  {
    v8 = imageCopy;
    v7 = [iconImage isEqual:imageCopy];
    imageCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_iconImage, image);
      [(CKTypingIndicatorLayer *)self _updateForImage];
      imageCopy = v8;
    }
  }
}

- (void)_setup
{
  v45 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration platformConfiguration];
  [(CKTypingIndicatorLayer *)self setVisualConfiguration:v45];
  defaultThinkingDotColor = [(CKTypingIndicatorLayer *)self defaultThinkingDotColor];
  v4 = [(CKTypingIndicatorLayer *)self resolvedColor:defaultThinkingDotColor forTraitCollection:self->_traitCollection];
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

  punchOutLayer = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [punchOutLayer setFrame:{v15, v15, v17, v19}];

  punchOutLayer2 = [(CKTypingIndicatorLayer *)self punchOutLayer];
  backgroundLayer = [(CKTypingIndicatorLayer *)self backgroundLayer];
  [backgroundLayer setMask:punchOutLayer2];

  v24 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration enlargedPunchOutConfiguration];
  v25 = [[CKTypingIndicatorPunchOutLayer alloc] initWithVisualConfiguration:v24];
  [(CKTypingIndicatorLayer *)self setVibrantStrokePunchOutLayer:v25];

  vibrantStrokePunchOutLayer = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [vibrantStrokePunchOutLayer setFrame:{v15, v15, v17, v19}];

  vibrantStrokePunchOutLayer2 = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  vibrancyLayer = [(CKTypingIndicatorLayer *)self vibrancyLayer];
  [vibrancyLayer setMask:vibrantStrokePunchOutLayer2];

  v29 = objc_alloc_init(MEMORY[0x1E6979398]);
  visualConfiguration = [(CKTypingIndicatorLayer *)self visualConfiguration];
  [visualConfiguration largeBubbleAnchorPoint];
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
  punchOutLayer3 = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [punchOutLayer3 setAlignedContentLayer:v29];

  thinkingDotContainer = self->_thinkingDotContainer;
  self->_thinkingDotContainer = v29;

  [(CKTypingIndicatorLayer *)self _updateBubbleOpacity];
  [(CKTypingIndicatorLayer *)self _updateForImage];
}

- (void)_updateForImage
{
  iconImage = [(CKTypingIndicatorLayer *)self iconImage];
  v4 = iconImage != 0;

  punchOutLayer = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [punchOutLayer setIsWiderForImageIcon:v4];

  vibrantStrokePunchOutLayer = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [vibrantStrokePunchOutLayer setIsWiderForImageIcon:v4];

  visualConfiguration = [(CKTypingIndicatorLayer *)self visualConfiguration];
  [(CKTypingIndicatorLayer *)self resizeBackgroundSublayersForVisualConfiguration:visualConfiguration];

  [(CKTypingIndicatorLayer *)self _buildIconImage];

  [(CKTypingIndicatorLayer *)self _buildThinkingDots];
}

- (void)_buildIconImage
{
  iconImageLayer = [(CKTypingIndicatorLayer *)self iconImageLayer];
  if (self->_iconImage)
  {
    if (iconImageLayer)
    {
      layer = iconImageLayer;
      [iconImageLayer setContents:?];
    }

    else
    {
      layer = [MEMORY[0x1E6979398] layer];
      iconImage = self->_iconImage;
      visualConfiguration = [(CKTypingIndicatorLayer *)self visualConfiguration];
      [visualConfiguration iconImageFrame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      Width = CGImageGetWidth(iconImage);
      if (Width == CGImageGetHeight(iconImage))
      {
        visualConfiguration2 = [(CKTypingIndicatorLayer *)self visualConfiguration];
        [visualConfiguration2 iconImageSquareFrame];
        v7 = v16;
        v9 = v17;
        v11 = v18;
        v13 = v19;
      }

      [layer setFrame:{v7, v9, v11, v13}];
      [layer setMasksToBounds:1];
      [layer setCornerCurve:*MEMORY[0x1E69796E8]];
      [layer setCornerRadius:v13 * 0.5];
      [layer setContents:self->_iconImage];
      [layer setContentsGravity:*MEMORY[0x1E6979DF0]];
      [(CKTypingIndicatorLayer *)self setIconImageLayer:layer];
      thinkingDotContainer = [(CKTypingIndicatorLayer *)self thinkingDotContainer];
      [thinkingDotContainer addSublayer:layer];
    }
  }

  else
  {
    layer = iconImageLayer;
    [iconImageLayer removeFromSuperlayer];
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

  layer = [MEMORY[0x1E6979398] layer];
  v6 = self->_thinkingDot;
  self->_thinkingDot = layer;

  visualConfiguration = [(CKTypingIndicatorLayer *)self visualConfiguration];
  [visualConfiguration thinkingDotDiameter];
  v9 = v8;

  [(CALayer *)self->_thinkingDot setFrame:0.0, 0.0, v9, v9];
  [(CALayer *)self->_thinkingDot setCornerRadius:v9 * 0.5];
  v10 = self->_thinkingDot;
  thinkingDotColor = [(CKTypingIndicatorLayer *)self thinkingDotColor];
  -[CALayer setBackgroundColor:](v10, "setBackgroundColor:", [thinkingDotColor CGColor]);

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
  layer2 = [MEMORY[0x1E6979430] layer];
  v23 = self->_thinkingDots;
  self->_thinkingDots = layer2;

  visualConfiguration2 = [(CKTypingIndicatorLayer *)self visualConfiguration];
  [visualConfiguration2 thinkingDotsOffset];
  v26 = v25;
  v28 = v27;

  iconImage = [(CKTypingIndicatorLayer *)self iconImage];
  if (iconImage)
  {
    visualConfiguration3 = [(CKTypingIndicatorLayer *)self visualConfiguration];
    [visualConfiguration3 iconImageFrame];
    MaxX = CGRectGetMaxX(v39);
    visualConfiguration4 = [(CKTypingIndicatorLayer *)self visualConfiguration];
    [visualConfiguration4 iconImageTrailingSpace];
    v26 = MaxX + v33;
  }

  [(CAReplicatorLayer *)self->_thinkingDots setFrame:v26, v28, 0.0, 0.0];
  [(CAReplicatorLayer *)self->_thinkingDots setInstanceCount:3];
  v34 = self->_thinkingDots;
  visualConfiguration5 = [(CKTypingIndicatorLayer *)self visualConfiguration];
  [visualConfiguration5 thinkingDotSpace];
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

- (void)startGrowAnimationWithCompletionBlock:(id)block
{
  punchOutLayer = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [punchOutLayer startGrowAnimationWithCompletionBlock:0];

  vibrantStrokePunchOutLayer = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [vibrantStrokePunchOutLayer startGrowAnimationWithCompletionBlock:0];
}

- (void)startPulseAnimation
{
  [(CKTypingIndicatorLayer *)self stopPulseAnimation];
  [MEMORY[0x1E6979518] begin];
  punchOutLayer = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [punchOutLayer startPulseAnimation];

  vibrantStrokePunchOutLayer = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [vibrantStrokePunchOutLayer startPulseAnimation];

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
  punchOutLayer = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [punchOutLayer stopPulseAnimation];

  vibrantStrokePunchOutLayer = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [vibrantStrokePunchOutLayer stopPulseAnimation];
}

- (void)startShrinkAnimationWithCompletionBlock:(id)block
{
  blockCopy = block;
  punchOutLayer = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [punchOutLayer startShrinkAnimationWithCompletionBlock:blockCopy];

  vibrantStrokePunchOutLayer = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [vibrantStrokePunchOutLayer startShrinkAnimationWithCompletionBlock:blockCopy];
}

- (void)stopAnimation
{
  punchOutLayer = [(CKTypingIndicatorLayer *)self punchOutLayer];
  [punchOutLayer stopAnimation];

  vibrantStrokePunchOutLayer = [(CKTypingIndicatorLayer *)self vibrantStrokePunchOutLayer];
  [vibrantStrokePunchOutLayer stopAnimation];
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
  defaultBubbleColor = [v2 defaultBubbleColor];

  return defaultBubbleColor;
}

- (UIColor)defaultThinkingDotColor
{
  v2 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration platformConfiguration];
  defaultThinkingDotColor = [v2 defaultThinkingDotColor];

  return defaultThinkingDotColor;
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

- (void)setUpMaterialLayersForVisualConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  CKTypingIndicatorLayer.setUpMaterialLayers(for:)(configurationCopy);
}

- (void)resizeBackgroundSublayersForVisualConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  CKTypingIndicatorLayer.resizeBackgroundSublayers(for:)(configurationCopy);
}

- (void)updateMaterials
{
  selfCopy = self;
  CKTypingIndicatorLayer.updateMaterials()();
}

- (void)updateBackgroundOpacity:(double)opacity
{
  selfCopy = self;
  CKTypingIndicatorLayer.updateBackgroundOpacity(_:)(opacity);
}

@end