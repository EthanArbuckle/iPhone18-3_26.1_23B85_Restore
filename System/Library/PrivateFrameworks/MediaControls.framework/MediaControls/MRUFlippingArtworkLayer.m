@interface MRUFlippingArtworkLayer
- ($39264E51B7BBB828B9E6209281CB03F6)nextState;
- ($39264E51B7BBB828B9E6209281CB03F6)state;
- (BOOL)isLayerForStateGlowing:(id *)a3;
- (MRUFlippingArtworkLayer)init;
- (id)glowLayerForState:(id *)a3;
- (id)imageLayerForState:(id *)a3;
- (id)makeAnimation:(id)a3 fromValue:(id)a4 toValue:(id)a5 duration:(double)a6;
- (id)makeBlurFilter;
- (id)makeDynamicIslandLegibilityFilter;
- (id)makeLegibilityLayer;
- (id)makeSpringAnimation:(id)a3 fromValue:(id)a4 toValue:(id)a5;
- (id)placeholderLayerForState:(id *)a3;
- (void)animateGlowForState:(id *)a3 reverse:(BOOL)a4;
- (void)setArtworkCornerRadius:(double)a3;
- (void)setArtworkStyle:(int64_t)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContentsScale:(double)a3;
- (void)setImage:(CGImage *)a3 toLayer:(id)a4;
- (void)setImageToCurrentLayer:(CGImage *)a3 animated:(BOOL)a4;
- (void)setPlaceholderImage:(CGImage *)a3;
- (void)setPlaceholderImageTintColor:(CGColor *)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setState:(id *)a3;
- (void)setState:(id *)a3 transitionDirection:(int64_t)a4;
- (void)transitionToImage:(CGImage *)a3 transitionDirection:(int64_t)a4;
- (void)updateArtworkStyle;
- (void)updateGlowForState:(id *)a3 reverse:(BOOL)a4 animated:(BOOL)a5;
- (void)updateOpacity;
- (void)updatePlaceholderFrame;
- (void)updateScale;
- (void)updateStateWithPreviousState:(id *)a3 transitionDirection:(int64_t)a4;
@end

@implementation MRUFlippingArtworkLayer

