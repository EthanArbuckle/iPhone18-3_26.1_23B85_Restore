@interface JFXEffectEditingUtilities
+ (BOOL)canEditTextForEffect:(id)effect;
+ (BOOL)isFaceTrackingDataAvailable;
+ (BOOL)makeOverlayTrackedMaintainingAppearance:(id)appearance atTime:(id *)time newTrackingType:(int64_t)type arMetadata:(id)metadata playableInterfaceOrientation:(int64_t)orientation;
+ (BOOL)shouldAutoEditTextForEffect:(id)effect;
+ (BOOL)shouldRenderTextWithMotionWhileEditingTextForEffectID:(id)d;
+ (CGPoint)JFX_closeButtonInsetForEffect:(id)effect viewBounds:(CGRect)bounds;
+ (CGPoint)JFX_convertPoint:(CGPoint)point fromSize:(CGSize)size toSize:(CGSize)toSize invertY:(BOOL)y;
+ (CGPoint)nextNormalizedInsertionPointForOverlay:(id)overlay scaleRelativeToCenterSquare:(double)square atTime:(id *)time applyTracking:(BOOL)tracking withARMetadata:(id)metadata transformAnimation:(id)animation playableMediaContentMode:(int)mode playableInterfaceOrientation:(int64_t)self0;
+ (CGPoint)removeButtonPositionForEffect:(id)effect atTime:(id *)time atPosterFrameRelativeToBounds:(CGRect)bounds viewCorrectionTransform:(CGAffineTransform *)transform;
+ (CGPoint)spacingBetweenCenterPointOfEffect:(id)effect point:(CGPoint)point relativeToBounds:(CGRect)bounds atTime:(id *)time;
+ (CGRect)JFX_compositionBounds;
+ (CGRect)JFX_currentFaceRectRelativeToBounds:(CGRect)bounds atTime:(id *)time faceAnchor:(id)anchor transformAnimation:(id)animation playableMediaContentMode:(int)mode playableInterfaceOrientation:(int64_t)orientation playableAspectRatio:(int64_t)ratio playableAspectRatioPreservationMode:(int64_t)self0;
+ (CGRect)JFX_rectAtNormalizedPointinCenteredSquareInFaceRect:(CGPoint)rect faceAnchor:(id)anchor atTime:(id *)time scaleRelativeToCenterSquare:(double)square relativeToBounds:(CGRect)bounds transformAnimation:(id)animation playableMediaContentMode:(int)mode playableInterfaceOrientation:(int64_t)self0 playableAspectRatio:(int64_t)self1 playableAspectRatioPreservationMode:(int64_t)self2;
+ (CGRect)currentFaceRectRelativeToBounds:(CGRect)bounds atTime:(id *)time transformAnimation:(id)animation playableMediaContentMode:(int)mode playableInterfaceOrientation:(int64_t)orientation playableAspectRatio:(int64_t)ratio playableAspectRatioPreservationMode:(int64_t)preservationMode;
+ (id)JFX_hitTestOverlays:(id)overlays atNormalizedPoint:(CGPoint)point atTime:(id *)time forcePosterFrame:(BOOL)frame adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize;
+ (id)hitTestOverlays:(id)overlays atPoint:(CGPoint)point relativeToBounds:(CGRect)bounds atTime:(id *)time adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize;
+ (id)hitTestOverlaysAtPosterFrame:(id)frame atNormalizedPoint:(CGPoint)point atTime:(id *)time adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize;
+ (id)hitTestOverlaysAtPosterFrame:(id)frame atPoint:(CGPoint)point relativeToBounds:(CGRect)bounds atTime:(id *)time adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize;
+ (id)newTextEditingPropertiesForEffect:(id)effect relativeTo:(CGRect)to atTime:(id *)time withNewText:(id)text moveBeforeScalingToAvoidKeyboard:(BOOL)keyboard;
+ (id)normalizedInsertionPoints;
+ (id)textForEffect:(id)effect;
+ (id)trackedNormalizedInsertionPoints;
+ (int64_t)trackingTypeForOverlayPointIntersectionWithFaceRect:(CGPoint)rect atTime:(id *)time relativeTo:(CGRect)to defaultTrackingType:(int64_t)type faceAnchor:(id)anchor transformAnimation:(id)animation playableMediaContentMode:(int)mode playableInterfaceOrientation:(int64_t)self0 playableAspectRatio:(int64_t)self1 playableAspectRatioPreservationMode:(int64_t)self2;
+ (unint64_t)JFX_bestTrackedInsertionPointIndexForOverlay:(id)overlay atTime:(id *)time insertionPoints:(id)points startingIndex:(unint64_t)index visibilityThreshold:(double)threshold scaleRelativeToCenterSquare:(double)square withARMetadata:(id)metadata transformAnimation:(id)self0 playableMediaContentMode:(int)self1 playableInterfaceOrientation:(int64_t)self2;
+ (unint64_t)maximumTextLengthForEffect:(id)effect;
+ (unint64_t)nextInsertionPointIndex;
+ (void)JFX_ApplyTextFlipIfNeeded:(id)needed transform:(CGAffineTransform *)transform;
+ (void)JFX_setTextRenderingEnabledForEffect:(id)effect value:(BOOL)value;
+ (void)addTransformToEffect:(id)effect transform:(CGAffineTransform *)transform relativeToBounds:(CGRect)bounds time:(id *)time restrictToBounds:(BOOL)toBounds;
+ (void)applyCameraTrackingTransformToOverlay:(id)overlay withARMetadata:(id)metadata playableInterfaceOrientation:(int64_t)orientation;
+ (void)beginTextEditingForEffect:(id)effect;
+ (void)configureOverlayForInsertion:(id)insertion atNormalizedPoint:(CGPoint)point atTime:(id *)time isPositionRelativeToCenterSquare:(BOOL)square isPositionRelativeToFace:(BOOL)face scaleRelativeToCenterSquare:(double)centerSquare rotationAngle:(double)angle applyTracking:(BOOL)self0 autoDetectTrackingType:(BOOL)self1 withARMetadata:(id)self2 previewViewCorrectionTransform:(CGAffineTransform *)self3 transformAnimation:(id)self4 playableMediaContentMode:(int)self5 playableInterfaceOrientation:(int64_t)self6 playableAspectRatio:(int64_t)self7 playableAspectRatioPreservationMode:(int64_t)self8;
+ (void)configureOverlayForInsertion:(id)insertion inRect:(CGRect)rect atTime:(id *)time rotationAngle:(double)angle applyTracking:(BOOL)tracking autoDetectTrackingType:(BOOL)type withARMetadata:(id)metadata previewViewCorrectionTransform:(CGAffineTransform *)self0 transformAnimation:(id)self1 playableMediaContentMode:(int)self2 playableInterfaceOrientation:(int64_t)self3 playableAspectRatio:(int64_t)self4 playableAspectRatioPreservationMode:(int64_t)self5;
+ (void)disableAnimationForEffects:(id)effects;
+ (void)enableAnimationForEffects:(id)effects animationStartTime:(id *)time;
+ (void)endTextEditingForEffect:(id)effect;
+ (void)setInsertionPointIndex:(unint64_t)index;
+ (void)suspendOverlayTrackingMaintainingAppearance:(id)appearance forViewBounds:(CGRect)bounds atTime:(id *)time arMetadata:(id)metadata playableInterfaceOrientation:(int64_t)orientation;
+ (void)updateEffectText:(id)text newText:(id)newText;
+ (void)updateEffectToDefaultTextIfEmpty:(id)empty;
@end

@implementation JFXEffectEditingUtilities

+ (id)normalizedInsertionPoints
{
  if (normalizedInsertionPoints_onceToken != -1)
  {
    +[JFXEffectEditingUtilities normalizedInsertionPoints];
  }

  v3 = normalizedInsertionPoints_s_normalizedInsertionPoints;

  return v3;
}

