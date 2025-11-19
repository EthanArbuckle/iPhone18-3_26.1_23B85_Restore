@interface JFXOverlayEffect
+ (id)dynamicTextPlaceholderMap;
+ (id)effectIDToImageSequenceIDMap;
- (BOOL)JFX_hasPosterFrame;
- (BOOL)JFX_posterFrameIsCachable;
- (BOOL)JFX_shouldEnableDynamicLineSpacingForDiacritics;
- (BOOL)enablePresentationState:(BOOL)a3;
- (BOOL)hasBackground;
- (BOOL)hasDynamicText;
- (BOOL)hitTestPoint:(CGPoint)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 relativeTo:(CGRect)a6 basisOrigin:(int)a7 adjustForMinimumSize:(BOOL)a8 normalizedMinimumSize:(id)a9;
- (BOOL)includeDropShadowWhenPositioningCloseButton;
- (BOOL)isAppearanceEqual:(id)a3 forPurpose:(unint64_t)a4;
- (BOOL)isCurrentlyTracking;
- (BOOL)isEmoji;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHidden;
- (BOOL)isTailFlipped;
- (BOOL)isTextFlipped;
- (BOOL)isTracked;
- (BOOL)loopedRangeRenderIsCacheable;
- (BOOL)objectBounds:(CGRect *)a3 time:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 includeMasks:(BOOL)a7;
- (BOOL)supportsFlippingTail;
- (BOOL)supportsFlippingText;
- (BOOL)wasDynamicTextSet;
- (CGAffineTransform)addTransform:(SEL)a3 withComponentTime:(CGAffineTransform *)a4 relativeTo:(id *)a5 basisOrigin:(CGRect)a6;
- (CGAffineTransform)addTransform:(SEL)a3 withComponentTime:(CGAffineTransform *)a4 relativeTo:(id *)a5 basisOrigin:(CGRect)a6 restrictToBounds:(int)a7;
- (CGPath)newPathsForHitTestingAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 relativeTo:(CGRect)a5 basisOrigin:(int)a6 adjustForMinimumSize:(BOOL)a7 normalizedMinimumSize:(id)a8 outExpandedPath:(const CGPath *)a9;
- (CGPoint)closeButtonInset;
- (CGPoint)effectCenterAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 includePlayableAspectScale:(BOOL)a6 relativeTo:(CGRect)a7 basisOrigin:(int)a8;
- (CGPoint)hitAreaScale;
- (CGPoint)screenPointToEffectPoint:(CGPoint)a3 withComponentTime:(id *)a4 relativeTo:(CGRect)a5 basisOrigin:(int)a6;
- (CGRect)hitAreaBoundingFrameAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeDropShadow:(BOOL)a5 adjustForMinimumSize:(BOOL)a6 normalizedMinimumSize:(id)a7 relativeTo:(CGRect)a8 basisOrigin:(int)a9;
- (CGRect)imageFrameAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeDropShadow:(BOOL)a5 relativeTo:(CGRect)a6 basisOrigin:(int)a7;
- (JFXOverlayEffect)initWithCoder:(id)a3;
- (JFXOverlayEffect)initWithEffectID:(id)a3;
- (NSString)dynamicTextString;
- (PVCGPointQuad)cornersAtTime:(SEL)a3 forcePosterFrame:(id *)a4 includeDropShadow:(BOOL)a5 scale:(BOOL)a6 relativeTo:(CGPoint)a7 basisOrigin:(CGRect)a8;
- (double)JFX_adjustedMinimumSizeFromNormalizedMinimumSize:(id)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 relativeTo:(CGRect)a6 basisOrigin:(int)a7;
- (double)customPickerRotation;
- (double)pickerScale;
- (double)transformAtTime:(uint64_t)a3@<X3> forcePosterFrame:(uint64_t)a4@<X4> includeTransformAnimation:(char)a5@<W5> includePlayableAspectScale:(uint64_t)a6@<X6> relativeTo:(__int128 *)a7@<X8> basisOrigin:(float64_t)a8@<D2>;
- (id)JFX_dynamicTextPlaceHolderText;
- (id)JFX_stringAtIndex:(unint64_t)a3;
- (id)accessibilityName;
- (id)contentProperties;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customPrimaryFillColor;
- (id)osfaToneMappingOption;
- (id)overlayContentDataSource;
- (id)serializableEffectParameters;
- (int64_t)rotatedAspectRatio;
- (uint64_t)transformAtTime:(__int128 *)a3 forcePosterFrame:(uint64_t)a4 relativeTo:(uint64_t)a5 basisOrigin:;
- (unint64_t)dynamicTextType;
- (unint64_t)hash;
- (unint64_t)maxCharacters;
- (void)JFX_applyEffectParametersForFaceTrackingTransform:(id)a3;
- (void)JFX_setupTrackingProps;
- (void)JFX_updateInteractiveMode;
- (void)applyScaleToFitFrame:(CGRect)a3 withComponentTime:(id *)a4 relativeRect:(CGRect)a5 restrictToBounds:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
- (void)renderEffectWillLoad;
- (void)resetDynamicTextString;
- (void)resumeTracking;
- (void)rotate:(double)a3 aroundPoint:(CGPoint)a4 withComponentTime:(id *)a5 relativeTo:(CGRect)a6 basisOrigin:(int)a7;
- (void)setDynamicTextString:(id)a3;
- (void)setFaceTrackingTransform:(id)a3;
- (void)setFlipTail:(BOOL)a3;
- (void)setFlipText:(BOOL)a3;
- (void)setForceRenderAtPosterFrame:(BOOL)a3;
- (void)setImageSequencePathToBundledAssets;
- (void)setPosition:(CGPoint)a3 withComponentTime:(id *)a4 relativeTo:(CGRect)a5 basisOrigin:(int)a6 restrictToBounds:(BOOL)a7;
- (void)setSingleLineScaleThreshold:(double)a3;
- (void)setTrackingProps:(id)a3;
- (void)suspendTracking;
- (void)trackedEffectProperties:(id)a3 didChangeTrackingType:(BOOL)a4 didChangeEnabled:(BOOL)a5;
- (void)updateDynamicTextWithCompletionBlock:(id)a3;
- (void)updateRenderSizeMaintainingAppearance:(CGSize)a3 withComponentTime:(id *)a4;
- (void)updateRenderSizeMaintainingRelativeSizeAndPosition:(CGSize)a3 toSize:(CGSize)a4 withComponentTime:(id *)a5;
- (void)updateRenderSizeMaintainingSizeAndPositionRelativeToMedia:(CGSize)a3 mediaSize:(CGSize)a4 mediaContentMode:(int)a5;
@end

@implementation JFXOverlayEffect

- (JFXOverlayEffect)initWithEffectID:(id)a3
{
  v16.receiver = self;
  v16.super_class = JFXOverlayEffect;
  v3 = [(JFXEffect *)&v16 initWithEffectID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(JFXOverlayEffect *)v3 JFX_posterFrameIsCachable];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    [(JFXEffect *)v4 setParameter:v6 forKey:*MEMORY[0x277D41A50]];

    if ([(JFXOverlayEffect *)v4 JFX_shouldEnableDynamicLineSpacingForDiacritics])
    {
      [(JFXTextEffect *)v4 enableDynamicLineSpacingForDiacritics:1];
    }

    [(JFXTextEffect *)v4 setupLocalizedText];
    v7 = [MEMORY[0x277CCA8D8] jfxBundle];
    v8 = [v7 localizedStringForKey:@"Overlay Text Single Line Scale Threshold" value:&stru_28553D028 table:0];

    [v8 doubleValue];
    [(JFXOverlayEffect *)v4 setSingleLineScaleThreshold:?];
    v9 = objc_opt_new();
    trackingProps = v4->_trackingProps;
    v4->_trackingProps = v9;

    [(JFXOverlayEffect *)v4 JFX_setupTrackingProps];
    [(JFXOverlayEffect *)v4 customPickerRotation];
    if (v11 != 0.0)
    {
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [(JFXEffect *)v4 setParameter:v12 forKey:@"PickerRotation"];
    }

    v13 = [(JFXOverlayEffect *)v4 customPrimaryFillColor];
    if (v13)
    {
      [(JFXEffect *)v4 setParameter:v13 forKey:@"PrimaryFillColor"];
    }

    v14 = [(JFXOverlayEffect *)v4 osfaToneMappingOption];
    if (v14)
    {
      [(JFXEffect *)v4 setParameter:v14 forKey:*MEMORY[0x277D41A30]];
    }

    atomic_store(0, &v4->_isInteractiveEditingCount);
    atomic_store(0, &v4->_isEditingFaceTrackingTransformsCount);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = JFXOverlayEffect;
  v4 = [(JFXTextEffect *)&v12 copyWithZone:a3];
  v5 = [(JFXOverlayEffect *)self trackingProps];
  v6 = [v5 copy];
  [v4 setTrackingProps:v6];

  v7 = [(JFXOverlayEffect *)self faceTrackingTransform];
  v8 = [v7 copy];
  [v4 setFaceTrackingTransform:v8];

  v9 = [(JFXOverlayEffect *)self accessibilityOverlayEffectLabel];
  v10 = [v9 copy];
  [v4 setAccessibilityOverlayEffectLabel:v10];

  [v4 setPrefersTrackingNotActivateAutomatically:{-[JFXOverlayEffect prefersTrackingNotActivateAutomatically](self, "prefersTrackingNotActivateAutomatically")}];
  return v4;
}

