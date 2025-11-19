@interface CRBoxLayer
+ (id)layer;
- (CRBoxLayer)init;
- (CRBoxLayer)initWithCodeFrameRatio:(double)a3;
- (void)addCompletionBlock:(id)a3;
- (void)animateConceal;
- (void)animatePulseColor:(id)a3;
- (void)animateReveal;
- (void)animateToPosition:(CGPoint)a3 transform:(CATransform3D *)a4 opacity:(double)a5 type:(int64_t)a6;
- (void)dealloc;
- (void)layoutSublayers;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)positionForCodeBoxPoints:(id)a3;
- (void)setFrameRatio:(double)a3;
- (void)setString:(id)a3 mirrored:(BOOL)a4 inverted:(BOOL)a5;
@end

@implementation CRBoxLayer

+ (id)layer
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (CRBoxLayer)init
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"com.apple.CoreRecognition.RedeemerDemoMode"];
  v5 = 1.0;
  if (v4)
  {
    v5 = 0.25;
  }

  [(CRBoxLayer *)self setDemoSpeed:v5];

  return [(CRBoxLayer *)self initWithCodeFrameRatio:3.79710145];
}

- (CRBoxLayer)initWithCodeFrameRatio:(double)a3
{
  v7.receiver = self;
  v7.super_class = CRBoxLayer;
  v4 = [(CAReplicatorLayer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CRBoxLayer *)v4 setFrameRatio:a3];
    v5->_customInit = 1;
    [(CRBoxLayer *)v5 addObserver:v5 forKeyPath:@"hidden" options:3 context:0];
  }

  return v5;
}