void __54__JFXEffectEditingUtilities_normalizedInsertionPoints__block_invoke()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.6, 0.4}];
  v6[0] = v0;
  v1 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.4, 0.55}];
  v6[1] = v1;
  v2 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.4, 0.4}];
  v6[2] = v2;
  v3 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.6, 0.55}];
  v6[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v5 = normalizedInsertionPoints_s_normalizedInsertionPoints;
  normalizedInsertionPoints_s_normalizedInsertionPoints = v4;
}

+ (id)trackedNormalizedInsertionPoints
{
  if (trackedNormalizedInsertionPoints_onceToken != -1)
  {
    +[JFXEffectEditingUtilities trackedNormalizedInsertionPoints];
  }

  v3 = trackedNormalizedInsertionPoints_s_trackedNormalizedInsertionPoints;

  return v3;
}

void __61__JFXEffectEditingUtilities_trackedNormalizedInsertionPoints__block_invoke()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.05, -0.05}];
  v6[0] = v0;
  v1 = [MEMORY[0x277CCAE60] valueWithCGPoint:{-0.05, 1.05}];
  v6[1] = v1;
  v2 = [MEMORY[0x277CCAE60] valueWithCGPoint:{-0.05, -0.05}];
  v6[2] = v2;
  v3 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.05, 1.05}];
  v6[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v5 = trackedNormalizedInsertionPoints_s_trackedNormalizedInsertionPoints;
  trackedNormalizedInsertionPoints_s_trackedNormalizedInsertionPoints = v4;
}

+ (void)setInsertionPointIndex:(unint64_t)index
{
  s_insertionPointIndex = index;
  normalizedInsertionPoints = [self normalizedInsertionPoints];
  v5 = [normalizedInsertionPoints count];

  if (v5 <= index)
  {
    s_insertionPointIndex = 0;
  }
}

+ (unint64_t)nextInsertionPointIndex
{
  v2 = s_insertionPointIndex++;
  v3 = s_insertionPointIndex;
  normalizedInsertionPoints = [self normalizedInsertionPoints];
  v5 = [normalizedInsertionPoints count];

  if (v3 >= v5)
  {
    s_insertionPointIndex = 0;
  }

  return v2;
}

+ (CGPoint)nextNormalizedInsertionPointForOverlay:(id)overlay scaleRelativeToCenterSquare:(double)square atTime:(id *)time applyTracking:(BOOL)tracking withARMetadata:(id)metadata transformAnimation:(id)animation playableMediaContentMode:(int)mode playableInterfaceOrientation:(int64_t)self0
{
  trackingCopy = tracking;
  overlayCopy = overlay;
  metadataCopy = metadata;
  animationCopy = animation;
  if (overlayCopy)
  {
    nextInsertionPointIndex = [self nextInsertionPointIndex];
    faceAnchor = [metadataCopy faceAnchor];

    if (trackingCopy && faceAnchor)
    {
      trackedNormalizedInsertionPoints = [self trackedNormalizedInsertionPoints];
      v31 = *&time->var0;
      var3 = time->var3;
      LODWORD(v30) = mode;
      nextInsertionPointIndex = [self JFX_bestTrackedInsertionPointIndexForOverlay:overlayCopy atTime:&v31 insertionPoints:trackedNormalizedInsertionPoints startingIndex:nextInsertionPointIndex visibilityThreshold:metadataCopy scaleRelativeToCenterSquare:animationCopy withARMetadata:0.4 transformAnimation:square playableMediaContentMode:v30 playableInterfaceOrientation:orientation];
      [self setInsertionPointIndex:nextInsertionPointIndex + 1];
    }

    else
    {
      trackedNormalizedInsertionPoints = [self normalizedInsertionPoints];
    }

    v25 = [trackedNormalizedInsertionPoints objectAtIndexedSubscript:nextInsertionPointIndex];
    [v25 CGPointValue];
    v23 = v26;
    v24 = v27;
  }

  else
  {
    v23 = *MEMORY[0x277CBF348];
    v24 = *(MEMORY[0x277CBF348] + 8);
  }

  v28 = v23;
  v29 = v24;
  result.y = v29;
  result.x = v28;
  return result;
}

+ (unint64_t)JFX_bestTrackedInsertionPointIndexForOverlay:(id)overlay atTime:(id *)time insertionPoints:(id)points startingIndex:(unint64_t)index visibilityThreshold:(double)threshold scaleRelativeToCenterSquare:(double)square withARMetadata:(id)metadata transformAnimation:(id)self0 playableMediaContentMode:(int)self1 playableInterfaceOrientation:(int64_t)self2
{
  overlayCopy = overlay;
  pointsCopy = points;
  metadataCopy = metadata;
  animationCopy = animation;
  faceAnchor = [metadataCopy faceAnchor];

  if (faceAnchor)
  {
    [self JFX_compositionBounds];
    v53 = v23;
    v54 = v22;
    v51 = v25;
    v52 = v24;
    v26 = [pointsCopy count];
    if (v26)
    {
      v27 = v26;
      selfCopy = self;
      v28 = 0.0;
      v29 = v26;
      indexCopy = index;
      while (1)
      {
        v58 = v28;
        v31 = pointsCopy;
        v32 = [pointsCopy objectAtIndexedSubscript:indexCopy];
        [v32 CGPointValue];
        v34 = v33;
        v36 = v35;

        faceAnchor2 = [metadataCopy faceAnchor];
        playableAspectRatio = [overlayCopy playableAspectRatio];
        playableAspectRatioPreservationMode = [overlayCopy playableAspectRatioPreservationMode];
        v59 = *&time->var0;
        var3 = time->var3;
        [selfCopy JFX_rectAtNormalizedPointinCenteredSquareInFaceRect:faceAnchor2 faceAnchor:&v59 atTime:animationCopy scaleRelativeToCenterSquare:mode relativeToBounds:orientation transformAnimation:playableAspectRatio playableMediaContentMode:v34 playableInterfaceOrientation:v36 playableAspectRatio:square playableAspectRatioPreservationMode:{v54, v53, v52, v51, playableAspectRatioPreservationMode}];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;

        v48 = CGRectPercentOfRectThatIntersectsRect(v41, v43, v45, v47, v54, v53, v52, v51);
        if (v48 > threshold)
        {
          break;
        }

        v28 = v58;
        if (v48 > v58)
        {
          v28 = v48;
          index = indexCopy;
        }

        if (indexCopy + 1 < v27)
        {
          ++indexCopy;
        }

        else
        {
          indexCopy = 0;
        }

        --v29;
        pointsCopy = v31;
        if (!v29)
        {
          goto LABEL_13;
        }
      }

      index = indexCopy;
      pointsCopy = v31;
    }
  }

LABEL_13:

  return index;
}

+ (CGRect)JFX_rectAtNormalizedPointinCenteredSquareInFaceRect:(CGPoint)rect faceAnchor:(id)anchor atTime:(id *)time scaleRelativeToCenterSquare:(double)square relativeToBounds:(CGRect)bounds transformAnimation:(id)animation playableMediaContentMode:(int)mode playableInterfaceOrientation:(int64_t)self0 playableAspectRatio:(int64_t)self1 playableAspectRatioPreservationMode:(int64_t)self2
{
  x = rect.x;
  v26 = *time;
  [self JFX_currentFaceRectRelativeToBounds:&v26 atTime:anchor faceAnchor:animation transformAnimation:*&mode playableMediaContentMode:orientation playableInterfaceOrientation:ratio playableAspectRatio:bounds.origin.x playableAspectRatioPreservationMode:{bounds.origin.y, bounds.size.width, bounds.size.height, preservationMode}];
  v17 = v16;
  v19 = v18;
  if (v14 > v15)
  {
    x = (x + (v14 / v15 + -1.0) * 0.5) / (v14 / v15);
  }

  v20 = fmin(v14, v15) * square;
  v21 = v17 + CGRectMakeWithSizeAndCenterPoint(v20, v20, v14 * x);
  v25 = v19 + v24;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v25;
  result.origin.x = v21;
  return result;
}

