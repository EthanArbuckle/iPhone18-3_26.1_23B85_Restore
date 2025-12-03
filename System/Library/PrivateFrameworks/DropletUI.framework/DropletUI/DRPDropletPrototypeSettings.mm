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
- (void)setEdgeContentPresentedCenterXAnimationSettings:(id)settings;
- (void)setEdgeContentPresentedCenterYAnimationSettings:(id)settings;
- (void)setEdgeContentPresentedContainerHeightAnimationSettings:(id)settings;
- (void)setEdgeContentPresentedContainerWidthAnimationSettings:(id)settings;
- (void)setEdgeContentPresentedKeylineAdaptiveColorMatrix:(id)matrix;
- (void)setEdgeContentPresentedKeylineInnerWidth:(double)width;
- (void)setEdgeContentPresentedKeylineOuterWidth:(double)width;
- (void)setEdgeContentPresentedKeylineStyleAnimationSettings:(id)settings;
- (void)setEdgeHintCenterXAnimationSettings:(id)settings;
- (void)setEdgeHintCenterYAnimationSettings:(id)settings;
- (void)setEdgeHintContainerHeightAnimationSettings:(id)settings;
- (void)setEdgeHintContainerWidthAnimationSettings:(id)settings;
- (void)setEdgeHintKeylineAdaptiveColorMatrix:(id)matrix;
- (void)setEdgeHintKeylineInnerWidth:(double)width;
- (void)setEdgeHintKeylineOuterWidth:(double)width;
- (void)setEdgeHintKeylineStyleAnimationSettings:(id)settings;
- (void)setIntelligentEdgeLightEDRGainAmount:(double)amount;
- (void)setIntelligentEdgeLightKeylineStyleColorMatrix:(id)matrix;
- (void)setIntelligentEdgeLightKeylineStyleDefaultBehaviorSettings:(id)settings;
- (void)setIntelligentEdgeLightKeylineStyleHardAlpha:(double)alpha;
- (void)setIntelligentEdgeLightKeylineStyleHardLargeAmount:(double)amount;
- (void)setIntelligentEdgeLightKeylineStyleHardLargeBlurRadius:(double)radius;
- (void)setIntelligentEdgeLightKeylineStyleHardLargeEnd:(double)end;
- (void)setIntelligentEdgeLightKeylineStyleHardLargeStart:(double)start;
- (void)setIntelligentEdgeLightKeylineStyleHardRimIsSoft:(BOOL)soft;
- (void)setIntelligentEdgeLightKeylineStyleHardScreenBlendMode:(BOOL)mode;
- (void)setIntelligentEdgeLightKeylineStyleHardSmallWidth:(double)width;
- (void)setIntelligentEdgeLightKeylineStyleSoftAlpha:(double)alpha;
- (void)setIntelligentEdgeLightKeylineStyleSoftLargeAmount:(double)amount;
- (void)setIntelligentEdgeLightKeylineStyleSoftLargeBlurRadius:(double)radius;
- (void)setIntelligentEdgeLightKeylineStyleSoftLargeEnd:(double)end;
- (void)setIntelligentEdgeLightKeylineStyleSoftLargeStart:(double)start;
- (void)setIntelligentEdgeLightKeylineStyleSoftRimIsSoft:(BOOL)soft;
- (void)setIntelligentEdgeLightKeylineStyleSoftScreenBlendMode:(BOOL)mode;
- (void)setIntelligentEdgeLightKeylineStyleSoftSmallWidth:(double)width;
- (void)setRightEdgeHintDropletRadius:(double)radius;
- (void)setRightEdgeHintSize:(double)size;
- (void)setSuppressCompositingFilterDestOut:(BOOL)out;
- (void)setSuppressCompositingFilterMultiply:(BOOL)multiply;
- (void)setSuppressDropletEffectFilters:(BOOL)filters;
@end

@implementation DRPDropletPrototypeSettings

- (BOOL)suppressCompositingFilterMultiply
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressCompositingFilterMultiply;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSuppressCompositingFilterMultiply:(BOOL)multiply
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressCompositingFilterMultiply;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = multiply;
}

- (BOOL)suppressCompositingFilterDestOut
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressCompositingFilterDestOut;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSuppressCompositingFilterDestOut:(BOOL)out
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressCompositingFilterDestOut;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = out;
}

- (BOOL)suppressDropletEffectFilters
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressDropletEffectFilters;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setSuppressDropletEffectFilters:(BOOL)filters
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressDropletEffectFilters;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = filters;
}

- (double)rightEdgeHintSize
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_rightEdgeHintSize;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setRightEdgeHintSize:(double)size
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_rightEdgeHintSize;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = size;
}

- (double)rightEdgeHintDropletRadius
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_rightEdgeHintDropletRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setRightEdgeHintDropletRadius:(double)radius
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_rightEdgeHintDropletRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = radius;
}

- (double)edgeHintKeylineInnerWidth
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineInnerWidth;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintKeylineInnerWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineInnerWidth;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = width;
}

- (double)edgeHintKeylineOuterWidth
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineOuterWidth;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintKeylineOuterWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineOuterWidth;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = width;
}

- (SUIAColorMatrixPrototypeSettings)edgeHintKeylineAdaptiveColorMatrix
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineAdaptiveColorMatrix;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintKeylineAdaptiveColorMatrix:(id)matrix
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineAdaptiveColorMatrix;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = matrix;
  matrixCopy = matrix;
}