- (MRUFlippingArtworkLayer)init
{
  v45[1] = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = MRUFlippingArtworkLayer;
  v2 = [(MRUFlippingArtworkLayer *)&v43 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6979530]);
    v4 = *(v2 + 11);
    *(v2 + 11) = v3;

    [*(v2 + 11) setMasksToBounds:1];
    [v2 addSublayer:*(v2 + 11)];
    v5 = objc_alloc_init(MEMORY[0x1E6979398]);
    v6 = *(v2 + 12);
    *(v2 + 12) = v5;

    v7 = *MEMORY[0x1E69796E8];
    [*(v2 + 12) setCornerCurve:*MEMORY[0x1E69796E8]];
    [*(v2 + 12) setAllowsGroupOpacity:1];
    [*(v2 + 12) setAllowsEdgeAntialiasing:1];
    [*(v2 + 12) setMasksToBounds:1];
    [*(v2 + 12) setDoubleSided:0];
    [*(v2 + 11) addSublayer:*(v2 + 12)];
    v8 = objc_alloc_init(MEMORY[0x1E6979398]);
    v9 = *(v2 + 14);
    *(v2 + 14) = v8;

    v10 = objc_alloc_init(MEMORY[0x1E6979398]);
    [*(v2 + 14) setMask:v10];

    v11 = [*(v2 + 14) mask];
    LODWORD(v12) = 1061997773;
    [v11 setOpacity:v12];

    [*(v2 + 12) addSublayer:*(v2 + 14)];
    v13 = [MEMORY[0x1E6979398] layer];
    v14 = *(v2 + 16);
    *(v2 + 16) = v13;

    v15 = [MEMORY[0x1E69DC888] whiteColor];
    [*(v2 + 16) setBackgroundColor:{objc_msgSend(v15, "CGColor")}];

    [*(v2 + 16) setOpacity:0.0];
    v16 = *MEMORY[0x1E6979CF8];
    [*(v2 + 16) setCompositingFilter:*MEMORY[0x1E6979CF8]];
    [*(v2 + 12) addSublayer:*(v2 + 16)];
    v17 = objc_alloc_init(MEMORY[0x1E6979398]);
    v18 = *(v2 + 13);
    *(v2 + 13) = v17;

    [*(v2 + 13) setCornerCurve:v7];
    [*(v2 + 13) setAllowsGroupOpacity:1];
    [*(v2 + 13) setAllowsEdgeAntialiasing:1];
    [*(v2 + 13) setMasksToBounds:1];
    [*(v2 + 13) setDoubleSided:0];
    [*(v2 + 13) setZPosition:-0.5];
    CATransform3DMakeRotation(&v42, 3.14159265, 0.0, 1.0, 0.0);
    v19 = *(v2 + 13);
    v41 = v42;
    [v19 setTransform:&v41];
    [*(v2 + 11) addSublayer:*(v2 + 13)];
    v20 = objc_alloc_init(MEMORY[0x1E6979398]);
    v21 = *(v2 + 15);
    *(v2 + 15) = v20;

    v22 = objc_alloc_init(MEMORY[0x1E6979398]);
    [*(v2 + 15) setMask:v22];

    v23 = [*(v2 + 15) mask];
    LODWORD(v24) = 1061997773;
    [v23 setOpacity:v24];

    [*(v2 + 13) addSublayer:*(v2 + 15)];
    v25 = [MEMORY[0x1E6979398] layer];
    v26 = *(v2 + 17);
    *(v2 + 17) = v25;

    v27 = [MEMORY[0x1E69DC888] whiteColor];
    [*(v2 + 17) setBackgroundColor:{objc_msgSend(v27, "CGColor")}];

    [*(v2 + 17) setOpacity:0.0];
    [*(v2 + 17) setCompositingFilter:v16];
    [*(v2 + 13) addSublayer:*(v2 + 17)];
    v28 = [v2 makeBlurFilter];
    v29 = *(v2 + 20);
    *(v2 + 20) = v28;

    v30 = [v2 makeBlurFilter];
    v31 = *(v2 + 21);
    *(v2 + 21) = v30;

    v45[0] = *(v2 + 20);
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    [*(v2 + 12) setFilters:v32];

    v44 = *(v2 + 21);
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    [*(v2 + 13) setFilters:v33];

    v2[49] = 0;
    v34 = *(v2 + 22);
    *(v2 + 22) = @"Front";

    *(v2 + 29) = 0;
    *(v2 + 184) = xmmword_1E7665CB0;
    *(v2 + 200) = unk_1E7665CC0;
    *(v2 + 216) = xmmword_1E7665CD0;
    v36 = @"Front";
    v39 = xmmword_1E7665CD0;
    v38 = unk_1E7665CC0;
    v37 = xmmword_1E7665CB0;
    v40 = 0;
    [v2 updateStateWithPreviousState:&v36 transitionDirection:0];
    [v2 updateScale];
  }

  return v2;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = MRUFlippingArtworkLayer;
  [(MRUFlippingArtworkLayer *)&v8 setBounds:?];
  [(CATransformLayer *)self->_rotatorLayer setFrame:x, y, width, height];
  [(CALayer *)self->_frontLayer setFrame:x, y, width, height];
  [(CALayer *)self->_backLayer setFrame:x, y, width, height];
  [(CALayer *)self->_frontGlowLayer setFrame:x, y, width, height];
  [(CALayer *)self->_backGlowLayer setFrame:x, y, width, height];
  [(CALayer *)self->_frontLegibilityLayer setFrame:x, y, width, height];
  [(CALayer *)self->_backLegibilityLayer setFrame:x, y, width, height];
  [(MRUFlippingArtworkLayer *)self updatePlaceholderFrame];
}

- (void)setContentsScale:(double)a3
{
  v5.receiver = self;
  v5.super_class = MRUFlippingArtworkLayer;
  [(MRUFlippingArtworkLayer *)&v5 setContentsScale:?];
  [(CALayer *)self->_frontLayer setContentsScale:a3];
  [(CALayer *)self->_backLayer setContentsScale:a3];
}

- (void)setPlaying:(BOOL)a3
{
  if (self->_playing != a3)
  {
    self->_playing = a3;
    [(MRUFlippingArtworkLayer *)self updateScale];

    [(MRUFlippingArtworkLayer *)self updateOpacity];
  }
}