- (JFXOverlayEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = JFXOverlayEffect;
  v5 = [(JFXEffect *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kJTAccessibilityOverlayEffectLabelKey"];
    accessibilityOverlayEffectLabel = v5->_accessibilityOverlayEffectLabel;
    v5->_accessibilityOverlayEffectLabel = v6;

    v5->_prefersTrackingNotActivateAutomatically = [v4 decodeBoolForKey:@"OverlayPrefersTrackingNotActivateAutomaticallyKey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"JTOverlayEffectTrackingPropsKey"];
    trackingProps = v5->_trackingProps;
    v5->_trackingProps = v8;

    [(JFXOverlayEffect *)v5 JFX_setupTrackingProps];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = JFXOverlayEffect;
  v4 = a3;
  [(JFXEffect *)&v7 encodeWithCoder:v4];
  v5 = [(JFXOverlayEffect *)self trackingProps:v7.receiver];
  [v4 encodeObject:v5 forKey:@"JTOverlayEffectTrackingPropsKey"];

  v6 = [(JFXOverlayEffect *)self accessibilityOverlayEffectLabel];
  [v4 encodeObject:v6 forKey:@"kJTAccessibilityOverlayEffectLabelKey"];

  [v4 encodeBool:-[JFXOverlayEffect prefersTrackingNotActivateAutomatically](self forKey:{"prefersTrackingNotActivateAutomatically"), @"OverlayPrefersTrackingNotActivateAutomaticallyKey"}];
}

- (id)serializableEffectParameters
{
  v5.receiver = self;
  v5.super_class = JFXOverlayEffect;
  v2 = [(JFXEffect *)&v5 serializableEffectParameters];
  v3 = [v2 mutableCopy];

  [v3 removeObjectForKey:*MEMORY[0x277D41B68]];
  [v3 removeObjectForKey:*MEMORY[0x277D41B58]];
  [v3 removeObjectForKey:*MEMORY[0x277D41A20]];
  [v3 removeObjectForKey:*MEMORY[0x277D41A28]];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = JFXOverlayEffect;
  if ([(JFXEffect *)&v10 isEqual:v4])
  {
    v5 = [v4 trackingProps];
    v6 = [v5 currentTrackingType];
    v7 = [(JFXOverlayEffect *)self trackingProps];
    v8 = v6 == [v7 currentTrackingType];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = JFXOverlayEffect;
  return [(JFXEffect *)&v3 hash];
}

- (BOOL)isAppearanceEqual:(id)a3 forPurpose:(unint64_t)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = JFXOverlayEffect;
  if ([(JFXTextEffect *)&v25 isAppearanceEqual:v6 forPurpose:a4])
  {
    v7 = v6;
    v8 = [v7 trackingProps];
    v9 = [v8 currentTrackingType];
    v10 = [(JFXOverlayEffect *)self trackingProps];
    v11 = [v10 currentTrackingType];

    v23 = 0;
    if (v9 == v11)
    {
      v12 = MEMORY[0x277D41690];
      v13 = [(JFXEffect *)self topLevelTransformObject];
      v14 = [v7 topLevelTransformObject];
      LODWORD(v12) = [v12 isMatrix:v13 equivalentTo:v14];

      if (v12)
      {
        v15 = [(JFXOverlayEffect *)self trackingProps];
        v16 = [v15 currentTrackingType];
        v17 = [v7 trackingProps];
        v18 = [v17 currentTrackingType];

        if (v16 == v18)
        {
          if (a4 == 1 || !-[JFXOverlayEffect isCurrentlyTracking](self, "isCurrentlyTracking") || (-[JFXOverlayEffect faceTrackingTransform](self, "faceTrackingTransform"), v19 = objc_claimAutoreleasedReturnValue(), [v7 faceTrackingTransform], v20 = objc_claimAutoreleasedReturnValue(), -[JFXOverlayEffect trackingProps](self, "trackingProps"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v19, "isEqual:forTrackingType:", v20, objc_msgSend(v21, "currentTrackingType")), v21, v20, v19, v22))
          {
            v23 = 1;
          }
        }
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)isEmoji
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [v4 isEmoji];
  }

  else
  {
    v4 = [(JFXEffect *)self effectID];
    v5 = [v4 isEqualToString:*MEMORY[0x277D417D0]];
  }

  v6 = v5;

  return v6;
}

- (BOOL)hasBackground
{
  v10 = 0u;
  v11 = 0u;
  v8 = *MEMORY[0x277CC08F0];
  v5 = v8;
  *&v9 = *(MEMORY[0x277CC08F0] + 16);
  v3 = v9;
  [(JFXOverlayEffect *)self objectBounds:&v10 time:&v8 forcePosterFrame:1 includeDropShadow:1 includeMasks:1];
  v8 = 0u;
  v9 = 0u;
  v6 = v5;
  v7 = v3;
  [(JFXTextEffect *)self textBounds:&v8 atIndex:0 time:&v6 forcePosterFrame:1 includeDropShadow:1 includeMasks:1];
  return *(&v11 + 1) > *(&v9 + 1);
}

- (void)renderEffectWillLoad
{
  v3.receiver = self;
  v3.super_class = JFXOverlayEffect;
  [(JFXEffect *)&v3 renderEffectWillLoad];
  [(JFXOverlayEffect *)self setImageSequencePathToBundledAssets];
}

- (id)overlayContentDataSource
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3 && (-[JFXEffect contentDataSource](self, "contentDataSource"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 conformsToProtocol:&unk_2855E40B8], v4, v5))
  {
    v6 = [(JFXEffect *)self contentDataSource];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contentProperties
{
  v3 = [(JFXOverlayEffect *)self overlayContentDataSource];
  if (v3)
  {
    v31.receiver = self;
    v31.super_class = JFXOverlayEffect;
    v4 = [(JFXTextEffect *)&v31 contentProperties];
    v5 = [v4 mutableCopy];

    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:15];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isLabel")}];
    [v6 setObject:v7 forKeyedSubscript:@"isLabel"];

    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "loopRenderRangeIsCachable")}];
    [v6 setObject:v8 forKeyedSubscript:@"loopRenderRangeIsCachable"];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "doesNotHavePosterFrame")}];
    [v6 setObject:v9 forKeyedSubscript:@"doesNotHavePosterFrame"];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "posterFrameIsNotCachable")}];
    [v6 setObject:v10 forKeyedSubscript:@"posterFrameIsNotCachable"];

    v11 = [v3 initialRotation];

    if (v11)
    {
      v12 = [v3 initialRotation];
      [v6 setObject:v12 forKeyedSubscript:@"initialRotation"];
    }

    v13 = [v3 primaryFillColor];

    if (v13)
    {
      v14 = [v3 primaryFillColor];
      [v6 setObject:v14 forKeyedSubscript:@"primaryFillColor"];
    }

    v15 = [v3 hitAreaScale];

    if (v15)
    {
      v16 = [v3 hitAreaScale];
      [v6 setObject:v16 forKeyedSubscript:@"hitAreaScale"];
    }

    v17 = [v3 pickerScale];

    if (v17)
    {
      v18 = [v3 pickerScale];
      [v6 setObject:v18 forKeyedSubscript:@"pickerScale"];
    }

    v19 = [v3 fontSize];

    if (v19)
    {
      v20 = [v3 fontSize];
      [v6 setObject:v20 forKeyedSubscript:@"fontSize"];
    }

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "dynamicTextType")}];
    [v6 setObject:v21 forKeyedSubscript:@"dynamicTextType"];

    v22 = [v3 dynamicTextPlaceholder];

    if (v22)
    {
      v23 = [v3 dynamicTextPlaceholder];
      [v6 setObject:v23 forKeyedSubscript:@"dynamicTextPlaceholder"];
    }

    v24 = [v3 shouldDisableDynamicLineSpacingForDiatrics];

    if (v24)
    {
      v25 = [v3 shouldDisableDynamicLineSpacingForDiatrics];
      [v6 setObject:v25 forKeyedSubscript:@"shouldDisableDynamicLineSpacingForDiatrics"];
    }

    v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isEmoji")}];
    [v6 setObject:v26 forKeyedSubscript:@"isEmoji"];

    v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isTextBakedIn")}];
    [v6 setObject:v27 forKeyedSubscript:@"isTextBakedIn"];

    v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "requireEmojiRenderingWorkaround")}];
    [v6 setObject:v28 forKeyedSubscript:@"requireEmojiRenderingWorkaround"];

    if (v5)
    {
      [v5 addEntriesFromDictionary:v6];
      v29 = v5;

      v6 = v29;
    }
  }

  else
  {
    v32.receiver = self;
    v32.super_class = JFXOverlayEffect;
    v6 = [(JFXTextEffect *)&v32 contentProperties];
  }

  return v6;
}

- (void)setSingleLineScaleThreshold:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41AE0]];
}

- (void)setFlipText:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41A68]];
}

- (BOOL)isTextFlipped
{
  v3 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41A68]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v6 = [(JFXEffect *)self renderEffect];
    v5 = [v6 isTextFlipped];
  }

  return v5;
}

- (BOOL)supportsFlippingText
{
  v2 = [(JFXEffect *)self renderEffect];
  v3 = [v2 supportsFlippingText];

  return v3;
}

- (void)setFlipTail:(BOOL)a3
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [(JFXEffect *)self setParameter:v5 forKey:*MEMORY[0x277D41A88]];
}

- (BOOL)isTailFlipped
{
  v3 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41A88]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v6 = [(JFXEffect *)self renderEffect];
    v5 = [v6 orientation];
  }

  return v5 == 2;
}

- (BOOL)supportsFlippingTail
{
  v2 = [(JFXEffect *)self renderEffect];
  v3 = [v2 supportsOrientation];

  return v3;
}

- (BOOL)isHidden
{
  v5.receiver = self;
  v5.super_class = JFXOverlayEffect;
  if ([(JFXEffect *)&v5 isHidden]|| [(JFXOverlayEffect *)self isCurrentlyTracking]&& !self->_internalFaceTrackingTransform)
  {
    return 1;
  }

  [(JFXEffect *)self opacity];
  return fabsf(v4) < 0.00001;
}

- (double)customPickerRotation
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [v4 initialRotation];

    if (v5)
    {
      [v5 doubleValue];
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }
  }

  else
  {
    v5 = [(JFXTextEffect *)self editUIProperties];
    v8 = [(JFXEffect *)self effectID];
    v9 = [v5 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:@"PickerRotation"];
      [v10 doubleValue];
      v7 = v11 * 3.14159265 / 180.0;
    }

    else
    {
      v7 = 0.0;
    }
  }

  return v7;
}

