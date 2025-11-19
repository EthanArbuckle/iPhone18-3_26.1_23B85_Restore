@interface CKBrowserDragStickerView
+ (id)meshTransform;
+ (id)springAnimationWithKeyPath:(id)a3 speed:(float)a4;
- (CGPoint)anchorOffset;
- (CGPoint)dragViewCenter;
- (CGPoint)dropShadowLayerStartPosition;
- (CGPoint)initialDragStartPosition;
- (CGPoint)meshLayerStartPosition;
- (CGPoint)peelLayerStartPosition;
- (CGPoint)shadowLayerStartPosition;
- (CGPoint)shineLayerStartPosition;
- (CGRect)sourceRect;
- (CGSize)initialSize;
- (CGSize)rasterizedImageSize;
- (CKBrowserDragStickerView)initWithSourceRect:(CGRect)a3 dragImage:(id)a4;
- (CKBrowserDragStickerView)initWithSourceRect:(CGRect)a3 draggedSticker:(id)a4;
- (CKBrowserDraggedSticker)draggedSticker;
- (double)dragViewRotation;
- (double)dragViewScaleUp;
- (id)peelMaskImageFromImage:(id)a3;
- (id)scaleImage:(id)a3 toSize:(CGSize)a4;
- (void)_displayLinkCallback:(id)a3;
- (void)animatePeelWithCompletion:(id)a3;
- (void)animateScaleDown;
- (void)animationTimerFired:(double)a3;
- (void)applyTransforms;
- (void)attachElasticEffectsForLocation:(CGPoint)a3;
- (void)dealloc;
- (void)detachElasticEffects;
- (void)reversePeelAnimationToPoint:(CGPoint)a3 forPlacement:(BOOL)a4 shouldShrink:(BOOL)a5 completionBlock:(id)a6;
- (void)setDragViewScale:(double)a3;
- (void)setPlusImageViewHidden:(BOOL)a3;
- (void)setUpPeelLayers;
- (void)updateAnimationTimerObserving;
- (void)updateElasticEffectsForLocation:(CGPoint)a3;
@end

@implementation CKBrowserDragStickerView

+ (id)meshTransform
{
  if (meshTransform_onceToken != -1)
  {
    +[CKBrowserDragStickerView meshTransform];
  }

  v3 = meshTransform___mesh;

  return v3;
}

void __41__CKBrowserDragStickerView_meshTransform__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  memcpy(__dst, &unk_190DD1388, sizeof(__dst));
  memcpy(v2, &unk_190DD16F8, sizeof(v2));
  v0 = [MEMORY[0x1E69793D8] meshTransformWithVertexCount:22 vertices:__dst faceCount:10 faces:v2 depthNormalization:*MEMORY[0x1E6979700]];
  v1 = meshTransform___mesh;
  meshTransform___mesh = v0;
}

+ (id)springAnimationWithKeyPath:(id)a3 speed:(float)a4
{
  v5 = [MEMORY[0x1E69794A8] animationWithKeyPath:a3];
  [v5 setMass:2.0];
  [v5 setStiffness:300.0];
  [v5 setDamping:400.0];
  *&v6 = a4;
  [v5 setSpeed:v6];
  [v5 setDuration:0.91];
  v7 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v8) = 1041212815;
  LODWORD(v9) = 999867313;
  LODWORD(v10) = 1058228603;
  LODWORD(v11) = 1064805775;
  v12 = [v7 initWithControlPoints:v8 :v9 :v10 :v11];
  [v5 setTimingFunction:v12];

  [v5 setFillMode:*MEMORY[0x1E69797E8]];
  [v5 setRemovedOnCompletion:0];

  return v5;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3 = +[CKImageAnimationTimer sharedTimer];
  [v3 removeAnimationTimerObserver:self];

  v4.receiver = self;
  v4.super_class = CKBrowserDragStickerView;
  [(CKBrowserDragStickerView *)&v4 dealloc];
}

- (CKBrowserDragStickerView)initWithSourceRect:(CGRect)a3 dragImage:(id)a4
{
  width = a3.size.width;
  height = a3.size.height;
  x = a3.origin.x;
  y = a3.origin.y;
  v5 = a4;
  v47.receiver = self;
  v47.super_class = CKBrowserDragStickerView;
  v6 = [(CKBrowserDragStickerView *)&v47 init];
  if (v6)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v5 frames];
    [(CKBrowserDragStickerView *)v6 setDragImageFrames:v8];
    [v5 size];
    v10 = v9;
    v12 = v11;
    [v5 scale];
    v14 = v13;
    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v15 scale];
    [v7 stickerSizeScaledWithInitialSize:v10 imageScale:v12 userScale:v14 rectifiedScreenScale:1.0 maxWidth:{v16, 1.79769313e308}];
    v18 = v17;
    v20 = v19;

    v21 = width / v18;
    if (v12 > v10)
    {
      v21 = height / v20;
    }

    v22 = fmin(v21, 1.0);
    v23 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v23 scale];
    UIRectIntegralWithScale();
    v25 = v24;
    v27 = v26;

    [(CKBrowserDragStickerView *)v6 setDragViewScale:1.0];
    [(CKBrowserDragStickerView *)v6 setInitialScale:v22];
    [(CKBrowserDragStickerView *)v6 setInitialSize:width, height];
    [(CKBrowserDragStickerView *)v6 setRasterizedImageSize:v25, v27];
    if ([v8 count])
    {
      v28 = [v8 firstObject];
      [(CKBrowserDragStickerView *)v6 setCurrentFrameImage:v28];
    }

    else
    {
      [(CKBrowserDragStickerView *)v6 setCurrentFrameImage:0];
    }

    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKBrowserDragStickerView *)v6 setPeelMaskImageCache:v29];

    v30 = MEMORY[0x1E695F058];
    [(CKBrowserDragStickerView *)v6 setBounds:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), v25, v27];
    v31 = v30[1];
    if (CKMainScreenScale_once_79 != -1)
    {
      v42 = v30[1];
      [CKBrowserDragStickerView initWithSourceRect:dragImage:];
      v31 = v42;
    }

    v32 = CKMainScreenScale_sMainScreenScale_79;
    if (*&CKMainScreenScale_sMainScreenScale_79 == 0.0)
    {
      *&v32 = 1.0;
    }

    v33.f64[0] = width;
    v33.f64[1] = height;
    v34 = vsubq_f64(v33, v31);
    __asm { FMOV            V2.2D, #0.5 }

    v40.f64[0] = x;
    v40.f64[1] = y;
    [(CKBrowserDragStickerView *)v6 setCenter:vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(v40, vmulq_f64(v34, _Q2)), *&v32)), vdupq_lane_s64(v32, 0)), *&v42];
    [(CKBrowserDragStickerView *)v6 setUpPeelLayers];
    [(CKBrowserDragStickerView *)v6 setDragImage:v5];
  }

  return v6;
}