- (void)setArtworkCornerRadius:(double)a3
{
  self->_artworkCornerRadius = a3;
  [(CALayer *)self->_frontLayer setCornerRadius:?];
  backLayer = self->_backLayer;

  [(CALayer *)backLayer setCornerRadius:a3];
}

- (void)setImageToCurrentLayer:(CGImage *)a3 animated:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v7 = MCLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(MRUFlippingArtworkLayer *)self state];
    *buf = 134218242;
    v14 = a3;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEBUG, "[FlippingArtwork].Layer setImageToCurrentLayer:<%p> currentState:%@", buf, 0x16u);
  }

  [(MRUFlippingArtworkLayer *)self state];
  if (self)
  {
    v8 = [(MRUFlippingArtworkLayer *)self imageLayerForState:v11];
  }

  else
  {

    v8 = 0;
  }

  [(MRUFlippingArtworkLayer *)self setImage:a3 toLayer:v8];
  [(MRUFlippingArtworkLayer *)self state];
  if (self)
  {
    if ([(MRUFlippingArtworkLayer *)self isLayerForStateGlowing:v10])
    {
      [(MRUFlippingArtworkLayer *)self state];
      [(MRUFlippingArtworkLayer *)self updateGlowForState:&v9 reverse:a3 == 0 animated:v4];
    }
  }

  else
  {
  }
}

- (void)transitionToImage:(CGImage *)a3 transitionDirection:(int64_t)a4
{
  v37 = *MEMORY[0x1E69E9840];
  memset(v28, 0, sizeof(v28));
  [(MRUFlippingArtworkLayer *)self nextState];
  v7 = MCLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(MRUFlippingArtworkLayer *)self state];
    v8 = MRUFlippingArtworkTransitionDirectionDescription(a4);
    *buf = 134218754;
    v30 = a3;
    v31 = 2112;
    v32 = v27;
    v33 = 2112;
    v34 = *&v28[0];
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEBUG, "[FlippingArtwork].Layer transitionToImage:<%p> currentState:%@ nextState:%@ transitionDirection:%@", buf, 0x2Au);
  }

  v9 = *&v28[0];
  v23 = *(v28 + 8);
  v24 = *(&v28[1] + 8);
  v25 = *(&v28[2] + 8);
  v22 = v9;
  v26 = *(&v28[3] + 1);
  if (self)
  {
    v10 = [(MRUFlippingArtworkLayer *)self imageLayerForState:&v22];
  }

  else
  {

    v10 = 0;
  }

  [(MRUFlippingArtworkLayer *)self setImage:a3 toLayer:v10];
  v11 = *&v28[0];
  v17 = v11;
  v18 = *(v28 + 8);
  v19 = *(&v28[1] + 8);
  v20 = *(&v28[2] + 8);
  v21 = *(&v28[3] + 1);
  if (self)
  {
    [(MRUFlippingArtworkLayer *)self animateGlowForState:&v17 reverse:a3 == 0];
    v12 = *&v28[0];
    v13 = *(v28 + 8);
    v14 = *(&v28[1] + 8);
    v15 = *(&v28[2] + 8);
    v16 = *(&v28[3] + 1);
    [(MRUFlippingArtworkLayer *)self setState:&v12 transitionDirection:a4];
  }

  else
  {

    v12 = *&v28[0];
    v13 = *(v28 + 8);
    v14 = *(&v28[1] + 8);
    v15 = *(&v28[2] + 8);
    v16 = *(&v28[3] + 1);
  }
}

- (void)setPlaceholderImage:(CGImage *)a3
{
  self->_placeholderImage = a3;
  v5 = a3 == 0;
  p_state = &self->_state;
  v15 = self->_state.identifier;
  v16 = *&p_state->frontLayerAlpha;
  v17 = *&p_state->frontLayerBlurRadius;
  v18 = *&p_state->backLayerBlurRadius;
  yRotation = p_state->yRotation;
  v7 = [(MRUFlippingArtworkLayer *)self placeholderLayerForState:&v15];
  [v7 setHidden:v5];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  [(MRUFlippingArtworkLayer *)self updatePlaceholderFrame];
  [MEMORY[0x1E6979518] commit];
  v8 = a3;
  v9 = [v7 mask];
  [v9 setContents:v8];

  if (a3)
  {
    v10 = p_state->identifier;
    v11 = *&p_state->frontLayerAlpha;
    v12 = *&p_state->frontLayerBlurRadius;
    v13 = *&p_state->backLayerBlurRadius;
    v14 = p_state->yRotation;
    [(MRUFlippingArtworkLayer *)self updateGlowForState:&v10 reverse:0 animated:1];
  }
}

