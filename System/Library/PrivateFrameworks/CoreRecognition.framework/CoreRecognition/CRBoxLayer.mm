@interface CRBoxLayer
+ (id)layer;
- (CRBoxLayer)init;
- (CRBoxLayer)initWithCodeFrameRatio:(double)ratio;
- (void)addCompletionBlock:(id)block;
- (void)animateConceal;
- (void)animatePulseColor:(id)color;
- (void)animateReveal;
- (void)animateToPosition:(CGPoint)position transform:(CATransform3D *)transform opacity:(double)opacity type:(int64_t)type;
- (void)dealloc;
- (void)layoutSublayers;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)positionForCodeBoxPoints:(id)points;
- (void)setFrameRatio:(double)ratio;
- (void)setString:(id)string mirrored:(BOOL)mirrored inverted:(BOOL)inverted;
@end

@implementation CRBoxLayer

+ (id)layer
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (CRBoxLayer)init
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"com.apple.CoreRecognition.RedeemerDemoMode"];
  v5 = 1.0;
  if (v4)
  {
    v5 = 0.25;
  }

  [(CRBoxLayer *)self setDemoSpeed:v5];

  return [(CRBoxLayer *)self initWithCodeFrameRatio:3.79710145];
}

- (CRBoxLayer)initWithCodeFrameRatio:(double)ratio
{
  v7.receiver = self;
  v7.super_class = CRBoxLayer;
  v4 = [(CAReplicatorLayer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(CRBoxLayer *)v4 setFrameRatio:ratio];
    v5->_customInit = 1;
    [(CRBoxLayer *)v5 addObserver:v5 forKeyPath:@"hidden" options:3 context:0];
  }

  return v5;
}