- (CKBrowserDragStickerView)initWithSourceRect:(CGRect)a3 draggedSticker:(id)a4
{
  width = a3.size.width;
  height = a3.size.height;
  x = a3.origin.x;
  y = a3.origin.y;
  v5 = a4;
  v46.receiver = self;
  v46.super_class = CKBrowserDragStickerView;
  v6 = [(CKBrowserDragStickerView *)&v46 init];
  if (v6)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v5 animatedImage];
    v9 = [v8 frames];

    [(CKBrowserDragStickerView *)v6 setDragImageFrames:v9];
    [v5 frame];
    v11 = v10;
    v13 = v12;
    [v5 scale];
    v15 = v14;
    [v7 stickerScreenScale];
    [v7 stickerSizeScaledWithInitialSize:v11 imageScale:v13 userScale:v15 rectifiedScreenScale:1.0 maxWidth:{v16, 1.79769313e308}];
    v19 = width / v18;
    if (v13 > v11)
    {
      v19 = height / v17;
    }

    v20 = fmin(v19, 1.0);
    v21 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v21 scale];
    UIRectIntegralWithScale();
    v23 = v22;
    v25 = v24;

    [(CKBrowserDragStickerView *)v6 setDragViewScale:1.0];
    [(CKBrowserDragStickerView *)v6 setInitialScale:v20];
    [(CKBrowserDragStickerView *)v6 setInitialSize:width, height];
    [(CKBrowserDragStickerView *)v6 setRasterizedImageSize:v23, v25];
    if ([v9 count])
    {
      v26 = [v9 firstObject];
      [(CKBrowserDragStickerView *)v6 setCurrentFrameImage:v26];
    }

    else
    {
      [(CKBrowserDragStickerView *)v6 setCurrentFrameImage:0];
    }

    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CKBrowserDragStickerView *)v6 setPeelMaskImageCache:v27];

    v28 = MEMORY[0x1E695F058];
    [(CKBrowserDragStickerView *)v6 setBounds:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), v23, v25];
    v29 = v28[1];
    if (CKMainScreenScale_once_79 != -1)
    {
      v41 = v28[1];
      [CKBrowserDragStickerView initWithSourceRect:dragImage:];
      v29 = v41;
    }

    v30 = CKMainScreenScale_sMainScreenScale_79;
    if (*&CKMainScreenScale_sMainScreenScale_79 == 0.0)
    {
      *&v30 = 1.0;
    }

    v31.f64[0] = width;
    v31.f64[1] = height;
    v32 = vsubq_f64(v31, v29);
    __asm { FMOV            V2.2D, #0.5 }

    v38.f64[0] = x;
    v38.f64[1] = y;
    [(CKBrowserDragStickerView *)v6 setCenter:vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(v38, vmulq_f64(v32, _Q2)), *&v30)), vdupq_lane_s64(v30, 0)), *&v41];
    [(CKBrowserDragStickerView *)v6 setUpPeelLayers];
    v39 = [v5 animatedImage];
    [(CKBrowserDragStickerView *)v6 setDragImage:v39];
  }

  return v6;
}