- (void)setFrameRatio:(double)a3
{
  if (self->_frameRatio != a3)
  {
    self->_frameRatio = a3;
    [(CRBoxLayer *)self frameRatio];
    v6 = 971.487179 / v5 + 52.5128205;
    v7 = [CRColor colorWithWhite:1.0 alpha:0.5];
    v8 = [v7 CGColor];

    [(CRBoxLayer *)self setBounds:0.0, 0.0, 1024.0, ceil(v6)];
    [(CRBoxLayer *)self setShadowColor:v8];
    [(CRBoxLayer *)self setHidden:1];
    [(CAReplicatorLayer *)self setInstanceCount:3];
    v9 = [(CRBoxLayer *)self reticleLayer];

    if (!v9)
    {
      v10 = [MEMORY[0x277CD9F90] layer];
      [(CRBoxLayer *)self setReticleLayer:v10];

      v11 = [(CRBoxLayer *)self reticleLayer];
      [(CRBoxLayer *)self addSublayer:v11];
    }

    [(CRBoxLayer *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(CRBoxLayer *)self reticleLayer];
    [v20 setBounds:{v13, v15, v17, v19}];

    v21 = [(CRBoxLayer *)self reticleLayer];
    [v21 setShouldRasterize:1];

    v22 = [(CRBoxLayer *)self reticleLayer];
    [v22 setShadowColor:v8];

    v23 = [(CRBoxLayer *)self reticleLayer];
    LODWORD(v24) = 1.0;
    [v23 setShadowOpacity:v24];

    v25 = *MEMORY[0x277CBF3A8];
    v26 = *(MEMORY[0x277CBF3A8] + 8);
    v27 = [(CRBoxLayer *)self reticleLayer];
    [v27 setShadowOffset:{v25, v26}];

    v28 = [(CRBoxLayer *)self reticleLayer];
    [v28 setShadowRadius:26.2564103];

    v29 = +[CRColor whiteColor];
    v30 = [v29 CGColor];
    v31 = [(CRBoxLayer *)self reticleLayer];
    [v31 setFillColor:v30];

    Mutable = CGPathCreateMutable();
    v33 = [(CRBoxLayer *)self reticleLayer];
    [v33 bounds];
    MinX = CGRectGetMinX(v81);
    v35 = [(CRBoxLayer *)self reticleLayer];
    [v35 bounds];
    MinY = CGRectGetMinY(v82);
    v37 = [(CRBoxLayer *)self reticleLayer];
    [v37 bounds];
    v84.size.width = CGRectGetWidth(v83);
    v84.origin.x = MinX;
    v84.origin.y = MinY;
    v84.size.height = 5.25128205;
    CGPathAddRect(Mutable, 0, v84);

    v38 = [(CRBoxLayer *)self reticleLayer];
    [v38 bounds];
    v39 = CGRectGetMidX(v85) + -2.62564103;
    v40 = [(CRBoxLayer *)self reticleLayer];
    [v40 bounds];
    v87.origin.y = CGRectGetMinY(v86) + 5.25128205;
    v87.origin.x = v39;
    v87.size.width = 5.25128205;
    v87.size.height = 21.0051282;
    CGPathAddRect(Mutable, 0, v87);

    v41 = [(CRBoxLayer *)self reticleLayer];
    [v41 bounds];
    v42 = CGRectGetMinX(v88);
    v43 = [(CRBoxLayer *)self reticleLayer];
    [v43 bounds];
    v44 = CGRectGetMaxY(v89) + -5.25128205;
    v45 = [(CRBoxLayer *)self reticleLayer];
    [v45 bounds];
    v91.size.width = CGRectGetWidth(v90);
    v91.origin.x = v42;
    v91.origin.y = v44;
    v91.size.height = 5.25128205;
    CGPathAddRect(Mutable, 0, v91);

    v46 = [(CRBoxLayer *)self reticleLayer];
    [v46 bounds];
    v47 = CGRectGetMidX(v92) + -2.62564103;
    v48 = [(CRBoxLayer *)self reticleLayer];
    [v48 bounds];
    v94.origin.y = CGRectGetMaxY(v93) + -26.2564103;
    v94.origin.x = v47;
    v94.size.width = 5.25128205;
    v94.size.height = 21.0051282;
    CGPathAddRect(Mutable, 0, v94);

    v49 = [(CRBoxLayer *)self reticleLayer];
    [v49 bounds];
    v50 = CGRectGetMinX(v95);
    v51 = [(CRBoxLayer *)self reticleLayer];
    [v51 bounds];
    v52 = CGRectGetMinY(v96);
    v53 = [(CRBoxLayer *)self reticleLayer];
    [v53 bounds];
    v98.size.height = CGRectGetHeight(v97);
    v98.origin.x = v50;
    v98.origin.y = v52;
    v98.size.width = 5.25128205;
    CGPathAddRect(Mutable, 0, v98);

    v54 = [(CRBoxLayer *)self reticleLayer];
    [v54 bounds];
    v55 = CGRectGetMinX(v99) + 5.25128205;
    v56 = [(CRBoxLayer *)self reticleLayer];
    [v56 bounds];
    v101.origin.y = CGRectGetMidY(v100) + -2.62564103;
    v101.origin.x = v55;
    v101.size.width = 21.0051282;
    v101.size.height = 5.25128205;
    CGPathAddRect(Mutable, 0, v101);

    v57 = [(CRBoxLayer *)self reticleLayer];
    [v57 bounds];
    v58 = CGRectGetMaxX(v102) + -5.25128205;
    v59 = [(CRBoxLayer *)self reticleLayer];
    [v59 bounds];
    v60 = CGRectGetMinY(v103);
    v61 = [(CRBoxLayer *)self reticleLayer];
    [v61 bounds];
    v105.size.height = CGRectGetHeight(v104);
    v105.origin.x = v58;
    v105.origin.y = v60;
    v105.size.width = 5.25128205;
    CGPathAddRect(Mutable, 0, v105);

    v62 = [(CRBoxLayer *)self reticleLayer];
    [v62 bounds];
    v63 = CGRectGetMaxX(v106) + -26.2564103;
    v64 = [(CRBoxLayer *)self reticleLayer];
    [v64 bounds];
    v108.origin.y = CGRectGetMidY(v107) + -2.62564103;
    v108.origin.x = v63;
    v108.size.width = 21.0051282;
    v108.size.height = 5.25128205;
    CGPathAddRect(Mutable, 0, v108);

    v65 = [(CRBoxLayer *)self reticleLayer];
    [v65 setPath:Mutable];

    CGPathRelease(Mutable);
    v66 = [(CRBoxLayer *)self codeLayer];

    if (!v66)
    {
      v67 = [MEMORY[0x277CD9FC8] layer];
      [(CRBoxLayer *)self setCodeLayer:v67];

      v68 = [(CRBoxLayer *)self codeLayer];
      [(CRBoxLayer *)self addSublayer:v68];
    }

    [(CRBoxLayer *)self bounds];
    Width = CGRectGetWidth(v109);
    v70 = [(CRBoxLayer *)self codeLayer];
    [v70 setBounds:{0.0, 0.0, Width, 127.0}];

    v71 = [(CRBoxLayer *)self codeLayer];
    [v71 setAnchorPoint:{0.5, 0.41}];

    v72 = [(CRBoxLayer *)self codeLayer];
    [v72 setShouldRasterize:1];

    v73 = [(CRBoxLayer *)self codeLayer];
    [v73 setShadowColor:v8];

    v74 = [(CRBoxLayer *)self codeLayer];
    LODWORD(v75) = 1.0;
    [v74 setShadowOpacity:v75];

    v76 = [(CRBoxLayer *)self codeLayer];
    [v76 setShadowOffset:{v25, v26}];

    v77 = [(CRBoxLayer *)self codeLayer];
    [v77 setShadowRadius:26.2564103];

    v78 = [(CRBoxLayer *)self codeLayer];
    [v78 setFont:@"Scancardium"];

    v79 = [(CRBoxLayer *)self codeLayer];
    [v79 setFontSize:126.030769];

    v80 = [(CRBoxLayer *)self codeLayer];
    [v80 setAlignmentMode:@"center"];
  }
}

- (void)dealloc
{
  if ([(CRBoxLayer *)self customInit])
  {
    [(CRBoxLayer *)self removeObserver:self forKeyPath:@"hidden"];
  }

  v3.receiver = self;
  v3.super_class = CRBoxLayer;
  [(CRBoxLayer *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v12 = a3;
  v8 = *MEMORY[0x277CCA2F0];
  v9 = a5;
  v10 = [v9 objectForKey:v8];
  v11 = [v9 objectForKey:*MEMORY[0x277CCA300]];

  LOBYTE(v9) = [v10 isEqual:v11];
  if ((v9 & 1) == 0 && [v12 isEqualToString:@"hidden"])
  {
    if (([(CRBoxLayer *)self isHidden]& 1) != 0)
    {
      [(CRBoxLayer *)self animateConceal];
    }

    else
    {
      [(CRBoxLayer *)self animateReveal];
    }
  }
}

- (void)layoutSublayers
{
  [(CRBoxLayer *)self bounds];
  MidX = CGRectGetMidX(v10);
  [(CRBoxLayer *)self bounds];
  MidY = CGRectGetMidY(v11);
  v5 = [(CRBoxLayer *)self reticleLayer];
  [v5 setPosition:{MidX, MidY}];

  [(CRBoxLayer *)self bounds];
  v6 = CGRectGetMidX(v12);
  [(CRBoxLayer *)self bounds];
  v7 = CGRectGetMidY(v13);
  v8 = [(CRBoxLayer *)self codeLayer];
  [v8 setPosition:{v6, v7}];
}

- (void)positionForCodeBoxPoints:(id)a3
{
  v5 = 0;
  v38 = *MEMORY[0x277D85DE8];
  v6 = &v31;
  do
  {
    v7 = [a3 objectAtIndex:v5];
    [v7 CGPointValue];
    *(v6 - 1) = v8;
    *v6 = v9;

    ++v5;
    v6 += 2;
  }

  while (v5 != 4);
  v11 = v30;
  v10 = v31;
  v12 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v17 = v36;
  v16 = v37;
  v18 = (v30 + v36) * 0.5;
  v19 = (v31 + v37) * 0.5;
  v20 = (v32 + v34) * 0.5;
  v21 = (v33 + v35) * 0.5;
  if (v20 == v18)
  {
    v22 = dbl_24783F570[v21 > v19];
  }

  else
  {
    v22 = atan((v21 - v19) / (v20 - v18));
  }

  angle = v22;
  [(CRBoxLayer *)self bounds];
  Width = CGRectGetWidth(v39);
  memset(&v29, 0, sizeof(v29));
  CATransform3DMakeScale(&v29, v25 / Width * 195.0 / 185.0, v25 / Width * 195.0 / 185.0, 1.0);
  v27 = v29;
  CATransform3DRotate(&v28, &v27, angle, 0.0, 0.0, 1.0);
  v29 = v28;
  [(CRBoxLayer *)self opacity];
  v28 = v29;
  [(CRBoxLayer *)self animateToPosition:&v28 transform:1 opacity:(v11 + v12 + v14 + v17) * 0.25 type:(v10 + v13 + v15 + v16) * 0.25, v24];
}

- (void)animateReveal
{
  [(CRBoxLayer *)self position];
  v4 = v3;
  v6 = v5;
  [(CRBoxLayer *)self transform];
  [(CRBoxLayer *)self animateToPosition:&v7 transform:0 opacity:v4 type:v6, 1.0];
}

- (void)animateConceal
{
  [(CRBoxLayer *)self position];
  v4 = v3;
  v6 = v5;
  [(CRBoxLayer *)self transform];
  [(CRBoxLayer *)self animateToPosition:&v7 transform:2 opacity:v4 type:v6, 0.0];
}

- (void)animateToPosition:(CGPoint)a3 transform:(CATransform3D *)a4 opacity:(double)a5 type:(int64_t)a6
{
  y = a3.y;
  x = a3.x;
  [MEMORY[0x277CD9FF0] begin];
  [(CRBoxLayer *)self position];
  v14 = v13;
  v16 = v15;
  memset(&v87, 0, sizeof(v87));
  [(CRBoxLayer *)self transform];
  [(CRBoxLayer *)self opacity];
  v18 = v17;
  v19 = [(CRBoxLayer *)self animationKeys];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [(CRBoxLayer *)self presentationLayer];
    v22 = [v21 valueForKeyPath:@"position"];
    [v22 CGPointValue];
    v14 = v23;
    v16 = v24;

    v25 = [(CRBoxLayer *)self presentationLayer];
    v26 = [v25 valueForKeyPath:@"transform"];
    v27 = v26;
    if (v26)
    {
      [v26 CATransform3DValue];
    }

    else
    {
      memset(&v86, 0, sizeof(v86));
    }

    v87 = v86;

    v29 = [(CRBoxLayer *)self presentationLayer];
    v30 = [v29 valueForKeyPath:@"opacity"];
    [v30 doubleValue];
    v28 = v31;
  }

  else
  {
    v28 = v18;
  }

  v32 = [(CRBoxLayer *)self animationForKey:@"CRBoxLayerAnimationReveal"];

  v33 = [(CRBoxLayer *)self animationForKey:@"CRBoxLayerAnimationConceal"];
  v34 = v33 != 0;

  if (a6)
  {
    v35 = a6;
  }

  else
  {
    v35 = v34;
  }

  if (v32)
  {
    v36 = a6 == 1;
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = v35;
  }

  v86 = v87;
  v38 = NSStringFromSelector(a2);
  if (v37 == 2)
  {
    [(CRBoxLayer *)self demoSpeed];
    v50 = @"CRBoxLayerAnimationConceal";
    v39 = 0.7 / v54;
    goto LABEL_25;
  }

  if (v37 != 1)
  {
    v39 = 0.25;
    if (v37)
    {
LABEL_26:
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      goto LABEL_27;
    }

    if (!v32)
    {
      v40 = [MEMORY[0x277CBEAA8] date];
      v41 = animateToPosition_transform_opacity_type__sRevealStart;
      animateToPosition_transform_opacity_type__sRevealStart = v40;

      v42 = *&a4->m33;
      *&v85.m31 = *&a4->m31;
      *&v85.m33 = v42;
      v43 = *&a4->m43;
      *&v85.m41 = *&a4->m41;
      *&v85.m43 = v43;
      v44 = *&a4->m13;
      *&v85.m11 = *&a4->m11;
      *&v85.m13 = v44;
      v45 = *&a4->m23;
      *&v85.m21 = *&a4->m21;
      *&v85.m23 = v45;
      CATransform3DScale(&v86, &v85, 2.0, 2.0, 1.0);
      v16 = y;
      v14 = x;
    }

    [(CRBoxLayer *)self demoSpeed];
    v47 = 0.5 / v46;
    v48 = [MEMORY[0x277CBEAA8] date];
    [v48 timeIntervalSinceDate:animateToPosition_transform_opacity_type__sRevealStart];
    v39 = v47 - v49;

    v50 = @"CRBoxLayerAnimationReveal";
LABEL_25:

    v38 = v50;
    goto LABEL_26;
  }

  v51 = [(CRBoxLayer *)self isHidden];
  [(CRBoxLayer *)self demoSpeed];
  v53 = v52;

  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v38 = @"CRBoxLayerAnimationMove";
  if (v51)
  {
    goto LABEL_30;
  }

  v39 = 0.25 / v53;
LABEL_27:
  [(CRBoxLayer *)self removeAllAnimations];
  v55 = MEMORY[0x277CD9FF0];
  v79 = MEMORY[0x277D85DD0];
  v80 = 3221225472;
  v81 = __55__CRBoxLayer_animateToPosition_transform_opacity_type___block_invoke;
  v82 = &unk_278EAABE8;
  v83 = self;
  v38 = v38;
  v84 = v38;
  [v55 setCompletionBlock:&v79];
  v56 = MEMORY[0x277CD9FF0];
  v57 = [MEMORY[0x277CCABB0] numberWithDouble:{v39, v79, v80, v81, v82, v83}];
  [v56 setValue:v57 forKey:*MEMORY[0x277CDA908]];

  v58 = [MEMORY[0x277CBEB18] array];
  v59 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
  v60 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v14, v16}];
  [v59 setFromValue:v60];

  v61 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  [v59 setToValue:v61];

  [v58 addObject:v59];
  v62 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
  v85 = v86;
  v63 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v85];
  [v62 setFromValue:v63];

  v64 = *&a4->m33;
  *&v85.m31 = *&a4->m31;
  *&v85.m33 = v64;
  v65 = *&a4->m43;
  *&v85.m41 = *&a4->m41;
  *&v85.m43 = v65;
  v66 = *&a4->m13;
  *&v85.m11 = *&a4->m11;
  *&v85.m13 = v66;
  v67 = *&a4->m23;
  *&v85.m21 = *&a4->m21;
  *&v85.m23 = v67;
  v68 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v85];
  [v62 setToValue:v68];

  [v58 addObject:v62];
  v69 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  v70 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  [v69 setFromValue:v70];

  v71 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  [v69 setToValue:v71];

  [v58 addObject:v69];
  if (v37 == 2)
  {
    v72 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"hidden"];
    [v72 setValues:&unk_2859766F8];
    [v72 setKeyTimes:&unk_285976710];
    [v72 setCalculationMode:@"discrete"];
    [v58 addObject:v72];
  }

  v73 = [MEMORY[0x277CD9E00] animation];
  [v73 setAnimations:v58];
  [v73 setDuration:v39];
  [v73 setTimingFunction:0];
  [(CRBoxLayer *)self addAnimation:v73 forKey:v38];