- (void)setFrameRatio:(double)ratio
{
  if (self->_frameRatio != ratio)
  {
    self->_frameRatio = ratio;
    [(CRBoxLayer *)self frameRatio];
    v6 = 971.487179 / v5 + 52.5128205;
    v7 = [CRColor colorWithWhite:1.0 alpha:0.5];
    cGColor = [v7 CGColor];

    [(CRBoxLayer *)self setBounds:0.0, 0.0, 1024.0, ceil(v6)];
    [(CRBoxLayer *)self setShadowColor:cGColor];
    [(CRBoxLayer *)self setHidden:1];
    [(CAReplicatorLayer *)self setInstanceCount:3];
    reticleLayer = [(CRBoxLayer *)self reticleLayer];

    if (!reticleLayer)
    {
      layer = [MEMORY[0x277CD9F90] layer];
      [(CRBoxLayer *)self setReticleLayer:layer];

      reticleLayer2 = [(CRBoxLayer *)self reticleLayer];
      [(CRBoxLayer *)self addSublayer:reticleLayer2];
    }

    [(CRBoxLayer *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    reticleLayer3 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer3 setBounds:{v13, v15, v17, v19}];

    reticleLayer4 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer4 setShouldRasterize:1];

    reticleLayer5 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer5 setShadowColor:cGColor];

    reticleLayer6 = [(CRBoxLayer *)self reticleLayer];
    LODWORD(v24) = 1.0;
    [reticleLayer6 setShadowOpacity:v24];

    v25 = *MEMORY[0x277CBF3A8];
    v26 = *(MEMORY[0x277CBF3A8] + 8);
    reticleLayer7 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer7 setShadowOffset:{v25, v26}];

    reticleLayer8 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer8 setShadowRadius:26.2564103];

    v29 = +[CRColor whiteColor];
    cGColor2 = [v29 CGColor];
    reticleLayer9 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer9 setFillColor:cGColor2];

    Mutable = CGPathCreateMutable();
    reticleLayer10 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer10 bounds];
    MinX = CGRectGetMinX(v81);
    reticleLayer11 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer11 bounds];
    MinY = CGRectGetMinY(v82);
    reticleLayer12 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer12 bounds];
    v84.size.width = CGRectGetWidth(v83);
    v84.origin.x = MinX;
    v84.origin.y = MinY;
    v84.size.height = 5.25128205;
    CGPathAddRect(Mutable, 0, v84);

    reticleLayer13 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer13 bounds];
    v39 = CGRectGetMidX(v85) + -2.62564103;
    reticleLayer14 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer14 bounds];
    v87.origin.y = CGRectGetMinY(v86) + 5.25128205;
    v87.origin.x = v39;
    v87.size.width = 5.25128205;
    v87.size.height = 21.0051282;
    CGPathAddRect(Mutable, 0, v87);

    reticleLayer15 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer15 bounds];
    v42 = CGRectGetMinX(v88);
    reticleLayer16 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer16 bounds];
    v44 = CGRectGetMaxY(v89) + -5.25128205;
    reticleLayer17 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer17 bounds];
    v91.size.width = CGRectGetWidth(v90);
    v91.origin.x = v42;
    v91.origin.y = v44;
    v91.size.height = 5.25128205;
    CGPathAddRect(Mutable, 0, v91);

    reticleLayer18 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer18 bounds];
    v47 = CGRectGetMidX(v92) + -2.62564103;
    reticleLayer19 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer19 bounds];
    v94.origin.y = CGRectGetMaxY(v93) + -26.2564103;
    v94.origin.x = v47;
    v94.size.width = 5.25128205;
    v94.size.height = 21.0051282;
    CGPathAddRect(Mutable, 0, v94);

    reticleLayer20 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer20 bounds];
    v50 = CGRectGetMinX(v95);
    reticleLayer21 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer21 bounds];
    v52 = CGRectGetMinY(v96);
    reticleLayer22 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer22 bounds];
    v98.size.height = CGRectGetHeight(v97);
    v98.origin.x = v50;
    v98.origin.y = v52;
    v98.size.width = 5.25128205;
    CGPathAddRect(Mutable, 0, v98);

    reticleLayer23 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer23 bounds];
    v55 = CGRectGetMinX(v99) + 5.25128205;
    reticleLayer24 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer24 bounds];
    v101.origin.y = CGRectGetMidY(v100) + -2.62564103;
    v101.origin.x = v55;
    v101.size.width = 21.0051282;
    v101.size.height = 5.25128205;
    CGPathAddRect(Mutable, 0, v101);

    reticleLayer25 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer25 bounds];
    v58 = CGRectGetMaxX(v102) + -5.25128205;
    reticleLayer26 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer26 bounds];
    v60 = CGRectGetMinY(v103);
    reticleLayer27 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer27 bounds];
    v105.size.height = CGRectGetHeight(v104);
    v105.origin.x = v58;
    v105.origin.y = v60;
    v105.size.width = 5.25128205;
    CGPathAddRect(Mutable, 0, v105);

    reticleLayer28 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer28 bounds];
    v63 = CGRectGetMaxX(v106) + -26.2564103;
    reticleLayer29 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer29 bounds];
    v108.origin.y = CGRectGetMidY(v107) + -2.62564103;
    v108.origin.x = v63;
    v108.size.width = 21.0051282;
    v108.size.height = 5.25128205;
    CGPathAddRect(Mutable, 0, v108);

    reticleLayer30 = [(CRBoxLayer *)self reticleLayer];
    [reticleLayer30 setPath:Mutable];

    CGPathRelease(Mutable);
    codeLayer = [(CRBoxLayer *)self codeLayer];

    if (!codeLayer)
    {
      layer2 = [MEMORY[0x277CD9FC8] layer];
      [(CRBoxLayer *)self setCodeLayer:layer2];

      codeLayer2 = [(CRBoxLayer *)self codeLayer];
      [(CRBoxLayer *)self addSublayer:codeLayer2];
    }

    [(CRBoxLayer *)self bounds];
    Width = CGRectGetWidth(v109);
    codeLayer3 = [(CRBoxLayer *)self codeLayer];
    [codeLayer3 setBounds:{0.0, 0.0, Width, 127.0}];

    codeLayer4 = [(CRBoxLayer *)self codeLayer];
    [codeLayer4 setAnchorPoint:{0.5, 0.41}];

    codeLayer5 = [(CRBoxLayer *)self codeLayer];
    [codeLayer5 setShouldRasterize:1];

    codeLayer6 = [(CRBoxLayer *)self codeLayer];
    [codeLayer6 setShadowColor:cGColor];

    codeLayer7 = [(CRBoxLayer *)self codeLayer];
    LODWORD(v75) = 1.0;
    [codeLayer7 setShadowOpacity:v75];

    codeLayer8 = [(CRBoxLayer *)self codeLayer];
    [codeLayer8 setShadowOffset:{v25, v26}];

    codeLayer9 = [(CRBoxLayer *)self codeLayer];
    [codeLayer9 setShadowRadius:26.2564103];

    codeLayer10 = [(CRBoxLayer *)self codeLayer];
    [codeLayer10 setFont:@"Scancardium"];

    codeLayer11 = [(CRBoxLayer *)self codeLayer];
    [codeLayer11 setFontSize:126.030769];

    codeLayer12 = [(CRBoxLayer *)self codeLayer];
    [codeLayer12 setAlignmentMode:@"center"];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v8 = *MEMORY[0x277CCA2F0];
  changeCopy = change;
  v10 = [changeCopy objectForKey:v8];
  v11 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];

  LOBYTE(changeCopy) = [v10 isEqual:v11];
  if ((changeCopy & 1) == 0 && [pathCopy isEqualToString:@"hidden"])
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
  reticleLayer = [(CRBoxLayer *)self reticleLayer];
  [reticleLayer setPosition:{MidX, MidY}];

  [(CRBoxLayer *)self bounds];
  v6 = CGRectGetMidX(v12);
  [(CRBoxLayer *)self bounds];
  v7 = CGRectGetMidY(v13);
  codeLayer = [(CRBoxLayer *)self codeLayer];
  [codeLayer setPosition:{v6, v7}];
}

