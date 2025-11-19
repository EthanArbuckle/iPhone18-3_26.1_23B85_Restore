@interface JFXEffectEditingUtilities
+ (BOOL)canEditTextForEffect:(id)a3;
+ (BOOL)isFaceTrackingDataAvailable;
+ (BOOL)makeOverlayTrackedMaintainingAppearance:(id)a3 atTime:(id *)a4 newTrackingType:(int64_t)a5 arMetadata:(id)a6 playableInterfaceOrientation:(int64_t)a7;
+ (BOOL)shouldAutoEditTextForEffect:(id)a3;
+ (BOOL)shouldRenderTextWithMotionWhileEditingTextForEffectID:(id)a3;
+ (CGPoint)JFX_closeButtonInsetForEffect:(id)a3 viewBounds:(CGRect)a4;
+ (CGPoint)JFX_convertPoint:(CGPoint)a3 fromSize:(CGSize)a4 toSize:(CGSize)a5 invertY:(BOOL)a6;
+ (CGPoint)nextNormalizedInsertionPointForOverlay:(id)a3 scaleRelativeToCenterSquare:(double)a4 atTime:(id *)a5 applyTracking:(BOOL)a6 withARMetadata:(id)a7 transformAnimation:(id)a8 playableMediaContentMode:(int)a9 playableInterfaceOrientation:(int64_t)a10;
+ (CGPoint)removeButtonPositionForEffect:(id)a3 atTime:(id *)a4 atPosterFrameRelativeToBounds:(CGRect)a5 viewCorrectionTransform:(CGAffineTransform *)a6;
+ (CGPoint)spacingBetweenCenterPointOfEffect:(id)a3 point:(CGPoint)a4 relativeToBounds:(CGRect)a5 atTime:(id *)a6;
+ (CGRect)JFX_compositionBounds;
+ (CGRect)JFX_currentFaceRectRelativeToBounds:(CGRect)a3 atTime:(id *)a4 faceAnchor:(id)a5 transformAnimation:(id)a6 playableMediaContentMode:(int)a7 playableInterfaceOrientation:(int64_t)a8 playableAspectRatio:(int64_t)a9 playableAspectRatioPreservationMode:(int64_t)a10;
+ (CGRect)JFX_rectAtNormalizedPointinCenteredSquareInFaceRect:(CGPoint)a3 faceAnchor:(id)a4 atTime:(id *)a5 scaleRelativeToCenterSquare:(double)a6 relativeToBounds:(CGRect)a7 transformAnimation:(id)a8 playableMediaContentMode:(int)a9 playableInterfaceOrientation:(int64_t)a10 playableAspectRatio:(int64_t)a11 playableAspectRatioPreservationMode:(int64_t)a12;
+ (CGRect)currentFaceRectRelativeToBounds:(CGRect)a3 atTime:(id *)a4 transformAnimation:(id)a5 playableMediaContentMode:(int)a6 playableInterfaceOrientation:(int64_t)a7 playableAspectRatio:(int64_t)a8 playableAspectRatioPreservationMode:(int64_t)a9;
+ (id)JFX_hitTestOverlays:(id)a3 atNormalizedPoint:(CGPoint)a4 atTime:(id *)a5 forcePosterFrame:(BOOL)a6 adjustForMinimumSize:(BOOL)a7 normalizedMinimumSize:(id)a8;
+ (id)hitTestOverlays:(id)a3 atPoint:(CGPoint)a4 relativeToBounds:(CGRect)a5 atTime:(id *)a6 adjustForMinimumSize:(BOOL)a7 normalizedMinimumSize:(id)a8;
+ (id)hitTestOverlaysAtPosterFrame:(id)a3 atNormalizedPoint:(CGPoint)a4 atTime:(id *)a5 adjustForMinimumSize:(BOOL)a6 normalizedMinimumSize:(id)a7;
+ (id)hitTestOverlaysAtPosterFrame:(id)a3 atPoint:(CGPoint)a4 relativeToBounds:(CGRect)a5 atTime:(id *)a6 adjustForMinimumSize:(BOOL)a7 normalizedMinimumSize:(id)a8;
+ (id)newTextEditingPropertiesForEffect:(id)a3 relativeTo:(CGRect)a4 atTime:(id *)a5 withNewText:(id)a6 moveBeforeScalingToAvoidKeyboard:(BOOL)a7;
+ (id)normalizedInsertionPoints;
+ (id)textForEffect:(id)a3;
+ (id)trackedNormalizedInsertionPoints;
+ (int64_t)trackingTypeForOverlayPointIntersectionWithFaceRect:(CGPoint)a3 atTime:(id *)a4 relativeTo:(CGRect)a5 defaultTrackingType:(int64_t)a6 faceAnchor:(id)a7 transformAnimation:(id)a8 playableMediaContentMode:(int)a9 playableInterfaceOrientation:(int64_t)a10 playableAspectRatio:(int64_t)a11 playableAspectRatioPreservationMode:(int64_t)a12;
+ (unint64_t)JFX_bestTrackedInsertionPointIndexForOverlay:(id)a3 atTime:(id *)a4 insertionPoints:(id)a5 startingIndex:(unint64_t)a6 visibilityThreshold:(double)a7 scaleRelativeToCenterSquare:(double)a8 withARMetadata:(id)a9 transformAnimation:(id)a10 playableMediaContentMode:(int)a11 playableInterfaceOrientation:(int64_t)a12;
+ (unint64_t)maximumTextLengthForEffect:(id)a3;
+ (unint64_t)nextInsertionPointIndex;
+ (void)JFX_ApplyTextFlipIfNeeded:(id)a3 transform:(CGAffineTransform *)a4;
+ (void)JFX_setTextRenderingEnabledForEffect:(id)a3 value:(BOOL)a4;
+ (void)addTransformToEffect:(id)a3 transform:(CGAffineTransform *)a4 relativeToBounds:(CGRect)a5 time:(id *)a6 restrictToBounds:(BOOL)a7;
+ (void)applyCameraTrackingTransformToOverlay:(id)a3 withARMetadata:(id)a4 playableInterfaceOrientation:(int64_t)a5;
+ (void)beginTextEditingForEffect:(id)a3;
+ (void)configureOverlayForInsertion:(id)a3 atNormalizedPoint:(CGPoint)a4 atTime:(id *)a5 isPositionRelativeToCenterSquare:(BOOL)a6 isPositionRelativeToFace:(BOOL)a7 scaleRelativeToCenterSquare:(double)a8 rotationAngle:(double)a9 applyTracking:(BOOL)a10 autoDetectTrackingType:(BOOL)a11 withARMetadata:(id)a12 previewViewCorrectionTransform:(CGAffineTransform *)a13 transformAnimation:(id)a14 playableMediaContentMode:(int)a15 playableInterfaceOrientation:(int64_t)a16 playableAspectRatio:(int64_t)a17 playableAspectRatioPreservationMode:(int64_t)a18;
+ (void)configureOverlayForInsertion:(id)a3 inRect:(CGRect)a4 atTime:(id *)a5 rotationAngle:(double)a6 applyTracking:(BOOL)a7 autoDetectTrackingType:(BOOL)a8 withARMetadata:(id)a9 previewViewCorrectionTransform:(CGAffineTransform *)a10 transformAnimation:(id)a11 playableMediaContentMode:(int)a12 playableInterfaceOrientation:(int64_t)a13 playableAspectRatio:(int64_t)a14 playableAspectRatioPreservationMode:(int64_t)a15;
+ (void)disableAnimationForEffects:(id)a3;
+ (void)enableAnimationForEffects:(id)a3 animationStartTime:(id *)a4;
+ (void)endTextEditingForEffect:(id)a3;
+ (void)setInsertionPointIndex:(unint64_t)a3;
+ (void)suspendOverlayTrackingMaintainingAppearance:(id)a3 forViewBounds:(CGRect)a4 atTime:(id *)a5 arMetadata:(id)a6 playableInterfaceOrientation:(int64_t)a7;
+ (void)updateEffectText:(id)a3 newText:(id)a4;
+ (void)updateEffectToDefaultTextIfEmpty:(id)a3;
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