+ (void)configureOverlayForInsertion:(id)insertion atNormalizedPoint:(CGPoint)point atTime:(id *)time isPositionRelativeToCenterSquare:(BOOL)square isPositionRelativeToFace:(BOOL)face scaleRelativeToCenterSquare:(double)centerSquare rotationAngle:(double)angle applyTracking:(BOOL)self0 autoDetectTrackingType:(BOOL)self1 withARMetadata:(id)self2 previewViewCorrectionTransform:(CGAffineTransform *)self3 transformAnimation:(id)self4 playableMediaContentMode:(int)self5 playableInterfaceOrientation:(int64_t)self6 playableAspectRatio:(int64_t)self7 playableAspectRatioPreservationMode:(int64_t)self8
{
  typeCopy = type;
  trackingCopy = tracking;
  faceCopy = face;
  y = point.y;
  x = point.x;
  insertionCopy = insertion;
  metadataCopy = metadata;
  animationCopy = animation;
  if (insertionCopy)
  {
    v64 = faceCopy;
    transformCopy2 = transform;
    [insertionCopy setPlayableAspectRatio:ratio];
    preservationModeCopy2 = preservationMode;
    [insertionCopy setPlayableAspectRatioPreservationMode:preservationMode];
    [insertionCopy setTransformAnimation:animationCopy];
    v32 = multiplierForAspectRatio(ratio);
    transformAnimation = [insertionCopy transformAnimation];
    [transformAnimation setAspectRatio:v32];

    [self JFX_compositionBounds];
    v37 = v36;
    v39 = v38;
    v40 = v34;
    v41 = v35;
    if (!square)
    {
      if (v34 <= v35)
      {
        if (v35 > v34)
        {
          y = y * (v35 / v34) + (v35 / v34 + -1.0) * -0.5;
        }
      }

      else
      {
        x = x * (v34 / v35) + (v34 / v35 + -1.0) * -0.5;
      }
    }

    faceAnchor = [metadataCopy faceAnchor];

    if (trackingCopy && faceAnchor && v64)
    {
      v43 = objc_opt_class();
      faceAnchor2 = [metadataCopy faceAnchor];
      v66 = *&time->var0;
      *&v67 = time->var3;
      v45 = v43;
      modeCopy2 = mode;
      [v45 JFX_rectAtNormalizedPointinCenteredSquareInFaceRect:faceAnchor2 faceAnchor:&v66 atTime:x scaleRelativeToCenterSquare:y relativeToBounds:centerSquare transformAnimation:v37 playableMediaContentMode:v39 playableInterfaceOrientation:v40 playableAspectRatio:v41 playableAspectRatioPreservationMode:preservationMode];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      preservationModeCopy2 = preservationMode;
      transformCopy2 = transform;
    }

    else
    {
      [insertionCopy playableRectInOutputSize:{v40, v41}];
      v57 = fmin(v55, v56) * centerSquare;
      if (v40 > v41)
      {
        x = ((v40 / v41 + -1.0) * 0.5 + x) / (v40 / v41);
      }

      modeCopy2 = mode;
      v48 = CGRectMakeWithSizeAndCenterPoint(v57, v57, v40 * x);
      v50 = v58;
      v52 = v59;
      v54 = v60;
    }

    v61 = *&time->var0;
    var3 = time->var3;
    v62 = *&transformCopy2->c;
    v66 = *&transformCopy2->a;
    v67 = v62;
    v68 = *&transformCopy2->tx;
    v69 = v61;
    LODWORD(v63) = modeCopy2;
    [self configureOverlayForInsertion:insertionCopy inRect:&v69 atTime:trackingCopy rotationAngle:typeCopy applyTracking:metadataCopy autoDetectTrackingType:&v66 withARMetadata:v48 previewViewCorrectionTransform:v50 transformAnimation:v52 playableMediaContentMode:v54 playableInterfaceOrientation:angle playableAspectRatio:animationCopy playableAspectRatioPreservationMode:{v63, orientation, ratio, preservationModeCopy2}];
  }
}

