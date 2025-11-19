@interface DRPDropletPrototypeSettings
+ (id)settingsControllerModule;
- (BOOL)intelligentEdgeLightKeylineStyleHardRimIsSoft;
- (BOOL)intelligentEdgeLightKeylineStyleHardScreenBlendMode;
- (BOOL)intelligentEdgeLightKeylineStyleSoftRimIsSoft;
- (BOOL)intelligentEdgeLightKeylineStyleSoftScreenBlendMode;
- (BOOL)suppressCompositingFilterDestOut;
- (BOOL)suppressCompositingFilterMultiply;
- (BOOL)suppressDropletEffectFilters;
- (SUIAColorMatrixPrototypeSettings)edgeContentPresentedKeylineAdaptiveColorMatrix;
- (SUIAColorMatrixPrototypeSettings)edgeHintKeylineAdaptiveColorMatrix;
- (SUIAColorMatrixPrototypeSettings)intelligentEdgeLightKeylineStyleColorMatrix;
- (SUIAFluidBehaviorSettings)edgeContentPresentedCenterXAnimationSettings;
- (SUIAFluidBehaviorSettings)edgeContentPresentedCenterYAnimationSettings;
- (SUIAFluidBehaviorSettings)edgeContentPresentedContainerHeightAnimationSettings;
- (SUIAFluidBehaviorSettings)edgeContentPresentedContainerWidthAnimationSettings;
- (SUIAFluidBehaviorSettings)edgeContentPresentedKeylineStyleAnimationSettings;
- (SUIAFluidBehaviorSettings)edgeHintCenterXAnimationSettings;
- (SUIAFluidBehaviorSettings)edgeHintCenterYAnimationSettings;
- (SUIAFluidBehaviorSettings)edgeHintContainerHeightAnimationSettings;
- (SUIAFluidBehaviorSettings)edgeHintContainerWidthAnimationSettings;
- (SUIAFluidBehaviorSettings)edgeHintKeylineStyleAnimationSettings;
- (SUIAFluidBehaviorSettings)intelligentEdgeLightKeylineStyleDefaultBehaviorSettings;
- (double)edgeContentPresentedKeylineInnerWidth;
- (double)edgeContentPresentedKeylineOuterWidth;
- (double)edgeHintKeylineInnerWidth;
- (double)edgeHintKeylineOuterWidth;
- (double)intelligentEdgeLightEDRGainAmount;
- (double)intelligentEdgeLightKeylineStyleHardAlpha;
- (double)intelligentEdgeLightKeylineStyleHardLargeAmount;
- (double)intelligentEdgeLightKeylineStyleHardLargeBlurRadius;
- (double)intelligentEdgeLightKeylineStyleHardLargeEnd;
- (double)intelligentEdgeLightKeylineStyleHardLargeStart;
- (double)intelligentEdgeLightKeylineStyleHardSmallWidth;
- (double)intelligentEdgeLightKeylineStyleSoftAlpha;
- (double)intelligentEdgeLightKeylineStyleSoftLargeAmount;
- (double)intelligentEdgeLightKeylineStyleSoftLargeBlurRadius;
- (double)intelligentEdgeLightKeylineStyleSoftLargeEnd;
- (double)intelligentEdgeLightKeylineStyleSoftLargeStart;
- (double)intelligentEdgeLightKeylineStyleSoftSmallWidth;
- (double)rightEdgeHintDropletRadius;
- (double)rightEdgeHintSize;
- (void)setDefaultValues;
- (void)setEdgeContentPresentedCenterXAnimationSettings:(id)a3;
- (void)setEdgeContentPresentedCenterYAnimationSettings:(id)a3;
- (void)setEdgeContentPresentedContainerHeightAnimationSettings:(id)a3;
- (void)setEdgeContentPresentedContainerWidthAnimationSettings:(id)a3;
- (void)setEdgeContentPresentedKeylineAdaptiveColorMatrix:(id)a3;
- (void)setEdgeContentPresentedKeylineInnerWidth:(double)a3;
- (void)setEdgeContentPresentedKeylineOuterWidth:(double)a3;
- (void)setEdgeContentPresentedKeylineStyleAnimationSettings:(id)a3;
- (void)setEdgeHintCenterXAnimationSettings:(id)a3;
- (void)setEdgeHintCenterYAnimationSettings:(id)a3;
- (void)setEdgeHintContainerHeightAnimationSettings:(id)a3;
- (void)setEdgeHintContainerWidthAnimationSettings:(id)a3;
- (void)setEdgeHintKeylineAdaptiveColorMatrix:(id)a3;
- (void)setEdgeHintKeylineInnerWidth:(double)a3;
- (void)setEdgeHintKeylineOuterWidth:(double)a3;
- (void)setEdgeHintKeylineStyleAnimationSettings:(id)a3;
- (void)setIntelligentEdgeLightEDRGainAmount:(double)a3;
- (void)setIntelligentEdgeLightKeylineStyleColorMatrix:(id)a3;
- (void)setIntelligentEdgeLightKeylineStyleDefaultBehaviorSettings:(id)a3;
- (void)setIntelligentEdgeLightKeylineStyleHardAlpha:(double)a3;
- (void)setIntelligentEdgeLightKeylineStyleHardLargeAmount:(double)a3;
- (void)setIntelligentEdgeLightKeylineStyleHardLargeBlurRadius:(double)a3;
- (void)setIntelligentEdgeLightKeylineStyleHardLargeEnd:(double)a3;
- (void)setIntelligentEdgeLightKeylineStyleHardLargeStart:(double)a3;
- (void)setIntelligentEdgeLightKeylineStyleHardRimIsSoft:(BOOL)a3;
- (void)setIntelligentEdgeLightKeylineStyleHardScreenBlendMode:(BOOL)a3;
- (void)setIntelligentEdgeLightKeylineStyleHardSmallWidth:(double)a3;
- (void)setIntelligentEdgeLightKeylineStyleSoftAlpha:(double)a3;
- (void)setIntelligentEdgeLightKeylineStyleSoftLargeAmount:(double)a3;
- (void)setIntelligentEdgeLightKeylineStyleSoftLargeBlurRadius:(double)a3;
- (void)setIntelligentEdgeLightKeylineStyleSoftLargeEnd:(double)a3;
- (void)setIntelligentEdgeLightKeylineStyleSoftLargeStart:(double)a3;
- (void)setIntelligentEdgeLightKeylineStyleSoftRimIsSoft:(BOOL)a3;
- (void)setIntelligentEdgeLightKeylineStyleSoftScreenBlendMode:(BOOL)a3;
- (void)setIntelligentEdgeLightKeylineStyleSoftSmallWidth:(double)a3;
- (void)setRightEdgeHintDropletRadius:(double)a3;
- (void)setRightEdgeHintSize:(double)a3;
- (void)setSuppressCompositingFilterDestOut:(BOOL)a3;
- (void)setSuppressCompositingFilterMultiply:(BOOL)a3;
- (void)setSuppressDropletEffectFilters:(BOOL)a3;
@end