- (void)updatePlaceholderFrame
{
  if (self->_placeholderImage)
  {
    MRUFlippingArtworkPlaceholderSizeRatio(self->_artworkStyle);
    v13 = self->_state.identifier;
    v14 = *&self->_state.frontLayerAlpha;
    v15 = *&self->_state.frontLayerBlurRadius;
    v16 = *&self->_state.backLayerBlurRadius;
    yRotation = self->_state.yRotation;
    v3 = [(MRUFlippingArtworkLayer *)self placeholderLayerForState:&v13];
    CGImageGetSizeAfterOrientation();
    [(MRUFlippingArtworkLayer *)self bounds];
    CGRectGetWidth(v18);
    [(MRUFlippingArtworkLayer *)self bounds];
    UIRectCenteredRect();
    [v3 setFrame:?];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v3 mask];
    [v12 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)setPlaceholderImageTintColor:(CGColor *)a3
{
  self->_placeholderImageTintColor = a3;
  [(CALayer *)self->_frontPlaceholderLayer setBackgroundColor:?];
  backPlaceholderLayer = self->_backPlaceholderLayer;

  [(CALayer *)backPlaceholderLayer setBackgroundColor:a3];
}

- (void)setArtworkStyle:(int64_t)a3
{
  if (self->_artworkStyle != a3)
  {
    self->_artworkStyle = a3;
    [(MRUFlippingArtworkLayer *)self updateArtworkStyle];
  }
}

- (void)updateArtworkStyle
{
  v3 = self->_artworkStyle - 7;
  frontLegibilityLayer = self->_frontLegibilityLayer;
  if (v3 > 1)
  {
    if (frontLegibilityLayer || self->_backLegibilityLayer)
    {
      [(CALayer *)frontLegibilityLayer removeFromSuperlayer];
      [(CALayer *)self->_backLegibilityLayer removeFromSuperlayer];
      v9 = self->_frontLegibilityLayer;
      self->_frontLegibilityLayer = 0;

      backLegibilityLayer = self->_backLegibilityLayer;
      self->_backLegibilityLayer = 0;
    }
  }

  else if (!frontLegibilityLayer)
  {
    v5 = [(MRUFlippingArtworkLayer *)self makeLegibilityLayer];
    v6 = self->_frontLegibilityLayer;
    self->_frontLegibilityLayer = v5;

    v7 = [(MRUFlippingArtworkLayer *)self makeLegibilityLayer];
    v8 = self->_backLegibilityLayer;
    self->_backLegibilityLayer = v7;

    [(CALayer *)self->_frontLayer addSublayer:self->_frontLegibilityLayer];
    [(CALayer *)self->_backLayer addSublayer:self->_backLegibilityLayer];
  }

  [(MRUFlippingArtworkLayer *)self updatePlaceholderFrame];
}

- (void)setState:(id *)a3
{
  v5 = a3->var0;
  v6 = v5;
  v7 = *&a3->var1;
  v8 = *&a3->var3;
  v9 = *&a3->var5;
  var7 = a3->var7;
  if (self)
  {
    [(MRUFlippingArtworkLayer *)self setState:&v6 transitionDirection:0];
  }

  else
  {
  }
}

- (void)setState:(id *)a3 transitionDirection:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = MCLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    var0 = a3->var0;
    v9 = MRUFlippingArtworkTransitionDirectionDescription(a4);
    *buf = 138412546;
    *&buf[4] = var0;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEBUG, "[FlippingArtwork].Layer setState:%@ transitionDirection:%@", buf, 0x16u);
  }

  if (![(NSString *)self->_state.identifier isEqualToString:a3->var0])
  {
    v10 = self->_state.identifier;
    v11 = *&self->_state.frontLayerBlurRadius;
    *buf = *&self->_state.frontLayerAlpha;
    *&buf[16] = v11;
    v21 = *&self->_state.backLayerBlurRadius;
    yRotation = self->_state.yRotation;
    objc_storeStrong(&self->_state.identifier, a3->var0);
    v12 = *&a3->var1;
    v13 = *&a3->var3;
    v14 = *&a3->var5;
    self->_state.yRotation = a3->var7;
    *&self->_state.backLayerBlurRadius = v14;
    *&self->_state.frontLayerBlurRadius = v13;
    *&self->_state.frontLayerAlpha = v12;
    v15 = v10;
    v16 = *buf;
    v17 = *&buf[16];
    v18 = v21;
    v19 = yRotation;
    [(MRUFlippingArtworkLayer *)self updateStateWithPreviousState:&v15 transitionDirection:a4];
  }
}