+ (void)configureOverlayForInsertion:(id)insertion inRect:(CGRect)rect atTime:(id *)time rotationAngle:(double)angle applyTracking:(BOOL)tracking autoDetectTrackingType:(BOOL)type withARMetadata:(id)metadata previewViewCorrectionTransform:(CGAffineTransform *)self0 transformAnimation:(id)self1 playableMediaContentMode:(int)self2 playableInterfaceOrientation:(int64_t)self3 playableAspectRatio:(int64_t)self4 playableAspectRatioPreservationMode:(int64_t)self5
{
  typeCopy = type;
  trackingCopy = tracking;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  insertionCopy = insertion;
  metadataCopy = metadata;
  animationCopy = animation;
  if (insertionCopy)
  {
    v56 = typeCopy;
    v58 = x;
    [insertionCopy setTransformAnimation:animationCopy];
    v29 = multiplierForAspectRatio(ratio);
    transformAnimation = [insertionCopy transformAnimation];
    [transformAnimation setAspectRatio:v29];

    [self JFX_compositionBounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [insertionCopy setRenderSize:{v35, v37}];
    [insertionCopy setPlayableAspectRatio:ratio];
    [insertionCopy setPlayableAspectRatioPreservationMode:preservationMode];
    [insertionCopy enablePresentationState:1];
    renderEffect = [insertionCopy renderEffect];
    v62 = *kDefaultEffectPreviewAnimationRange;
    [renderEffect setEffectRange:&v62];

    v40 = *(MEMORY[0x277CBF2C0] + 16);
    *&v62.a = *MEMORY[0x277CBF2C0];
    *&v62.c = v40;
    *&v62.tx = *(MEMORY[0x277CBF2C0] + 32);
    if (angle != 0.0)
    {
      CGAffineTransformMakeRotation(&v62, angle);
    }

    v41 = *&transform->c;
    *&v61.a = *&transform->a;
    *&v61.c = v41;
    *&v61.tx = *&transform->tx;
    if (!CGAffineTransformIsIdentity(&v61))
    {
      t1 = v62;
      v42 = *&transform->c;
      *&t2.a = *&transform->a;
      *&t2.c = v42;
      *&t2.tx = *&transform->tx;
      CGAffineTransformConcat(&v61, &t1, &t2);
      v62 = v61;
    }

    v61 = v62;
    v43 = v58;
    if (!CGAffineTransformIsIdentity(&v61))
    {
      v61 = v62;
      *&t1.a = *&time->var0;
      *&t1.c = time->var3;
      [self addTransformToEffect:insertionCopy transform:&v61 relativeToBounds:&t1 time:0 restrictToBounds:{v32, v34, v36, v38}];
    }

    *&v61.a = *&time->var0;
    *&v61.c = time->var3;
    [insertionCopy applyScaleToFitFrame:&v61 withComponentTime:1 relativeRect:v58 restrictToBounds:{y, width, height, v32, v34, v36, v38}];
    faceAnchor = [metadataCopy faceAnchor];

    if (trackingCopy && faceAnchor)
    {
      if (v56)
      {
        CenterPoint = CGRectGetCenterPoint(v58, y, width, height);
        v57 = v34;
        v46 = v32;
        v47 = y;
        v48 = width;
        v49 = height;
        v51 = v50;
        faceAnchor2 = [metadataCopy faceAnchor];
        *&v61.a = *&time->var0;
        *&v61.c = time->var3;
        v53 = CenterPoint;
        v54 = v51;
        height = v49;
        width = v48;
        y = v47;
        v32 = v46;
        v34 = v57;
        v43 = v58;
        v55 = [self trackingTypeForOverlayPointIntersectionWithFaceRect:&v61 atTime:2 relativeTo:faceAnchor2 defaultTrackingType:animationCopy faceAnchor:mode transformAnimation:orientation playableMediaContentMode:v53 playableInterfaceOrientation:v54 playableAspectRatio:v32 playableAspectRatioPreservationMode:{v57, v36, v38, ratio, preservationMode}];
      }

      else
      {
        v55 = 2;
      }

      *&v61.a = *&time->var0;
      *&v61.c = time->var3;
      [self makeOverlayTrackedMaintainingAppearance:insertionCopy atTime:&v61 newTrackingType:v55 arMetadata:metadataCopy playableInterfaceOrientation:orientation];
      *&v61.a = *&time->var0;
      *&v61.c = time->var3;
      [insertionCopy applyScaleToFitFrame:&v61 withComponentTime:1 relativeRect:v43 restrictToBounds:{y, width, height, v32, v34, v36, v38}];
    }
  }
}

+ (id)hitTestOverlays:(id)overlays atPoint:(CGPoint)point relativeToBounds:(CGRect)bounds atTime:(id *)time adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize
{
  v10 = *time;
  v8 = [self JFX_hitTestOverlays:overlays atNormalizedPoint:&v10 atTime:0 forcePosterFrame:size adjustForMinimumSize:point.x / bounds.size.width normalizedMinimumSize:{point.y / bounds.size.height, minimumSize.var0, minimumSize.var1}];

  return v8;
}

+ (id)hitTestOverlaysAtPosterFrame:(id)frame atPoint:(CGPoint)point relativeToBounds:(CGRect)bounds atTime:(id *)time adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize
{
  v10 = *time;
  v8 = [self JFX_hitTestOverlays:frame atNormalizedPoint:&v10 atTime:1 forcePosterFrame:size adjustForMinimumSize:point.x / bounds.size.width normalizedMinimumSize:{point.y / bounds.size.height, minimumSize.var0, minimumSize.var1}];

  return v8;
}

+ (id)hitTestOverlaysAtPosterFrame:(id)frame atNormalizedPoint:(CGPoint)point atTime:(id *)time adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize
{
  v9 = *time;
  v7 = [self JFX_hitTestOverlays:frame atNormalizedPoint:&v9 atTime:1 forcePosterFrame:size adjustForMinimumSize:point.x normalizedMinimumSize:{point.y, minimumSize.var0, minimumSize.var1}];

  return v7;
}

+ (id)JFX_hitTestOverlays:(id)overlays atNormalizedPoint:(CGPoint)point atTime:(id *)time forcePosterFrame:(BOOL)frame adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize
{
  var1 = minimumSize.var1;
  var0 = minimumSize.var0;
  sizeCopy = size;
  frameCopy = frame;
  y = point.y;
  x = point.x;
  v36 = *MEMORY[0x277D85DE8];
  overlaysCopy = overlays;
  if ([overlaysCopy count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    reverseObjectEnumerator = [overlaysCopy reverseObjectEnumerator];
    v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          renderEffect = [v21 renderEffect];
          [renderEffect outputSize];
          v24 = v23;
          v26 = v25;

          v29 = *&time->var0;
          var3 = time->var3;
          if ([v21 hitTestPoint:&v29 atTime:frameCopy forcePosterFrame:1 relativeTo:sizeCopy basisOrigin:x * v24 adjustForMinimumSize:y * v26 normalizedMinimumSize:{0.0, 0.0, v24, v26, var0, var1}])
          {
            v27 = v21;
            goto LABEL_12;
          }
        }

        v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
LABEL_12:
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (void)suspendOverlayTrackingMaintainingAppearance:(id)appearance forViewBounds:(CGRect)bounds atTime:(id *)time arMetadata:(id)metadata playableInterfaceOrientation:(int64_t)orientation
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  appearanceCopy = appearance;
  metadataCopy = metadata;
  if ([appearanceCopy isCurrentlyTracking])
  {
    trackingProps = [appearanceCopy trackingProps];
    currentTrackingType = [trackingProps currentTrackingType];

    if (currentTrackingType == 1)
    {
      faceAnchor = [metadataCopy faceAnchor];
      [JFXFaceTrackingUtilities rollAngleFromFaceAnchor:faceAnchor forInterfaceOrientation:orientation];

      renderEffect = [appearanceCopy renderEffect];
      origin = [renderEffect origin];

      renderEffect2 = [appearanceCopy renderEffect];
      [renderEffect2 outputSize];

      v22 = CGRectMakeWithSize();
      v60 = *&time->var0;
      *&v61 = time->var3;
      [appearanceCopy effectCenterAtTime:&v60 forcePosterFrame:1 includeTransformAnimation:0 includePlayableAspectScale:0 relativeTo:origin basisOrigin:v22];
      v49 = v24;
      v50 = v23;
      faceTrackingTransform = [appearanceCopy faceTrackingTransform];
      v26 = JFXMakeFaceTrackedEffectTransformFaceCamera(faceTrackingTransform);
      [appearanceCopy setFaceTrackingTransform:v26];

      v60 = *&time->var0;
      *&v61 = time->var3;
      [appearanceCopy imageFrameAtTime:&v60 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{x, y, width, height}];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      [appearanceCopy setFaceTrackingTransform:faceTrackingTransform];
      [appearanceCopy suspendTracking];
      v60 = *&time->var0;
      *&v61 = time->var3;
      [appearanceCopy applyScaleToFitFrame:&v60 withComponentTime:v28 relativeRect:{v30, v32, v34, x, y, width, height}];
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      if (appearanceCopy)
      {
        [appearanceCopy topLevelTransform];
      }

      vars0 = v62;
      __asm { FMOV            V0.2D, #1.0 }

      pv_simd_matrix_rotate();
      v64 = v56;
      v65 = v57;
      v67 = v59;
      v60 = v52;
      v61 = v53;
      *&v40 = v50;
      *(&v40 + 1) = v49;
      v62 = v54;
      v63 = v55;
      v66 = v40;
      v58 = v40;
      [appearanceCopy setTopLevelTransform:&v52];
    }

    else
    {
      v60 = *&time->var0;
      *&v61 = time->var3;
      [appearanceCopy imageFrameAtTime:&v60 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{x, y, width, height}];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      [appearanceCopy suspendTracking];
      v60 = *&time->var0;
      *&v61 = time->var3;
      [appearanceCopy applyScaleToFitFrame:&v60 withComponentTime:v42 relativeRect:{v44, v46, v48, x, y, width, height}];
    }
  }
}

+ (BOOL)makeOverlayTrackedMaintainingAppearance:(id)appearance atTime:(id *)time newTrackingType:(int64_t)type arMetadata:(id)metadata playableInterfaceOrientation:(int64_t)orientation
{
  appearanceCopy = appearance;
  metadataCopy = metadata;
  trackingProps = [appearanceCopy trackingProps];
  currentTrackingType = [trackingProps currentTrackingType];

  if (type)
  {
    _ZF = currentTrackingType == type;
  }

  else
  {
    _ZF = 1;
  }

  v17 = !_ZF;
  if (!_ZF)
  {
    [self JFX_compositionBounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    faceAnchor = [metadataCopy faceAnchor];
    [JFXFaceTrackingUtilities rollAngleFromFaceAnchor:faceAnchor forInterfaceOrientation:orientation];
    v28 = v27;

    if (currentTrackingType)
    {
      *&STACK[0x700] = *&time->var0;
      STACK[0x710] = time->var3;
      [appearanceCopy effectCenterAtTime:&STACK[0x700] forcePosterFrame:1 includeTransformAnimation:1 includePlayableAspectScale:1 relativeTo:1 basisOrigin:{v19, v21, v23, v25}];
      v30 = v29;
      v32 = v31;
      *&STACK[0x760] = 0u;
      *&STACK[0x770] = 0u;
      *&STACK[0x740] = 0u;
      *&STACK[0x750] = 0u;
      *&STACK[0x720] = 0u;
      *&STACK[0x730] = 0u;
      *&STACK[0x700] = 0u;
      *&STACK[0x710] = 0u;
      if (appearanceCopy)
      {
        v123 = *&time->var0;
        *&v124.f64[0] = time->var3;
        [appearanceCopy transformAtTime:&v123 forcePosterFrame:1 includeTransformAnimation:0 includePlayableAspectScale:1 relativeTo:1 basisOrigin:{v19, v21, v23, v25}];
      }

      trackingProps2 = [appearanceCopy trackingProps];
      [trackingProps2 setTrackingType:type];

      faceTrackingTransform = [appearanceCopy faceTrackingTransform];

      if (!faceTrackingTransform)
      {
        [self applyCameraTrackingTransformToOverlay:appearanceCopy withARMetadata:metadataCopy playableInterfaceOrientation:orientation];
      }

      v35 = 0uLL;
      *&STACK[0x6E0] = 0u;
      *&STACK[0x6F0] = 0u;
      *&STACK[0x6C0] = 0u;
      *&STACK[0x6D0] = 0u;
      *&STACK[0x6A0] = 0u;
      *&STACK[0x6B0] = 0u;
      v36 = 0uLL;
      v123 = 0u;
      v124 = 0u;
      if (appearanceCopy)
      {
        v115 = *&time->var0;
        *&v116.f64[0] = time->var3;
        [appearanceCopy transformAtTime:&v115 forcePosterFrame:1 includeTransformAnimation:0 includePlayableAspectScale:1 relativeTo:1 basisOrigin:{v19, v21, v23, v25}];
        v36 = 0uLL;
        v37 = *&STACK[0x6B0];
        v38 = *&STACK[0x6D0];
        v35 = *&STACK[0x6F0];
        v39 = vmulq_f64(v124, 0);
      }

      else
      {
        v38 = 0uLL;
        v37 = 0uLL;
        v39 = 0uLL;
      }

      v43 = vaddq_f64(v35, vmlaq_f64(vmlaq_f64(v39, v36, v37), v36, v38));
      v44 = vaddq_f64(*&STACK[0x770], vmlaq_f64(vmlaq_f64(vmulq_f64(*&STACK[0x710], v36), v36, *&STACK[0x730]), v36, *&STACK[0x750]));
      v45 = vzip2q_s64(v43, v44);
      v46 = vzip1q_s64(v43, v44);
      v47 = vbslq_s8(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabsq_f64(v45)), v46, vdivq_f64(v46, v45));
      v48 = *v47.i64 / *&v47.i64[1];
      if (fabs(*&v47.i64[1]) < 0.0000001)
      {
        v48 = 1.0;
      }

      v116 = v36;
      v117 = v36;
      if (type == 2)
      {
        v28 = -v28;
      }

      v115 = v36;
      CGAffineTransformMakeScale(&v115, v48, v48);
      v113 = 0u;
      v114 = 0u;
      v112 = 0u;
      CGAffineTransformMakeRotation(&v112, v28);
      v110 = 0u;
      v111 = 0u;
      t1 = v115;
      t1_16 = v116;
      t1_32 = v117;
      v109 = 0u;
      t2 = v112;
      t2_16 = v113;
      t2_32 = v114;
      CGAffineTransformConcat(&v109, &t1, &t2);
      t1 = v109;
      t1_16 = v110;
      t1_32 = v111;
      t2 = *&time->var0;
      *&t2_16 = time->var3;
      [self addTransformToEffect:appearanceCopy transform:&t1 relativeToBounds:&t2 time:0 restrictToBounds:{v19, v21, v23, v25}];
      t1 = *&time->var0;
      *&t1_16.f64[0] = time->var3;
      [appearanceCopy effectCenterAtTime:&t1 forcePosterFrame:1 includeTransformAnimation:1 includePlayableAspectScale:1 relativeTo:1 basisOrigin:{v19, v21, v23, v25}];
      CGAffineTransformMakeTranslation(&t1, v30 - v49, v32 - v50);
      t2 = *&time->var0;
      *&t2_16 = time->var3;
      [self addTransformToEffect:appearanceCopy transform:&t1 relativeToBounds:&t2 time:0 restrictToBounds:{v19, v21, v23, v25}];
    }

    else
    {
      renderEffect = [appearanceCopy renderEffect];
      [renderEffect outputSize];
      v42.f64[1] = v41;
      v102 = v42;

      if (appearanceCopy)
      {
        [appearanceCopy topLevelTransform];
      }

      else
      {
        *&STACK[0x7E0] = 0u;
        *&STACK[0x7F0] = 0u;
        *&STACK[0x7C0] = 0u;
        *&STACK[0x7D0] = 0u;
        *&STACK[0x7A0] = 0u;
        *&STACK[0x7B0] = 0u;
        *&STACK[0x780] = 0u;
        *&STACK[0x790] = 0u;
      }

      __asm { FMOV            V0.2D, #0.5 }

      *&STACK[0x700] = *&time->var0;
      STACK[0x710] = time->var3;
      [appearanceCopy imageFrameAtTime:&STACK[0x700] forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{v19, v21, v23, v25}];
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;
      trackingProps3 = [appearanceCopy trackingProps];
      [trackingProps3 setTrackingType:type];

      faceTrackingTransform2 = [appearanceCopy faceTrackingTransform];

      if (!faceTrackingTransform2)
      {
        [self applyCameraTrackingTransformToOverlay:appearanceCopy withARMetadata:metadataCopy playableInterfaceOrientation:orientation];
      }

      faceTrackingTransform3 = [appearanceCopy faceTrackingTransform];
      if (type == 1)
      {
        faceTrackingTransform4 = [appearanceCopy faceTrackingTransform];
        v67 = JFXMakeFaceTrackedEffectTransformFaceCamera(faceTrackingTransform4);
        [appearanceCopy setFaceTrackingTransform:v67];

        *&STACK[0x700] = *&time->var0;
        STACK[0x710] = time->var3;
        [appearanceCopy applyScaleToFitFrame:&STACK[0x700] withComponentTime:v56 relativeRect:{v58, v60, v62, v19, v21, v23, v25}];
        [appearanceCopy setFaceTrackingTransform:faceTrackingTransform3];
      }

      else
      {
        *&STACK[0x700] = *&time->var0;
        STACK[0x710] = time->var3;
        [appearanceCopy applyScaleToFitFrame:&STACK[0x700] withComponentTime:v56 relativeRect:{v58, v60, v62, v19, v21, v23, v25}];
      }

      LODWORD(v109.f64[1]) = 0;
      v109.f64[0] = 0.0;
      faceTrackingTransform5 = [appearanceCopy faceTrackingTransform];
      [faceTrackingTransform5 transformForTrackingType:type];
      faceTrackingTransform6 = [appearanceCopy faceTrackingTransform];
      [faceTrackingTransform6 cameraTransform];
      v100 = v71;
      v101 = v70;
      vars0 = v73;
      v99 = v72;
      faceTrackingTransform7 = [appearanceCopy faceTrackingTransform];
      [faceTrackingTransform7 cameraProjection];
      v97 = vcvt_f32_f64(v102);
      v95 = v75;
      v96 = v76;
      v93 = v77;
      v94 = v78;
      pv_simd_matrix_unproject_to_plane();

      *&STACK[0x760] = 0u;
      *&STACK[0x770] = 0u;
      *&STACK[0x740] = 0u;
      *&STACK[0x750] = 0u;
      *&STACK[0x720] = 0u;
      *&STACK[0x730] = 0u;
      *&STACK[0x700] = 0u;
      *&STACK[0x710] = 0u;
      if (appearanceCopy)
      {
        [appearanceCopy topLevelTransform];
      }

      if (type == 1)
      {
        v79 = *&STACK[0x750];
        v119 = *&STACK[0x740];
        v120 = v79;
        v80 = *&STACK[0x770];
        v121 = *&STACK[0x760];
        v122 = v80;
        v81 = *&STACK[0x710];
        v115 = *&STACK[0x700];
        v116 = v81;
        v82 = *&STACK[0x730];
        v117 = *&STACK[0x720];
        v118 = v82;
        v112 = 0uLL;
        __asm { FMOV            V1.2D, #1.0 }

        v113 = _Q1;
        pv_simd_matrix_rotate();
        v84 = *&STACK[0x6D0];
        *&STACK[0x740] = *&STACK[0x6C0];
        *&STACK[0x750] = v84;
        v85 = *&STACK[0x6F0];
        *&STACK[0x760] = *&STACK[0x6E0];
        *&STACK[0x770] = v85;
        v86 = v124;
        *&STACK[0x700] = v123;
        *&STACK[0x710] = v86;
        v87 = *&STACK[0x6B0];
        *&STACK[0x720] = *&STACK[0x6A0];
        *&STACK[0x730] = v87;
      }

      *&STACK[0x760] = vcvtq_f64_f32(*&v109.f64[0]);
      v88 = *&STACK[0x750];
      *&STACK[0x6C0] = *&STACK[0x740];
      *&STACK[0x6D0] = v88;
      v89 = *&STACK[0x770];
      *&STACK[0x6E0] = *&STACK[0x760];
      *&STACK[0x6F0] = v89;
      v90 = *&STACK[0x710];
      v123 = *&STACK[0x700];
      v124 = v90;
      v91 = *&STACK[0x730];
      *&STACK[0x6A0] = *&STACK[0x720];
      *&STACK[0x6B0] = v91;
      [appearanceCopy setTopLevelTransform:{&v123, v101, v100, v99, vars0, v93, v94, v95, v96, *&v97}];
    }
  }

  return v17;
}

+ (void)applyCameraTrackingTransformToOverlay:(id)overlay withARMetadata:(id)metadata playableInterfaceOrientation:(int64_t)orientation
{
  overlayCopy = overlay;
  metadataCopy = metadata;
  faceAnchor = [metadataCopy faceAnchor];

  if (faceAnchor)
  {
    +[JFXMediaSettings compositionSize];
    [overlayCopy playableRectInOutputSize:?];
    v11 = [[JFXFaceTrackingTransformCalculator alloc] initWithARMetaData:metadataCopy outputSize:orientation playableInterfaceOrientation:v9, v10];
    calculateFaceTrackingTransform = [(JFXFaceTrackingTransformCalculator *)v11 calculateFaceTrackingTransform];
    [overlayCopy setFaceTrackingTransform:calculateFaceTrackingTransform];
  }
}

+ (CGPoint)JFX_convertPoint:(CGPoint)point fromSize:(CGSize)size toSize:(CGSize)toSize invertY:(BOOL)y
{
  v6 = point.x / size.width;
  v7 = point.y / size.height;
  if (y)
  {
    v7 = 1.0 - v7;
  }

  v8 = v6 * toSize.width;
  v9 = toSize.height * v7;
  result.y = v9;
  result.x = v8;
  return result;
}

+ (int64_t)trackingTypeForOverlayPointIntersectionWithFaceRect:(CGPoint)rect atTime:(id *)time relativeTo:(CGRect)to defaultTrackingType:(int64_t)type faceAnchor:(id)anchor transformAnimation:(id)animation playableMediaContentMode:(int)mode playableInterfaceOrientation:(int64_t)self0 playableAspectRatio:(int64_t)self1 playableAspectRatioPreservationMode:(int64_t)self2
{
  if (!anchor)
  {
    return 0;
  }

  y = rect.y;
  x = rect.x;
  v15 = *time;
  [self JFX_currentFaceRectRelativeToBounds:&v15 atTime:anchor faceAnchor:animation transformAnimation:*&mode playableMediaContentMode:orientation playableInterfaceOrientation:ratio playableAspectRatio:to.origin.x playableAspectRatioPreservationMode:{to.origin.y, to.size.width, to.size.height, preservationMode}];
  v16.x = x;
  v16.y = y;
  if (CGRectContainsPoint(v17, v16))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (CGPoint)JFX_closeButtonInsetForEffect:(id)effect viewBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [effect closeButtonInset];
  v9 = v8;
  v11 = v10;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v12 = v9 * CGRectGetWidth(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v13 = v11 * CGRectGetHeight(v17);
  v14 = v12;
  result.y = v13;
  result.x = v14;
  return result;
}

+ (CGPoint)removeButtonPositionForEffect:(id)effect atTime:(id *)time atPosterFrameRelativeToBounds:(CGRect)bounds viewCorrectionTransform:(CGAffineTransform *)transform
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  effectCopy = effect;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = effectCopy;
    includeDropShadowWhenPositioningCloseButton = [v14 includeDropShadowWhenPositioningCloseButton];
    if (([self isFaceTrackingDataAvailable] & 1) == 0)
    {
      trackingProps = [v14 trackingProps];
      currentTrackingType = [trackingProps currentTrackingType];

      if (currentTrackingType)
      {
        v18 = 1.79769313e308;
        v19 = 1.79769313e308;
LABEL_34:

        goto LABEL_35;
      }
    }

    transformCopy = transform;
    v21 = [JFXEffectEditingUtilities textForEffect:v14];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v23 = v21;
    v24 = [v21 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    v25 = [v24 length];

    if (!v25)
    {
      [JFXEffectEditingUtilities updateEffectText:v14 newText:@"!"];
    }

    v56.a = *&time->var0;
    *&v56.b.x = time->var3;
    height = [JFXOverlayEffectFrame frameWithEffect:v14 relativeToSize:1 origin:&v56 time:1 forcePosterFrame:includeDropShadowWhenPositioningCloseButton includeDropShadow:0 includeTextFrames:width, height];
    v27 = height;
    if (height)
    {
      [height cornerPoints];
    }

    else
    {
      memset(&v56, 0, sizeof(v56));
    }

    pv_bounding_CGRect(&v56);
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    if (!v25)
    {
      [JFXEffectEditingUtilities updateEffectText:v14 newText:v23];
    }

    [self JFX_closeButtonInsetForEffect:v14 viewBounds:{x, y, width, height}];
    v53 = v37;
    v54 = v36;
    topLevelTransformObject = [v14 topLevelTransformObject];
    v39 = topLevelTransformObject;
    if (topLevelTransformObject)
    {
      [topLevelTransformObject SIMDFloat4x4];
    }

    v40 = *(MEMORY[0x277D41B90] + 80);
    *sx = *(MEMORY[0x277D41B90] + 64);
    v58 = v40;
    v41 = *(MEMORY[0x277D41B90] + 112);
    v59 = *(MEMORY[0x277D41B90] + 96);
    v60 = v41;
    v42 = *(MEMORY[0x277D41B90] + 16);
    v56.a = *MEMORY[0x277D41B90];
    v56.b = v42;
    v43 = *(MEMORY[0x277D41B90] + 48);
    v56.c = *(MEMORY[0x277D41B90] + 32);
    v56.d = v43;
    pv_transform_info_make();
    CGAffineTransformMakeScale(&v56, sx[0], sx[1]);
    v55 = vaddq_f64(v56.c, vmlaq_n_f64(vmulq_n_f64(v56.b, v53), v56.a, v54));
    v44 = *&transformCopy->c;
    v56.a = *&transformCopy->a;
    v56.b = v44;
    v56.c = *&transformCopy->tx;
    if (CGAffineTransformIsIdentity(&v56))
    {
      v45 = v55;
LABEL_33:
      v19 = v45.f64[0] + v29;
      v18 = v45.f64[1] + v31;

      goto LABEL_34;
    }

    v46 = atan2(transformCopy->b, transformCopy->a);
      ;
    }

    if (i >= 0.785398263)
    {
      if (i < 1.57079643 || i < 2.35619459)
      {
        v63.origin.x = v29;
        v63.origin.y = v31;
        v63.size.width = v33;
        v63.size.height = v35;
        MaxX = CGRectGetMaxX(v63);
        v64.origin.x = v29;
        v64.origin.y = v31;
        v64.size.width = v33;
        v64.size.height = v35;
        MinY = CGRectGetMinY(v64);
      }

      else
      {
        if (i < 3.14159275 || i < 3.92699092)
        {
          v65.origin.x = v29;
          v65.origin.y = v31;
          v65.size.width = v33;
          v65.size.height = v35;
          MinX = CGRectGetMaxX(v65);
        }

        else
        {
          if (i >= 4.71238908 && i >= 5.49778724)
          {
            goto LABEL_32;
          }

          v62.origin.x = v29;
          v62.origin.y = v31;
          v62.size.width = v33;
          v62.size.height = v35;
          MinX = CGRectGetMinX(v62);
        }

        MaxX = MinX;
        v66.origin.x = v29;
        v66.origin.y = v31;
        v66.size.width = v33;
        v66.size.height = v35;
        MinY = CGRectGetMaxY(v66);
      }

      v31 = MinY;
      v29 = MaxX;
    }

LABEL_32:
    v45 = vaddq_f64(*&transformCopy->tx, vmlaq_n_f64(vmulq_laneq_f64(*&transformCopy->c, v55, 1), *&transformCopy->a, v55.f64[0]));
    goto LABEL_33;
  }

  v18 = 1.79769313e308;
  v19 = 1.79769313e308;
LABEL_35:

  v51 = v19;
  v52 = v18;
  result.y = v52;
  result.x = v51;
  return result;
}

+ (CGPoint)spacingBetweenCenterPointOfEffect:(id)effect point:(CGPoint)point relativeToBounds:(CGRect)bounds atTime:(id *)time
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v11 = point.y;
  v12 = point.x;
  effectCopy = effect;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(&v20[1], 0, sizeof(PVCGPointQuad));
    if (effectCopy)
    {
      v20[0].a = *&time->var0;
      *&v20[0].b.x = time->var3;
      [effectCopy cornersAtTime:v20 forcePosterFrame:1 includeDropShadow:1 scale:1 relativeTo:1.0 basisOrigin:{1.0, x, y, width, height}];
    }

    v20[0] = v20[1];
    pv_CGPoint_get_quad_center(v20);
    v15 = v12 - v14;
    v17 = v11 - v16;
  }

  else
  {
    v15 = *MEMORY[0x277CBF348];
    v17 = *(MEMORY[0x277CBF348] + 8);
  }

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

+ (void)addTransformToEffect:(id)effect transform:(CGAffineTransform *)transform relativeToBounds:(CGRect)bounds time:(id *)time restrictToBounds:(BOOL)toBounds
{
  toBoundsCopy = toBounds;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  effectCopy = effect;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = effectCopy;
    v17 = v16;
    if (v16)
    {
      v25 = 0u;
      v26 = 0u;
      v18 = *&transform->c;
      v21 = *&transform->a;
      v22 = v18;
      v23 = *&transform->tx;
      v24 = 0u;
      v19 = *&time->var0;
      var3 = time->var3;
      [v16 addTransform:&v21 withComponentTime:&v19 relativeTo:1 basisOrigin:toBoundsCopy restrictToBounds:{x, y, width, height}];
      v21 = v24;
      v22 = v25;
      v23 = v26;
      [self JFX_ApplyTextFlipIfNeeded:v17 transform:&v21];
    }
  }
}

+ (void)JFX_ApplyTextFlipIfNeeded:(id)needed transform:(CGAffineTransform *)transform
{
  neededCopy = needed;
  v6 = atan2(transform->b, transform->a);
  supportsFlippingText = [neededCopy supportsFlippingText];
  supportsFlippingTail = [neededCopy supportsFlippingTail];
  v9 = supportsFlippingTail;
  if ((supportsFlippingText & 1) != 0 || supportsFlippingTail)
  {
    if ([self isStreamingMode])
    {
      trackingProps = [neededCopy trackingProps];
      currentTrackingType = [trackingProps currentTrackingType];

      if (currentTrackingType != 1)
      {
        v12 = +[JFXOrientationMonitor deviceInterfaceOrientation];
        switch(v12)
        {
          case 1:
            v13 = 0.0;
            break;
          case 3:
            v13 = 1.57079633;
            break;
          case 4:
            v13 = -1.57079633;
            break;
          default:
            v13 = 3.14159265;
            if (v12 != 2)
            {
              v13 = 0.0;
            }

            break;
        }

        v6 = v6 + v13;
      }
    }

      ;
    }

    v15 = i < 4.71238898 && i > 1.57079633;
    if (v15)
    {
      if (supportsFlippingText)
      {
        [neededCopy setFlipText:1];
      }

      if (v9)
      {
LABEL_24:
        [neededCopy setFlipTail:v15];
      }
    }

    else
    {
      if (supportsFlippingText)
      {
        [neededCopy setFlipText:0];
      }

      if (v9)
      {
        goto LABEL_24;
      }
    }
  }
}

+ (void)updateEffectText:(id)text newText:(id)newText
{
  textCopy = text;
  newTextCopy = newText;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = textCopy;
    if (!newTextCopy || ![(__CFString *)newTextCopy length])
    {

      newTextCopy = @" ";
    }

    [v6 setString:newTextCopy atIndex:0];
  }
}