- (id)customPrimaryFillColor
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [v4 primaryFillColor];
  }

  else
  {
    v4 = [(JFXTextEffect *)self editUIProperties];
    v6 = [(JFXEffect *)self effectID];
    v7 = [v4 objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = [v7 objectForKeyedSubscript:@"PrimaryFillColor"];
      v9 = v8;
      if (v8)
      {
        v10 = MEMORY[0x277D75348];
        v11 = [v8 objectAtIndexedSubscript:0];
        [v11 doubleValue];
        v13 = v12;
        v14 = [v9 objectAtIndexedSubscript:1];
        [v14 doubleValue];
        v16 = v15;
        v17 = [v9 objectAtIndexedSubscript:2];
        [v17 doubleValue];
        v5 = [v10 colorWithRed:v13 green:v16 blue:v18 alpha:1.0];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)osfaToneMappingOption
{
  v3 = [(JFXTextEffect *)self editUIProperties];
  v4 = [(JFXEffect *)self effectID];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D41A30]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTrackingProps:(id)a3
{
  objc_storeStrong(&self->_trackingProps, a3);

  [(JFXOverlayEffect *)self JFX_setupTrackingProps];
}

- (void)JFX_setupTrackingProps
{
  [(JFXTrackedEffectProperties *)self->_trackingProps setDelegate:self];

  [(JFXOverlayEffect *)self JFX_updateInteractiveMode];
}

- (BOOL)isTracked
{
  v2 = [(JFXOverlayEffect *)self trackingProps];
  v3 = [v2 trackingType] != 0;

  return v3;
}

- (BOOL)isCurrentlyTracking
{
  v2 = [(JFXOverlayEffect *)self trackingProps];
  v3 = [v2 currentTrackingType] != 0;

  return v3;
}

- (void)suspendTracking
{
  v2 = [(JFXOverlayEffect *)self trackingProps];
  [v2 enableTrackingState:0];
}

- (void)resumeTracking
{
  v2 = [(JFXOverlayEffect *)self trackingProps];
  [v2 enableTrackingState:1];
}

- (void)setFaceTrackingTransform:(id)a3
{
  v6 = a3;
  v4 = [(JFXOverlayEffect *)self internalFaceTrackingTransform];

  v5 = v6;
  if (v4 != v6)
  {
    [(JFXOverlayEffect *)self JFX_applyEffectParametersForFaceTrackingTransform:v6];
    v5 = v6;
  }
}

- (void)JFX_applyEffectParametersForFaceTrackingTransform:(id)a3
{
  v11[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(JFXOverlayEffect *)self setInternalFaceTrackingTransform:v4];
  v5 = [(JFXOverlayEffect *)self isCurrentlyTracking];
  if (v4 && v5)
  {
    v6 = [(JFXOverlayEffect *)self trackingProps];
    v7 = [v4 effectParametersForTrackingType:{objc_msgSend(v6, "currentTrackingType")}];

    [(JFXEffect *)self addEffectParameters:v7];
  }

  else
  {
    v8 = *MEMORY[0x277D41A10];
    v11[0] = *MEMORY[0x277D41A08];
    v11[1] = v8;
    v9 = *MEMORY[0x277D419F8];
    v11[2] = *MEMORY[0x277D41B70];
    v11[3] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
    [(JFXEffect *)self removeEffectParameters:v10];
  }
}

- (CGRect)imageFrameAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeDropShadow:(BOOL)a5 relativeTo:(CGRect)a6 basisOrigin:(int)a7
{
  memset(&v11[1], 0, sizeof(PVCGPointQuad));
  v11[0].a = *&a3->var0;
  *&v11[0].b.x = a3->var3;
  [(JFXOverlayEffect *)self cornersAtTime:v11 forcePosterFrame:a4 includeDropShadow:a5 scale:*&a7 relativeTo:1.0 basisOrigin:1.0, a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
  v11[0] = v11[1];
  pv_bounding_CGRect(v11);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)hitAreaBoundingFrameAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeDropShadow:(BOOL)a5 adjustForMinimumSize:(BOOL)a6 normalizedMinimumSize:(id)a7 relativeTo:(CGRect)a8 basisOrigin:(int)a9
{
  v18 = *a3;
  path = 0;
  v9 = [(JFXOverlayEffect *)self newPathsForHitTestingAtTime:&v18 forcePosterFrame:a4 relativeTo:*&a9 basisOrigin:a6 adjustForMinimumSize:&path normalizedMinimumSize:a8.origin.x outExpandedPath:a8.origin.y, a8.size.width, a8.size.height, a7.var0, a7.var1];
  PathBoundingBox = CGPathGetPathBoundingBox(path);
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  CGPathRelease(v9);
  CGPathRelease(path);
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (PVCGPointQuad)cornersAtTime:(SEL)a3 forcePosterFrame:(id *)a4 includeDropShadow:(BOOL)a5 scale:(BOOL)a6 relativeTo:(CGPoint)a7 basisOrigin:(CGRect)a8
{
  v9 = *&a9;
  v10 = a6;
  v11 = a5;
  height = a8.size.height;
  width = a8.size.width;
  y = a7.y;
  x = a7.x;
  retstr->c = 0u;
  retstr->d = 0u;
  retstr->a = 0u;
  retstr->b = 0u;
  v18 = [(JFXEffect *)self renderEffect];
  v19 = v18;
  if (v18)
  {
    v21 = *&a4->var0;
    var3 = a4->var3;
    [v18 cornersAtTime:&v21 forcePosterFrame:v11 includeDropShadow:v10 scale:v9 viewSize:x viewOrigin:{y, width, height}];
  }

  else
  {
    retstr->c = 0u;
    retstr->d = 0u;
    retstr->a = 0u;
    retstr->b = 0u;
  }

  return result;
}

- (BOOL)objectBounds:(CGRect *)a3 time:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 includeMasks:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v17 = 0;
  v18 = 0;
  v12 = [(JFXEffect *)self renderEffect];
  v16 = *a4;
  v13 = [v12 bounds:&v17 atTime:&v16 forcePosterFrame:v9 includeDropShadow:v8 includeMasks:v7];

  if (v13)
  {
    v14 = v18;
    a3->origin = v17;
    a3->size = v14;
  }

  return v13;
}

- (uint64_t)transformAtTime:(__int128 *)a3 forcePosterFrame:(uint64_t)a4 relativeTo:(uint64_t)a5 basisOrigin:
{
  v6 = *a3;
  v7 = *(a3 + 2);
  return [a1 transformAtTime:&v6 forcePosterFrame:a4 includeTransformAnimation:1 includePlayableAspectScale:1 relativeTo:a5 basisOrigin:?];
}

- (double)transformAtTime:(uint64_t)a3@<X3> forcePosterFrame:(uint64_t)a4@<X4> includeTransformAnimation:(char)a5@<W5> includePlayableAspectScale:(uint64_t)a6@<X6> relativeTo:(__int128 *)a7@<X8> basisOrigin:(float64_t)a8@<D2>
{
  a7[6] = 0u;
  a7[7] = 0u;
  a7[4] = 0u;
  a7[5] = 0u;
  a7[2] = 0u;
  a7[3] = 0u;
  *a7 = 0u;
  a7[1] = 0u;
  v32 = [a1 renderEffect];
  a18 = *a2;
  *&a19 = *(a2 + 2);
  v33 = [v32 transformAtTime:&a18 forcePosterFrame:a3 includeTransformAnimation:a4 viewSize:a6 viewOrigin:{a8, a9}];
  v34 = v33;
  if (v33)
  {
    [v33 SIMDDouble4x4];
  }

  else
  {
    a7[6] = 0u;
    a7[7] = 0u;
    a7[4] = 0u;
    a7[5] = 0u;
    a7[2] = 0u;
    a7[3] = 0u;
    *a7 = 0u;
    a7[1] = 0u;
  }

  if (a6 == 1)
  {
    v36 = 0;
    v37.f64[0] = a8;
    v37.f64[1] = a9;
    __asm { FMOV            V2.2D, #0.5 }

    v43 = vmulq_f64(v37, _Q2);
    v44 = a7[5];
    a22 = a7[4];
    a23 = v44;
    v45 = a7[7];
    a24 = a7[6];
    a25 = v45;
    v46 = a7[1];
    a18 = *a7;
    a19 = v46;
    v47 = a7[3];
    a20 = a7[2];
    a21 = v47;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    vars0 = 0u;
    do
    {
      v49 = *(&a18 + v36);
      v48 = *(&a18 + v36 + 16);
      v50 = (&v68 + v36);
      *v50 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_242B5B860, v49.f64[0]), xmmword_242B5B850, v49, 1), 0, v48.f64[0]), v43, v48, 1);
      v50[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v49.f64[0]), 0, v49, 1), xmmword_242B5B860, v48.f64[0]), xmmword_242B5B850, v48, 1);
      v36 += 32;
    }

    while (v36 != 128);
    a7[4] = 0u;
    a7[5] = 0u;
    a7[6] = 0u;
    a7[7] = 0u;
    v51 = v69;
    *a7 = v68;
    a7[1] = v51;
    result = *&v70;
    v52 = vars0;
    a7[2] = v70;
    a7[3] = v52;
  }

  if ((a5 & 1) == 0)
  {
    [a1 playableScaleInOutputSize:{a8, a9}];
    v54 = 1.0 / v53;
    result = fabs(1.0 / v53 + -1.0);
    if (result >= 0.0001)
    {
      v55 = 0;
      v56.f64[0] = 0.0;
      v56.f64[1] = v54;
      v57 = a7[5];
      a22 = a7[4];
      a23 = v57;
      v58 = a7[7];
      a24 = a7[6];
      a25 = v58;
      v59 = a7[1];
      a18 = *a7;
      a19 = v59;
      v60 = a7[3];
      a20 = a7[2];
      a21 = v60;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      vars0 = 0u;
      do
      {
        v62 = *(&a18 + v55);
        v61 = *(&a18 + v55 + 16);
        v63 = (&v68 + v55);
        *v63 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*&v54, v62.f64[0]), v56, v62, 1), 0, v61.f64[0]), 0, v61, 1);
        v63[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v62.f64[0]), 0, v62, 1), xmmword_242B5B860, v61.f64[0]), xmmword_242B5B850, v61, 1);
        v55 += 32;
      }

      while (v55 != 128);
      a7[4] = 0u;
      a7[5] = 0u;
      a7[6] = 0u;
      a7[7] = 0u;
      v64 = v69;
      *a7 = v68;
      a7[1] = v64;
      result = *&v70;
      v65 = vars0;
      a7[2] = v70;
      a7[3] = v65;
    }
  }

  return result;
}

- (CGAffineTransform)addTransform:(SEL)a3 withComponentTime:(CGAffineTransform *)a4 relativeTo:(id *)a5 basisOrigin:(CGRect)a6
{
  v7 = *&a4->c;
  v10[0] = *&a4->a;
  v10[1] = v7;
  v10[2] = *&a4->tx;
  v9 = *a5;
  return [(JFXOverlayEffect *)self addTransform:v10 withComponentTime:&v9 relativeTo:*&a7 basisOrigin:0 restrictToBounds:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
}

- (CGAffineTransform)addTransform:(SEL)a3 withComponentTime:(CGAffineTransform *)a4 relativeTo:(id *)a5 basisOrigin:(CGRect)a6 restrictToBounds:(int)a7
{
  v8 = a8;
  v9 = *&a7;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v34.a = *&a5->var0;
  *&v34.b.x = a5->var3;
  [(JFXOverlayEffect *)self effectCenterAtTime:&v34 forcePosterFrame:1 includeTransformAnimation:1 includePlayableAspectScale:1 relativeTo:*&a7 basisOrigin:a6.origin.x];
  v19 = v18;
  v21 = v20;
  memset(&v39, 0, sizeof(v39));
  v34.a = *&a5->var0;
  *&v34.b.x = a5->var3;
  [(JFXOverlayEffect *)self cornersAtTime:&v34 forcePosterFrame:1 includeDropShadow:1 scale:v9 relativeTo:1.0 basisOrigin:1.0, x, y, width, height];
  v34 = v39;
  pv_CGPoint_get_quad_center(&v34);
  v23 = v22;
  v25 = v24;
  v38.receiver = self;
  v38.super_class = JFXOverlayEffect;
  v26 = *&a4->c;
  v36.a = *&a4->a;
  v36.b = v26;
  v36.c = *&a4->tx;
  v37 = *a5;
  [(CGAffineTransform *)&v38 addTransform:&v36 withComponentTime:&v37 relativeTo:v9 basisOrigin:1 ignoreTranslation:x, y, width, height];
  memset(&v36, 0, sizeof(v36));
  v34.a = *&a5->var0;
  *&v34.b.x = a5->var3;
  [(JFXOverlayEffect *)self cornersAtTime:&v34 forcePosterFrame:1 includeDropShadow:1 scale:v9 relativeTo:1.0 basisOrigin:1.0, x, y, width, height];
  v34 = v36;
  pv_CGPoint_get_quad_center(&v34);
  v28 = a4->tx + v23 - v27;
  v30 = v25 - v29 + a4->ty;
  if (*MEMORY[0x277CBF3A8] != v28 || *(MEMORY[0x277CBF3A8] + 8) != v30 || v8)
  {
    v34.a = *&a5->var0;
    *&v34.b.x = a5->var3;
    [(JFXOverlayEffect *)self setPosition:&v34 withComponentTime:v9 relativeTo:v8 basisOrigin:v19 + v28 restrictToBounds:v21 + v30, x, y, width, height];
  }

  result = [(JFXEffect *)self topLevelTransform];
  c = v34.c;
  v33 = v35;
  *&retstr->a = v34.a;
  *&retstr->c = c;
  *&retstr->tx = v33;
  return result;
}

- (int64_t)rotatedAspectRatio
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom])
  {

LABEL_7:

    return [(JFXEffect *)self playableAspectRatio];
  }

  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 orientation] - 3;

  if (v5 > 1)
  {
    goto LABEL_7;
  }

  v6 = [(JFXEffect *)self playableAspectRatio];

  return complementaryAspectRatio(v6);
}