@implementation DRPDropletPrototypeSettings

- (BOOL)suppressCompositingFilterMultiply
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressCompositingFilterMultiply;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSuppressCompositingFilterMultiply:(BOOL)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressCompositingFilterMultiply;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)suppressCompositingFilterDestOut
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressCompositingFilterDestOut;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSuppressCompositingFilterDestOut:(BOOL)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressCompositingFilterDestOut;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)suppressDropletEffectFilters
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressDropletEffectFilters;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSuppressDropletEffectFilters:(BOOL)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressDropletEffectFilters;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)rightEdgeHintSize
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_rightEdgeHintSize;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setRightEdgeHintSize:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_rightEdgeHintSize;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)rightEdgeHintDropletRadius
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_rightEdgeHintDropletRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setRightEdgeHintDropletRadius:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_rightEdgeHintDropletRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)edgeHintKeylineInnerWidth
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineInnerWidth;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintKeylineInnerWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineInnerWidth;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)edgeHintKeylineOuterWidth
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineOuterWidth;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintKeylineOuterWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineOuterWidth;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SUIAColorMatrixPrototypeSettings)edgeHintKeylineAdaptiveColorMatrix
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineAdaptiveColorMatrix;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintKeylineAdaptiveColorMatrix:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineAdaptiveColorMatrix;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)edgeHintCenterXAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintCenterXAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintCenterXAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintCenterXAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)edgeHintCenterYAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintCenterYAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintCenterYAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintCenterYAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)edgeHintContainerWidthAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintContainerWidthAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintContainerWidthAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintContainerWidthAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)edgeHintContainerHeightAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintContainerHeightAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintContainerHeightAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintContainerHeightAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)edgeHintKeylineStyleAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineStyleAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintKeylineStyleAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineStyleAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (double)edgeContentPresentedKeylineInnerWidth
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineInnerWidth;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedKeylineInnerWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineInnerWidth;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)edgeContentPresentedKeylineOuterWidth
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineOuterWidth;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedKeylineOuterWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineOuterWidth;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SUIAColorMatrixPrototypeSettings)edgeContentPresentedKeylineAdaptiveColorMatrix
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineAdaptiveColorMatrix;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedKeylineAdaptiveColorMatrix:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineAdaptiveColorMatrix;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)edgeContentPresentedCenterXAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedCenterXAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedCenterXAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedCenterXAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)edgeContentPresentedCenterYAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedCenterYAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedCenterYAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedCenterYAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)edgeContentPresentedContainerWidthAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedContainerWidthAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedContainerWidthAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedContainerWidthAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)edgeContentPresentedContainerHeightAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedContainerHeightAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedContainerHeightAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedContainerHeightAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)edgeContentPresentedKeylineStyleAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineStyleAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedKeylineStyleAnimationSettings:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineStyleAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (BOOL)intelligentEdgeLightKeylineStyleSoftScreenBlendMode
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftScreenBlendMode;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftScreenBlendMode:(BOOL)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftScreenBlendMode;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightKeylineStyleSoftAlpha
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftAlpha;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftAlpha:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftAlpha;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightKeylineStyleSoftLargeBlurRadius
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftLargeBlurRadius:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightKeylineStyleSoftLargeAmount
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftLargeAmount:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightKeylineStyleSoftLargeStart
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeStart;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftLargeStart:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeStart;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightKeylineStyleSoftLargeEnd
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeEnd;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftLargeEnd:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeEnd;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)intelligentEdgeLightKeylineStyleSoftRimIsSoft
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftRimIsSoft;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftRimIsSoft:(BOOL)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftRimIsSoft;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightKeylineStyleSoftSmallWidth
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftSmallWidth;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftSmallWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftSmallWidth;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)intelligentEdgeLightKeylineStyleHardScreenBlendMode
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardScreenBlendMode;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardScreenBlendMode:(BOOL)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardScreenBlendMode;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightKeylineStyleHardAlpha
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardAlpha;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardAlpha:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardAlpha;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightKeylineStyleHardLargeBlurRadius
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardLargeBlurRadius:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightKeylineStyleHardLargeAmount
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardLargeAmount:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightKeylineStyleHardLargeStart
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeStart;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardLargeStart:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeStart;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightKeylineStyleHardLargeEnd
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeEnd;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardLargeEnd:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeEnd;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (BOOL)intelligentEdgeLightKeylineStyleHardRimIsSoft
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardRimIsSoft;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardRimIsSoft:(BOOL)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardRimIsSoft;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightKeylineStyleHardSmallWidth
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardSmallWidth;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardSmallWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardSmallWidth;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (double)intelligentEdgeLightEDRGainAmount
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightEDRGainAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightEDRGainAmount:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightEDRGainAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SUIAColorMatrixPrototypeSettings)intelligentEdgeLightKeylineStyleColorMatrix
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleColorMatrix;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleColorMatrix:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleColorMatrix;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAFluidBehaviorSettings)intelligentEdgeLightKeylineStyleDefaultBehaviorSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleDefaultBehaviorSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleDefaultBehaviorSettings:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleDefaultBehaviorSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)setDefaultValues
{
  v2 = self;
  DRPDropletPrototypeSettings.setDefaultValues()();
}

+ (id)settingsControllerModule
{
  _sSo27DRPDropletPrototypeSettingsC9DropletUIE24settingsControllerModuleSo8PTModuleCSgyFZ_0();

  return v2;
}

@end