- (void)positionForCodeBoxPoints:(id)points
{
  v5 = 0;
  v38 = *MEMORY[0x277D85DE8];
  v6 = &v31;
  do
  {
    v7 = [points objectAtIndex:v5];
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

- (void)animateToPosition:(CGPoint)position transform:(CATransform3D *)transform opacity:(double)opacity type:(int64_t)type
{
  y = position.y;
  x = position.x;
  [MEMORY[0x277CD9FF0] begin];
  [(CRBoxLayer *)self position];
  v14 = v13;
  v16 = v15;
  memset(&v87, 0, sizeof(v87));
  [(CRBoxLayer *)self transform];
  [(CRBoxLayer *)self opacity];
  v18 = v17;
  animationKeys = [(CRBoxLayer *)self animationKeys];
  v20 = [animationKeys count];

  if (v20)
  {
    presentationLayer = [(CRBoxLayer *)self presentationLayer];
    v22 = [presentationLayer valueForKeyPath:@"position"];
    [v22 CGPointValue];
    v14 = v23;
    v16 = v24;

    presentationLayer2 = [(CRBoxLayer *)self presentationLayer];
    v26 = [presentationLayer2 valueForKeyPath:@"transform"];
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

    presentationLayer3 = [(CRBoxLayer *)self presentationLayer];
    v30 = [presentationLayer3 valueForKeyPath:@"opacity"];
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

  if (type)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = v34;
  }

  if (v32)
  {
    v36 = type == 1;
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
    v37 = typeCopy;
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
      date = [MEMORY[0x277CBEAA8] date];
      v41 = animateToPosition_transform_opacity_type__sRevealStart;
      animateToPosition_transform_opacity_type__sRevealStart = date;

      v42 = *&transform->m33;
      *&v85.m31 = *&transform->m31;
      *&v85.m33 = v42;
      v43 = *&transform->m43;
      *&v85.m41 = *&transform->m41;
      *&v85.m43 = v43;
      v44 = *&transform->m13;
      *&v85.m11 = *&transform->m11;
      *&v85.m13 = v44;
      v45 = *&transform->m23;
      *&v85.m21 = *&transform->m21;
      *&v85.m23 = v45;
      CATransform3DScale(&v86, &v85, 2.0, 2.0, 1.0);
      v16 = y;
      v14 = x;
    }

    [(CRBoxLayer *)self demoSpeed];
    v47 = 0.5 / v46;
    date2 = [MEMORY[0x277CBEAA8] date];
    [date2 timeIntervalSinceDate:animateToPosition_transform_opacity_type__sRevealStart];
    v39 = v47 - v49;

    v50 = @"CRBoxLayerAnimationReveal";
LABEL_25:

    v38 = v50;
    goto LABEL_26;
  }

  isHidden = [(CRBoxLayer *)self isHidden];
  [(CRBoxLayer *)self demoSpeed];
  v53 = v52;

  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v38 = @"CRBoxLayerAnimationMove";
  if (isHidden)
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
  selfCopy = self;
  v38 = v38;
  v84 = v38;
  [v55 setCompletionBlock:&v79];
  v56 = MEMORY[0x277CD9FF0];
  v57 = [MEMORY[0x277CCABB0] numberWithDouble:{v39, v79, v80, v81, v82, selfCopy}];
  [v56 setValue:v57 forKey:*MEMORY[0x277CDA908]];

  array = [MEMORY[0x277CBEB18] array];
  v59 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
  v60 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v14, v16}];
  [v59 setFromValue:v60];

  v61 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  [v59 setToValue:v61];

  [array addObject:v59];
  v62 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
  v85 = v86;
  v63 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v85];
  [v62 setFromValue:v63];

  v64 = *&transform->m33;
  *&v85.m31 = *&transform->m31;
  *&v85.m33 = v64;
  v65 = *&transform->m43;
  *&v85.m41 = *&transform->m41;
  *&v85.m43 = v65;
  v66 = *&transform->m13;
  *&v85.m11 = *&transform->m11;
  *&v85.m13 = v66;
  v67 = *&transform->m23;
  *&v85.m21 = *&transform->m21;
  *&v85.m23 = v67;
  v68 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v85];
  [v62 setToValue:v68];

  [array addObject:v62];
  v69 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  v70 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  [v69 setFromValue:v70];

  v71 = [MEMORY[0x277CCABB0] numberWithDouble:opacity];
  [v69 setToValue:v71];

  [array addObject:v69];
  if (v37 == 2)
  {
    v72 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"hidden"];
    [v72 setValues:&unk_2859766F8];
    [v72 setKeyTimes:&unk_285976710];
    [v72 setCalculationMode:@"discrete"];
    [array addObject:v72];
  }

  animation = [MEMORY[0x277CD9E00] animation];
  [animation setAnimations:array];
  [animation setDuration:v39];
  [animation setTimingFunction:0];
  [(CRBoxLayer *)self addAnimation:animation forKey:v38];