- (void)setImage:(CGImage *)a3 toLayer:(id)a4
{
  v5 = a4;
  [v5 setContents:a3];
  if (a3)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] grayColor];
  }
  v7 = ;
  v6 = v7;
  [v5 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];
}

- (void)animateGlowForState:(id *)a3 reverse:(BOOL)a4
{
  v4 = a4;
  v7 = a3->var0;
  v8 = v7;
  v9 = *&a3->var1;
  v10 = *&a3->var3;
  v11 = *&a3->var5;
  var7 = a3->var7;
  if (self)
  {
    [(MRUFlippingArtworkLayer *)self updateGlowForState:&v8 reverse:v4 animated:1];
  }

  else
  {
  }
}

- (void)updateGlowForState:(id *)a3 reverse:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v9 = MCLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    var0 = a3->var0;
    *buf = 138412802;
    v25 = var0;
    v26 = 1024;
    v27 = v6;
    v28 = 1024;
    v29 = v5;
    _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEBUG, "[FlippingArtwork].Layer updateGlowForState %@ reverse:%{BOOL}u animated:%{BOOL}u", buf, 0x18u);
  }

  v11 = a3->var0;
  v19 = v11;
  v20 = *&a3->var1;
  v21 = *&a3->var3;
  v22 = *&a3->var5;
  var7 = a3->var7;
  if (self)
  {
    v12 = [(MRUFlippingArtworkLayer *)self glowLayerForState:&v19];
  }

  else
  {

    v12 = 0;
  }

  HIDWORD(v13) = 0;
  if (v6)
  {
    v14 = 0.5;
  }

  else
  {
    v14 = 0.0;
  }

  *&v13 = v14;
  [v12 setOpacity:{v13, v19, v20, v21, v22, *&var7}];
  if (v5)
  {
    v15 = 0.5;
    if (v6)
    {
      v15 = 0.0;
    }

    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    v18 = [(MRUFlippingArtworkLayer *)self makeAnimation:@"opacity" fromValue:v16 toValue:v17 duration:0.55];

    [v12 addAnimation:v18 forKey:0];
  }
}

- (BOOL)isLayerForStateGlowing:(id *)a3
{
  v5 = a3->var0;
  v9 = v5;
  v10 = *&a3->var1;
  v11 = *&a3->var3;
  v12 = *&a3->var5;
  var7 = a3->var7;
  if (self)
  {
    self = [(MRUFlippingArtworkLayer *)self glowLayerForState:&v9];
  }

  else
  {
  }

  [(MRUFlippingArtworkLayer *)self opacity:v9];
  v7 = v6 > 0.0;

  return v7;
}