- (void)setUpPeelLayers
{
  v75[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKBrowserDragStickerView *)self currentFrameImage];
  v4 = [(CKBrowserDragStickerView *)self scaleImage:v3 toSize:self->_rasterizedImageSize.width, self->_rasterizedImageSize.height];

  [(CKBrowserDragStickerView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = [(CKBrowserDragStickerView *)self layer];
  [v9 anchorPoint];
  v11 = v10;

  v12 = [MEMORY[0x1E6979530] layer];
  v13 = *(MEMORY[0x1E69792E8] + 48);
  v66[2] = *(MEMORY[0x1E69792E8] + 32);
  v66[3] = v13;
  v66[4] = *(MEMORY[0x1E69792E8] + 64);
  v14 = *(MEMORY[0x1E69792E8] + 80);
  v15 = *(MEMORY[0x1E69792E8] + 16);
  v66[0] = *MEMORY[0x1E69792E8];
  v66[1] = v15;
  v16 = *(MEMORY[0x1E69792E8] + 112);
  v69 = *(MEMORY[0x1E69792E8] + 96);
  v70 = v16;
  v67 = v14;
  v68 = 0xBF747AE140000000;
  [v12 setSublayerTransform:v66];
  [v12 setPosition:{v6 * 0.5, v8 * 0.5}];
  [v12 setBounds:{0.0, 0.0, v6, v8}];
  v17 = [(CKBrowserDragStickerView *)self layer];
  [v17 addSublayer:v12];

  v61 = v12;
  [(CKBrowserDragStickerView *)self setPerspectiveLayer:v12];
  v18 = [MEMORY[0x1E6979398] layer];
  v19 = [objc_opt_class() meshTransform];
  [v18 setMeshTransform:v19];

  [v18 setPosition:{v6 * v11, -v8}];
  [v18 setBounds:{0.0, 0.0, v6 + v6, v8 * 5.0}];
  [v18 setRasterizationScale:2.8];
  [v12 addSublayer:v18];
  [(CKBrowserDragStickerView *)self setMeshLayer:v18];
  v65 = v18;
  [v18 position];
  [(CKBrowserDragStickerView *)self setMeshLayerStartPosition:?];
  v20 = [MEMORY[0x1E6979398] layer];
  [v20 setPosition:{(v6 + v6) * v11, v8 * 5.0 - v8}];
  [v20 setBounds:{0.0, 0.0, v6, v8}];
  [v18 addSublayer:v20];
  [(CKBrowserDragStickerView *)self setPeelLayer:v20];
  [v20 position];
  [(CKBrowserDragStickerView *)self setPeelLayerStartPosition:?];
  v21 = [MEMORY[0x1E6979398] layer];
  v22 = v4;
  [v21 setContents:{objc_msgSend(v4, "CGImage")}];
  v23 = *MEMORY[0x1E6979DE8];
  [v21 setContentsGravity:*MEMORY[0x1E6979DE8]];
  [v20 bounds];
  [v21 setFrame:?];
  v74 = @"contents";
  v24 = [MEMORY[0x1E695DFB0] null];
  v75[0] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
  [v21 setActions:v25];

  [(CKBrowserDragStickerView *)self setPeelImageLayer:v21];
  [v20 addSublayer:v21];
  v64 = [(CKBrowserDragStickerView *)self peelMaskImageFromImage:v22];
  v63 = [MEMORY[0x1E6979398] layer];
  [v63 setContents:{objc_msgSend(v64, "CGImage")}];
  [v20 bounds];
  [v63 setFrame:?];
  [v63 setContentsGravity:v23];
  [v20 setMask:v63];
  [(CKBrowserDragStickerView *)self setPeelMaskLayer:v63];
  v26 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"StickerShine"];
  [v26 size];
  v28 = v27;
  [v20 bounds];
  Width = CGRectGetWidth(v76);
  v30 = Width + Width;
  if (v28 < v30)
  {
    v28 = v30;
  }

  v31 = [MEMORY[0x1E6979398] layer];
  v62 = v26;
  [v31 setContents:{objc_msgSend(v26, "CGImage")}];
  [v20 bounds];
  v32 = round(CGRectGetWidth(v77) - v28) * 0.5;
  [v26 size];
  v34 = -v33;
  [v26 size];
  [v31 setFrame:{v32, v34, v28, v35}];
  LODWORD(v36) = 1035489772;
  [v31 setOpacity:v36];
  v37 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
  [v31 setCompositingFilter:v37];

  [v20 addSublayer:v31];
  [(CKBrowserDragStickerView *)self setShineLayer:v31];
  [v31 position];
  [(CKBrowserDragStickerView *)self setShineLayerStartPosition:?];
  v38 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"StickerShadow"];
  [v38 size];
  v40 = v39;
  [v20 bounds];
  v41 = CGRectGetWidth(v78);
  v42 = v41 + v41;
  if (v40 < v42)
  {
    v40 = v42;
  }

  v43 = [MEMORY[0x1E6979398] layer];
  [v43 setContents:{objc_msgSend(v38, "CGImage")}];
  [v20 bounds];
  v44 = round(CGRectGetWidth(v79) - v40) * 0.5;
  [v38 size];
  v46 = -10.0 - v45;
  [v38 size];
  [v43 setFrame:{v44, v46, v40, v47}];
  LODWORD(v48) = 1043542835;
  [v43 setOpacity:v48];
  [v20 addSublayer:v43];
  [(CKBrowserDragStickerView *)self setShadowLayer:v43];
  [v43 position];
  [(CKBrowserDragStickerView *)self setShadowLayerStartPosition:?];
  v49 = [MEMORY[0x1E6979398] layer];
  v60 = v22;
  [v49 setContents:{objc_msgSend(v22, "CGImage")}];
  [v49 setContentsGravity:v23];
  v50 = [(CKBrowserDragStickerView *)self layer];
  [v21 bounds];
  [v50 convertRect:v21 fromLayer:?];
  [v49 setFrame:?];

  v51 = [MEMORY[0x1E69DC888] colorWithWhite:0.75 alpha:1.0];
  [v49 setContentsMultiplyColor:{objc_msgSend(v51, "CGColor")}];

  LODWORD(v52) = 1041194025;
  [v49 setOpacity:v52];
  v53 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
  [v49 setCompositingFilter:v53];

  v72 = @"contents";
  v54 = [MEMORY[0x1E695DFB0] null];
  v73 = v54;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  [v49 setActions:v55];

  v56 = [(CKBrowserDragStickerView *)self layer];
  [v56 insertSublayer:v49 below:v61];

  [(CKBrowserDragStickerView *)self setDropShadowLayer:v49];
  [v49 position];
  [(CKBrowserDragStickerView *)self setDropShadowLayerStartPosition:?];
  v57 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v57 setValue:&unk_1F04E8A68 forKey:@"inputRadius"];
  [v57 setName:@"blurFilter"];
  v58 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
  [v58 setValue:&unk_1F04E8A78 forKey:@"inputAmount"];
  v71[0] = v57;
  v71[1] = v58;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
  [v49 setFilters:v59];
}