- (void)updateRenderSizeMaintainingAppearance:(CGSize)a3 withComponentTime:(id *)a4
{
  height = a3.height;
  width = a3.width;
  [(JFXEffect *)self renderSize];
  v9 = v8;
  v11 = v10;
  v12 = aspectRatioMultiplierForSize(v8, v10);
  v13 = aspectRatioMultiplierForSize(width, height);
  if (vabdd_f64(v12, v13) >= 0.0001)
  {
    v15 = fmin(v9, v11);
    v16 = [(JFXOverlayEffect *)self trackingProps];
    v17 = [v16 trackingType];

    if ((v17 - 1) >= 2)
    {
      if (!v17)
      {
        if (v12 * v15 >= v15)
        {
          v20 = v15;
        }

        else
        {
          v20 = v15 / v12;
        }

        v21 = v12 * v20;
        if (v13 * v15 >= v15)
        {
          v22 = v15;
        }

        else
        {
          v22 = v15 / v13;
        }

        v23 = v13 * v22;
        v24 = CGRectMakeWithSize();
        v61 = *&a4->var0;
        *&v62 = a4->var3;
        [(JFXOverlayEffect *)self imageFrameAtTime:&v61 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:v24];
        v26 = v25;
        v28 = v27;
        v31 = CGRectGetCenterPoint(v29, v30, v25, v27) / v21;
        if (v21 > v20)
        {
          v31 = v21 / v20 * v31 + (v21 / v20 + -1.0) * -0.5;
        }

        if (v23 > v22)
        {
          v31 = ((v23 / v22 + -1.0) * 0.5 + v31) / (v23 / v22);
        }

        v44 = CGRectMakeWithSizeAndCenterPoint(v26, v28, v23 * v31);
        v46 = v45;
        v48 = v47;
        v50 = v49;
        [(JFXEffect *)self setRenderSize:width, height];
        [(JFXEffect *)self setPlayableAspectRatio:aspectRatioForSize(width, height)];
        v51 = CGRectMakeWithSize();
        v61 = *&a4->var0;
        *&v62 = a4->var3;
        [(JFXOverlayEffect *)self applyScaleToFitFrame:&v61 withComponentTime:v44 relativeRect:v46, v48, v50, v51, v52, v53, v54];
      }
    }

    else
    {
      if (fabs(v12 + -1.0 / v13) >= 0.0001)
      {
        +[JFXMediaSettings frameSize];
        v34 = v33;
        if (fabs(v13 + -1.0) < 0.0001)
        {
          v35 = v32;
          v36 = [MEMORY[0x277D75418] currentDevice];
          v37 = [v36 orientation] - 3;

          v32 = v35;
          if (v37 <= 1)
          {
            v32 = CGSizeRotate90(v35, v34);
            v34 = v38;
          }
        }

        v39 = v15 * (v9 / v11);
        v40 = width / height * v15;
        if (v39 <= v15)
        {
          v42 = v32 * (v15 / v34) < v39;
          v41 = v39 / v32;
          if (!v42)
          {
            v41 = v15 / v34;
          }
        }

        else
        {
          v41 = v39 / v32;
          if (v34 * v41 < v15)
          {
            v41 = v15 / v34;
          }
        }

        v19 = v34 * v41;
        if (v40 <= v15)
        {
          v43 = v15 / v34;
          if (v32 * (v15 / v34) < v40)
          {
            v43 = v40 / v32;
          }
        }

        else
        {
          v43 = v40 / v32;
          if (v34 * (v40 / v32) < v15)
          {
            v43 = v15 / v34;
          }
        }

        v18 = v34 * v43;
      }

      else
      {
        v18 = v15 / v12;
        if (v15 / v12 > v15)
        {
          v18 = v15;
        }

        v19 = v15 / v13;
        if (v15 / v13 > v15)
        {
          v19 = v15;
        }
      }

      [(JFXEffect *)self topLevelTransform:0];
      v55 = 0;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      do
      {
        v57 = *(&v61 + v55);
        v56 = *(&v61 + v55 + 16);
        v58 = (&v69 + v55);
        *v58 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v60, v57.f64[0]), v59, v57, 1), 0, v56.f64[0]), 0, v56, 1);
        v58[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v57.f64[0]), 0, v57, 1), xmmword_242B5B860, v56.f64[0]), xmmword_242B5B850, v56, 1);
        v55 += 32;
      }

      while (v55 != 128);
      v65 = v73;
      v66 = v74;
      v67 = v75;
      v68 = v76;
      v61 = v69;
      v62 = v70;
      v63 = v71;
      v64 = v72;
      [(JFXEffect *)self setTopLevelTransform:&v61];
      [(JFXEffect *)self setRenderSize:width, height];
      [(JFXEffect *)self setPlayableAspectRatio:aspectRatioForSize(width, height)];
    }
  }

  else
  {
    [(JFXEffect *)self setRenderSize:width, height];
    v14 = aspectRatioForSize(width, height);

    [(JFXEffect *)self setPlayableAspectRatio:v14];
  }
}

- (void)updateRenderSizeMaintainingRelativeSizeAndPosition:(CGSize)a3 toSize:(CGSize)a4 withComponentTime:(id *)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3.height;
  v9 = a3.width;
  v11 = aspectRatioMultiplierForSize(a3.width, a3.height);
  if (vabdd_f64(v11, aspectRatioMultiplierForSize(width, height)) >= 0.0001)
  {
    v13 = [(JFXOverlayEffect *)self trackingProps];
    v14 = [v13 trackingType];

    if ((v14 - 1) >= 2)
    {
      if (!v14)
      {
        v36 = CGRectMakeWithSize();
        v16 = v15;
        *&v40.a = *&a5->var0;
        *&v40.c = a5->var3;
        v18 = v17;
        v34 = v19;
        v35 = v17;
        v20 = v19;
        [(JFXOverlayEffect *)self imageFrameAtTime:&v40 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:v36];
        v31 = v22;
        v32 = v21;
        v29 = v24;
        v30 = v23;
        v42.origin.x = v36;
        v42.origin.y = v16;
        v42.size.width = v18;
        v42.size.height = v20;
        MidX = CGRectGetMidX(v42);
        v43.origin.x = v36;
        v43.origin.y = v16;
        v43.size.width = v18;
        v43.size.height = v20;
        MidY = CGRectGetMidY(v43);
        v28 = height / v8;
        v44.origin.x = v32;
        v44.origin.y = v31;
        v44.size.width = v30;
        v44.size.height = v29;
        v26 = CGRectGetMidX(v44);
        v45.origin.x = v32;
        v45.origin.y = v31;
        v45.size.width = v30;
        v45.size.height = v29;
        v27 = CGRectGetMidY(v45);
        memset(&v40, 0, sizeof(v40));
        CGAffineTransformMakeTranslation(&v40, MidX + (v26 - MidX) * (width / v9) - v26, MidY + (v27 - MidY) * v28 - v27);
        v39 = v40;
        v37 = *MEMORY[0x277CC08F0];
        v38 = *(MEMORY[0x277CC08F0] + 16);
        [(JFXOverlayEffect *)self addTransform:&v39 withComponentTime:&v37 relativeTo:1 basisOrigin:v36, v16, v35, v34];
        [(JFXEffect *)self setRenderSize:width, height];
        [(JFXEffect *)self setPlayableAspectRatio:aspectRatioForSize(width, height)];
      }
    }

    else
    {
      *&v40.a = *&a5->var0;
      *&v40.c = a5->var3;
      [(JFXOverlayEffect *)self updateRenderSizeMaintainingAppearance:&v40 withComponentTime:width, height];
    }
  }

  else
  {
    [(JFXEffect *)self setRenderSize:width, height];
    v12 = aspectRatioForSize(width, height);

    [(JFXEffect *)self setPlayableAspectRatio:v12];
  }
}

- (void)updateRenderSizeMaintainingSizeAndPositionRelativeToMedia:(CGSize)a3 mediaSize:(CGSize)a4 mediaContentMode:(int)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3.height;
  v9 = a3.width;
  [(JFXEffect *)self renderSize];
  v12 = v11;
  v14 = v13;
  v15 = aspectRatioMultiplierForSize(v11, v13);
  v16 = aspectRatioMultiplierForSize(v9, v8);
  if (vabdd_f64(v15, v16) >= 0.0001)
  {
    v48 = width / height;
    v18 = [(JFXEffect *)self transformAnimation];
    [(JFXEffect *)self setTransformAnimation:0];
    v19 = fmin(v12, v14);
    if (v15 * v19 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 / v15;
    }

    v21 = v15 * v20;
    if (v16 * v19 >= v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v19 / v16;
    }

    v23 = v16 * v22;
    v24 = [(JFXOverlayEffect *)self trackingProps];
    v25 = [v24 currentTrackingType];

    if ((v25 - 1) < 2)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      [(JFXEffect *)self topLevelTransform];
      vars0 = v64;
      pv_simd_matrix_scale();
      v63 = v55;
      v64 = v56;
      v65 = v57;
      v66 = v58;
      v59 = v51;
      v60 = v52;
      v61 = v53;
      v62 = v54;
      [(JFXEffect *)self setTopLevelTransform:&v51];
LABEL_52:
      [(JFXEffect *)self setTransformAnimation:v18];

      return;
    }

    if (v25)
    {
      goto LABEL_52;
    }

    v26 = CGRectMakeWithSize();
    v47 = *MEMORY[0x277CC08F0];
    v59 = *MEMORY[0x277CC08F0];
    v27 = *(MEMORY[0x277CC08F0] + 16);
    *&v60 = v27;
    [(JFXOverlayEffect *)self imageFrameAtTime:&v59 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:v26];
    v32 = v15 * v20;
    v33 = v20;
    if (a5)
    {
      if (a5 <= 2)
      {
        if (a5 == 1)
        {
          v34 = v48;
          if (v21 <= v20)
          {
            v33 = v20;
            if (v48 * v20 < v21)
            {
              v33 = v21 / v48;
            }
          }

          else
          {
            v33 = v21 / v48;
            if (v21 / v48 < v20)
            {
              v33 = v20;
            }
          }
        }

        else
        {
          v32 = v48;
          v33 = 1.0;
          if (a5 != 2)
          {
            goto LABEL_31;
          }

          v34 = v48;
          if (v21 / v48 <= v20)
          {
            v33 = v21 / v48;
          }

          else
          {
            v33 = v20;
          }
        }

        v32 = v34 * v33;
      }

      else
      {
        v32 = v21;
        v33 = v20;
        if (a5 != 3)
        {
          if (a5 == 13)
          {
            v32 = v21;
            v33 = v21 / v48;
          }

          else
          {
            if (a5 == 14)
            {
              v32 = v48 * v20;
            }

            else
            {
              v32 = v48;
            }

            if (a5 == 14)
            {
              v33 = v20;
            }

            else
            {
              v33 = 1.0;
            }
          }
        }
      }
    }