- (void)updateStateWithPreviousState:(id *)a3 transitionDirection:(int64_t)a4
{
  v7 = [(CATransformLayer *)self->_rotatorLayer valueForKeyPath:@"transform.rotation.y"];
  yRotation = self->_state.yRotation;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:yRotation];
  v10 = [v7 isEqualToNumber:v9];

  if ((v10 & 1) == 0)
  {
    v11 = self->_state.yRotation;
    v12 = *(MEMORY[0x1E69792E8] + 48);
    *&v26.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v26.m23 = v12;
    *&v26.m31 = *(MEMORY[0x1E69792E8] + 64);
    v13 = *(MEMORY[0x1E69792E8] + 80);
    v14 = *(MEMORY[0x1E69792E8] + 16);
    *&v26.m11 = *MEMORY[0x1E69792E8];
    *&v26.m13 = v14;
    v26.m33 = v13;
    v26.m34 = -0.000666666667;
    v15 = *(MEMORY[0x1E69792E8] + 112);
    *&v26.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v26.m43 = v15;
    CATransform3DRotate(&v27, &v26, v11, 0.0, 1.0, 0.0);
    v32 = *&v27.m21;
    v33 = *&v27.m23;
    v34 = *&v27.m31;
    m33 = v27.m33;
    v30 = *&v27.m11;
    v31 = *&v27.m13;
    v28 = *&v27.m41;
    v29 = *&v27.m43;
    [(CATransformLayer *)self->_rotatorLayer setTransform:&v27];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:{MRUFlippingArtworkTransitionDirectionFromValue(a4, yRotation)}];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:yRotation];
    v18 = [(MRUFlippingArtworkLayer *)self makeSpringAnimation:@"transform.rotation.y" fromValue:v16 toValue:v17];

    LODWORD(v19) = 0.5;
    [v18 setSpeed:v19];
    [(CATransformLayer *)self->_rotatorLayer addAnimation:v18 forKey:0];
  }

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:a3->var3];
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_state.frontLayerBlurRadius];
  v22 = [(MRUFlippingArtworkLayer *)self makeAnimation:@"filters.gaussianBlur.inputRadius" fromValue:v20 toValue:v21 duration:0.5];

  v23 = [MEMORY[0x1E696AD98] numberWithDouble:a3->var5];
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:self->_state.backLayerBlurRadius];
  v25 = [(MRUFlippingArtworkLayer *)self makeAnimation:@"filters.gaussianBlur.inputRadius" fromValue:v23 toValue:v24 duration:0.5];

  [v22 setBeginTime:CACurrentMediaTime() + self->_state.frontLayerBlurAnimationDelay];
  [v25 setBeginTime:CACurrentMediaTime() + self->_state.backLayerBlurAnimationDelay];
  [(CALayer *)self->_frontLayer addAnimation:v22 forKey:0];
  [(CALayer *)self->_backLayer addAnimation:v25 forKey:0];
}

- (void)updateScale
{
  v3 = MRUFlippingArtworkScale(!self->_playing);
  v4 = MRUFlippingArtworkScale(self->_playing);
  if (vabdd_f64(v3, v4) > 2.22044605e-16)
  {
    [(MRUFlippingArtworkLayer *)self removeAnimationForKey:@"MRUFlippingArtworkPlaybackStateScaleAnimationKey"];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    v7 = [(MRUFlippingArtworkLayer *)self makeSpringAnimation:@"transform.scale.xy" fromValue:v5 toValue:v6];

    [(MRUFlippingArtworkLayer *)self addAnimation:v7 forKey:0];
  }
}

- (void)updateOpacity
{
  v3 = MRUFlippingArtworkOpacity(!self->_playing, self->_dimsWhenPaused);
  v4 = MRUFlippingArtworkOpacity(self->_playing, self->_dimsWhenPaused);
  if (vabdd_f64(v3, v4) > 2.22044605e-16)
  {
    [(MRUFlippingArtworkLayer *)self removeAnimationForKey:@"MRUFlippingArtworkPlaybackStateOpacityAnimationKey"];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    v8 = [(MRUFlippingArtworkLayer *)self makeAnimation:@"opacity" fromValue:v5 toValue:v6 duration:0.2];

    v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v8 setTimingFunction:v7];

    [v8 setRemovedOnCompletion:0];
    [(MRUFlippingArtworkLayer *)self addAnimation:v8 forKey:@"MRUFlippingArtworkPlaybackStateOpacityAnimationKey"];
  }
}

- (id)imageLayerForState:(id *)a3
{
  if ([a3->var0 isEqualToString:@"Front"])
  {
    [(MRUFlippingArtworkLayer *)self frontLayer];
  }

  else
  {
    [(MRUFlippingArtworkLayer *)self backLayer];
  }
  v5 = ;

  return v5;
}

- (id)placeholderLayerForState:(id *)a3
{
  if ([a3->var0 isEqualToString:@"Front"])
  {
    [(MRUFlippingArtworkLayer *)self frontPlaceholderLayer];
  }

  else
  {
    [(MRUFlippingArtworkLayer *)self backPlaceholderLayer];
  }
  v5 = ;

  return v5;
}