- (void)animatePeelWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CKBrowserDragStickerView *)self canPeel])
  {
    v5 = objc_opt_class();
    LODWORD(v6) = 1053609165;
    v46 = [v5 springAnimationWithKeyPath:@"filters.blurFilter.inputRadius" speed:v6];
    [v46 setToValue:&unk_1F04E8A88];
    [v46 setBeginTime:CACurrentMediaTime() + 0.1];
    v7 = objc_opt_class();
    LODWORD(v8) = 1053609165;
    v9 = [v7 springAnimationWithKeyPath:@"position" speed:v8];
    v10 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, 23.0}];
    [v9 setByValue:v10];

    v11 = v9;
    [v9 setBeginTime:CACurrentMediaTime() + 0.1];
    v12 = objc_opt_class();
    LODWORD(v13) = 1061997773;
    v14 = [v12 springAnimationWithKeyPath:@"opacity" speed:v13];
    [v14 setToValue:&unk_1F04E8A98];
    [v14 setBeginTime:CACurrentMediaTime() + 0.1];
    v15 = objc_opt_class();
    LODWORD(v16) = 1061997773;
    v17 = [v15 springAnimationWithKeyPath:@"transform.scale.xy" speed:v16];
    [v17 setToValue:&unk_1F04E8AA8];
    [v17 setBeginTime:CACurrentMediaTime() + 0.1];
    [(CKBrowserDragStickerView *)self bounds];
    v19 = v18;
    v20 = v18 * 2.1;
    v21 = objc_opt_class();
    LODWORD(v22) = 1050253722;
    v23 = [v21 springAnimationWithKeyPath:@"position" speed:v22];
    v24 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, v20}];
    [v23 setByValue:v24];

    [v23 setBeginTime:CACurrentMediaTime() + -0.31];
    v25 = objc_opt_class();
    LODWORD(v26) = 1050253722;
    v27 = [v25 springAnimationWithKeyPath:@"position" speed:v26];
    v28 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, -(v19 * 2.1)}];
    [v27 setByValue:v28];

    [v27 setBeginTime:CACurrentMediaTime() + -0.31];
    v29 = objc_opt_class();
    LODWORD(v30) = 1053609165;
    v31 = [v29 springAnimationWithKeyPath:@"position" speed:v30];
    v32 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, 135.0}];
    [v31 setByValue:v32];

    [v31 setBeginTime:CACurrentMediaTime() + -0.12];
    v33 = objc_opt_class();
    LODWORD(v34) = 1061997773;
    v35 = [v33 springAnimationWithKeyPath:@"position" speed:v34];
    v36 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, 130.0}];
    [v35 setByValue:v36];

    [v35 setBeginTime:CACurrentMediaTime() + 0.1];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setAnimationDuration:0.310000002];
    v37 = [(CKBrowserDragStickerView *)self dropShadowLayer];
    [v37 addAnimation:v46 forKey:@"dropShadowBlurAnimation"];

    v38 = [(CKBrowserDragStickerView *)self dropShadowLayer];
    [v38 addAnimation:v11 forKey:@"dropShadowPositionAnimation"];

    v39 = [(CKBrowserDragStickerView *)self dropShadowLayer];
    [v39 addAnimation:v14 forKey:@"dropShadowOpacityAnimation"];

    v40 = [(CKBrowserDragStickerView *)self dropShadowLayer];
    [v40 addAnimation:v17 forKey:@"dropShadowScaleAnimation"];

    v41 = [(CKBrowserDragStickerView *)self meshLayer];
    [v41 addAnimation:v23 forKey:@"meshAnimation"];

    v42 = [(CKBrowserDragStickerView *)self peelLayer];
    [v42 addAnimation:v27 forKey:@"peelAnimation"];

    v43 = [(CKBrowserDragStickerView *)self shineLayer];
    [v43 addAnimation:v31 forKey:@"shineAnimation"];

    v44 = [(CKBrowserDragStickerView *)self shadowLayer];
    [v44 addAnimation:v35 forKey:@"shadowAnimation"];

    [MEMORY[0x1E6979518] commit];
    v45 = dispatch_time(0, 910000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__CKBrowserDragStickerView_animatePeelWithCompletion___block_invoke;
    block[3] = &unk_1E72EBDB8;
    v48 = v4;
    dispatch_after(v45, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __54__CKBrowserDragStickerView_animatePeelWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)animateScaleDown
{
  v3 = objc_opt_class();
  LODWORD(v4) = 1061997773;
  v5 = [v3 springAnimationWithKeyPath:@"transform.scale.xy" speed:v4];
  [(CKBrowserDragStickerView *)self dragViewScaleUp];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6 * (self->_dragViewScale * self->_elasticScaleX)];
  [v5 setFromValue:v7];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dragViewScale * self->_elasticScaleX * 0.714285714];
  [v5 setToValue:v8];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.310000002];
  v9 = [(CKBrowserDragStickerView *)self layer];
  [v9 addAnimation:v5 forKey:@"scaleDownAnimation"];

  [MEMORY[0x1E6979518] commit];
  v10 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CKBrowserDragStickerView_animateScaleDown__block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_after(v10, MEMORY[0x1E69E96A0], block);
}

void __44__CKBrowserDragStickerView_animateScaleDown__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 removeAnimationForKey:@"scaleDownAnimation"];
}