- (SUIAFluidBehaviorSettings)edgeHintCenterXAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintCenterXAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintCenterXAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintCenterXAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)edgeHintCenterYAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintCenterYAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintCenterYAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintCenterYAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)edgeHintContainerWidthAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintContainerWidthAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintContainerWidthAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintContainerWidthAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)edgeHintContainerHeightAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintContainerHeightAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintContainerHeightAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintContainerHeightAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)edgeHintKeylineStyleAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineStyleAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeHintKeylineStyleAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineStyleAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (double)edgeContentPresentedKeylineInnerWidth
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineInnerWidth;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedKeylineInnerWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineInnerWidth;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = width;
}

- (double)edgeContentPresentedKeylineOuterWidth
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineOuterWidth;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedKeylineOuterWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineOuterWidth;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = width;
}

- (SUIAColorMatrixPrototypeSettings)edgeContentPresentedKeylineAdaptiveColorMatrix
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineAdaptiveColorMatrix;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedKeylineAdaptiveColorMatrix:(id)matrix
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineAdaptiveColorMatrix;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = matrix;
  matrixCopy = matrix;
}

- (SUIAFluidBehaviorSettings)edgeContentPresentedCenterXAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedCenterXAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedCenterXAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedCenterXAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)edgeContentPresentedCenterYAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedCenterYAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedCenterYAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedCenterYAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)edgeContentPresentedContainerWidthAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedContainerWidthAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedContainerWidthAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedContainerWidthAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)edgeContentPresentedContainerHeightAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedContainerHeightAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedContainerHeightAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedContainerHeightAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAFluidBehaviorSettings)edgeContentPresentedKeylineStyleAnimationSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineStyleAnimationSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setEdgeContentPresentedKeylineStyleAnimationSettings:(id)settings
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineStyleAnimationSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (BOOL)intelligentEdgeLightKeylineStyleSoftScreenBlendMode
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftScreenBlendMode;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftScreenBlendMode:(BOOL)mode
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftScreenBlendMode;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = mode;
}

- (double)intelligentEdgeLightKeylineStyleSoftAlpha
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftAlpha;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftAlpha:(double)alpha
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftAlpha;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = alpha;
}

- (double)intelligentEdgeLightKeylineStyleSoftLargeBlurRadius
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftLargeBlurRadius:(double)radius
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = radius;
}

- (double)intelligentEdgeLightKeylineStyleSoftLargeAmount
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftLargeAmount:(double)amount
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = amount;
}

- (double)intelligentEdgeLightKeylineStyleSoftLargeStart
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeStart;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftLargeStart:(double)start
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeStart;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = start;
}

- (double)intelligentEdgeLightKeylineStyleSoftLargeEnd
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeEnd;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftLargeEnd:(double)end
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeEnd;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = end;
}

- (BOOL)intelligentEdgeLightKeylineStyleSoftRimIsSoft
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftRimIsSoft;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftRimIsSoft:(BOOL)soft
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftRimIsSoft;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = soft;
}

- (double)intelligentEdgeLightKeylineStyleSoftSmallWidth
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftSmallWidth;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleSoftSmallWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftSmallWidth;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = width;
}

- (BOOL)intelligentEdgeLightKeylineStyleHardScreenBlendMode
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardScreenBlendMode;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardScreenBlendMode:(BOOL)mode
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardScreenBlendMode;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = mode;
}

- (double)intelligentEdgeLightKeylineStyleHardAlpha
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardAlpha;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardAlpha:(double)alpha
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardAlpha;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = alpha;
}

- (double)intelligentEdgeLightKeylineStyleHardLargeBlurRadius
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeBlurRadius;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardLargeBlurRadius:(double)radius
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeBlurRadius;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = radius;
}

- (double)intelligentEdgeLightKeylineStyleHardLargeAmount
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardLargeAmount:(double)amount
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = amount;
}

- (double)intelligentEdgeLightKeylineStyleHardLargeStart
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeStart;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardLargeStart:(double)start
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeStart;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = start;
}

- (double)intelligentEdgeLightKeylineStyleHardLargeEnd
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeEnd;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardLargeEnd:(double)end
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeEnd;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = end;
}

- (BOOL)intelligentEdgeLightKeylineStyleHardRimIsSoft
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardRimIsSoft;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardRimIsSoft:(BOOL)soft
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardRimIsSoft;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = soft;
}

- (double)intelligentEdgeLightKeylineStyleHardSmallWidth
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardSmallWidth;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleHardSmallWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardSmallWidth;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = width;
}

- (double)intelligentEdgeLightEDRGainAmount
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightEDRGainAmount;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightEDRGainAmount:(double)amount
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightEDRGainAmount;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = amount;
}

- (SUIAColorMatrixPrototypeSettings)intelligentEdgeLightKeylineStyleColorMatrix
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleColorMatrix;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleColorMatrix:(id)matrix
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleColorMatrix;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = matrix;
  matrixCopy = matrix;
}

- (SUIAFluidBehaviorSettings)intelligentEdgeLightKeylineStyleDefaultBehaviorSettings
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleDefaultBehaviorSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setIntelligentEdgeLightKeylineStyleDefaultBehaviorSettings:(id)settings
{
  v5 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleDefaultBehaviorSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (void)setDefaultValues
{
  selfCopy = self;
  DRPDropletPrototypeSettings.setDefaultValues()();
}

+ (id)settingsControllerModule
{
  _sSo27DRPDropletPrototypeSettingsC9DropletUIE24settingsControllerModuleSo8PTModuleCSgyFZ_0();

  return v2;
}

@end