- (id)glowLayerForState:(id *)a3
{
  if ([a3->var0 isEqualToString:@"Front"])
  {
    [(MRUFlippingArtworkLayer *)self frontGlowLayer];
  }

  else
  {
    [(MRUFlippingArtworkLayer *)self backGlowLayer];
  }
  v5 = ;

  return v5;
}

- ($39264E51B7BBB828B9E6209281CB03F6)nextState
{
  [(MRUFlippingArtworkLayer *)self state];
  if ([v6 isEqualToString:@"Front"])
  {
    *&retstr->var1 = xmmword_1E7665CF0;
    *&retstr->var3 = unk_1E7665D00;
    *&retstr->var5 = xmmword_1E7665D10;
    retstr->var7 = -3.14159265;
    v4 = @"Back";
  }

  else
  {
    retstr->var7 = 0.0;
    *&retstr->var1 = xmmword_1E7665CB0;
    *&retstr->var3 = unk_1E7665CC0;
    *&retstr->var5 = xmmword_1E7665CD0;
    v4 = @"Front";
  }

  retstr->var0 = v4;

  return result;
}

- (id)makeBlurFilter
{
  v2 = objc_alloc(MEMORY[0x1E6979378]);
  v3 = [v2 initWithType:*MEMORY[0x1E6979928]];
  [v3 setValue:&unk_1F148B298 forKeyPath:*MEMORY[0x1E6979BA8]];
  [v3 setValue:MEMORY[0x1E695E118] forKeyPath:*MEMORY[0x1E6979B78]];

  return v3;
}

- (id)makeLegibilityLayer
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E6979398]);
  v4 = [MEMORY[0x1E69DC888] redColor];
  [v3 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [(MRUFlippingArtworkLayer *)self makeDynamicIslandLegibilityFilter];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v3 setFilters:v6];

  [(MRUFlippingArtworkLayer *)self bounds];
  [v3 setFrame:?];

  return v3;
}

- (id)makeDynamicIslandLegibilityFilter
{
  v2 = objc_alloc(MEMORY[0x1E6979378]);
  v3 = [v2 initWithType:*MEMORY[0x1E6979D78]];
  v6[0] = 0;
  v6[1] = 0;
  v7 = 1053676274;
  v9 = 0;
  v8 = 0;
  v10 = 1053676274;
  v11 = 0;
  v12 = 0;
  v13 = xmmword_1A23082F0;
  v14 = 1045086339;
  v4 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v6];
  [v3 setValue:v4 forKey:@"inputColorMatrix"];

  return v3;
}

- (id)makeSpringAnimation:(id)a3 fromValue:(id)a4 toValue:(id)a5
{
  v7 = MEMORY[0x1E69794A8];
  v8 = a5;
  v9 = a4;
  v10 = [v7 animationWithKeyPath:a3];
  [v10 setMass:1.25];
  [v10 setDamping:25.0];
  [v10 setStiffness:300.0];
  [v10 setInitialVelocity:0.0];
  [v10 setFillMode:*MEMORY[0x1E69797E8]];
  [v10 setFromValue:v9];

  [v10 setToValue:v8];
  [v10 settlingDuration];
  [v10 setDuration:?];
  [v10 setRemovedOnCompletion:0];

  return v10;
}

- (id)makeAnimation:(id)a3 fromValue:(id)a4 toValue:(id)a5 duration:(double)a6
{
  v9 = MEMORY[0x1E6979318];
  v10 = a5;
  v11 = a4;
  v12 = [v9 animationWithKeyPath:a3];
  [v12 setDuration:a6];
  [v12 setFillMode:*MEMORY[0x1E69797E8]];
  [v12 setFromValue:v11];

  [v12 setToValue:v10];

  return v12;
}

- ($39264E51B7BBB828B9E6209281CB03F6)state
{
  p_state = &self->_state;
  result = self->_state.identifier;
  retstr->var0 = result;
  *&retstr->var1 = *&p_state->frontLayerAlpha;
  *&retstr->var3 = *&p_state->frontLayerBlurRadius;
  *&retstr->var5 = *&p_state->backLayerBlurRadius;
  retstr->var7 = p_state->yRotation;
  return result;
}

@end