- (void)reversePeelAnimationToPoint:(CGPoint)a3 forPlacement:(BOOL)a4 shouldShrink:(BOOL)a5 completionBlock:(id)a6
{
  v6 = a5;
  v7 = a4;
  y = a3.y;
  x = a3.x;
  v11 = a6;
  v12 = objc_opt_class();
  LODWORD(v13) = 1061997773;
  v14 = [v12 springAnimationWithKeyPath:@"transform.scale.xy" speed:v13];
  v15 = v14;
  v127 = v6;
  v128 = v7;
  v132 = v14;
  v129 = v11;
  if (v6)
  {
    [v14 setToValue:&unk_1F04E8AB8];
  }

  else
  {
    v16 = MEMORY[0x1E696AD98];
    if (v7)
    {
      [(CKBrowserDragStickerView *)self dragViewScale];
    }

    else
    {
      [(CKBrowserDragStickerView *)self dragViewScaleUp];
    }

    v17 = [v16 numberWithDouble:?];
    [v15 setToValue:v17];
  }

  v18 = [(CKBrowserDragStickerView *)self dropShadowLayer];
  v19 = [v18 presentationLayer];
  [v19 position];
  v21 = v20;
  v23 = v22;
  v24 = [(CKBrowserDragStickerView *)self dropShadowLayer];
  [v24 setPosition:{v21, v23}];

  v25 = objc_opt_class();
  LODWORD(v26) = 1066192077;
  v27 = [v25 springAnimationWithKeyPath:@"position" speed:v26];
  v28 = MEMORY[0x1E696B098];
  [(CKBrowserDragStickerView *)self dropShadowLayerStartPosition];
  v29 = [v28 valueWithCGPoint:?];
  [v27 setToValue:v29];

  v131 = v27;
  [v27 setBeginTime:CACurrentMediaTime() + 0.18];
  v30 = [(CKBrowserDragStickerView *)self dropShadowLayer];
  v31 = [v30 presentationLayer];
  [v31 opacity];
  LODWORD(v23) = v32;
  v33 = [(CKBrowserDragStickerView *)self dropShadowLayer];
  LODWORD(v34) = LODWORD(v23);
  [v33 setOpacity:v34];

  v35 = objc_opt_class();
  LODWORD(v36) = 1066192077;
  v37 = [v35 springAnimationWithKeyPath:@"opacity" speed:v36];
  [v37 setToValue:&unk_1F04E8AC8];
  v130 = v37;
  [v37 setBeginTime:CACurrentMediaTime() + 0.18];
  v38 = [(CKBrowserDragStickerView *)self dropShadowLayer];
  v39 = [(CKBrowserDragStickerView *)self dropShadowLayer];
  v40 = [v39 presentationLayer];
  v41 = [v40 valueForKey:@"transform.scale.xy"];
  [v38 setValue:v41 forKey:@"transform.scale.xy"];

  v42 = objc_opt_class();
  LODWORD(v43) = 1066192077;
  v44 = [v42 springAnimationWithKeyPath:@"transform.scale.xy" speed:v43];
  [v44 setToValue:&unk_1F04E8AD8];
  [v44 setBeginTime:CACurrentMediaTime() + 0.18];
  v45 = [(CKBrowserDragStickerView *)self meshLayer];
  v46 = [v45 presentationLayer];
  [v46 position];
  v48 = v47;
  v50 = v49;

  v51 = objc_opt_class();
  LODWORD(v52) = 1050253722;
  v53 = [v51 springAnimationWithKeyPath:@"position" speed:v52];
  v54 = [MEMORY[0x1E696B098] valueWithCGPoint:{v48, v50}];
  [v53 setFromValue:v54];

  v55 = MEMORY[0x1E696B098];
  [(CKBrowserDragStickerView *)self meshLayerStartPosition];
  v56 = [v55 valueWithCGPoint:?];
  [v53 setToValue:v56];

  v57 = [(CKBrowserDragStickerView *)self peelLayer];
  v58 = [v57 presentationLayer];
  [v58 position];
  v60 = v59;
  v62 = v61;

  v63 = objc_opt_class();
  LODWORD(v64) = 1050253722;
  v65 = [v63 springAnimationWithKeyPath:@"position" speed:v64];
  v66 = [MEMORY[0x1E696B098] valueWithCGPoint:{v60, v62}];
  [v65 setFromValue:v66];

  v67 = MEMORY[0x1E696B098];
  [(CKBrowserDragStickerView *)self peelLayerStartPosition];
  v68 = [v67 valueWithCGPoint:?];
  [v65 setToValue:v68];

  v69 = [(CKBrowserDragStickerView *)self shineLayer];
  v70 = [v69 presentationLayer];
  [v70 position];
  v72 = v71;
  v74 = v73;

  v75 = objc_opt_class();
  LODWORD(v76) = 1050253722;
  v77 = [v75 springAnimationWithKeyPath:@"position" speed:v76];
  v78 = [MEMORY[0x1E696B098] valueWithCGPoint:{v72, v74}];
  [v77 setFromValue:v78];

  v79 = MEMORY[0x1E696B098];
  [(CKBrowserDragStickerView *)self shineLayerStartPosition];
  v80 = [v79 valueWithCGPoint:?];
  [v77 setToValue:v80];

  v81 = [(CKBrowserDragStickerView *)self shadowLayer];
  v82 = [v81 presentationLayer];
  [v82 position];
  v84 = v83;
  v86 = v85;

  v87 = objc_opt_class();
  LODWORD(v88) = 1066192077;
  v89 = [v87 springAnimationWithKeyPath:@"position" speed:v88];
  v90 = [MEMORY[0x1E696B098] valueWithCGPoint:{v84, v86}];
  [v89 setFromValue:v90];

  v91 = MEMORY[0x1E696B098];
  [(CKBrowserDragStickerView *)self shadowLayerStartPosition];
  v92 = [v91 valueWithCGPoint:?];
  [v89 setToValue:v92];

  [v89 setBeginTime:CACurrentMediaTime() + 0.18];
  if (v127)
  {
    v93 = [(CKBrowserDragStickerView *)self layer];
    [v93 position];
    v95 = v94;
    v97 = v96;

    v98 = objc_opt_class();
    LODWORD(v99) = 1066192077;
    v100 = [v98 springAnimationWithKeyPath:@"position" speed:v99];
    v101 = [MEMORY[0x1E696B098] valueWithCGPoint:{v95, v97}];
    [v100 setFromValue:v101];

    v102 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
    [v100 setToValue:v102];

    v103 = objc_opt_class();
    LODWORD(v104) = 1066192077;
    v105 = [v103 springAnimationWithKeyPath:@"opacity" speed:v104];
    [v105 setFromValue:&unk_1F04E8A68];
    [v105 setToValue:&unk_1F04E8AC8];
  }

  else
  {
    v100 = 0;
    v105 = 0;
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.310000002];
  v106 = [(CKBrowserDragStickerView *)self layer];
  [v106 addAnimation:v132 forKey:@"scaleUpAnimation"];

  v107 = [(CKBrowserDragStickerView *)self dropShadowLayer];
  [v107 addAnimation:v131 forKey:@"dropShadowPositionAnimation"];

  v108 = [(CKBrowserDragStickerView *)self dropShadowLayer];
  [v108 addAnimation:v130 forKey:@"dropShadowOpacityAnimation"];

  v109 = [(CKBrowserDragStickerView *)self dropShadowLayer];
  [v109 addAnimation:v44 forKey:@"dropShadowScaleAnimation"];

  v110 = [(CKBrowserDragStickerView *)self meshLayer];
  [v110 addAnimation:v53 forKey:@"meshAnimation"];

  v111 = [(CKBrowserDragStickerView *)self peelLayer];
  [v111 addAnimation:v65 forKey:@"peelAnimation"];

  v112 = [(CKBrowserDragStickerView *)self shineLayer];
  [v112 addAnimation:v77 forKey:@"shineAnimation"];

  v113 = [(CKBrowserDragStickerView *)self shadowLayer];
  [v113 addAnimation:v89 forKey:@"shadowAnimation"];

  if (v100)
  {
    v114 = [(CKBrowserDragStickerView *)self layer];
    [v114 addAnimation:v100 forKey:@"moveAnimation"];
  }

  if (v105)
  {
    v115 = [(CKBrowserDragStickerView *)self layer];
    [v115 addAnimation:v105 forKey:@"opacityAnimation"];
  }

  [MEMORY[0x1E6979518] commit];
  if (v128)
  {
    v116 = dispatch_time(0, 750000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__CKBrowserDragStickerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke;
    block[3] = &unk_1E72EBDB8;
    v117 = v129;
    v137 = v129;
    v118 = v129;
    dispatch_after(v116, MEMORY[0x1E69E96A0], block);
    v119 = v137;
  }

  else
  {
    v138.origin.x = *MEMORY[0x1E695EFF8];
    v120 = *(MEMORY[0x1E695EFF8] + 8);
    width = self->_rasterizedImageSize.width;
    height = self->_rasterizedImageSize.height;
    v138.origin.y = v120;
    v138.size.width = width;
    v138.size.height = height;
    v123 = x - CGRectGetWidth(v138) * 0.5;
    v139.origin.x = v123;
    v139.origin.y = v120;
    v139.size.width = width;
    v139.size.height = height;
    v124 = CGRectGetHeight(v139);
    v125 = MEMORY[0x1E69DD250];
    v135[0] = MEMORY[0x1E69E9820];
    v135[1] = 3221225472;
    v135[2] = __98__CKBrowserDragStickerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke_2;
    v135[3] = &unk_1E72EC7B0;
    v135[4] = self;
    *&v135[5] = v123;
    *&v135[6] = y - v124 * 0.5;
    *&v135[7] = width;
    *&v135[8] = height;
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v133[2] = __98__CKBrowserDragStickerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke_3;
    v133[3] = &unk_1E72ED1F0;
    v117 = v129;
    v134 = v129;
    v126 = v129;
    [v125 animateWithDuration:0 delay:v135 usingSpringWithDamping:v133 initialSpringVelocity:0.75 options:0.0 animations:0.6 completion:0.0];
    v119 = v134;
  }
}

uint64_t __98__CKBrowserDragStickerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __98__CKBrowserDragStickerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  return [*(a1 + 32) setAlpha:0.999];
}