LABEL_31:
    v67 = CGRectOffset(*&v28, -((v21 - v32) * 0.5 + 0.0), -((v20 - v33) * 0.5 + 0.0));
    v35 = v23;
    v36 = v22;
    if (a5)
    {
      v36 = 1.0;
      if (a5 > 2)
      {
        v37 = v23 / v48;
        v38 = v48 * v22;
        if (a5 == 14)
        {
          v36 = v22;
        }

        else
        {
          v38 = v48;
        }

        if (a5 == 13)
        {
          v38 = v23;
        }

        else
        {
          v37 = v36;
        }

        if (a5 == 3)
        {
          v35 = v23;
        }

        else
        {
          v35 = v38;
        }

        if (a5 == 3)
        {
          v36 = v22;
        }

        else
        {
          v36 = v37;
        }

        goto LABEL_51;
      }

      v35 = v48;
      if (a5 == 1)
      {
        if (v23 <= v22)
        {
          v36 = v22;
          if (v48 * v22 < v23)
          {
            v36 = v23 / v48;
          }
        }

        else
        {
          v36 = v23 / v48;
          if (v23 / v48 < v22)
          {
            v36 = v22;
          }
        }

        goto LABEL_50;
      }

      if (a5 == 2)
      {
        if (v23 / v48 <= v22)
        {
          v36 = v23 / v48;
        }

        else
        {
          v36 = v22;
        }

LABEL_50:
        v35 = v48 * v36;
      }
    }

LABEL_51:
    v68.origin.x = v67.origin.x / v32 * v35;
    v68.origin.y = v67.origin.y / v33 * v36;
    v68.size.width = v67.size.width / v32 * v35;
    v68.size.height = v67.size.height / v33 * v36;
    v69 = CGRectOffset(v68, (v23 - v35) * 0.5 + 0.0, (v22 - v36) * 0.5 + 0.0);
    x = v69.origin.x;
    y = v69.origin.y;
    v41 = v69.size.width;
    v42 = v69.size.height;
    [(JFXEffect *)self setRenderSize:v9, v8];
    [(JFXEffect *)self setPlayableAspectRatio:aspectRatioForSize(v9, v8)];
    v43 = CGRectMakeWithSize();
    v59 = v47;
    *&v60 = v27;
    [(JFXOverlayEffect *)self applyScaleToFitFrame:&v59 withComponentTime:x relativeRect:y, v41, v42, v43, v44, v45, v46];
    goto LABEL_52;
  }

  [(JFXEffect *)self setRenderSize:v9, v8];
  v17 = aspectRatioForSize(v9, v8);

  [(JFXEffect *)self setPlayableAspectRatio:v17];
}

- (void)rotate:(double)a3 aroundPoint:(CGPoint)a4 withComponentTime:(id *)a5 relativeTo:(CGRect)a6 basisOrigin:(int)a7
{
  v7 = *&a7;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a4.y;
  v14 = a4.x;
  v17 = [(JFXOverlayEffect *)self trackingProps];
  v18 = [v17 trackingType];

  if (!v18)
  {
    *&v31.a = *&a5->var0;
    *&v31.c = a5->var3;
    [(JFXOverlayEffect *)self imageFrameAtTime:&v31 forcePosterFrame:1 includeDropShadow:1 relativeTo:v7 basisOrigin:x, y, width, height];
    CenterPoint = CGRectGetCenterPoint(v19, v20, v21, v22);
    v26 = height;
    v25 = v24;
    CGAffineTransformMakeRotation(&v27, a3);
    memset(&v28, 0, sizeof(v28));
    CGAffineTransformMakeTranslation(&t1, -v14, -v13);
    t2 = v27;
    CGAffineTransformConcat(&v31, &t1, &t2);
    CGAffineTransformMakeTranslation(&t1, v14, v13);
    CGAffineTransformConcat(&v28, &v31, &t1);
    CGAffineTransformMakeTranslation(&v31, v28.tx + v25 * v28.c + v28.a * CenterPoint - CenterPoint, v28.ty + v25 * v28.d + v28.b * CenterPoint - v25);
    *&t2.a = *&a5->var0;
    *&t2.c = a5->var3;
    [(JFXOverlayEffect *)self addTransform:&v31 withComponentTime:&t2 relativeTo:v7 basisOrigin:x, y, width, v26];
  }
}

- (void)applyScaleToFitFrame:(CGRect)a3 withComponentTime:(id *)a4 relativeRect:(CGRect)a5 restrictToBounds:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3.size.height;
  v13 = a3.size.width;
  v14 = a3.origin.y;
  v48 = a3.origin.x;
  *&v56.a = *&a4->var0;
  *&v56.c = a4->var3;
  [(JFXOverlayEffect *)self imageFrameAtTime:&v56 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  v16 = v60.size.width;
  v49 = v60.size.height;
  if (!CGRectIsEmpty(v60))
  {
    v43 = v14;
    v44 = v13;
    v45 = v12;
    *&v56.a = *&a4->var0;
    *&v56.c = a4->var3;
    [(JFXOverlayEffect *)self imageFrameAtTime:&v56 forcePosterFrame:1 includeDropShadow:0 relativeTo:1 basisOrigin:x, y, width, height];
    v18 = v17;
    v41 = v17;
    v47 = v19;
    memset(&v59, 0, sizeof(v59));
    CGAffineTransformMakeScale(&v59, 2.0, 2.0);
    v55.a = *&v59.a;
    v55.b = *&v59.c;
    v55.c = *&v59.tx;
    *&v58.a = *&a4->var0;
    *&v58.c = a4->var3;
    [(JFXOverlayEffect *)self addTransform:&v55 withComponentTime:&v58 relativeTo:1 basisOrigin:x, y, width, height];
    *&v56.a = *&a4->var0;
    *&v56.c = a4->var3;
    [(JFXOverlayEffect *)self imageFrameAtTime:&v56 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:x, y, width, height];
    v21 = v20;
    v23 = v22;
    *&v56.a = *&a4->var0;
    *&v56.c = a4->var3;
    [(JFXOverlayEffect *)self imageFrameAtTime:&v56 forcePosterFrame:1 includeDropShadow:0 relativeTo:1 basisOrigin:x, y, width, height];
    v42 = v16;
    v24 = vabdd_f64(v16, v18);
    v27 = vabdd_f64(vabdd_f64(v21, v25) * 0.5, v24);
    v28 = vabdd_f64(v49, v47);
    v29 = vabdd_f64(vabdd_f64(v23, v26) * 0.5, v28);
    v55.a = *&v59.a;
    v55.b = *&v59.c;
    v55.c = *&v59.tx;
    CGAffineTransformInvert(&v56, &v55);
    *&v58.a = *&a4->var0;
    *&v58.c = a4->var3;
    v46 = height;
    [(JFXOverlayEffect *)self addTransform:&v56 withComponentTime:&v58 relativeTo:1 basisOrigin:x, y, width, height];
    if (v27 <= 1.0 && v29 <= 1.0)
    {
      v33 = v44;
      v31 = v45;
      v32 = v44;
      v34 = v45;
      v36 = v49;
      v35 = v42;
    }

    else
    {
      v31 = v45;
      v32 = v44 - v24;
      v33 = v44;
      v34 = v45 - v28;
      v35 = v41;
      v36 = v47;
    }

    v37 = CGSizeFitToAspectInSize(v32, v34, v35, v36);
    memset(&v58, 0, sizeof(v58));
    CGAffineTransformMakeScale(&v58, v37 / v35, v37 / v35);
    v55.a = *&v58.a;
    v55.b = *&v58.c;
    v55.c = *&v58.tx;
    v53 = *&a4->var0;
    var3 = a4->var3;
    [(JFXOverlayEffect *)self addTransform:&v55 withComponentTime:&v53 relativeTo:1 basisOrigin:x, y, width, v46];
    v61.origin.x = v48;
    v61.origin.y = v43;
    v61.size.width = v33;
    v61.size.height = v31;
    MidX = CGRectGetMidX(v61);
    v62.origin.x = v48;
    v62.origin.y = v43;
    v62.size.width = v33;
    v62.size.height = v31;
    MidY = CGRectGetMidY(v62);
    v57 = 0;
    memset(&v56, 0, sizeof(v56));
    v55.a = *&a4->var0;
    *&v55.b.x = a4->var3;
    [(JFXOverlayEffect *)self cornersAtTime:&v55 forcePosterFrame:1 includeDropShadow:1 scale:1 relativeTo:1.0 basisOrigin:1.0, x, y, width, v46];
    v55.a = *&v56.a;
    v55.b = *&v56.c;
    v55.c = *&v56.tx;
    v55.d = v57;
    pv_CGPoint_get_quad_center(&v55);
    CGAffineTransformMakeTranslation(&v55, MidX - v39, MidY - v40);
    v51 = *&a4->var0;
    v52 = a4->var3;
    [(JFXOverlayEffect *)self addTransform:&v55 withComponentTime:&v51 relativeTo:1 basisOrigin:v6 restrictToBounds:x, y, width, v46];
  }
}

- (void)setPosition:(CGPoint)a3 withComponentTime:(id *)a4 relativeTo:(CGRect)a5 basisOrigin:(int)a6 restrictToBounds:(BOOL)a7
{
  v7 = *&a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3.y;
  v14.f64[0] = a3.x;
  if (a7)
  {
    v45 = v13;
    v48 = a3.x;
    [(JFXEffect *)self playableRectInOutputSize:a5.size.width, a5.size.height];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v55 = *&a4->var0;
    *&v56 = a4->var3;
    [(JFXOverlayEffect *)self effectCenterAtTime:&v55 forcePosterFrame:1 includeTransformAnimation:1 includePlayableAspectScale:1 relativeTo:v7 basisOrigin:x, y, width, height];
    v42 = v25;
    v43 = v24;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v52 = *&a4->var0;
    *&v53 = a4->var3;
    [(JFXOverlayEffect *)self cornersAtTime:&v52 forcePosterFrame:1 includeDropShadow:1 scale:v7 relativeTo:1.0 basisOrigin:1.0, x, y, width, height];
    v52 = v55;
    v53 = v56;
    vars0 = v57;
    pv_CGPoint_get_quad_center(&v52);
    v27.f64[1] = v26;
    v28.f64[0] = v43;
    v28.f64[1] = v42;
    v29 = vsubq_f64(v27, v28);
    v27.f64[0] = v48;
    v27.f64[1] = v45;
    v44 = v29;
    v46 = vaddq_f64(v27, v29);
    v27.f64[0] = v17;
    v28.f64[0] = v19;
    v29.f64[0] = v21;
    v30 = v23;
    MinX = CGRectGetMinX(*v27.f64);
    v63.origin.x = v17;
    v63.origin.y = v19;
    v63.size.width = v21;
    v63.size.height = v23;
    MinY = CGRectGetMinY(v63);
    v32.f64[0] = MinX;
    v32.f64[1] = MinY;
    v50 = v32;
    v33 = v17;
    v32.f64[0] = v19;
    v34 = v21;
    v35 = v23;
    MaxX = CGRectGetMaxX(*(&v32 - 8));
    v64.origin.x = v17;
    v64.origin.y = v19;
    v64.size.width = v21;
    v64.size.height = v23;
    MaxY = CGRectGetMaxY(v64);
    v37.f64[0] = MaxX;
    v37.f64[1] = MaxY;
    v14 = vsubq_f64(vminnmq_f64(vmaxnmq_f64(v46, v50), v37), v44);
    v13 = v14.f64[1];
  }

  v55 = *&a4->var0;
  *&v56 = a4->var3;
  [(JFXOverlayEffect *)self screenPointToEffectPoint:&v55 withComponentTime:v7 relativeTo:v14.f64[0] basisOrigin:v13, x, y, width, height, *&MaxX];
  v47 = v39;
  v51 = v38;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  [(JFXEffect *)self topLevelTransform];
  *&v40 = v51;
  *(&v40 + 1) = v47;
  v61 = v40;
  v52 = v55;
  v53 = v56;
  vars0 = v57;
  [(JFXEffect *)self setTopLevelTransform:&v52];
}