LABEL_30:
  [(CRBoxLayer *)self setPosition:x, y];
  v74 = *&transform->m33;
  *&v85.m31 = *&transform->m31;
  *&v85.m33 = v74;
  v75 = *&transform->m43;
  *&v85.m41 = *&transform->m41;
  *&v85.m43 = v75;
  v76 = *&transform->m13;
  *&v85.m11 = *&transform->m11;
  *&v85.m13 = v76;
  v77 = *&transform->m23;
  *&v85.m21 = *&transform->m21;
  *&v85.m23 = v77;
  [(CRBoxLayer *)self setTransform:&v85];
  *&v78 = opacity;
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

- (void)setString:(id)string mirrored:(BOOL)mirrored inverted:(BOOL)inverted
{
  invertedCopy = inverted;
  mirroredCopy = mirrored;
  stringCopy = string;
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
  if (invertedCopy)
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

  if (mirroredCopy)
  {
    v22 = v24;
    CATransform3DRotate(&v23, &v22, 3.14159265, 0.0, 1.0, 0.0);
    v24 = v23;
  }

  if ([stringCopy length] == 12)
  {
    v17 = 110.276923;
  }

  else
  {
    v17 = dbl_24783F750[[stringCopy length] == 10];
  }

  codeLayer = [(CRBoxLayer *)self codeLayer];
  [codeLayer setFontSize:v17];

  v21 = v24;
  codeLayer2 = [(CRBoxLayer *)self codeLayer];
  v23 = v21;
  [codeLayer2 setTransform:&v23];

  [MEMORY[0x277CD9FF0] commit];
  codeLayer3 = [(CRBoxLayer *)self codeLayer];
  [codeLayer3 setString:stringCopy];
}

- (void)animatePulseColor:(id)color
{
  v4 = MEMORY[0x277CD9FF0];
  colorCopy = color;
  [v4 begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v6 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"shadowColor"];
  shadowColor = [(CRBoxLayer *)self shadowColor];
  cGColor = [colorCopy CGColor];
  [(CRBoxLayer *)self demoSpeed];
  [v6 setDuration:0.5 / v9];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:{cGColor, shadowColor, cGColor, shadowColor, cGColor, cGColor, 0}];
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
  reticleLayer = [(CRBoxLayer *)self reticleLayer];
  [reticleLayer addAnimation:v6 forKey:@"key"];

  codeLayer = [(CRBoxLayer *)self codeLayer];
  [codeLayer addAnimation:v6 forKey:@"key"];

  -[CRBoxLayer setShadowColor:](self, "setShadowColor:", [colorCopy CGColor]);
  cGColor2 = [colorCopy CGColor];
  reticleLayer2 = [(CRBoxLayer *)self reticleLayer];
  [reticleLayer2 setShadowColor:cGColor2];

  cGColor3 = [colorCopy CGColor];
  codeLayer2 = [(CRBoxLayer *)self codeLayer];
  [codeLayer2 setShadowColor:cGColor3];

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

- (void)addCompletionBlock:(id)block
{
  blockCopy = block;
  animationKeys = [(CRBoxLayer *)self animationKeys];

  if (animationKeys)
  {
    completionBlocks = [(CRBoxLayer *)self completionBlocks];

    if (!completionBlocks)
    {
      array = [MEMORY[0x277CBEB18] array];
      [(CRBoxLayer *)self setCompletionBlocks:array];
    }

    completionBlocks2 = [(CRBoxLayer *)self completionBlocks];
    v9 = MEMORY[0x24C1AAEF0](blockCopy);
    [completionBlocks2 addObject:v9];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__CRBoxLayer_addCompletionBlock___block_invoke;
    block[3] = &unk_278EAAC10;
    v11 = blockCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

@end