uint64_t __98__CKBrowserDragStickerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)applyTransforms
{
  v3 = [(CKBrowserDragStickerView *)self isScaledDown];
  v4 = 0.714285714;
  v5 = 1.0;
  if (!v3)
  {
    v4 = 1.0;
  }

  dragViewScale = self->_dragViewScale;
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, v4 * dragViewScale * self->_elasticScaleX, v4 * dragViewScale * self->_elasticScaleY);
  v7 = self->_rotationAngle + self->_elasticRotationAngle;
  v13 = v15;
  CGAffineTransformRotate(&v14, &v13, v7);
  v15 = v14;
  if (![(CKBrowserDragStickerView *)self isScaledDown])
  {
    [(CKBrowserDragStickerView *)self dragViewScaleUp];
    v5 = v8;
  }

  v13 = v15;
  CGAffineTransformScale(&v14, &v13, v5, v5);
  v15 = v14;
  [(CKBrowserDragStickerView *)self dragViewCenter];
  v10 = v9;
  v12 = v11;
  v14 = v15;
  [(CKBrowserDragStickerView *)self setTransform:&v14];
  if (!CKIsRunningInMacCatalyst())
  {
    [(CKBrowserDragStickerView *)self setCenter:v10, v12];
  }
}

- (void)setDragViewScale:(double)a3
{
  v3 = fmin(a3, 2.0);
  if (v3 < 1.0)
  {
    v3 = 1.0;
  }

  if (self->_dragViewScale != v3)
  {
    self->_dragViewScale = v3;
    [(CKBrowserDragStickerView *)self applyTransforms];
  }
}

- (void)setPlusImageViewHidden:(BOOL)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E69DD250];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __51__CKBrowserDragStickerView_setPlusImageViewHidden___block_invoke;
    v29 = &unk_1E72EBA18;
    v30 = self;
    v5 = &v26;
  }

  else
  {
    v6 = [(CKBrowserDragStickerView *)self plusImageView];

    if (!v6)
    {
      v7 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:38.0];
      v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle.fill"];
      v9 = [v8 imageWithSymbolConfiguration:v7];

      v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
      v11 = [MEMORY[0x1E69DC888] systemGreenColor];
      [v10 setTintColor:v11];

      v12 = objc_alloc(MEMORY[0x1E69DD250]);
      v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v14 = [MEMORY[0x1E69DC888] whiteColor];
      [v13 setBackgroundColor:v14];

      [(CKBrowserDragStickerView *)self addSubview:v13];
      [(CKBrowserDragStickerView *)self addSubview:v10];
      [(CKBrowserDragStickerView *)self bounds];
      [v10 setCenter:{v15 + -7.0, 7.0}];
      [v10 frame];
      v32 = CGRectInset(v31, 4.0, 4.0);
      [v13 setFrame:{v32.origin.x, v32.origin.y, v32.size.width, v32.size.height}];
      [v13 bounds];
      v17 = v16 * 0.5;
      v18 = [v13 layer];
      [v18 setCornerRadius:v17];

      [(CKBrowserDragStickerView *)self setPlusImageView:v10];
      [(CKBrowserDragStickerView *)self setWhiteBackground:v13];
      v19 = [(CKBrowserDragStickerView *)self plusImageView];
      [v19 setAlpha:0.0];

      v20 = [(CKBrowserDragStickerView *)self whiteBackground];
      [v20 setAlpha:0.0];
    }

    v4 = MEMORY[0x1E69DD250];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __51__CKBrowserDragStickerView_setPlusImageViewHidden___block_invoke_2;
    v24 = &unk_1E72EBA18;
    v25 = self;
    v5 = &v21;
  }

  [v4 animateWithDuration:v5 animations:{0.2, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30}];
}

void __51__CKBrowserDragStickerView_setPlusImageViewHidden___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) plusImageView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) whiteBackground];
  [v3 setAlpha:0.0];
}

void __51__CKBrowserDragStickerView_setPlusImageViewHidden___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) plusImageView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) whiteBackground];
  [v3 setAlpha:1.0];
}

- (CGPoint)dragViewCenter
{
  [(CKBrowserDragStickerView *)self frame];
  v6 = *(MEMORY[0x1E695F058] + 16);
  if (CKMainScreenScale_once_79 != -1)
  {
    v19 = v3;
    v20 = v2.f64[0];
    v17 = v5;
    v18 = v4.f64[0];
    v16 = *(MEMORY[0x1E695F058] + 16);
    [CKBrowserDragStickerView dragViewCenter];
    v6 = v16;
    v5 = v17;
    v4.f64[0] = v18;
    v3 = v19;
    v2.f64[0] = v20;
  }

  *&v7 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_79 != 0.0)
  {
    v7 = CKMainScreenScale_sMainScreenScale_79;
  }

  v4.f64[1] = v5;
  v8 = vsubq_f64(v4, v6);
  __asm { FMOV            V2.2D, #0.5 }

  v2.f64[1] = v3;
  v14 = vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(v2, vmulq_f64(v8, _Q2)), *&v7)), vdupq_lane_s64(v7, 0));
  v15 = v14.f64[1];
  result.x = v14.f64[0];
  result.y = v15;
  return result;
}