LABEL_30:
  [(CRBoxLayer *)self setPosition:x, y];
  v74 = *&a4->m33;
  *&v85.m31 = *&a4->m31;
  *&v85.m33 = v74;
  v75 = *&a4->m43;
  *&v85.m41 = *&a4->m41;
  *&v85.m43 = v75;
  v76 = *&a4->m13;
  *&v85.m11 = *&a4->m11;
  *&v85.m13 = v76;
  v77 = *&a4->m23;
  *&v85.m21 = *&a4->m21;
  *&v85.m23 = v77;
  [(CRBoxLayer *)self setTransform:&v85];
  *&v78 = a5;
  [(CRBoxLayer *)self setOpacity:v78];
  [MEMORY[0x277CD9FF0] commit];
}

void __55__CRBoxLayer_animateToPosition_transform_opacity_type___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) animationKeys];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [*(a1 + 32) completionBlocks];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      v8 = MEMORY[0x277D85CD0];
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __55__CRBoxLayer_animateToPosition_transform_opacity_type___block_invoke_2;
          v11[3] = &unk_278EAABC0;
          v13 = v10;
          v12 = *(a1 + 40);
          dispatch_async(v8, v11);

          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    [*(a1 + 32) setCompletionBlocks:0];
  }
}

- (void)setString:(id)a3 mirrored:(BOOL)a4 inverted:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v9 = *(MEMORY[0x277CD9DE8] + 64);
  v10 = *(MEMORY[0x277CD9DE8] + 80);
  *&v24.m31 = v9;
  *&v24.m33 = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 96);
  v12 = *(MEMORY[0x277CD9DE8] + 112);
  *&v24.m41 = v11;
  *&v24.m43 = v12;
  v13 = *MEMORY[0x277CD9DE8];
  v14 = *(MEMORY[0x277CD9DE8] + 16);
  *&v24.m11 = *MEMORY[0x277CD9DE8];
  *&v24.m13 = v14;
  v15 = *(MEMORY[0x277CD9DE8] + 32);
  v16 = *(MEMORY[0x277CD9DE8] + 48);
  *&v24.m21 = v15;
  *&v24.m23 = v16;
  if (v5)
  {
    *&v23.m31 = v9;
    *&v23.m33 = v10;
    *&v23.m41 = v11;
    *&v23.m43 = v12;
    *&v23.m11 = v13;
    *&v23.m13 = v14;
    *&v23.m21 = v15;
    *&v23.m23 = v16;
    CATransform3DRotate(&v24, &v23, 3.14159265, 0.0, 0.0, 1.0);
  }

  if (v6)
  {
    v22 = v24;
    CATransform3DRotate(&v23, &v22, 3.14159265, 0.0, 1.0, 0.0);
    v24 = v23;
  }

  if ([v8 length] == 12)
  {
    v17 = 110.276923;
  }

  else
  {
    v17 = dbl_24783F750[[v8 length] == 10];
  }

  v18 = [(CRBoxLayer *)self codeLayer];
  [v18 setFontSize:v17];

  v21 = v24;
  v19 = [(CRBoxLayer *)self codeLayer];
  v23 = v21;
  [v19 setTransform:&v23];

  [MEMORY[0x277CD9FF0] commit];
  v20 = [(CRBoxLayer *)self codeLayer];
  [v20 setString:v8];
}