+ (void)setInsertionPointIndex:(unint64_t)a3
{
  s_insertionPointIndex = a3;
  v4 = [a1 normalizedInsertionPoints];
  v5 = [v4 count];

  if (v5 <= a3)
  {
    s_insertionPointIndex = 0;
  }
}

+ (unint64_t)nextInsertionPointIndex
{
  v2 = s_insertionPointIndex++;
  v3 = s_insertionPointIndex;
  v4 = [a1 normalizedInsertionPoints];
  v5 = [v4 count];

  if (v3 >= v5)
  {
    s_insertionPointIndex = 0;
  }

  return v2;
}

+ (CGPoint)nextNormalizedInsertionPointForOverlay:(id)a3 scaleRelativeToCenterSquare:(double)a4 atTime:(id *)a5 applyTracking:(BOOL)a6 withARMetadata:(id)a7 transformAnimation:(id)a8 playableMediaContentMode:(int)a9 playableInterfaceOrientation:(int64_t)a10
{
  v13 = a6;
  v17 = a3;
  v18 = a7;
  v19 = a8;
  if (v17)
  {
    v20 = [a1 nextInsertionPointIndex];
    v21 = [v18 faceAnchor];

    if (v13 && v21)
    {
      v22 = [a1 trackedNormalizedInsertionPoints];
      v31 = *&a5->var0;
      var3 = a5->var3;
      LODWORD(v30) = a9;
      v20 = [a1 JFX_bestTrackedInsertionPointIndexForOverlay:v17 atTime:&v31 insertionPoints:v22 startingIndex:v20 visibilityThreshold:v18 scaleRelativeToCenterSquare:v19 withARMetadata:0.4 transformAnimation:a4 playableMediaContentMode:v30 playableInterfaceOrientation:a10];
      [a1 setInsertionPointIndex:v20 + 1];
    }

    else
    {
      v22 = [a1 normalizedInsertionPoints];
    }

    v25 = [v22 objectAtIndexedSubscript:v20];
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

+ (unint64_t)JFX_bestTrackedInsertionPointIndexForOverlay:(id)a3 atTime:(id *)a4 insertionPoints:(id)a5 startingIndex:(unint64_t)a6 visibilityThreshold:(double)a7 scaleRelativeToCenterSquare:(double)a8 withARMetadata:(id)a9 transformAnimation:(id)a10 playableMediaContentMode:(int)a11 playableInterfaceOrientation:(int64_t)a12
{
  v18 = a3;
  v19 = a5;
  v20 = a9;
  v57 = a10;
  v21 = [v20 faceAnchor];

  if (v21)
  {
    [a1 JFX_compositionBounds];
    v53 = v23;
    v54 = v22;
    v51 = v25;
    v52 = v24;
    v26 = [v19 count];
    if (v26)
    {
      v27 = v26;
      v50 = a1;
      v28 = 0.0;
      v29 = v26;
      v30 = a6;
      while (1)
      {
        v58 = v28;
        v31 = v19;
        v32 = [v19 objectAtIndexedSubscript:v30];
        [v32 CGPointValue];
        v34 = v33;
        v36 = v35;

        v37 = [v20 faceAnchor];
        v38 = [v18 playableAspectRatio];
        v39 = [v18 playableAspectRatioPreservationMode];
        v59 = *&a4->var0;
        var3 = a4->var3;
        [v50 JFX_rectAtNormalizedPointinCenteredSquareInFaceRect:v37 faceAnchor:&v59 atTime:v57 scaleRelativeToCenterSquare:a11 relativeToBounds:a12 transformAnimation:v38 playableMediaContentMode:v34 playableInterfaceOrientation:v36 playableAspectRatio:a8 playableAspectRatioPreservationMode:{v54, v53, v52, v51, v39}];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;

        v48 = CGRectPercentOfRectThatIntersectsRect(v41, v43, v45, v47, v54, v53, v52, v51);
        if (v48 > a7)
        {
          break;
        }

        v28 = v58;
        if (v48 > v58)
        {
          v28 = v48;
          a6 = v30;
        }

        if (v30 + 1 < v27)
        {
          ++v30;
        }

        else
        {
          v30 = 0;
        }

        --v29;
        v19 = v31;
        if (!v29)
        {
          goto LABEL_13;
        }
      }

      a6 = v30;
      v19 = v31;
    }
  }

LABEL_13:

  return a6;
}

+ (CGRect)JFX_rectAtNormalizedPointinCenteredSquareInFaceRect:(CGPoint)a3 faceAnchor:(id)a4 atTime:(id *)a5 scaleRelativeToCenterSquare:(double)a6 relativeToBounds:(CGRect)a7 transformAnimation:(id)a8 playableMediaContentMode:(int)a9 playableInterfaceOrientation:(int64_t)a10 playableAspectRatio:(int64_t)a11 playableAspectRatioPreservationMode:(int64_t)a12
{
  x = a3.x;
  v26 = *a5;
  [a1 JFX_currentFaceRectRelativeToBounds:&v26 atTime:a4 faceAnchor:a8 transformAnimation:*&a9 playableMediaContentMode:a10 playableInterfaceOrientation:a11 playableAspectRatio:a7.origin.x playableAspectRatioPreservationMode:{a7.origin.y, a7.size.width, a7.size.height, a12}];
  v17 = v16;
  v19 = v18;
  if (v14 > v15)
  {
    x = (x + (v14 / v15 + -1.0) * 0.5) / (v14 / v15);
  }

  v20 = fmin(v14, v15) * a6;
  v21 = v17 + CGRectMakeWithSizeAndCenterPoint(v20, v20, v14 * x);
  v25 = v19 + v24;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v25;
  result.origin.x = v21;
  return result;
}

+ (void)configureOverlayForInsertion:(id)a3 atNormalizedPoint:(CGPoint)a4 atTime:(id *)a5 isPositionRelativeToCenterSquare:(BOOL)a6 isPositionRelativeToFace:(BOOL)a7 scaleRelativeToCenterSquare:(double)a8 rotationAngle:(double)a9 applyTracking:(BOOL)a10 autoDetectTrackingType:(BOOL)a11 withARMetadata:(id)a12 previewViewCorrectionTransform:(CGAffineTransform *)a13 transformAnimation:(id)a14 playableMediaContentMode:(int)a15 playableInterfaceOrientation:(int64_t)a16 playableAspectRatio:(int64_t)a17 playableAspectRatioPreservationMode:(int64_t)a18
{
  v18 = a11;
  v65 = a10;
  v21 = a7;
  y = a4.y;
  x = a4.x;
  v27 = a3;
  v28 = a12;
  v29 = a14;
  if (v27)
  {
    v64 = v21;
    v30 = a13;
    [v27 setPlayableAspectRatio:a17];
    v31 = a18;
    [v27 setPlayableAspectRatioPreservationMode:a18];
    [v27 setTransformAnimation:v29];
    v32 = multiplierForAspectRatio(a17);
    v33 = [v27 transformAnimation];
    [v33 setAspectRatio:v32];

    [a1 JFX_compositionBounds];
    v37 = v36;
    v39 = v38;
    v40 = v34;
    v41 = v35;
    if (!a6)
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

    v42 = [v28 faceAnchor];

    if (v65 && v42 && v64)
    {
      v43 = objc_opt_class();
      v44 = [v28 faceAnchor];
      v66 = *&a5->var0;
      *&v67 = a5->var3;
      v45 = v43;
      v46 = a15;
      [v45 JFX_rectAtNormalizedPointinCenteredSquareInFaceRect:v44 faceAnchor:&v66 atTime:x scaleRelativeToCenterSquare:y relativeToBounds:a8 transformAnimation:v37 playableMediaContentMode:v39 playableInterfaceOrientation:v40 playableAspectRatio:v41 playableAspectRatioPreservationMode:a18];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v31 = a18;
      v30 = a13;
    }

    else
    {
      [v27 playableRectInOutputSize:{v40, v41}];
      v57 = fmin(v55, v56) * a8;
      if (v40 > v41)
      {
        x = ((v40 / v41 + -1.0) * 0.5 + x) / (v40 / v41);
      }

      v46 = a15;
      v48 = CGRectMakeWithSizeAndCenterPoint(v57, v57, v40 * x);
      v50 = v58;
      v52 = v59;
      v54 = v60;
    }

    v61 = *&a5->var0;
    var3 = a5->var3;
    v62 = *&v30->c;
    v66 = *&v30->a;
    v67 = v62;
    v68 = *&v30->tx;
    v69 = v61;
    LODWORD(v63) = v46;
    [a1 configureOverlayForInsertion:v27 inRect:&v69 atTime:v65 rotationAngle:v18 applyTracking:v28 autoDetectTrackingType:&v66 withARMetadata:v48 previewViewCorrectionTransform:v50 transformAnimation:v52 playableMediaContentMode:v54 playableInterfaceOrientation:a9 playableAspectRatio:v29 playableAspectRatioPreservationMode:{v63, a16, a17, v31}];
  }
}

+ (void)configureOverlayForInsertion:(id)a3 inRect:(CGRect)a4 atTime:(id *)a5 rotationAngle:(double)a6 applyTracking:(BOOL)a7 autoDetectTrackingType:(BOOL)a8 withARMetadata:(id)a9 previewViewCorrectionTransform:(CGAffineTransform *)a10 transformAnimation:(id)a11 playableMediaContentMode:(int)a12 playableInterfaceOrientation:(int64_t)a13 playableAspectRatio:(int64_t)a14 playableAspectRatioPreservationMode:(int64_t)a15
{
  v17 = a8;
  v18 = a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v26 = a3;
  v27 = a9;
  v28 = a11;
  if (v26)
  {
    v56 = v17;
    v58 = x;
    [v26 setTransformAnimation:v28];
    v29 = multiplierForAspectRatio(a14);
    v30 = [v26 transformAnimation];
    [v30 setAspectRatio:v29];

    [a1 JFX_compositionBounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [v26 setRenderSize:{v35, v37}];
    [v26 setPlayableAspectRatio:a14];
    [v26 setPlayableAspectRatioPreservationMode:a15];
    [v26 enablePresentationState:1];
    v39 = [v26 renderEffect];
    v62 = *kDefaultEffectPreviewAnimationRange;
    [v39 setEffectRange:&v62];

    v40 = *(MEMORY[0x277CBF2C0] + 16);
    *&v62.a = *MEMORY[0x277CBF2C0];
    *&v62.c = v40;
    *&v62.tx = *(MEMORY[0x277CBF2C0] + 32);
    if (a6 != 0.0)
    {
      CGAffineTransformMakeRotation(&v62, a6);
    }

    v41 = *&a10->c;
    *&v61.a = *&a10->a;
    *&v61.c = v41;
    *&v61.tx = *&a10->tx;
    if (!CGAffineTransformIsIdentity(&v61))
    {
      t1 = v62;
      v42 = *&a10->c;
      *&t2.a = *&a10->a;
      *&t2.c = v42;
      *&t2.tx = *&a10->tx;
      CGAffineTransformConcat(&v61, &t1, &t2);
      v62 = v61;
    }

    v61 = v62;
    v43 = v58;
    if (!CGAffineTransformIsIdentity(&v61))
    {
      v61 = v62;
      *&t1.a = *&a5->var0;
      *&t1.c = a5->var3;
      [a1 addTransformToEffect:v26 transform:&v61 relativeToBounds:&t1 time:0 restrictToBounds:{v32, v34, v36, v38}];
    }

    *&v61.a = *&a5->var0;
    *&v61.c = a5->var3;
    [v26 applyScaleToFitFrame:&v61 withComponentTime:1 relativeRect:v58 restrictToBounds:{y, width, height, v32, v34, v36, v38}];
    v44 = [v27 faceAnchor];

    if (v18 && v44)
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
        v52 = [v27 faceAnchor];
        *&v61.a = *&a5->var0;
        *&v61.c = a5->var3;
        v53 = CenterPoint;
        v54 = v51;
        height = v49;
        width = v48;
        y = v47;
        v32 = v46;
        v34 = v57;
        v43 = v58;
        v55 = [a1 trackingTypeForOverlayPointIntersectionWithFaceRect:&v61 atTime:2 relativeTo:v52 defaultTrackingType:v28 faceAnchor:a12 transformAnimation:a13 playableMediaContentMode:v53 playableInterfaceOrientation:v54 playableAspectRatio:v32 playableAspectRatioPreservationMode:{v57, v36, v38, a14, a15}];
      }

      else
      {
        v55 = 2;
      }

      *&v61.a = *&a5->var0;
      *&v61.c = a5->var3;
      [a1 makeOverlayTrackedMaintainingAppearance:v26 atTime:&v61 newTrackingType:v55 arMetadata:v27 playableInterfaceOrientation:a13];
      *&v61.a = *&a5->var0;
      *&v61.c = a5->var3;
      [v26 applyScaleToFitFrame:&v61 withComponentTime:1 relativeRect:v43 restrictToBounds:{y, width, height, v32, v34, v36, v38}];
    }
  }
}

+ (id)hitTestOverlays:(id)a3 atPoint:(CGPoint)a4 relativeToBounds:(CGRect)a5 atTime:(id *)a6 adjustForMinimumSize:(BOOL)a7 normalizedMinimumSize:(id)a8
{
  v10 = *a6;
  v8 = [a1 JFX_hitTestOverlays:a3 atNormalizedPoint:&v10 atTime:0 forcePosterFrame:a7 adjustForMinimumSize:a4.x / a5.size.width normalizedMinimumSize:{a4.y / a5.size.height, a8.var0, a8.var1}];

  return v8;
}

+ (id)hitTestOverlaysAtPosterFrame:(id)a3 atPoint:(CGPoint)a4 relativeToBounds:(CGRect)a5 atTime:(id *)a6 adjustForMinimumSize:(BOOL)a7 normalizedMinimumSize:(id)a8
{
  v10 = *a6;
  v8 = [a1 JFX_hitTestOverlays:a3 atNormalizedPoint:&v10 atTime:1 forcePosterFrame:a7 adjustForMinimumSize:a4.x / a5.size.width normalizedMinimumSize:{a4.y / a5.size.height, a8.var0, a8.var1}];

  return v8;
}

+ (id)hitTestOverlaysAtPosterFrame:(id)a3 atNormalizedPoint:(CGPoint)a4 atTime:(id *)a5 adjustForMinimumSize:(BOOL)a6 normalizedMinimumSize:(id)a7
{
  v9 = *a5;
  v7 = [a1 JFX_hitTestOverlays:a3 atNormalizedPoint:&v9 atTime:1 forcePosterFrame:a6 adjustForMinimumSize:a4.x normalizedMinimumSize:{a4.y, a7.var0, a7.var1}];

  return v7;
}

+ (id)JFX_hitTestOverlays:(id)a3 atNormalizedPoint:(CGPoint)a4 atTime:(id *)a5 forcePosterFrame:(BOOL)a6 adjustForMinimumSize:(BOOL)a7 normalizedMinimumSize:(id)a8
{
  var1 = a8.var1;
  var0 = a8.var0;
  v10 = a7;
  v11 = a6;
  y = a4.y;
  x = a4.x;
  v36 = *MEMORY[0x277D85DE8];
  v15 = a3;
  if ([v15 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = [v15 reverseObjectEnumerator];
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          v22 = [v21 renderEffect];
          [v22 outputSize];
          v24 = v23;
          v26 = v25;

          v29 = *&a5->var0;
          var3 = a5->var3;
          if ([v21 hitTestPoint:&v29 atTime:v11 forcePosterFrame:1 relativeTo:v10 basisOrigin:x * v24 adjustForMinimumSize:y * v26 normalizedMinimumSize:{0.0, 0.0, v24, v26, var0, var1}])
          {
            v27 = v21;
            goto LABEL_12;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
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

+ (void)suspendOverlayTrackingMaintainingAppearance:(id)a3 forViewBounds:(CGRect)a4 atTime:(id *)a5 arMetadata:(id)a6 playableInterfaceOrientation:(int64_t)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v15 = a6;
  if ([v14 isCurrentlyTracking])
  {
    v16 = [v14 trackingProps];
    v17 = [v16 currentTrackingType];

    if (v17 == 1)
    {
      v18 = [v15 faceAnchor];
      [JFXFaceTrackingUtilities rollAngleFromFaceAnchor:v18 forInterfaceOrientation:a7];

      v19 = [v14 renderEffect];
      v20 = [v19 origin];

      v21 = [v14 renderEffect];
      [v21 outputSize];

      v22 = CGRectMakeWithSize();
      v60 = *&a5->var0;
      *&v61 = a5->var3;
      [v14 effectCenterAtTime:&v60 forcePosterFrame:1 includeTransformAnimation:0 includePlayableAspectScale:0 relativeTo:v20 basisOrigin:v22];
      v49 = v24;
      v50 = v23;
      v25 = [v14 faceTrackingTransform];
      v26 = JFXMakeFaceTrackedEffectTransformFaceCamera(v25);
      [v14 setFaceTrackingTransform:v26];

      v60 = *&a5->var0;
      *&v61 = a5->var3;
      [v14 imageFrameAtTime:&v60 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{x, y, width, height}];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      [v14 setFaceTrackingTransform:v25];
      [v14 suspendTracking];
      v60 = *&a5->var0;
      *&v61 = a5->var3;
      [v14 applyScaleToFitFrame:&v60 withComponentTime:v28 relativeRect:{v30, v32, v34, x, y, width, height}];
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      if (v14)
      {
        [v14 topLevelTransform];
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
      [v14 setTopLevelTransform:&v52];
    }

    else
    {
      v60 = *&a5->var0;
      *&v61 = a5->var3;
      [v14 imageFrameAtTime:&v60 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{x, y, width, height}];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      [v14 suspendTracking];
      v60 = *&a5->var0;
      *&v61 = a5->var3;
      [v14 applyScaleToFitFrame:&v60 withComponentTime:v42 relativeRect:{v44, v46, v48, x, y, width, height}];
    }
  }
}

+ (BOOL)makeOverlayTrackedMaintainingAppearance:(id)a3 atTime:(id *)a4 newTrackingType:(int64_t)a5 arMetadata:(id)a6 playableInterfaceOrientation:(int64_t)a7
{
  v12 = a3;
  v13 = a6;
  v14 = [v12 trackingProps];
  v15 = [v14 currentTrackingType];

  if (a5)
  {
    _ZF = v15 == a5;
  }

  else
  {
    _ZF = 1;
  }

  v17 = !_ZF;
  if (!_ZF)
  {
    [a1 JFX_compositionBounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [v13 faceAnchor];
    [JFXFaceTrackingUtilities rollAngleFromFaceAnchor:v26 forInterfaceOrientation:a7];
    v28 = v27;

    if (v15)
    {
      *&STACK[0x700] = *&a4->var0;
      STACK[0x710] = a4->var3;
      [v12 effectCenterAtTime:&STACK[0x700] forcePosterFrame:1 includeTransformAnimation:1 includePlayableAspectScale:1 relativeTo:1 basisOrigin:{v19, v21, v23, v25}];
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
      if (v12)
      {
        v123 = *&a4->var0;
        *&v124.f64[0] = a4->var3;
        [v12 transformAtTime:&v123 forcePosterFrame:1 includeTransformAnimation:0 includePlayableAspectScale:1 relativeTo:1 basisOrigin:{v19, v21, v23, v25}];
      }

      v33 = [v12 trackingProps];
      [v33 setTrackingType:a5];

      v34 = [v12 faceTrackingTransform];

      if (!v34)
      {
        [a1 applyCameraTrackingTransformToOverlay:v12 withARMetadata:v13 playableInterfaceOrientation:a7];
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
      if (v12)
      {
        v115 = *&a4->var0;
        *&v116.f64[0] = a4->var3;
        [v12 transformAtTime:&v115 forcePosterFrame:1 includeTransformAnimation:0 includePlayableAspectScale:1 relativeTo:1 basisOrigin:{v19, v21, v23, v25}];
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
      if (a5 == 2)
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
      t2 = *&a4->var0;
      *&t2_16 = a4->var3;
      [a1 addTransformToEffect:v12 transform:&t1 relativeToBounds:&t2 time:0 restrictToBounds:{v19, v21, v23, v25}];
      t1 = *&a4->var0;
      *&t1_16.f64[0] = a4->var3;
      [v12 effectCenterAtTime:&t1 forcePosterFrame:1 includeTransformAnimation:1 includePlayableAspectScale:1 relativeTo:1 basisOrigin:{v19, v21, v23, v25}];
      CGAffineTransformMakeTranslation(&t1, v30 - v49, v32 - v50);
      t2 = *&a4->var0;
      *&t2_16 = a4->var3;
      [a1 addTransformToEffect:v12 transform:&t1 relativeToBounds:&t2 time:0 restrictToBounds:{v19, v21, v23, v25}];
    }

    else
    {
      v40 = [v12 renderEffect];
      [v40 outputSize];
      v42.f64[1] = v41;
      v102 = v42;

      if (v12)
      {
        [v12 topLevelTransform];
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

      *&STACK[0x700] = *&a4->var0;
      STACK[0x710] = a4->var3;
      [v12 imageFrameAtTime:&STACK[0x700] forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{v19, v21, v23, v25}];
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v63 = [v12 trackingProps];
      [v63 setTrackingType:a5];

      v64 = [v12 faceTrackingTransform];

      if (!v64)
      {
        [a1 applyCameraTrackingTransformToOverlay:v12 withARMetadata:v13 playableInterfaceOrientation:a7];
      }

      v65 = [v12 faceTrackingTransform];
      if (a5 == 1)
      {
        v66 = [v12 faceTrackingTransform];
        v67 = JFXMakeFaceTrackedEffectTransformFaceCamera(v66);
        [v12 setFaceTrackingTransform:v67];

        *&STACK[0x700] = *&a4->var0;
        STACK[0x710] = a4->var3;
        [v12 applyScaleToFitFrame:&STACK[0x700] withComponentTime:v56 relativeRect:{v58, v60, v62, v19, v21, v23, v25}];
        [v12 setFaceTrackingTransform:v65];
      }

      else
      {
        *&STACK[0x700] = *&a4->var0;
        STACK[0x710] = a4->var3;
        [v12 applyScaleToFitFrame:&STACK[0x700] withComponentTime:v56 relativeRect:{v58, v60, v62, v19, v21, v23, v25}];
      }

      LODWORD(v109.f64[1]) = 0;
      v109.f64[0] = 0.0;
      v68 = [v12 faceTrackingTransform];
      [v68 transformForTrackingType:a5];
      v69 = [v12 faceTrackingTransform];
      [v69 cameraTransform];
      v100 = v71;
      v101 = v70;
      vars0 = v73;
      v99 = v72;
      v74 = [v12 faceTrackingTransform];
      [v74 cameraProjection];
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
      if (v12)
      {
        [v12 topLevelTransform];
      }

      if (a5 == 1)
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
      [v12 setTopLevelTransform:{&v123, v101, v100, v99, vars0, v93, v94, v95, v96, *&v97}];
    }
  }

  return v17;
}

+ (void)applyCameraTrackingTransformToOverlay:(id)a3 withARMetadata:(id)a4 playableInterfaceOrientation:(int64_t)a5
{
  v13 = a3;
  v7 = a4;
  v8 = [v7 faceAnchor];

  if (v8)
  {
    +[JFXMediaSettings compositionSize];
    [v13 playableRectInOutputSize:?];
    v11 = [[JFXFaceTrackingTransformCalculator alloc] initWithARMetaData:v7 outputSize:a5 playableInterfaceOrientation:v9, v10];
    v12 = [(JFXFaceTrackingTransformCalculator *)v11 calculateFaceTrackingTransform];
    [v13 setFaceTrackingTransform:v12];
  }
}

+ (CGPoint)JFX_convertPoint:(CGPoint)a3 fromSize:(CGSize)a4 toSize:(CGSize)a5 invertY:(BOOL)a6
{
  v6 = a3.x / a4.width;
  v7 = a3.y / a4.height;
  if (a6)
  {
    v7 = 1.0 - v7;
  }

  v8 = v6 * a5.width;
  v9 = a5.height * v7;
  result.y = v9;
  result.x = v8;
  return result;
}

+ (int64_t)trackingTypeForOverlayPointIntersectionWithFaceRect:(CGPoint)a3 atTime:(id *)a4 relativeTo:(CGRect)a5 defaultTrackingType:(int64_t)a6 faceAnchor:(id)a7 transformAnimation:(id)a8 playableMediaContentMode:(int)a9 playableInterfaceOrientation:(int64_t)a10 playableAspectRatio:(int64_t)a11 playableAspectRatioPreservationMode:(int64_t)a12
{
  if (!a7)
  {
    return 0;
  }

  y = a3.y;
  x = a3.x;
  v15 = *a4;
  [a1 JFX_currentFaceRectRelativeToBounds:&v15 atTime:a7 faceAnchor:a8 transformAnimation:*&a9 playableMediaContentMode:a10 playableInterfaceOrientation:a11 playableAspectRatio:a5.origin.x playableAspectRatioPreservationMode:{a5.origin.y, a5.size.width, a5.size.height, a12}];
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

+ (CGPoint)JFX_closeButtonInsetForEffect:(id)a3 viewBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [a3 closeButtonInset];
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

+ (CGPoint)removeButtonPositionForEffect:(id)a3 atTime:(id *)a4 atPosterFrameRelativeToBounds:(CGRect)a5 viewCorrectionTransform:(CGAffineTransform *)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
    v15 = [v14 includeDropShadowWhenPositioningCloseButton];
    if (([a1 isFaceTrackingDataAvailable] & 1) == 0)
    {
      v16 = [v14 trackingProps];
      v17 = [v16 currentTrackingType];

      if (v17)
      {
        v18 = 1.79769313e308;
        v19 = 1.79769313e308;
LABEL_34:

        goto LABEL_35;
      }
    }

    v20 = a6;
    v21 = [JFXEffectEditingUtilities textForEffect:v14];
    v22 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v23 = v21;
    v24 = [v21 stringByTrimmingCharactersInSet:v22];
    v25 = [v24 length];

    if (!v25)
    {
      [JFXEffectEditingUtilities updateEffectText:v14 newText:@"!"];
    }

    v56.a = *&a4->var0;
    *&v56.b.x = a4->var3;
    v26 = [JFXOverlayEffectFrame frameWithEffect:v14 relativeToSize:1 origin:&v56 time:1 forcePosterFrame:v15 includeDropShadow:0 includeTextFrames:width, height];
    v27 = v26;
    if (v26)
    {
      [v26 cornerPoints];
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

    [a1 JFX_closeButtonInsetForEffect:v14 viewBounds:{x, y, width, height}];
    v53 = v37;
    v54 = v36;
    v38 = [v14 topLevelTransformObject];
    v39 = v38;
    if (v38)
    {
      [v38 SIMDFloat4x4];
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
    v44 = *&v20->c;
    v56.a = *&v20->a;
    v56.b = v44;
    v56.c = *&v20->tx;
    if (CGAffineTransformIsIdentity(&v56))
    {
      v45 = v55;
LABEL_33:
      v19 = v45.f64[0] + v29;
      v18 = v45.f64[1] + v31;

      goto LABEL_34;
    }

    v46 = atan2(v20->b, v20->a);
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
    v45 = vaddq_f64(*&v20->tx, vmlaq_n_f64(vmulq_laneq_f64(*&v20->c, v55, 1), *&v20->a, v55.f64[0]));
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

+ (CGPoint)spacingBetweenCenterPointOfEffect:(id)a3 point:(CGPoint)a4 relativeToBounds:(CGRect)a5 atTime:(id *)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4.y;
  v12 = a4.x;
  v13 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memset(&v20[1], 0, sizeof(PVCGPointQuad));
    if (v13)
    {
      v20[0].a = *&a6->var0;
      *&v20[0].b.x = a6->var3;
      [v13 cornersAtTime:v20 forcePosterFrame:1 includeDropShadow:1 scale:1 relativeTo:1.0 basisOrigin:{1.0, x, y, width, height}];
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

+ (void)addTransformToEffect:(id)a3 transform:(CGAffineTransform *)a4 relativeToBounds:(CGRect)a5 time:(id *)a6 restrictToBounds:(BOOL)a7
{
  v7 = a7;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
    v17 = v16;
    if (v16)
    {
      v25 = 0u;
      v26 = 0u;
      v18 = *&a4->c;
      v21 = *&a4->a;
      v22 = v18;
      v23 = *&a4->tx;
      v24 = 0u;
      v19 = *&a6->var0;
      var3 = a6->var3;
      [v16 addTransform:&v21 withComponentTime:&v19 relativeTo:1 basisOrigin:v7 restrictToBounds:{x, y, width, height}];
      v21 = v24;
      v22 = v25;
      v23 = v26;
      [a1 JFX_ApplyTextFlipIfNeeded:v17 transform:&v21];
    }
  }
}

+ (void)JFX_ApplyTextFlipIfNeeded:(id)a3 transform:(CGAffineTransform *)a4
{
  v16 = a3;
  v6 = atan2(a4->b, a4->a);
  v7 = [v16 supportsFlippingText];
  v8 = [v16 supportsFlippingTail];
  v9 = v8;
  if ((v7 & 1) != 0 || v8)
  {
    if ([a1 isStreamingMode])
    {
      v10 = [v16 trackingProps];
      v11 = [v10 currentTrackingType];

      if (v11 != 1)
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
      if (v7)
      {
        [v16 setFlipText:1];
      }

      if (v9)
      {
LABEL_24:
        [v16 setFlipTail:v15];
      }
    }

    else
    {
      if (v7)
      {
        [v16 setFlipText:0];
      }

      if (v9)
      {
        goto LABEL_24;
      }
    }
  }
}

+ (void)updateEffectText:(id)a3 newText:(id)a4
{
  v7 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v7;
    if (!v5 || ![(__CFString *)v5 length])
    {

      v5 = @" ";
    }

    [v6 setString:v5 atIndex:0];
  }
}

+ (void)updateEffectToDefaultTextIfEmpty:(id)a3
{
  v13 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v13;
    v4 = [v3 strings];
    v5 = [v4 firstObject];
    v6 = [v5 string];

    v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v8 = [v6 stringByTrimmingCharactersInSet:v7];
    v9 = [v8 length];

    if (!v9)
    {
      v10 = [v3 defaultAttributedString:0];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 string];
        [v3 setString:v12 atIndex:0];
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

+ (id)textForEffect:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = &stru_28553D028;
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 strings];
    v6 = [v5 firstObject];
    v7 = [v6 string];

    if (v7)
    {
      v4 = v7;
    }
  }

  return v4;
}

+ (void)JFX_setTextRenderingEnabledForEffect:(id)a3 value:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4)
    {
      [v5 endTextEditing];
    }

    else
    {
      [v5 beginTextEditing];
    }
  }
}

+ (void)beginTextEditingForEffect:(id)a3
{
  v6 = a3;
  v4 = [v6 effectID];
  v5 = [a1 shouldRenderTextWithMotionWhileEditingTextForEffectID:v4];

  if ((v5 & 1) == 0)
  {
    [a1 JFX_setTextRenderingEnabledForEffect:v6 value:0];
  }
}

+ (void)endTextEditingForEffect:(id)a3
{
  v6 = a3;
  v4 = [v6 effectID];
  v5 = [a1 shouldRenderTextWithMotionWhileEditingTextForEffectID:v4];

  if ((v5 & 1) == 0)
  {
    [a1 JFX_setTextRenderingEnabledForEffect:v6 value:1];
  }
}

+ (BOOL)canEditTextForEffect:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 textBakedIn])
    {
      v5 = 0;
    }

    else
    {
      v6 = [v4 defaultAttributedString:0];
      v7 = [v6 string];
      v5 = [v7 length] != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldAutoEditTextForEffect:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) == 0 || ([v3 isEmoji] & 1) == 0;

  return v4;
}

+ (unint64_t)maximumTextLengthForEffect:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 maxCharacters];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (id)newTextEditingPropertiesForEffect:(id)a3 relativeTo:(CGRect)a4 atTime:(id *)a5 withNewText:(id)a6 moveBeforeScalingToAvoidKeyboard:(BOOL)a7
{
  v7 = a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v15 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = *&a5->var0;
    var3 = a5->var3;
    v16 = [JFXEffectTextEditingProperties textEditingPropertiesWithTextEffect:v14 withText:v15 relativeTo:&v18 atTime:0 index:v7 moveBeforeScalingToAvoidKeyboard:x, y, width, height];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)shouldRenderTextWithMotionWhileEditingTextForEffectID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D418C0]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D418C8]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D419B8]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D419C0]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D41998]))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*MEMORY[0x277D419B0]];
  }

  return v4;
}