- (double)dragViewRotation
{
  v2 = [(CKBrowserDragStickerView *)self layer];
  v3 = [v2 valueForKeyPath:@"transform.rotation"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)dragViewScaleUp
{
  [(CKBrowserDragStickerView *)self rasterizedImageSize];
  v4 = v3;
  [(CKBrowserDragStickerView *)self initialSize];
  if (v4 < v5 || ([(CKBrowserDragStickerView *)self rasterizedImageSize], v7 = v6, [(CKBrowserDragStickerView *)self initialSize], result = 1.0, v7 < v9))
  {
    [(CKBrowserDragStickerView *)self rasterizedImageSize];
    v11 = v10;
    [(CKBrowserDragStickerView *)self rasterizedImageSize];
    v13 = v12;
    [(CKBrowserDragStickerView *)self initialSize];
    v15 = v14;
    v17 = v16;
    [(CKBrowserDragStickerView *)self rasterizedImageSize];
    if (v11 <= v13)
    {
      return v15 / v18;
    }

    else
    {
      return v17 / v19;
    }
  }

  return result;
}

- (id)scaleImage:(id)a3 toSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = MEMORY[0x1E69DCEB0];
  v7 = a3;
  v8 = [v6 mainScreen];
  [v8 scale];
  v10 = (v9 + v9) * 1.4;
  v14.width = width;
  v14.height = height;
  UIGraphicsBeginImageContextWithOptions(v14, 0, v10);

  [v7 drawInRect:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height}];
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

- (id)peelMaskImageFromImage:(id)a3
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v5 = a3;
  [v5 size];
  v7 = v6;
  v9 = v8;
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  v12 = v11;
  v17.width = v7;
  v17.height = v9;
  UIGraphicsBeginImageContextWithOptions(v17, 0, v12);

  v13 = [MEMORY[0x1E69DC888] blackColor];
  [v13 setFill];

  v18.origin.x = v3;
  v18.origin.y = v4;
  v18.size.width = v7;
  v18.size.height = v9;
  UIRectFillUsingBlendMode(v18, kCGBlendModeCopy);
  [v5 drawInRect:22 blendMode:v3 alpha:{v4, v7, v9, 1.0}];

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

- (void)attachElasticEffectsForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [CKElasticFunction functionWithTension:550.0 friction:20.0 initialValue:a3.x];
  elasticFunctionPositionX = self->_elasticFunctionPositionX;
  self->_elasticFunctionPositionX = v6;

  [(CKElasticFunction *)self->_elasticFunctionPositionX setInput:x];
  v8 = [CKElasticFunction functionWithTension:550.0 friction:20.0 initialValue:y];
  elasticFunctionPositionY = self->_elasticFunctionPositionY;
  self->_elasticFunctionPositionY = v8;

  [(CKElasticFunction *)self->_elasticFunctionPositionY setInput:y];
  v10 = [CKElasticFunction functionWithTension:350.0 friction:15.0 initialValue:0.0];
  elasticFunctionRotation = self->_elasticFunctionRotation;
  self->_elasticFunctionRotation = v10;

  self->_elasticRotationAngle = 0.0;
  v12 = [CKElasticFunction functionWithTension:350.0 friction:20.0 initialValue:100.0];
  elasticFunctionScaleX = self->_elasticFunctionScaleX;
  self->_elasticFunctionScaleX = v12;

  [(CKElasticFunction *)self->_elasticFunctionScaleX setInput:100.0];
  self->_elasticScaleX = 1.0;
  v14 = [CKElasticFunction functionWithTension:350.0 friction:20.0 initialValue:100.0];
  elasticFunctionScaleY = self->_elasticFunctionScaleY;
  self->_elasticFunctionScaleY = v14;

  [(CKElasticFunction *)self->_elasticFunctionScaleY setInput:100.0];
  self->_elasticScaleY = 1.0;
  if (!self->_displayLink)
  {
    v16 = [MEMORY[0x1E69DCEB0] mainScreen];
    v17 = [v16 displayLinkWithTarget:self selector:sel__displayLinkCallback_];
    displayLink = self->_displayLink;
    self->_displayLink = v17;

    v19 = self->_displayLink;
    v20 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [(CADisplayLink *)v19 addToRunLoop:v20 forMode:*MEMORY[0x1E695DA28]];

    self->_elasticLastTime = CACurrentMediaTime();
    self->_elasticRemainingTime = 0.0;
  }
}

- (void)updateElasticEffectsForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(CKBrowserDragStickerView *)self isPressed])
  {
    [(CKElasticFunction *)self->_elasticFunctionPositionX setInput:x];
    [(CKElasticFunction *)self->_elasticFunctionPositionY setInput:y];
    elasticFunctionRotation = self->_elasticFunctionRotation;
    [(CKElasticFunction *)self->_elasticFunctionPositionX velocity];
    [(CKElasticFunction *)elasticFunctionRotation setInput:(v7 + 1000.0) / 2000.0 * -24.0 + 12.0];
    elasticFunctionScaleX = self->_elasticFunctionScaleX;
    [(CKElasticFunction *)self->_elasticFunctionPositionY velocity];
    [(CKElasticFunction *)elasticFunctionScaleX setInput:v9 / 1000.0 * -4.0 + 100.0];
    elasticFunctionScaleY = self->_elasticFunctionScaleY;
    [(CKElasticFunction *)self->_elasticFunctionPositionY velocity];
    v12 = v11 / 1000.0 * 12.0 + 100.0;

    [(CKElasticFunction *)elasticFunctionScaleY setInput:v12];
  }
}

- (void)detachElasticEffects
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  elasticFunctionPositionX = self->_elasticFunctionPositionX;
  self->_elasticFunctionPositionX = 0;

  elasticFunctionPositionY = self->_elasticFunctionPositionY;
  self->_elasticFunctionPositionY = 0;

  elasticFunctionRotation = self->_elasticFunctionRotation;
  self->_elasticFunctionRotation = 0;

  elasticFunctionScaleX = self->_elasticFunctionScaleX;
  self->_elasticFunctionScaleX = 0;

  elasticFunctionScaleY = self->_elasticFunctionScaleY;
  self->_elasticFunctionScaleY = 0;
}