+ (void)updateEffectToDefaultTextIfEmpty:(id)empty
{
  emptyCopy = empty;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = emptyCopy;
    strings = [v3 strings];
    firstObject = [strings firstObject];
    string = [firstObject string];

    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [string stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    v9 = [v8 length];

    if (!v9)
    {
      v10 = [v3 defaultAttributedString:0];
      v11 = v10;
      if (v10)
      {
        string2 = [v10 string];
        [v3 setString:string2 atIndex:0];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

+ (id)textForEffect:(id)effect
{
  effectCopy = effect;
  objc_opt_class();
  v4 = &stru_28553D028;
  if (objc_opt_isKindOfClass())
  {
    strings = [effectCopy strings];
    firstObject = [strings firstObject];
    string = [firstObject string];

    if (string)
    {
      v4 = string;
    }
  }

  return v4;
}

+ (void)JFX_setTextRenderingEnabledForEffect:(id)effect value:(BOOL)value
{
  valueCopy = value;
  effectCopy = effect;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (valueCopy)
    {
      [effectCopy endTextEditing];
    }

    else
    {
      [effectCopy beginTextEditing];
    }
  }
}

+ (void)beginTextEditingForEffect:(id)effect
{
  effectCopy = effect;
  effectID = [effectCopy effectID];
  v5 = [self shouldRenderTextWithMotionWhileEditingTextForEffectID:effectID];

  if ((v5 & 1) == 0)
  {
    [self JFX_setTextRenderingEnabledForEffect:effectCopy value:0];
  }
}

+ (void)endTextEditingForEffect:(id)effect
{
  effectCopy = effect;
  effectID = [effectCopy effectID];
  v5 = [self shouldRenderTextWithMotionWhileEditingTextForEffectID:effectID];

  if ((v5 & 1) == 0)
  {
    [self JFX_setTextRenderingEnabledForEffect:effectCopy value:1];
  }
}

+ (BOOL)canEditTextForEffect:(id)effect
{
  effectCopy = effect;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = effectCopy;
    if ([v4 textBakedIn])
    {
      v5 = 0;
    }

    else
    {
      v6 = [v4 defaultAttributedString:0];
      string = [v6 string];
      v5 = [string length] != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldAutoEditTextForEffect:(id)effect
{
  effectCopy = effect;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || ([effectCopy isEmoji] & 1) == 0;

  return v4;
}

+ (unint64_t)maximumTextLengthForEffect:(id)effect
{
  effectCopy = effect;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    maxCharacters = [effectCopy maxCharacters];
  }

  else
  {
    maxCharacters = -1;
  }

  return maxCharacters;
}

+ (id)newTextEditingPropertiesForEffect:(id)effect relativeTo:(CGRect)to atTime:(id *)time withNewText:(id)text moveBeforeScalingToAvoidKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  effectCopy = effect;
  textCopy = text;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = *&time->var0;
    var3 = time->var3;
    height = [JFXEffectTextEditingProperties textEditingPropertiesWithTextEffect:effectCopy withText:textCopy relativeTo:&v18 atTime:0 index:keyboardCopy moveBeforeScalingToAvoidKeyboard:x, y, width, height];
  }

  else
  {
    height = 0;
  }

  return height;
}

+ (BOOL)shouldRenderTextWithMotionWhileEditingTextForEffectID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:*MEMORY[0x277D418C0]] & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", *MEMORY[0x277D418C8]) & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", *MEMORY[0x277D419B8]) & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", *MEMORY[0x277D419C0]) & 1) != 0 || (objc_msgSend(dCopy, "isEqualToString:", *MEMORY[0x277D41998]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [dCopy isEqualToString:*MEMORY[0x277D419B0]];
  }

  return v4;
}