+ (void)enableAnimationForEffects:(id)a3 animationStartTime:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        [v10 enablePresentationState:0];
        if ([v10 type] == 2)
        {
          v20 = 0u;
          v21 = 0u;
          v19 = 0u;
          v11 = [v10 renderEffect];
          v12 = v11;
          if (v11)
          {
            [v11 effectRange];
          }

          else
          {
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
          }

          *&v20 = a4->var3;
          v13 = *&a4->var0;
          v18 = v21;
          v19 = v13;
          v16 = v13;
          v17 = v20;
          v14 = [v10 renderEffect];
          v15[0] = v16;
          v15[1] = v17;
          v15[2] = v18;
          [v14 setEffectRange:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }
}

+ (void)disableAnimationForEffects:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) enablePresentationState:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (BOOL)isFaceTrackingDataAvailable
{
  v2 = +[JFXVideoCameraController sharedInstance];
  v3 = [v2 hasValidFaceData];

  return v3;
}

+ (CGRect)currentFaceRectRelativeToBounds:(CGRect)a3 atTime:(id *)a4 transformAnimation:(id)a5 playableMediaContentMode:(int)a6 playableInterfaceOrientation:(int64_t)a7 playableAspectRatio:(int64_t)a8 playableAspectRatioPreservationMode:(int64_t)a9
{
  v12 = *&a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = a5;
  v20 = +[JFXVideoCameraController sharedInstance];
  v21 = [v20 mostRecentARMetadata];
  v22 = [v21 faceAnchor];

  v35 = *a4;
  [a1 JFX_currentFaceRectRelativeToBounds:&v35 atTime:v22 faceAnchor:v19 transformAnimation:v12 playableMediaContentMode:a7 playableInterfaceOrientation:a8 playableAspectRatio:x playableAspectRatioPreservationMode:{y, width, height, a9}];
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

+ (CGRect)JFX_currentFaceRectRelativeToBounds:(CGRect)a3 atTime:(id *)a4 faceAnchor:(id)a5 transformAnimation:(id)a6 playableMediaContentMode:(int)a7 playableInterfaceOrientation:(int64_t)a8 playableAspectRatio:(int64_t)a9 playableAspectRatioPreservationMode:(int64_t)a10
{
  v12 = *&a7;
  height = a3.size.height;
  width = a3.size.width;
  v17 = a6;
  v18 = a5;
  v19 = multiplierForAspectRatio(a9);
  v20 = PVViewContentModeFromAspectRatioPreservationMode(a10);
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
  [JFXFaceTrackingUtilities faceRectInImageWithFaceAnchor:v18 invertY:1 interfaceOrientation:a8 imageResolution:&v55];
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
  *&v50.time.value = *&a4->var0;
  v50.time.epoch = a4->var3;
  if ([MEMORY[0x277D416B0] getTransformInfoFromAnimation:v17 atTime:&v50 renderSize:v12 contentMode:0 invertY:&v54 outInfo:{v19, v21}])
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