- (CGPoint)screenPointToEffectPoint:(CGPoint)a3 withComponentTime:(id *)a4 relativeTo:(CGRect)a5 basisOrigin:(int)a6
{
  height = a5.size.height;
  width = a5.size.width;
  x = a3.x;
  y = a3.y;
  [(JFXEffect *)self playableScaleInOutputSize:a5.size.width, a5.size.height, a5.origin.x, a5.origin.y];
  v12.f64[0] = x;
  v12.f64[1] = y;
  v60 = v12;
  if (fabs(v11 + -1.0) >= 0.0001)
  {
    memset(&v65, 0, sizeof(v65));
    CGAffineTransformMakeScale(&v65, 1.0 / v11, 1.0 / v11);
    memset(&v67, 0, sizeof(v67));
    CGAffineTransformMakeTranslation(&t1, -(width * 0.5), -(height * 0.5));
    t2 = v65;
    CGAffineTransformConcat(v64, &t1, &t2);
    CGAffineTransformMakeTranslation(&t1, width * 0.5, height * 0.5);
    CGAffineTransformConcat(&v67, v64, &t1);
    v65 = v67;
    v60 = vaddq_f64(*&v67.tx, vmlaq_n_f64(vmulq_laneq_f64(*&v67.c, v60, 1), *&v67.a, x));
  }

  v66 = 0.0;
  memset(&v65, 0, sizeof(v65));
  v13 = MEMORY[0x277D416B0];
  v14 = [(JFXEffect *)self transformAnimation];
  *&v64[0].time.value = *&a4->var0;
  v64[0].time.epoch = a4->var3;
  v15 = [v13 getTransformInfoFromAnimation:v14 atTime:v64 renderSize:14 contentMode:0 invertY:&v65 outInfo:{width, height}];

  v16 = v60.f64[1];
  if (v15)
  {
    memset(&t1, 0, sizeof(t1));
    v68.x = width * 0.5;
    v68.y = height * 0.5;
    *&v64[0].time.value = *&v65.a;
    *&v64[0].time.epoch = *&v65.c;
    *&v64[0].translation.y = *&v65.tx;
    v64[0].rotation = v66;
    CGAffineTransformFromPointWithPVAnimInfo(&t1, v64, v68);
    t2 = t1;
    CGAffineTransformInvert(v64, &t2);
    v16 = v64[0].scale + v60.f64[1] * v64[0].translation.x + *&v64[0].time.timescale * v60.f64[0];
    v60.f64[0] = v64[0].translation.y + v60.f64[1] * *&v64[0].time.epoch + *&v64[0].time.value * v60.f64[0];
  }

  v17 = [(JFXEffect *)self renderEffect];
  [v17 outputSize];
  v19 = v18;
  v21 = v20;

  v22 = [(JFXEffect *)self renderEffect];
  v23 = [v22 origin];

  v24 = *(MEMORY[0x277CBF348] + 8);
  tx = *MEMORY[0x277CBF348];
  if (a6 == 2)
  {
    if (v23)
    {
      v37 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      v37 = height * 0.5;
    }

    if (v23)
    {
      v38 = *MEMORY[0x277CBF348];
    }

    else
    {
      v38 = width * 0.5;
    }

    v34 = v23 == 1;
    if (v23 == 1)
    {
      v35 = height * 0.5;
    }

    else
    {
      v35 = v37;
    }

    if (v23 == 1)
    {
      v36 = width * 0.5;
    }

    else
    {
      v36 = v38;
    }
  }

  else
  {
    v25 = width * -0.5;
    v26 = height * 0.5;
    if (v23)
    {
      v27 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      v27 = height;
    }

    v28 = v23 == 2 || v23 == 0;
    if (v23 == 2)
    {
      v29 = width * -0.5;
    }

    else
    {
      v26 = v27;
      v29 = *MEMORY[0x277CBF348];
    }

    v30 = height * -0.5;
    v31 = v23 == 1;
    if (v23 == 1)
    {
      v32 = height;
    }

    else
    {
      v32 = *(MEMORY[0x277CBF348] + 8);
    }

    if (v23 == 2)
    {
      v31 = 0;
    }

    else
    {
      v30 = v32;
      v25 = *MEMORY[0x277CBF348];
    }

    if (a6)
    {
      v31 = 0;
      v30 = *(MEMORY[0x277CBF348] + 8);
      v25 = *MEMORY[0x277CBF348];
    }

    v33 = a6 == 1;
    if (a6 == 1)
    {
      v34 = v28;
    }

    else
    {
      v34 = v31;
    }

    if (v33)
    {
      v35 = v26;
    }

    else
    {
      v35 = v30;
    }

    if (v33)
    {
      v36 = v29;
    }

    else
    {
      v36 = v25;
    }
  }

  memset(&t2, 0, sizeof(t2));
  CGAffineTransformMakeScale(&t2, v19 / width, v21 / height);
  t1 = t2;
  CGAffineTransformTranslate(v64, &t1, v36, v35);
  *&t2.a = *&v64[0].time.value;
  *&t2.c = *&v64[0].time.epoch;
  *&t2.tx = *&v64[0].translation.y;
  if (v34)
  {
    t1 = t2;
    CGAffineTransformScale(v64, &t1, 1.0, -1.0);
    *&t2.a = *&v64[0].time.value;
    *&t2.c = *&v64[0].time.epoch;
    *&t2.tx = *&v64[0].translation.y;
  }

  v57 = t2.tx + v16 * t2.c + t2.a * v60.f64[0];
  v61 = t2.ty + v16 * t2.d + t2.b * v60.f64[0];
  v39 = [(JFXEffect *)self effectParameters];
  v40 = [v39 objectForKeyedSubscript:*MEMORY[0x277D419F8]];
  v41 = [v40 BOOLValue];

  v42 = [(JFXEffect *)self effectParameters];
  v43 = [v42 objectForKeyedSubscript:*MEMORY[0x277D41B70]];

  v44 = [(JFXEffect *)self effectParameters];
  v45 = [v44 objectForKeyedSubscript:*MEMORY[0x277D41A10]];

  v46 = [(JFXEffect *)self effectParameters];
  v47 = [v46 objectForKeyedSubscript:*MEMORY[0x277D41A08]];

  if (v41 && v43 && v45 && v47)
  {
    v48 = [(JFXEffect *)self renderEffect];
    [v48 outputROI];

    if (v23 == 2)
    {
      tx = v19 * 0.5;
      v24 = v21 * 0.5;
      v49 = 1;
    }

    else if (v23)
    {
      v49 = 0;
    }

    else
    {
      v49 = 1;
      v24 = v21;
    }

    memset(&t2, 0, sizeof(t2));
    CGAffineTransformMakeScale(&t2, v19 / v19, v21 / v21);
    t1 = t2;
    CGAffineTransformTranslate(v64, &t1, tx, v24);
    *&t2.a = *&v64[0].time.value;
    *&t2.c = *&v64[0].time.epoch;
    *&t2.tx = *&v64[0].translation.y;
    if (v49)
    {
      t1 = t2;
      CGAffineTransformScale(v64, &t1, 1.0, -1.0);
      *&t2.a = *&v64[0].time.value;
      *&t2.c = *&v64[0].time.epoch;
      *&t2.tx = *&v64[0].translation.y;
    }

    v58 = vaddq_f64(*&t2.tx, vmlaq_n_f64(vmulq_n_f64(*&t2.c, v61), *&t2.a, v57));
    memset(&v67, 0, 24);
    [v43 SIMDDouble4x4];
    [v45 SIMDDouble4x4];
    [v47 SIMDDouble4x4];
    v50 = pv_simd_matrix_unproject_to_plane();
    a = v67.a;
    b = v67.b;
    if (!v50)
    {
      b = v58.f64[1];
      a = v58.f64[0];
    }

    v57 = a;
    v61 = b;
  }

  v53 = v57;
  v54 = v61;
  result.y = v54;
  result.x = v53;
  return result;
}

- (CGPoint)effectCenterAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 includeTransformAnimation:(BOOL)a5 includePlayableAspectScale:(BOOL)a6 relativeTo:(CGRect)a7 basisOrigin:(int)a8
{
  height = a7.size.height;
  width = a7.size.width;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = *&a3->var0;
  *&v16 = a3->var3;
  [(JFXOverlayEffect *)self transformAtTime:&v15 forcePosterFrame:a4 includeTransformAnimation:a5 includePlayableAspectScale:a6 relativeTo:*&a8 basisOrigin:a7.origin.x, a7.origin.y, a7.size.width];
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  [(JFXOverlayEffect *)self effectPointToScreenPoint:&v15 effectToScreenTransform:v11 viewSize:v12, width, height];
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPath)newPathsForHitTestingAtTime:(id *)a3 forcePosterFrame:(BOOL)a4 relativeTo:(CGRect)a5 basisOrigin:(int)a6 adjustForMinimumSize:(BOOL)a7 normalizedMinimumSize:(id)a8 outExpandedPath:(const CGPath *)a9
{
  var1 = a8.var1;
  var0 = a8.var0;
  v12 = a7;
  v13 = *&a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v18 = a4;
  v21 = [(JFXEffect *)self renderEffect];
  [(JFXOverlayEffect *)self hitAreaScale];
  v27 = *a3;
  v22 = [v21 hitAreaPointsAtTime:&v27 forcePosterFrame:v18 includeDropShadow:0 scale:v13 viewSize:? viewOrigin:?];

  ClosedCGPathWithPoints = createClosedCGPathWithPoints(v22);
  if (!v12 || (v27 = *a3, [(JFXOverlayEffect *)self JFX_adjustedMinimumSizeFromNormalizedMinimumSize:&v27 atTime:v18 forcePosterFrame:v13 relativeTo:var0 basisOrigin:var1, x, y, width, height], v24 <= 0.0) || (ExpandedClosedCGPathWithCGPath = createExpandedClosedCGPathWithCGPath(ClosedCGPathWithPoints, v24)) == 0)
  {
    ExpandedClosedCGPathWithCGPath = CGPathRetain(ClosedCGPathWithPoints);
  }

  *a9 = ExpandedClosedCGPathWithCGPath;

  return ClosedCGPathWithPoints;
}