- (void)_displayLinkCallback:(id)a3
{
  v4 = CACurrentMediaTime();
  elasticLastTime = self->_elasticLastTime;
  self->_elasticLastTime = v4;
  v6 = v4 - elasticLastTime + self->_elasticRemainingTime;
  self->_elasticRemainingTime = v6;
  if (v6 >= 0.001)
  {
    do
    {
      [(CKElasticFunction *)self->_elasticFunctionPositionX step];
      [(CKElasticFunction *)self->_elasticFunctionPositionY step];
      [(CKElasticFunction *)self->_elasticFunctionRotation step];
      [(CKElasticFunction *)self->_elasticFunctionScaleX step];
      [(CKElasticFunction *)self->_elasticFunctionScaleY step];
      v7 = self->_elasticRemainingTime - 0.001;
      self->_elasticRemainingTime = v7;
    }

    while (v7 >= 0.001);
  }

  [(CKElasticFunction *)self->_elasticFunctionPositionX output];
  v9 = v8;
  [(CKElasticFunction *)self->_elasticFunctionPositionY output];
  v11 = v10;
  v12 = [(CKBrowserDragStickerView *)self isScaledDown];
  v13 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v13 bounds];
  Height = CGRectGetHeight(v30);

  if ([(CKBrowserDragStickerView *)self canPeel]&& !v12)
  {
    v15 = 100.0;
    if (Height < 568.0)
    {
      v15 = 85.0;
    }

    if (vabdd_f64(v11, self->_initialDragStartPosition.y) >= v15)
    {
      [(CKBrowserDragStickerView *)self setScaledDown:1];
      [(CKBrowserDragStickerView *)self animateScaleDown];
    }
  }

  [(CKBrowserDragStickerView *)self anchorOffset];
  v17 = v16;
  v19 = v18;
  if (!CKIsRunningInMacCatalyst())
  {
    [(CKBrowserDragStickerView *)self setCenter:v9 - v17, v11 - v19];
  }

  [(CKElasticFunction *)self->_elasticFunctionRotation output];
  v21 = v20 * 3.14159265 / 180.0;
  v22 = fabs(v21);
  v23 = -v21;
  if (v22 <= 0.001)
  {
    v23 = 0.0;
  }

  self->_elasticRotationAngle = v23;
  [(CKElasticFunction *)self->_elasticFunctionScaleX output];
  v25 = v24 / 100.0;
  [(CKElasticFunction *)self->_elasticFunctionScaleY output];
  v27 = v26 / 100.0;
  if (fabs(v25 + -1.0) <= 0.001)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = v25;
  }

  self->_elasticScaleX = v28;
  if (fabs(v27 + -1.0) <= 0.001)
  {
    v27 = 1.0;
  }

  self->_elasticScaleY = v27;

  [(CKBrowserDragStickerView *)self applyTransforms];
}

- (void)updateAnimationTimerObserving
{
  v3 = [(CKBrowserDragStickerView *)self dragImageFrames];
  if ([v3 count] <= 1)
  {
  }

  else
  {
    v4 = [(CKBrowserDragStickerView *)self window];

    if (v4)
    {
      v5 = +[CKImageAnimationTimer sharedTimer];
      [v5 addAnimationTimerObserver:self];
      goto LABEL_6;
    }
  }

  v5 = +[CKImageAnimationTimer sharedTimer];
  [v5 removeAnimationTimerObserver:self];
LABEL_6:
}

- (void)animationTimerFired:(double)a3
{
  v5 = [(CKBrowserDragStickerView *)self dragImageFrames];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    v15 = [(CKBrowserDragStickerView *)self dragImageFrames];
    v7 = [(CKAnimatedImage *)self->_dragImage frameIndexForAnimationTime:a3];
    v8 = [v15 objectAtIndex:v7];
    [(CKBrowserDragStickerView *)self setCurrentFrameImage:v8];
    v9 = [(CKBrowserDragStickerView *)self peelImageLayer];
    [v9 setContents:{objc_msgSend(v8, "CGImage")}];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v11 = [(CKBrowserDragStickerView *)self peelMaskImageCache];
    v12 = [v11 objectForKey:v10];

    if (!v12)
    {
      v12 = [(CKBrowserDragStickerView *)self peelMaskImageFromImage:v8];
      v13 = [(CKBrowserDragStickerView *)self peelMaskImageCache];
      [v13 setObject:v12 forKey:v10];
    }

    v14 = [(CKBrowserDragStickerView *)self peelMaskLayer];
    [v14 setContents:{objc_msgSend(v12, "CGImage")}];
  }
}

- (CKBrowserDraggedSticker)draggedSticker
{
  [(CKBrowserDragStickerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKBrowserDragStickerView *)self window];
  [(CKBrowserDragStickerView *)self convertRect:v11 toView:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [CKBrowserDraggedSticker alloc];
  v21 = [(CKBrowserDragStickerView *)self dragImage];
  [(CKBrowserDragStickerView *)self dragViewScale];
  v23 = v22;
  [(CKBrowserDragStickerView *)self rotationAngle];
  v25 = [(CKBrowserDraggedSticker *)v20 initWithAnimatedImage:v21 frame:v13 scale:v15 rotationAngle:v17, v19, v23, v24];

  return v25;
}

- (CGPoint)initialDragStartPosition
{
  x = self->_initialDragStartPosition.x;
  y = self->_initialDragStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)initialSize
{
  width = self->_initialSize.width;
  height = self->_initialSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)rasterizedImageSize
{
  width = self->_rasterizedImageSize.width;
  height = self->_rasterizedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)meshLayerStartPosition
{
  x = self->_meshLayerStartPosition.x;
  y = self->_meshLayerStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)peelLayerStartPosition
{
  x = self->_peelLayerStartPosition.x;
  y = self->_peelLayerStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)shineLayerStartPosition
{
  x = self->_shineLayerStartPosition.x;
  y = self->_shineLayerStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)shadowLayerStartPosition
{
  x = self->_shadowLayerStartPosition.x;
  y = self->_shadowLayerStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)dropShadowLayerStartPosition
{
  x = self->_dropShadowLayerStartPosition.x;
  y = self->_dropShadowLayerStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)anchorOffset
{
  x = self->_anchorOffset.x;
  y = self->_anchorOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end