- (void)animatePulseColor:(id)a3
{
  v4 = MEMORY[0x277CD9FF0];
  v5 = a3;
  [v4 begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"shadowColor"];
  v7 = [(CRBoxLayer *)self shadowColor];
  v8 = [v5 CGColor];
  [(CRBoxLayer *)self demoSpeed];
  [v6 setDuration:0.5 / v9];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:{v8, v7, v8, v7, v8, v8, 0}];
  [v6 setValues:v10];

  [v6 setKeyTimes:&unk_285976728];
  [v6 setCalculationMode:*MEMORY[0x277CDA068]];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __32__CRBoxLayer_animatePulseColor___block_invoke;
  v17[3] = &unk_278EAABE8;
  v17[4] = self;
  v18 = @"CRBoxLayerAnimationPulseColor";
  [MEMORY[0x277CD9FF0] setCompletionBlock:v17];
  [(CRBoxLayer *)self addAnimation:v6 forKey:@"key"];
  v11 = [(CRBoxLayer *)self reticleLayer];
  [v11 addAnimation:v6 forKey:@"key"];

  v12 = [(CRBoxLayer *)self codeLayer];
  [v12 addAnimation:v6 forKey:@"key"];

  -[CRBoxLayer setShadowColor:](self, "setShadowColor:", [v5 CGColor]);
  v13 = [v5 CGColor];
  v14 = [(CRBoxLayer *)self reticleLayer];
  [v14 setShadowColor:v13];

  v15 = [v5 CGColor];
  v16 = [(CRBoxLayer *)self codeLayer];
  [v16 setShadowColor:v15];

  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __32__CRBoxLayer_animatePulseColor___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) completionBlocks];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = MEMORY[0x277D85CD0];
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __32__CRBoxLayer_animatePulseColor___block_invoke_2;
        v10[3] = &unk_278EAABC0;
        v12 = v8;
        v11 = *(a1 + 40);
        dispatch_async(v6, v10);

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) setCompletionBlocks:0];
}

- (void)addCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CRBoxLayer *)self animationKeys];

  if (v5)
  {
    v6 = [(CRBoxLayer *)self completionBlocks];

    if (!v6)
    {
      v7 = [MEMORY[0x277CBEB18] array];
      [(CRBoxLayer *)self setCompletionBlocks:v7];
    }

    v8 = [(CRBoxLayer *)self completionBlocks];
    v9 = MEMORY[0x24C1AAEF0](v4);
    [v8 addObject:v9];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__CRBoxLayer_addCompletionBlock___block_invoke;
    block[3] = &unk_278EAAC10;
    v11 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

@end