- (BOOL)hitTestPoint:(CGPoint)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 relativeTo:(CGRect)a6 basisOrigin:(int)a7 adjustForMinimumSize:(BOOL)a8 normalizedMinimumSize:(id)a9
{
  var1 = a9.var1;
  var0 = a9.var0;
  v11 = a8;
  v12 = *&a7;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v17 = a5;
  v19 = a3.y;
  v20 = a3.x;
  if ([(JFXOverlayEffect *)self isHidden])
  {
    return 0;
  }

  v25 = *&a4->var0;
  var3 = a4->var3;
  path = 0;
  v23 = [(JFXOverlayEffect *)self newPathsForHitTestingAtTime:&v25 forcePosterFrame:v17 relativeTo:v12 basisOrigin:v11 adjustForMinimumSize:&path normalizedMinimumSize:x outExpandedPath:y, width, height, var0, var1];
  v28.x = v20;
  v28.y = v19;
  v22 = CGPathContainsPoint(v23, 0, v28, 0);
  if (!v22 && v11)
  {
    v29.x = v20;
    v29.y = v19;
    v22 = CGPathContainsPoint(path, 0, v29, 0);
  }

  CGPathRelease(v23);
  CGPathRelease(path);
  return v22;
}

- (double)JFX_adjustedMinimumSizeFromNormalizedMinimumSize:(id)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 relativeTo:(CGRect)a6 basisOrigin:(int)a7
{
  width = a6.size.width;
  height = a6.size.height;
  var0 = a3.var0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = *a4;
  [(JFXOverlayEffect *)self cornersAtTime:&v15 forcePosterFrame:a5 includeDropShadow:0 scale:*&a7 relativeTo:1.0 basisOrigin:1.0, a6.origin.x, a6.origin.y];
  v8 = vsubq_f64(v18, v16);
  v9.f64[0] = width;
  v9.f64[1] = height;
  v10 = vmulq_n_f64(v9, 0.2);
  v11 = vpaddq_f64(vmulq_f64(v10, v10), vmulq_f64(v8, v8));
  return var0 * width * fmin(fmax(vdivq_f64(v11, vdupq_laneq_s64(v11, 1)).f64[0], 0.0), 1.0);
}

- (CGPoint)closeButtonInset
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v6 = [(JFXEffect *)self effectID];
    v7 = [v6 isEqualToString:*MEMORY[0x277D418E8]];

    if (v7)
    {
      v5 = 0x3F92F1A9FBE76C8BLL;
      v4 = 0x3F92F1A9FBE76C8BLL;
    }

    else
    {
      v8 = [(JFXTextEffect *)self editUIProperties];
      v9 = [(JFXEffect *)self effectID];
      v10 = [v8 objectForKeyedSubscript:v9];

      if (v10)
      {
        v11 = [v10 objectForKeyedSubscript:@"X"];
        [v11 doubleValue];
        v4 = v12;

        v13 = [v10 objectForKeyedSubscript:@"Y"];
        [v13 doubleValue];
        v5 = v14;
      }

      else
      {
        v4 = *MEMORY[0x277CBF348];
        v5 = *(MEMORY[0x277CBF348] + 8);
      }
    }
  }

  v15 = *&v4;
  v16 = *&v5;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)hitAreaScale
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [v4 initialRotation];

    if (v5)
    {
      [v5 CGPointValue];
      v7 = v6;
      v9 = v8;
    }

    else
    {
      v9 = 1.0;
      v7 = 1.0;
    }
  }

  else
  {
    v5 = [(JFXTextEffect *)self editUIProperties];
    v10 = [(JFXEffect *)self effectID];
    v11 = [v5 objectForKeyedSubscript:v10];

    v9 = 1.0;
    if (v11 && ([v11 objectForKeyedSubscript:@"HitAreaScaleX"], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v12;
      v14 = [v11 objectForKeyedSubscript:@"HitAreaScaleY"];

      v7 = 1.0;
      if (v14)
      {
        v15 = [v11 objectForKeyedSubscript:@"HitAreaScaleX"];
        [v15 doubleValue];
        v7 = v16 / 100.0;

        v17 = [v11 objectForKeyedSubscript:@"HitAreaScaleY"];
        [v17 doubleValue];
        v9 = v18 / 100.0;
      }
    }

    else
    {
      v7 = 1.0;
    }
  }

  v19 = v7;
  v20 = v9;
  result.y = v20;
  result.x = v19;
  return result;
}

- (double)pickerScale
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [v4 pickerScale];

    if (v5)
    {
      [v5 doubleValue];
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }
  }

  else
  {
    v5 = [(JFXTextEffect *)self editUIProperties];
    v8 = [(JFXEffect *)self effectID];
    v9 = [v5 objectForKeyedSubscript:v8];

    v7 = 1.0;
    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:@"PickerScale"];

      if (v10)
      {
        v11 = [v9 objectForKeyedSubscript:@"PickerScale"];
        [v11 doubleValue];
        v7 = v12;
      }
    }
  }

  return v7;
}

- (BOOL)includeDropShadowWhenPositioningCloseButton
{
  v3 = [(JFXEffect *)self effectID];
  if (v3 == *MEMORY[0x277D41910])
  {
    v5 = 0;
  }

  else
  {
    v4 = [(JFXEffect *)self effectID];
    v5 = v4 != *MEMORY[0x277D41968];
  }

  return v5;
}

- (unint64_t)maxCharacters
{
  v7.receiver = self;
  v7.super_class = JFXOverlayEffect;
  v3 = [(JFXTextEffect *)&v7 maxCharacters];
  if (v3 == -1)
  {
    if (maxCharacters_onceToken != -1)
    {
      [JFXOverlayEffect maxCharacters];
    }

    v4 = [maxCharacters_sMaxCharsMap objectForKeyedSubscript:self->super.super._effectID];
    v5 = v4;
    if (v4)
    {
      v3 = [v4 unsignedIntegerValue];
    }

    else
    {
      v3 = 80;
    }
  }

  return v3;
}

void __33__JFXOverlayEffect_maxCharacters__block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D41960];
  v4[0] = *MEMORY[0x277D41788];
  v4[1] = v0;
  v5[0] = &unk_28556D128;
  v5[1] = &unk_28556D140;
  v1 = *MEMORY[0x277D41968];
  v4[2] = *MEMORY[0x277D41930];
  v4[3] = v1;
  v5[2] = &unk_28556D140;
  v5[3] = &unk_28556D128;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v3 = maxCharacters_sMaxCharsMap;
  maxCharacters_sMaxCharsMap = v2;
}

+ (id)effectIDToImageSequenceIDMap
{
  if (effectIDToImageSequenceIDMap_onceToken != -1)
  {
    +[JFXOverlayEffect effectIDToImageSequenceIDMap];
  }

  v3 = effectIDToImageSequenceIDMap_sEffectToURLMap;

  return v3;
}

void __48__JFXOverlayEffect_effectIDToImageSequenceIDMap__block_invoke()
{
  v9[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D41870];
  v1 = *MEMORY[0x277D41880];
  v8[0] = *MEMORY[0x277D41878];
  v8[1] = v1;
  v9[0] = v0;
  v9[1] = v0;
  v2 = *MEMORY[0x277D41888];
  v3 = *MEMORY[0x277D41898];
  v8[2] = *MEMORY[0x277D41890];
  v8[3] = v3;
  v9[2] = v2;
  v9[3] = v2;
  v4 = *MEMORY[0x277D418A8];
  v5 = *MEMORY[0x277D418B8];
  v8[4] = *MEMORY[0x277D418B0];
  v8[5] = v5;
  v9[4] = v4;
  v9[5] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v7 = effectIDToImageSequenceIDMap_sEffectToURLMap;
  effectIDToImageSequenceIDMap_sEffectToURLMap = v6;
}

- (void)setImageSequencePathToBundledAssets
{
  v10 = +[JFXOverlayEffect effectIDToImageSequenceIDMap];
  v3 = [(JFXEffect *)self effectID];
  v4 = [v10 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v4 = [(JFXEffect *)self effectID];
  }

  v5 = [MEMORY[0x277CCA8D8] jfxBundle];
  v6 = [v5 pathForResource:v4 ofType:0];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [(JFXOverlayEffect *)self setImageSequencePath:v6];
  }
}

- (BOOL)enablePresentationState:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = JFXOverlayEffect;
  v5 = [(JFXEffect *)&v16 enablePresentationState:?];
  v6 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41A20]];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8 == v3)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5;
  }

  v10 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41A78]];
  if (v10)
  {

    goto LABEL_10;
  }

  v11 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41AD0]];

  if (v11)
  {
LABEL_10:
    v12 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41A28]];
    v13 = v12;
    if (v12)
    {
      LODWORD(v12) = [v12 BOOLValue];
    }

    if (v12 == v3)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      goto LABEL_15;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_15:
  [(JFXOverlayEffect *)self setForceRenderAtPosterFrame:v3];
  v14 = 1;
LABEL_18:

  return v14;
}

- (void)setForceRenderAtPosterFrame:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = JFXOverlayEffect;
  [(JFXEffect *)&v9 setForceRenderAtPosterFrame:?];
  if ([(JFXOverlayEffect *)self JFX_hasPosterFrame])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [(JFXEffect *)self setParameter:v5 forKey:*MEMORY[0x277D41A20]];
  }

  v6 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41A78]];
  if (v6)
  {
  }

  else
  {
    v7 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41AD0]];

    if (!v7)
    {
      return;
    }
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInt:v3 ^ 1];
  [(JFXEffect *)self setParameter:v8 forKey:*MEMORY[0x277D41A28]];
}

- (BOOL)loopedRangeRenderIsCacheable
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [v4 loopRenderRangeIsCachable];
  }

  else
  {
    if (loopedRangeRenderIsCacheable_onceToken != -1)
    {
      [JFXOverlayEffect loopedRangeRenderIsCacheable];
    }

    v6 = loopedRangeRenderIsCacheable_cacheableEffectIDs;
    v4 = [(JFXEffect *)self effectID];
    v5 = [v6 containsObject:v4];
  }

  v7 = v5;

  return v7;
}

void __48__JFXOverlayEffect_loopedRangeRenderIsCacheable__block_invoke()
{
  v60 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D41758];
  v23[0] = *MEMORY[0x277D417D0];
  v23[1] = v0;
  v1 = *MEMORY[0x277D41788];
  v24 = *MEMORY[0x277D41760];
  v25 = v1;
  v2 = *MEMORY[0x277D41968];
  v26 = *MEMORY[0x277D41750];
  v27 = v2;
  v3 = *MEMORY[0x277D41780];
  v28 = *MEMORY[0x277D41908];
  v29 = v3;
  v4 = *MEMORY[0x277D41988];
  v30 = *MEMORY[0x277D41958];
  v31 = v4;
  v5 = *MEMORY[0x277D41948];
  v32 = *MEMORY[0x277D41768];
  v33 = v5;
  v6 = MEMORY[0x277CBEB98];
  v7 = *MEMORY[0x277D41950];
  v34 = v24;
  v35 = v7;
  v8 = *MEMORY[0x277D418F0];
  v36 = *MEMORY[0x277D41980];
  v37 = v8;
  v9 = *MEMORY[0x277D41960];
  v38 = *MEMORY[0x277D41910];
  v39 = v9;
  v10 = *MEMORY[0x277D41738];
  v40 = *MEMORY[0x277D41730];
  v41 = v10;
  v11 = *MEMORY[0x277D418D0];
  v42 = *MEMORY[0x277D41740];
  v43 = v11;
  v12 = *MEMORY[0x277D418E0];
  v44 = *MEMORY[0x277D418D8];
  v45 = v12;
  v13 = *MEMORY[0x277D41920];
  v46 = *MEMORY[0x277D41918];
  v47 = v13;
  v14 = *MEMORY[0x277D41938];
  v48 = *MEMORY[0x277D41928];
  v49 = v14;
  v15 = *MEMORY[0x277D418F8];
  v50 = *MEMORY[0x277D41748];
  v51 = v15;
  v16 = *MEMORY[0x277D41990];
  v52 = *MEMORY[0x277D41940];
  v53 = v16;
  v17 = *MEMORY[0x277D41978];
  v54 = *MEMORY[0x277D41970];
  v55 = v17;
  v18 = *MEMORY[0x277D41770];
  v56 = *MEMORY[0x277D41728];
  v57 = v18;
  v19 = *MEMORY[0x277D41900];
  v58 = *MEMORY[0x277D41790];
  v59 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:38];
  v21 = [v6 setWithArray:v20];
  v22 = loopedRangeRenderIsCacheable_cacheableEffectIDs;
  loopedRangeRenderIsCacheable_cacheableEffectIDs = v21;
}