+ (void)enableAnimationForEffects:(id)effects animationStartTime:(id *)time
{
  v27 = *MEMORY[0x277D85DE8];
  effectsCopy = effects;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [effectsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(effectsCopy);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        [v10 enablePresentationState:0];
        if ([v10 type] == 2)
        {
          v20 = 0u;
          v21 = 0u;
          v19 = 0u;
          renderEffect = [v10 renderEffect];
          v12 = renderEffect;
          if (renderEffect)
          {
            [renderEffect effectRange];
          }

          else
          {
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
          }

          *&v20 = time->var3;
          v13 = *&time->var0;
          v18 = v21;
          v19 = v13;
          v16 = v13;
          v17 = v20;
          renderEffect2 = [v10 renderEffect];
          v15[0] = v16;
          v15[1] = v17;
          v15[2] = v18;
          [renderEffect2 setEffectRange:v15];
        }
      }

      v7 = [effectsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }
}

+ (void)disableAnimationForEffects:(id)effects
{
  v13 = *MEMORY[0x277D85DE8];
  effectsCopy = effects;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [effectsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(effectsCopy);
        }

        [*(*(&v8 + 1) + 8 * v7++) enablePresentationState:1];
      }

      while (v5 != v7);
      v5 = [effectsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (BOOL)isFaceTrackingDataAvailable
{
  v2 = +[JFXVideoCameraController sharedInstance];
  hasValidFaceData = [v2 hasValidFaceData];

  return hasValidFaceData;
}

+ (CGRect)currentFaceRectRelativeToBounds:(CGRect)bounds atTime:(id *)time transformAnimation:(id)animation playableMediaContentMode:(int)mode playableInterfaceOrientation:(int64_t)orientation playableAspectRatio:(int64_t)ratio playableAspectRatioPreservationMode:(int64_t)preservationMode
{
  v12 = *&mode;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  animationCopy = animation;
  v20 = +[JFXVideoCameraController sharedInstance];
  mostRecentARMetadata = [v20 mostRecentARMetadata];
  faceAnchor = [mostRecentARMetadata faceAnchor];

  v35 = *time;
  [self JFX_currentFaceRectRelativeToBounds:&v35 atTime:faceAnchor faceAnchor:animationCopy transformAnimation:v12 playableMediaContentMode:orientation playableInterfaceOrientation:ratio playableAspectRatio:x playableAspectRatioPreservationMode:{y, width, height, preservationMode}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

+ (CGRect)JFX_currentFaceRectRelativeToBounds:(CGRect)bounds atTime:(id *)time faceAnchor:(id)anchor transformAnimation:(id)animation playableMediaContentMode:(int)mode playableInterfaceOrientation:(int64_t)orientation playableAspectRatio:(int64_t)ratio playableAspectRatioPreservationMode:(int64_t)self0
{
  v12 = *&mode;
  height = bounds.size.height;
  width = bounds.size.width;
  animationCopy = animation;
  anchorCopy = anchor;
  v19 = multiplierForAspectRatio(ratio);
  v20 = PVViewContentModeFromAspectRatioPreservationMode(preservationMode);
  v21 = 1.0;
  if (v20 > 2)
  {
    switch(v20)
    {
      case 3:
        v21 = height;
        break;
      case 13:
        v21 = width / v19;
        break;
      case 14:
        v19 = height * v19;
LABEL_14:
        v21 = height;
        goto LABEL_21;
      default:
        goto LABEL_21;
    }

    v19 = width;
    goto LABEL_21;
  }

  switch(v20)
  {
    case 0:
      v19 = width;
      goto LABEL_14;
    case 1:
      if (width <= height)
      {
        v21 = height;
        if (height * v19 < width)
        {
          v21 = width / v19;
        }
      }

      else
      {
        v21 = width / v19;
        if (width / v19 < height)
        {
          v21 = height;
        }
      }

      goto LABEL_8;
    case 2:
      if (width / v19 <= height)
      {
        v21 = width / v19;
      }

      else
      {
        v21 = height;
      }

LABEL_8:
      v19 = v19 * v21;
      break;
  }

LABEL_21:
  v55 = 0.0;
  v56 = 0.0;
  [JFXFaceTrackingUtilities faceRectInImageWithFaceAnchor:anchorCopy invertY:1 interfaceOrientation:orientation imageResolution:&v55];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  if (fabs(v55) < 0.0000001 || fabs(v56) < 0.0000001)
  {
    v30 = *MEMORY[0x277CBF3A0];
    v31 = *(MEMORY[0x277CBF3A0] + 8);
    v32 = *(MEMORY[0x277CBF3A0] + 16);
    v33 = *(MEMORY[0x277CBF3A0] + 24);
    goto LABEL_47;
  }

  v34 = (width - v19) * 0.5;
  v35 = (height - v21) * 0.5;
  v36 = 1.0;
  v37 = v55 / v56;
  if (v12 > 2)
  {
    v36 = v21;
    v38 = v19;
    switch(v12)
    {
      case 3:
        goto LABEL_43;
      case 0xD:
        v38 = v19;
        v36 = v19 / v37;
        goto LABEL_43;
      case 0xE:
        v38 = v21 * v37;
        v36 = v21;
        goto LABEL_43;
    }

    v36 = 1.0;
    goto LABEL_42;
  }

  v38 = v19;
  v39 = v21;
  if (v12)
  {
    if (v12 == 1)
    {
      if (v19 <= v21)
      {
        v36 = v21;
        if (v21 * v37 < v19)
        {
          v36 = v19 / v37;
        }
      }

      else
      {
        v36 = v19 / v37;
        if (v19 / v37 < v21)
        {
          v36 = v21;
        }
      }

      goto LABEL_30;
    }

    if (v12 == 2)
    {
      v36 = v19 / v37;
      if (v19 / v37 > v21)
      {
        v36 = v21;
      }

LABEL_30:
      v38 = v37 * v36;
LABEL_43:
      v39 = v36;
      goto LABEL_44;
    }

LABEL_42:
    v38 = v55 / v56;
    goto LABEL_43;
  }

LABEL_44:
  v48 = v23;
  v49 = v29;
  v46 = v35 + 0.0;
  v47 = v34 + 0.0;
  x = (v19 - v38) * 0.5 + 0.0;
  y = (v21 - v39) * 0.5 + 0.0;
  memset(&v54, 0, sizeof(v54));
  PVTransformAnimationInfoIdentity();
  *&v50.time.value = *&time->var0;
  v50.time.epoch = time->var3;
  if ([MEMORY[0x277D416B0] getTransformInfoFromAnimation:animationCopy atTime:&v50 renderSize:v12 contentMode:0 invertY:&v54 outInfo:{v19, v21}])
  {
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v57.x = v19 * 0.5;
    v57.y = v21 * 0.5;
    v50 = v54;
    CGAffineTransformFromPointWithPVAnimInfo(&v51, &v50, v57);
    *&v50.time.value = v51;
    *&v50.time.epoch = v52;
    *&v50.translation.y = v53;
    v58.origin.x = (v19 - v38) * 0.5 + 0.0;
    v58.origin.y = (v21 - v39) * 0.5 + 0.0;
    v58.size.width = v38;
    v58.size.height = v39;
    v59 = CGRectApplyAffineTransform(v58, &v50);
    x = v59.origin.x;
    y = v59.origin.y;
    v38 = v59.size.width;
    v39 = v59.size.height;
  }

  v60.origin.x = v38 * (v48 / v55);
  v60.origin.y = v39 * (v25 / v56);
  v60.size.width = v38 * (v27 / v55);
  v60.size.height = v39 * (v49 / v56);
  v61 = CGRectOffset(v60, x, y);
  v62 = CGRectOffset(v61, v47, v46);
  v30 = v62.origin.x;
  v31 = v62.origin.y;
  v32 = v62.size.width;
  v33 = v62.size.height;
LABEL_47:

  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

+ (CGRect)JFX_compositionBounds
{
  +[JFXMediaSettings compositionSize];

  v2 = CGRectMakeWithSize();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end