- (BOOL)JFX_hasPosterFrame
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [v4 doesNotHavePosterFrame];
  }

  else
  {
    v4 = [(JFXEffect *)self effectID];
    v5 = [v4 isEqualToString:*MEMORY[0x277D418E8]];
  }

  v6 = v5;

  return v6 ^ 1;
}

- (BOOL)JFX_posterFrameIsCachable
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [v4 posterFrameIsNotCachable] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)JFX_shouldEnableDynamicLineSpacingForDiacritics
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [v4 shouldDisableDynamicLineSpacingForDiatrics];

    if (v5)
    {
      v6 = [v5 BOOLValue];
LABEL_8:
      v8 = v6 ^ 1;
      goto LABEL_9;
    }

    v8 = 1;
  }

  else
  {
    v7 = *MEMORY[0x277D41930];
    v5 = [(JFXEffect *)self effectID];
    if (([v7 isEqualToString:v5] & 1) == 0)
    {
      v6 = [(JFXOverlayEffect *)self isEmoji];
      goto LABEL_8;
    }

    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (void)trackedEffectProperties:(id)a3 didChangeTrackingType:(BOOL)a4 didChangeEnabled:(BOOL)a5
{
  if (a4)
  {
    v6 = [JFXAnalyticsManager sharedInstance:a3];
    [v6 trackEventWithName:@"facetrackedoverlaychangedplanes"];
  }

  v7 = [(JFXOverlayEffect *)self faceTrackingTransform];
  [(JFXOverlayEffect *)self JFX_applyEffectParametersForFaceTrackingTransform:v7];

  [(JFXOverlayEffect *)self JFX_updateInteractiveMode];
}

- (void)JFX_updateInteractiveMode
{
  v3 = [(JFXOverlayEffect *)self isInteractiveEditing]|| [(JFXOverlayEffect *)self isCurrentlyTracking];
  v4 = [(JFXEffect *)self renderEffect];
  [v4 setIsInInteractiveMode:v3];
}

- (id)accessibilityName
{
  v3 = [(JFXOverlayEffect *)self accessibilityOverlayEffectLabel];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self accessibilityOverlayEffectLabel];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = JFXOverlayEffect;
    v4 = [(JFXEffect *)&v6 accessibilityName];
  }

  return v4;
}

- (BOOL)hasDynamicText
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [v4 dynamicTextType];

    LOBYTE(v6) = v5 != 0;
  }

  else
  {
    v7 = [(JFXTextEffect *)self editUIProperties];
    v8 = [(JFXEffect *)self effectID];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v6 = [v9 objectForKeyedSubscript:@"hasDynamicText"];

      if (v6)
      {
        v10 = [v9 objectForKeyedSubscript:@"hasDynamicText"];
        LOBYTE(v6) = [v10 BOOLValue];
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

+ (id)dynamicTextPlaceholderMap
{
  if (dynamicTextPlaceholderMap_onceToken != -1)
  {
    +[JFXOverlayEffect dynamicTextPlaceholderMap];
  }

  v3 = dynamicTextPlaceholderMap_sDynamicTextMap;

  return v3;
}

void __45__JFXOverlayEffect_dynamicTextPlaceholderMap__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_28556D158;
  v2[1] = &unk_28556D170;
  v3[0] = @"<#DATE>";
  v3[1] = @"<#location>";
  v2[2] = &unk_28556D188;
  v2[3] = &unk_28556D1A0;
  v3[2] = @"<#ABBREVLONGDATE>";
  v3[3] = @"<#temp>";
  v2[4] = &unk_28556D1B8;
  v2[5] = &unk_28556D1D0;
  v3[4] = @"<#time>";
  v3[5] = @"<#dayofweek>";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = dynamicTextPlaceholderMap_sDynamicTextMap;
  dynamicTextPlaceholderMap_sDynamicTextMap = v0;
}

- (id)JFX_dynamicTextPlaceHolderText
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [v4 dynamicTextPlaceholder];
  }

  else
  {
    v6 = [(JFXOverlayEffect *)self dynamicTextType];
    v4 = [objc_opt_class() dynamicTextPlaceholderMap];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    v5 = [v4 objectForKey:v7];
  }

  return v5;
}

- (unint64_t)dynamicTextType
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [v4 dynamicTextType];
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v6 = [(JFXTextEffect *)self defaultAttributedString:0];
    if (v6)
    {
      v7 = [objc_opt_class() dynamicTextPlaceholderMap];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __35__JFXOverlayEffect_dynamicTextType__block_invoke;
      v9[3] = &unk_278D7A888;
      v10 = v6;
      v11 = &v12;
      [v7 enumerateKeysAndObjectsUsingBlock:v9];
    }

    v5 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  return v5;
}

void __35__JFXOverlayEffect_dynamicTextType__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 string];
  v10 = [v9 rangeOfString:v8 options:1];

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v11 unsignedIntegerValue];
    *a4 = 1;
  }
}

- (void)setDynamicTextString:(id)a3
{
  v4 = a3;
  if ([(JFXOverlayEffect *)self hasDynamicText])
  {
    if (v4)
    {
      [(JFXTextEffect *)self setString:v4 atIndex:0];
    }

    else
    {
      [(JFXOverlayEffect *)self resetDynamicTextString];
    }
  }
}

- (void)resetDynamicTextString
{
  if ([(JFXOverlayEffect *)self hasDynamicText])
  {
    v3 = [(JFXOverlayEffect *)self JFX_dynamicTextPlaceHolderText];
    [(JFXTextEffect *)self setString:v3 atIndex:0];
  }
}

- (NSString)dynamicTextString
{
  v2 = [(JFXOverlayEffect *)self JFX_stringAtIndex:0];
  v3 = 0;
  if (([v2 hasPrefix:@"<#"] & 1) == 0)
  {
    v3 = v2;
  }

  return v3;
}

- (void)updateDynamicTextWithCompletionBlock:(id)a3
{
  v4 = a3;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __57__JFXOverlayEffect_updateDynamicTextWithCompletionBlock___block_invoke;
  v17 = &unk_278D7A8B0;
  v18 = self;
  v5 = v4;
  v19 = v5;
  v6 = MEMORY[0x245D22230](&v14);
  v7 = [(JFXOverlayEffect *)self dynamicTextType:v14];
  if (v7 <= 4)
  {
    if (v7 != 1)
    {
      if (v7 == 4)
      {
        v8 = [MEMORY[0x277CBEAA8] date];
        v9 = +[JTFormatters dateFormatterMonthDay];
LABEL_16:
        v12 = v9;
        v13 = [v9 stringFromDate:v8];

        (v6)[2](v6, v13);
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    v8 = [MEMORY[0x277CBEAA8] date];
    if (updateDynamicTextWithCompletionBlock__onceToken != -1)
    {
      [JFXOverlayEffect updateDynamicTextWithCompletionBlock:];
    }

    v10 = updateDynamicTextWithCompletionBlock__s_shortTimeFormatter;
LABEL_14:
    v11 = [v10 stringFromDate:v8];
    (v6)[2](v6, v11);

LABEL_17:
    goto LABEL_18;
  }

  if (v7 == 5)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = +[JTFormatters dateFormatterDayOfWeekMonthDayYear];
    goto LABEL_16;
  }

  if (v7 == 6)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    if (updateDynamicTextWithCompletionBlock__onceToken_284 != -1)
    {
      [JFXOverlayEffect updateDynamicTextWithCompletionBlock:];
    }

    v10 = updateDynamicTextWithCompletionBlock__s_DayOfWeekFormatter;
    goto LABEL_14;
  }

LABEL_10:
  (*(v5 + 2))(v5, 0);
LABEL_18:
}

void __57__JFXOverlayEffect_updateDynamicTextWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = &stru_28553D028;
  }

  v5 = v3;
  v4 = [*(a1 + 32) JFX_stringAtIndex:0];
  if (([(__CFString *)v5 isEqualToString:v4]& 1) == 0)
  {
    [*(a1 + 32) setString:v5 atIndex:0];
  }

  (*(*(a1 + 40) + 16))();
}

void __57__JFXOverlayEffect_updateDynamicTextWithCompletionBlock___block_invoke_2()
{
  v0 = objc_opt_new();
  v1 = updateDynamicTextWithCompletionBlock__s_shortTimeFormatter;
  updateDynamicTextWithCompletionBlock__s_shortTimeFormatter = v0;

  [updateDynamicTextWithCompletionBlock__s_shortTimeFormatter setDateStyle:0];
  [updateDynamicTextWithCompletionBlock__s_shortTimeFormatter setTimeStyle:1];
  v2 = updateDynamicTextWithCompletionBlock__s_shortTimeFormatter;
  v3 = [updateDynamicTextWithCompletionBlock__s_shortTimeFormatter AMSymbol];
  v4 = [v3 localizedLowercaseString];
  [v2 setAMSymbol:v4];

  v5 = updateDynamicTextWithCompletionBlock__s_shortTimeFormatter;
  v7 = [updateDynamicTextWithCompletionBlock__s_shortTimeFormatter PMSymbol];
  v6 = [v7 localizedLowercaseString];
  [v5 setPMSymbol:v6];
}

uint64_t __57__JFXOverlayEffect_updateDynamicTextWithCompletionBlock___block_invoke_3()
{
  v0 = objc_opt_new();
  v1 = updateDynamicTextWithCompletionBlock__s_DayOfWeekFormatter;
  updateDynamicTextWithCompletionBlock__s_DayOfWeekFormatter = v0;

  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  [updateDynamicTextWithCompletionBlock__s_DayOfWeekFormatter setLocale:v2];

  v3 = updateDynamicTextWithCompletionBlock__s_DayOfWeekFormatter;

  return [v3 setLocalizedDateFormatFromTemplate:@"cccc"];
}

- (BOOL)wasDynamicTextSet
{
  v2 = [(JFXOverlayEffect *)self JFX_stringAtIndex:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 hasPrefix:@"<#"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)JFX_stringAtIndex:(unint64_t)a3
{
  v4 = MEMORY[0x277D41B28];
  if (a3)
  {
    v4 = MEMORY[0x277D41B48];
  }

  v5 = *v4;
  v6 = [(JFXEffect *)self renderEffect];
  v7 = [v6 effectParameters];

  v8 = [v7 objectForKeyedSubscript:v5];

  if (v8)
  {
    v9 = [v8 string];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end