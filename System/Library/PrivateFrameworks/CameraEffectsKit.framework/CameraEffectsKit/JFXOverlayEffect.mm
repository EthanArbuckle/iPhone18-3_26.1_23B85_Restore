@interface JFXOverlayEffect
+ (id)dynamicTextPlaceholderMap;
+ (id)effectIDToImageSequenceIDMap;
- (BOOL)JFX_hasPosterFrame;
- (BOOL)JFX_posterFrameIsCachable;
- (BOOL)JFX_shouldEnableDynamicLineSpacingForDiacritics;
- (BOOL)enablePresentationState:(BOOL)state;
- (BOOL)hasBackground;
- (BOOL)hasDynamicText;
- (BOOL)hitTestPoint:(CGPoint)point atTime:(id *)time forcePosterFrame:(BOOL)frame relativeTo:(CGRect)to basisOrigin:(int)origin adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize;
- (BOOL)includeDropShadowWhenPositioningCloseButton;
- (BOOL)isAppearanceEqual:(id)equal forPurpose:(unint64_t)purpose;
- (BOOL)isCurrentlyTracking;
- (BOOL)isEmoji;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHidden;
- (BOOL)isTailFlipped;
- (BOOL)isTextFlipped;
- (BOOL)isTracked;
- (BOOL)loopedRangeRenderIsCacheable;
- (BOOL)objectBounds:(CGRect *)bounds time:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeMasks:(BOOL)masks;
- (BOOL)supportsFlippingTail;
- (BOOL)supportsFlippingText;
- (BOOL)wasDynamicTextSet;
- (CGAffineTransform)addTransform:(SEL)transform withComponentTime:(CGAffineTransform *)time relativeTo:(id *)to basisOrigin:(CGRect)origin;
- (CGAffineTransform)addTransform:(SEL)transform withComponentTime:(CGAffineTransform *)time relativeTo:(id *)to basisOrigin:(CGRect)origin restrictToBounds:(int)bounds;
- (CGPath)newPathsForHitTestingAtTime:(id *)time forcePosterFrame:(BOOL)frame relativeTo:(CGRect)to basisOrigin:(int)origin adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize outExpandedPath:(const CGPath *)path;
- (CGPoint)closeButtonInset;
- (CGPoint)effectCenterAtTime:(id *)time forcePosterFrame:(BOOL)frame includeTransformAnimation:(BOOL)animation includePlayableAspectScale:(BOOL)scale relativeTo:(CGRect)to basisOrigin:(int)origin;
- (CGPoint)hitAreaScale;
- (CGPoint)screenPointToEffectPoint:(CGPoint)point withComponentTime:(id *)time relativeTo:(CGRect)to basisOrigin:(int)origin;
- (CGRect)hitAreaBoundingFrameAtTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize relativeTo:(CGRect)to basisOrigin:(int)origin;
- (CGRect)imageFrameAtTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow relativeTo:(CGRect)to basisOrigin:(int)origin;
- (JFXOverlayEffect)initWithCoder:(id)coder;
- (JFXOverlayEffect)initWithEffectID:(id)d;
- (NSString)dynamicTextString;
- (PVCGPointQuad)cornersAtTime:(SEL)time forcePosterFrame:(id *)frame includeDropShadow:(BOOL)shadow scale:(BOOL)scale relativeTo:(CGPoint)to basisOrigin:(CGRect)origin;
- (double)JFX_adjustedMinimumSizeFromNormalizedMinimumSize:(id)size atTime:(id *)time forcePosterFrame:(BOOL)frame relativeTo:(CGRect)to basisOrigin:(int)origin;
- (double)customPickerRotation;
- (double)pickerScale;
- (double)transformAtTime:(uint64_t)time@<X3> forcePosterFrame:(uint64_t)frame@<X4> includeTransformAnimation:(char)animation@<W5> includePlayableAspectScale:(uint64_t)scale@<X6> relativeTo:(__int128 *)to@<X8> basisOrigin:(float64_t)origin@<D2>;
- (id)JFX_dynamicTextPlaceHolderText;
- (id)JFX_stringAtIndex:(unint64_t)index;
- (id)accessibilityName;
- (id)contentProperties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customPrimaryFillColor;
- (id)osfaToneMappingOption;
- (id)overlayContentDataSource;
- (id)serializableEffectParameters;
- (int64_t)rotatedAspectRatio;
- (uint64_t)transformAtTime:(__int128 *)time forcePosterFrame:(uint64_t)frame relativeTo:(uint64_t)to basisOrigin:;
- (unint64_t)dynamicTextType;
- (unint64_t)hash;
- (unint64_t)maxCharacters;
- (void)JFX_applyEffectParametersForFaceTrackingTransform:(id)transform;
- (void)JFX_setupTrackingProps;
- (void)JFX_updateInteractiveMode;
- (void)applyScaleToFitFrame:(CGRect)frame withComponentTime:(id *)time relativeRect:(CGRect)rect restrictToBounds:(BOOL)bounds;
- (void)encodeWithCoder:(id)coder;
- (void)renderEffectWillLoad;
- (void)resetDynamicTextString;
- (void)resumeTracking;
- (void)rotate:(double)rotate aroundPoint:(CGPoint)point withComponentTime:(id *)time relativeTo:(CGRect)to basisOrigin:(int)origin;
- (void)setDynamicTextString:(id)string;
- (void)setFaceTrackingTransform:(id)transform;
- (void)setFlipTail:(BOOL)tail;
- (void)setFlipText:(BOOL)text;
- (void)setForceRenderAtPosterFrame:(BOOL)frame;
- (void)setImageSequencePathToBundledAssets;
- (void)setPosition:(CGPoint)position withComponentTime:(id *)time relativeTo:(CGRect)to basisOrigin:(int)origin restrictToBounds:(BOOL)bounds;
- (void)setSingleLineScaleThreshold:(double)threshold;
- (void)setTrackingProps:(id)props;
- (void)suspendTracking;
- (void)trackedEffectProperties:(id)properties didChangeTrackingType:(BOOL)type didChangeEnabled:(BOOL)enabled;
- (void)updateDynamicTextWithCompletionBlock:(id)block;
- (void)updateRenderSizeMaintainingAppearance:(CGSize)appearance withComponentTime:(id *)time;
- (void)updateRenderSizeMaintainingRelativeSizeAndPosition:(CGSize)position toSize:(CGSize)size withComponentTime:(id *)time;
- (void)updateRenderSizeMaintainingSizeAndPositionRelativeToMedia:(CGSize)media mediaSize:(CGSize)size mediaContentMode:(int)mode;
@end

@implementation JFXOverlayEffect

- (JFXOverlayEffect)initWithEffectID:(id)d
{
  v16.receiver = self;
  v16.super_class = JFXOverlayEffect;
  v3 = [(JFXEffect *)&v16 initWithEffectID:d];
  v4 = v3;
  if (v3)
  {
    jFX_posterFrameIsCachable = [(JFXOverlayEffect *)v3 JFX_posterFrameIsCachable];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:jFX_posterFrameIsCachable];
    [(JFXEffect *)v4 setParameter:v6 forKey:*MEMORY[0x277D41A50]];

    if ([(JFXOverlayEffect *)v4 JFX_shouldEnableDynamicLineSpacingForDiacritics])
    {
      [(JFXTextEffect *)v4 enableDynamicLineSpacingForDiacritics:1];
    }

    [(JFXTextEffect *)v4 setupLocalizedText];
    jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
    v8 = [jfxBundle localizedStringForKey:@"Overlay Text Single Line Scale Threshold" value:&stru_28553D028 table:0];

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

    customPrimaryFillColor = [(JFXOverlayEffect *)v4 customPrimaryFillColor];
    if (customPrimaryFillColor)
    {
      [(JFXEffect *)v4 setParameter:customPrimaryFillColor forKey:@"PrimaryFillColor"];
    }

    osfaToneMappingOption = [(JFXOverlayEffect *)v4 osfaToneMappingOption];
    if (osfaToneMappingOption)
    {
      [(JFXEffect *)v4 setParameter:osfaToneMappingOption forKey:*MEMORY[0x277D41A30]];
    }

    atomic_store(0, &v4->_isInteractiveEditingCount);
    atomic_store(0, &v4->_isEditingFaceTrackingTransformsCount);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = JFXOverlayEffect;
  v4 = [(JFXTextEffect *)&v12 copyWithZone:zone];
  trackingProps = [(JFXOverlayEffect *)self trackingProps];
  v6 = [trackingProps copy];
  [v4 setTrackingProps:v6];

  faceTrackingTransform = [(JFXOverlayEffect *)self faceTrackingTransform];
  v8 = [faceTrackingTransform copy];
  [v4 setFaceTrackingTransform:v8];

  accessibilityOverlayEffectLabel = [(JFXOverlayEffect *)self accessibilityOverlayEffectLabel];
  v10 = [accessibilityOverlayEffectLabel copy];
  [v4 setAccessibilityOverlayEffectLabel:v10];

  [v4 setPrefersTrackingNotActivateAutomatically:{-[JFXOverlayEffect prefersTrackingNotActivateAutomatically](self, "prefersTrackingNotActivateAutomatically")}];
  return v4;
}

- (JFXOverlayEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = JFXOverlayEffect;
  v5 = [(JFXEffect *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kJTAccessibilityOverlayEffectLabelKey"];
    accessibilityOverlayEffectLabel = v5->_accessibilityOverlayEffectLabel;
    v5->_accessibilityOverlayEffectLabel = v6;

    v5->_prefersTrackingNotActivateAutomatically = [coderCopy decodeBoolForKey:@"OverlayPrefersTrackingNotActivateAutomaticallyKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"JTOverlayEffectTrackingPropsKey"];
    trackingProps = v5->_trackingProps;
    v5->_trackingProps = v8;

    [(JFXOverlayEffect *)v5 JFX_setupTrackingProps];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = JFXOverlayEffect;
  coderCopy = coder;
  [(JFXEffect *)&v7 encodeWithCoder:coderCopy];
  v5 = [(JFXOverlayEffect *)self trackingProps:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"JTOverlayEffectTrackingPropsKey"];

  accessibilityOverlayEffectLabel = [(JFXOverlayEffect *)self accessibilityOverlayEffectLabel];
  [coderCopy encodeObject:accessibilityOverlayEffectLabel forKey:@"kJTAccessibilityOverlayEffectLabelKey"];

  [coderCopy encodeBool:-[JFXOverlayEffect prefersTrackingNotActivateAutomatically](self forKey:{"prefersTrackingNotActivateAutomatically"), @"OverlayPrefersTrackingNotActivateAutomaticallyKey"}];
}

- (id)serializableEffectParameters
{
  v5.receiver = self;
  v5.super_class = JFXOverlayEffect;
  serializableEffectParameters = [(JFXEffect *)&v5 serializableEffectParameters];
  v3 = [serializableEffectParameters mutableCopy];

  [v3 removeObjectForKey:*MEMORY[0x277D41B68]];
  [v3 removeObjectForKey:*MEMORY[0x277D41B58]];
  [v3 removeObjectForKey:*MEMORY[0x277D41A20]];
  [v3 removeObjectForKey:*MEMORY[0x277D41A28]];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = JFXOverlayEffect;
  if ([(JFXEffect *)&v10 isEqual:equalCopy])
  {
    trackingProps = [equalCopy trackingProps];
    currentTrackingType = [trackingProps currentTrackingType];
    trackingProps2 = [(JFXOverlayEffect *)self trackingProps];
    v8 = currentTrackingType == [trackingProps2 currentTrackingType];
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

- (BOOL)isAppearanceEqual:(id)equal forPurpose:(unint64_t)purpose
{
  equalCopy = equal;
  v25.receiver = self;
  v25.super_class = JFXOverlayEffect;
  if ([(JFXTextEffect *)&v25 isAppearanceEqual:equalCopy forPurpose:purpose])
  {
    v7 = equalCopy;
    trackingProps = [v7 trackingProps];
    currentTrackingType = [trackingProps currentTrackingType];
    trackingProps2 = [(JFXOverlayEffect *)self trackingProps];
    currentTrackingType2 = [trackingProps2 currentTrackingType];

    v23 = 0;
    if (currentTrackingType == currentTrackingType2)
    {
      v12 = MEMORY[0x277D41690];
      topLevelTransformObject = [(JFXEffect *)self topLevelTransformObject];
      topLevelTransformObject2 = [v7 topLevelTransformObject];
      LODWORD(v12) = [v12 isMatrix:topLevelTransformObject equivalentTo:topLevelTransformObject2];

      if (v12)
      {
        trackingProps3 = [(JFXOverlayEffect *)self trackingProps];
        currentTrackingType3 = [trackingProps3 currentTrackingType];
        trackingProps4 = [v7 trackingProps];
        currentTrackingType4 = [trackingProps4 currentTrackingType];

        if (currentTrackingType3 == currentTrackingType4)
        {
          if (purpose == 1 || !-[JFXOverlayEffect isCurrentlyTracking](self, "isCurrentlyTracking") || (-[JFXOverlayEffect faceTrackingTransform](self, "faceTrackingTransform"), v19 = objc_claimAutoreleasedReturnValue(), [v7 faceTrackingTransform], v20 = objc_claimAutoreleasedReturnValue(), -[JFXOverlayEffect trackingProps](self, "trackingProps"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v19, "isEqual:forTrackingType:", v20, objc_msgSend(v21, "currentTrackingType")), v21, v20, v19, v22))
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
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
    isEmoji = [overlayContentDataSource isEmoji];
  }

  else
  {
    overlayContentDataSource = [(JFXEffect *)self effectID];
    isEmoji = [overlayContentDataSource isEqualToString:*MEMORY[0x277D417D0]];
  }

  v6 = isEmoji;

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
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource && (-[JFXEffect contentDataSource](self, "contentDataSource"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 conformsToProtocol:&unk_2855E40B8], v4, v5))
  {
    contentDataSource2 = [(JFXEffect *)self contentDataSource];
  }

  else
  {
    contentDataSource2 = 0;
  }

  return contentDataSource2;
}

- (id)contentProperties
{
  overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
  if (overlayContentDataSource)
  {
    v31.receiver = self;
    v31.super_class = JFXOverlayEffect;
    contentProperties = [(JFXTextEffect *)&v31 contentProperties];
    v5 = [contentProperties mutableCopy];

    contentProperties2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:15];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(overlayContentDataSource, "isLabel")}];
    [contentProperties2 setObject:v7 forKeyedSubscript:@"isLabel"];

    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(overlayContentDataSource, "loopRenderRangeIsCachable")}];
    [contentProperties2 setObject:v8 forKeyedSubscript:@"loopRenderRangeIsCachable"];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(overlayContentDataSource, "doesNotHavePosterFrame")}];
    [contentProperties2 setObject:v9 forKeyedSubscript:@"doesNotHavePosterFrame"];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(overlayContentDataSource, "posterFrameIsNotCachable")}];
    [contentProperties2 setObject:v10 forKeyedSubscript:@"posterFrameIsNotCachable"];

    initialRotation = [overlayContentDataSource initialRotation];

    if (initialRotation)
    {
      initialRotation2 = [overlayContentDataSource initialRotation];
      [contentProperties2 setObject:initialRotation2 forKeyedSubscript:@"initialRotation"];
    }

    primaryFillColor = [overlayContentDataSource primaryFillColor];

    if (primaryFillColor)
    {
      primaryFillColor2 = [overlayContentDataSource primaryFillColor];
      [contentProperties2 setObject:primaryFillColor2 forKeyedSubscript:@"primaryFillColor"];
    }

    hitAreaScale = [overlayContentDataSource hitAreaScale];

    if (hitAreaScale)
    {
      hitAreaScale2 = [overlayContentDataSource hitAreaScale];
      [contentProperties2 setObject:hitAreaScale2 forKeyedSubscript:@"hitAreaScale"];
    }

    pickerScale = [overlayContentDataSource pickerScale];

    if (pickerScale)
    {
      pickerScale2 = [overlayContentDataSource pickerScale];
      [contentProperties2 setObject:pickerScale2 forKeyedSubscript:@"pickerScale"];
    }

    fontSize = [overlayContentDataSource fontSize];

    if (fontSize)
    {
      fontSize2 = [overlayContentDataSource fontSize];
      [contentProperties2 setObject:fontSize2 forKeyedSubscript:@"fontSize"];
    }

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(overlayContentDataSource, "dynamicTextType")}];
    [contentProperties2 setObject:v21 forKeyedSubscript:@"dynamicTextType"];

    dynamicTextPlaceholder = [overlayContentDataSource dynamicTextPlaceholder];

    if (dynamicTextPlaceholder)
    {
      dynamicTextPlaceholder2 = [overlayContentDataSource dynamicTextPlaceholder];
      [contentProperties2 setObject:dynamicTextPlaceholder2 forKeyedSubscript:@"dynamicTextPlaceholder"];
    }

    shouldDisableDynamicLineSpacingForDiatrics = [overlayContentDataSource shouldDisableDynamicLineSpacingForDiatrics];

    if (shouldDisableDynamicLineSpacingForDiatrics)
    {
      shouldDisableDynamicLineSpacingForDiatrics2 = [overlayContentDataSource shouldDisableDynamicLineSpacingForDiatrics];
      [contentProperties2 setObject:shouldDisableDynamicLineSpacingForDiatrics2 forKeyedSubscript:@"shouldDisableDynamicLineSpacingForDiatrics"];
    }

    v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(overlayContentDataSource, "isEmoji")}];
    [contentProperties2 setObject:v26 forKeyedSubscript:@"isEmoji"];

    v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(overlayContentDataSource, "isTextBakedIn")}];
    [contentProperties2 setObject:v27 forKeyedSubscript:@"isTextBakedIn"];

    v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(overlayContentDataSource, "requireEmojiRenderingWorkaround")}];
    [contentProperties2 setObject:v28 forKeyedSubscript:@"requireEmojiRenderingWorkaround"];

    if (v5)
    {
      [v5 addEntriesFromDictionary:contentProperties2];
      v29 = v5;

      contentProperties2 = v29;
    }
  }

  else
  {
    v32.receiver = self;
    v32.super_class = JFXOverlayEffect;
    contentProperties2 = [(JFXTextEffect *)&v32 contentProperties];
  }

  return contentProperties2;
}

- (void)setSingleLineScaleThreshold:(double)threshold
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:threshold];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41AE0]];
}

- (void)setFlipText:(BOOL)text
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:text];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41A68]];
}

- (BOOL)isTextFlipped
{
  v3 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41A68]];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    renderEffect = [(JFXEffect *)self renderEffect];
    bOOLValue = [renderEffect isTextFlipped];
  }

  return bOOLValue;
}

- (BOOL)supportsFlippingText
{
  renderEffect = [(JFXEffect *)self renderEffect];
  supportsFlippingText = [renderEffect supportsFlippingText];

  return supportsFlippingText;
}

- (void)setFlipTail:(BOOL)tail
{
  if (tail)
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
    intValue = [v3 intValue];
  }

  else
  {
    renderEffect = [(JFXEffect *)self renderEffect];
    intValue = [renderEffect orientation];
  }

  return intValue == 2;
}

- (BOOL)supportsFlippingTail
{
  renderEffect = [(JFXEffect *)self renderEffect];
  supportsOrientation = [renderEffect supportsOrientation];

  return supportsOrientation;
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
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
    initialRotation = [overlayContentDataSource initialRotation];

    if (initialRotation)
    {
      [initialRotation doubleValue];
      v7 = v6;
    }

    else
    {
      v7 = 0.0;
    }
  }

  else
  {
    initialRotation = [(JFXTextEffect *)self editUIProperties];
    effectID = [(JFXEffect *)self effectID];
    v9 = [initialRotation objectForKeyedSubscript:effectID];

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
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
    primaryFillColor = [overlayContentDataSource primaryFillColor];
  }

  else
  {
    overlayContentDataSource = [(JFXTextEffect *)self editUIProperties];
    effectID = [(JFXEffect *)self effectID];
    v7 = [overlayContentDataSource objectForKeyedSubscript:effectID];

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
        primaryFillColor = [v10 colorWithRed:v13 green:v16 blue:v18 alpha:1.0];
      }

      else
      {
        primaryFillColor = 0;
      }
    }

    else
    {
      primaryFillColor = 0;
    }
  }

  return primaryFillColor;
}

- (id)osfaToneMappingOption
{
  editUIProperties = [(JFXTextEffect *)self editUIProperties];
  effectID = [(JFXEffect *)self effectID];
  v5 = [editUIProperties objectForKeyedSubscript:effectID];

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

- (void)setTrackingProps:(id)props
{
  objc_storeStrong(&self->_trackingProps, props);

  [(JFXOverlayEffect *)self JFX_setupTrackingProps];
}

- (void)JFX_setupTrackingProps
{
  [(JFXTrackedEffectProperties *)self->_trackingProps setDelegate:self];

  [(JFXOverlayEffect *)self JFX_updateInteractiveMode];
}

- (BOOL)isTracked
{
  trackingProps = [(JFXOverlayEffect *)self trackingProps];
  v3 = [trackingProps trackingType] != 0;

  return v3;
}

- (BOOL)isCurrentlyTracking
{
  trackingProps = [(JFXOverlayEffect *)self trackingProps];
  v3 = [trackingProps currentTrackingType] != 0;

  return v3;
}

- (void)suspendTracking
{
  trackingProps = [(JFXOverlayEffect *)self trackingProps];
  [trackingProps enableTrackingState:0];
}

- (void)resumeTracking
{
  trackingProps = [(JFXOverlayEffect *)self trackingProps];
  [trackingProps enableTrackingState:1];
}

- (void)setFaceTrackingTransform:(id)transform
{
  transformCopy = transform;
  internalFaceTrackingTransform = [(JFXOverlayEffect *)self internalFaceTrackingTransform];

  v5 = transformCopy;
  if (internalFaceTrackingTransform != transformCopy)
  {
    [(JFXOverlayEffect *)self JFX_applyEffectParametersForFaceTrackingTransform:transformCopy];
    v5 = transformCopy;
  }
}

- (void)JFX_applyEffectParametersForFaceTrackingTransform:(id)transform
{
  v11[4] = *MEMORY[0x277D85DE8];
  transformCopy = transform;
  [(JFXOverlayEffect *)self setInternalFaceTrackingTransform:transformCopy];
  isCurrentlyTracking = [(JFXOverlayEffect *)self isCurrentlyTracking];
  if (transformCopy && isCurrentlyTracking)
  {
    trackingProps = [(JFXOverlayEffect *)self trackingProps];
    v7 = [transformCopy effectParametersForTrackingType:{objc_msgSend(trackingProps, "currentTrackingType")}];

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

- (CGRect)imageFrameAtTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow relativeTo:(CGRect)to basisOrigin:(int)origin
{
  memset(&v11[1], 0, sizeof(PVCGPointQuad));
  v11[0].a = *&time->var0;
  *&v11[0].b.x = time->var3;
  [(JFXOverlayEffect *)self cornersAtTime:v11 forcePosterFrame:frame includeDropShadow:shadow scale:*&origin relativeTo:1.0 basisOrigin:1.0, to.origin.x, to.origin.y, to.size.width, to.size.height];
  v11[0] = v11[1];
  pv_bounding_CGRect(v11);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)hitAreaBoundingFrameAtTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize relativeTo:(CGRect)to basisOrigin:(int)origin
{
  v18 = *time;
  path = 0;
  v9 = [(JFXOverlayEffect *)self newPathsForHitTestingAtTime:&v18 forcePosterFrame:frame relativeTo:*&origin basisOrigin:size adjustForMinimumSize:&path normalizedMinimumSize:to.origin.x outExpandedPath:to.origin.y, to.size.width, to.size.height, minimumSize.var0, minimumSize.var1];
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

- (PVCGPointQuad)cornersAtTime:(SEL)time forcePosterFrame:(id *)frame includeDropShadow:(BOOL)shadow scale:(BOOL)scale relativeTo:(CGPoint)to basisOrigin:(CGRect)origin
{
  v9 = *&a9;
  scaleCopy = scale;
  shadowCopy = shadow;
  height = origin.size.height;
  width = origin.size.width;
  y = to.y;
  x = to.x;
  retstr->c = 0u;
  retstr->d = 0u;
  retstr->a = 0u;
  retstr->b = 0u;
  renderEffect = [(JFXEffect *)self renderEffect];
  v19 = renderEffect;
  if (renderEffect)
  {
    v21 = *&frame->var0;
    var3 = frame->var3;
    [renderEffect cornersAtTime:&v21 forcePosterFrame:shadowCopy includeDropShadow:scaleCopy scale:v9 viewSize:x viewOrigin:{y, width, height}];
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

- (BOOL)objectBounds:(CGRect *)bounds time:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeMasks:(BOOL)masks
{
  masksCopy = masks;
  shadowCopy = shadow;
  frameCopy = frame;
  v17 = 0;
  v18 = 0;
  renderEffect = [(JFXEffect *)self renderEffect];
  v16 = *time;
  v13 = [renderEffect bounds:&v17 atTime:&v16 forcePosterFrame:frameCopy includeDropShadow:shadowCopy includeMasks:masksCopy];

  if (v13)
  {
    v14 = v18;
    bounds->origin = v17;
    bounds->size = v14;
  }

  return v13;
}

- (uint64_t)transformAtTime:(__int128 *)time forcePosterFrame:(uint64_t)frame relativeTo:(uint64_t)to basisOrigin:
{
  v6 = *time;
  v7 = *(time + 2);
  return [self transformAtTime:&v6 forcePosterFrame:frame includeTransformAnimation:1 includePlayableAspectScale:1 relativeTo:to basisOrigin:?];
}

- (double)transformAtTime:(uint64_t)time@<X3> forcePosterFrame:(uint64_t)frame@<X4> includeTransformAnimation:(char)animation@<W5> includePlayableAspectScale:(uint64_t)scale@<X6> relativeTo:(__int128 *)to@<X8> basisOrigin:(float64_t)origin@<D2>
{
  to[6] = 0u;
  to[7] = 0u;
  to[4] = 0u;
  to[5] = 0u;
  to[2] = 0u;
  to[3] = 0u;
  *to = 0u;
  to[1] = 0u;
  renderEffect = [self renderEffect];
  a18 = *a2;
  *&a19 = *(a2 + 2);
  v33 = [renderEffect transformAtTime:&a18 forcePosterFrame:time includeTransformAnimation:frame viewSize:scale viewOrigin:{origin, a9}];
  v34 = v33;
  if (v33)
  {
    [v33 SIMDDouble4x4];
  }

  else
  {
    to[6] = 0u;
    to[7] = 0u;
    to[4] = 0u;
    to[5] = 0u;
    to[2] = 0u;
    to[3] = 0u;
    *to = 0u;
    to[1] = 0u;
  }

  if (scale == 1)
  {
    v36 = 0;
    v37.f64[0] = origin;
    v37.f64[1] = a9;
    __asm { FMOV            V2.2D, #0.5 }

    v43 = vmulq_f64(v37, _Q2);
    v44 = to[5];
    a22 = to[4];
    a23 = v44;
    v45 = to[7];
    a24 = to[6];
    a25 = v45;
    v46 = to[1];
    a18 = *to;
    a19 = v46;
    v47 = to[3];
    a20 = to[2];
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
    to[4] = 0u;
    to[5] = 0u;
    to[6] = 0u;
    to[7] = 0u;
    v51 = v69;
    *to = v68;
    to[1] = v51;
    result = *&v70;
    v52 = vars0;
    to[2] = v70;
    to[3] = v52;
  }

  if ((animation & 1) == 0)
  {
    [self playableScaleInOutputSize:{origin, a9}];
    v54 = 1.0 / v53;
    result = fabs(1.0 / v53 + -1.0);
    if (result >= 0.0001)
    {
      v55 = 0;
      v56.f64[0] = 0.0;
      v56.f64[1] = v54;
      v57 = to[5];
      a22 = to[4];
      a23 = v57;
      v58 = to[7];
      a24 = to[6];
      a25 = v58;
      v59 = to[1];
      a18 = *to;
      a19 = v59;
      v60 = to[3];
      a20 = to[2];
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
      to[4] = 0u;
      to[5] = 0u;
      to[6] = 0u;
      to[7] = 0u;
      v64 = v69;
      *to = v68;
      to[1] = v64;
      result = *&v70;
      v65 = vars0;
      to[2] = v70;
      to[3] = v65;
    }
  }

  return result;
}

- (CGAffineTransform)addTransform:(SEL)transform withComponentTime:(CGAffineTransform *)time relativeTo:(id *)to basisOrigin:(CGRect)origin
{
  v7 = *&time->c;
  v10[0] = *&time->a;
  v10[1] = v7;
  v10[2] = *&time->tx;
  v9 = *to;
  return [(JFXOverlayEffect *)self addTransform:v10 withComponentTime:&v9 relativeTo:*&a7 basisOrigin:0 restrictToBounds:origin.origin.x, origin.origin.y, origin.size.width, origin.size.height];
}

- (CGAffineTransform)addTransform:(SEL)transform withComponentTime:(CGAffineTransform *)time relativeTo:(id *)to basisOrigin:(CGRect)origin restrictToBounds:(int)bounds
{
  v8 = a8;
  v9 = *&bounds;
  height = origin.size.height;
  width = origin.size.width;
  y = origin.origin.y;
  x = origin.origin.x;
  v34.a = *&to->var0;
  *&v34.b.x = to->var3;
  [(JFXOverlayEffect *)self effectCenterAtTime:&v34 forcePosterFrame:1 includeTransformAnimation:1 includePlayableAspectScale:1 relativeTo:*&bounds basisOrigin:origin.origin.x];
  v19 = v18;
  v21 = v20;
  memset(&v39, 0, sizeof(v39));
  v34.a = *&to->var0;
  *&v34.b.x = to->var3;
  [(JFXOverlayEffect *)self cornersAtTime:&v34 forcePosterFrame:1 includeDropShadow:1 scale:v9 relativeTo:1.0 basisOrigin:1.0, x, y, width, height];
  v34 = v39;
  pv_CGPoint_get_quad_center(&v34);
  v23 = v22;
  v25 = v24;
  v38.receiver = self;
  v38.super_class = JFXOverlayEffect;
  v26 = *&time->c;
  v36.a = *&time->a;
  v36.b = v26;
  v36.c = *&time->tx;
  v37 = *to;
  [(CGAffineTransform *)&v38 addTransform:&v36 withComponentTime:&v37 relativeTo:v9 basisOrigin:1 ignoreTranslation:x, y, width, height];
  memset(&v36, 0, sizeof(v36));
  v34.a = *&to->var0;
  *&v34.b.x = to->var3;
  [(JFXOverlayEffect *)self cornersAtTime:&v34 forcePosterFrame:1 includeDropShadow:1 scale:v9 relativeTo:1.0 basisOrigin:1.0, x, y, width, height];
  v34 = v36;
  pv_CGPoint_get_quad_center(&v34);
  v28 = time->tx + v23 - v27;
  v30 = v25 - v29 + time->ty;
  if (*MEMORY[0x277CBF3A8] != v28 || *(MEMORY[0x277CBF3A8] + 8) != v30 || v8)
  {
    v34.a = *&to->var0;
    *&v34.b.x = to->var3;
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {

LABEL_7:

    return [(JFXEffect *)self playableAspectRatio];
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  v5 = [currentDevice2 orientation] - 3;

  if (v5 > 1)
  {
    goto LABEL_7;
  }

  playableAspectRatio = [(JFXEffect *)self playableAspectRatio];

  return complementaryAspectRatio(playableAspectRatio);
}

- (void)updateRenderSizeMaintainingAppearance:(CGSize)appearance withComponentTime:(id *)time
{
  height = appearance.height;
  width = appearance.width;
  [(JFXEffect *)self renderSize];
  v9 = v8;
  v11 = v10;
  v12 = aspectRatioMultiplierForSize(v8, v10);
  v13 = aspectRatioMultiplierForSize(width, height);
  if (vabdd_f64(v12, v13) >= 0.0001)
  {
    v15 = fmin(v9, v11);
    trackingProps = [(JFXOverlayEffect *)self trackingProps];
    trackingType = [trackingProps trackingType];

    if ((trackingType - 1) >= 2)
    {
      if (!trackingType)
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
        v61 = *&time->var0;
        *&v62 = time->var3;
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
        v61 = *&time->var0;
        *&v62 = time->var3;
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
          currentDevice = [MEMORY[0x277D75418] currentDevice];
          v37 = [currentDevice orientation] - 3;

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

- (void)updateRenderSizeMaintainingRelativeSizeAndPosition:(CGSize)position toSize:(CGSize)size withComponentTime:(id *)time
{
  height = size.height;
  width = size.width;
  v8 = position.height;
  v9 = position.width;
  v11 = aspectRatioMultiplierForSize(position.width, position.height);
  if (vabdd_f64(v11, aspectRatioMultiplierForSize(width, height)) >= 0.0001)
  {
    trackingProps = [(JFXOverlayEffect *)self trackingProps];
    trackingType = [trackingProps trackingType];

    if ((trackingType - 1) >= 2)
    {
      if (!trackingType)
      {
        v36 = CGRectMakeWithSize();
        v16 = v15;
        *&v40.a = *&time->var0;
        *&v40.c = time->var3;
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
      *&v40.a = *&time->var0;
      *&v40.c = time->var3;
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

- (void)updateRenderSizeMaintainingSizeAndPositionRelativeToMedia:(CGSize)media mediaSize:(CGSize)size mediaContentMode:(int)mode
{
  height = size.height;
  width = size.width;
  v8 = media.height;
  v9 = media.width;
  [(JFXEffect *)self renderSize];
  v12 = v11;
  v14 = v13;
  v15 = aspectRatioMultiplierForSize(v11, v13);
  v16 = aspectRatioMultiplierForSize(v9, v8);
  if (vabdd_f64(v15, v16) >= 0.0001)
  {
    v48 = width / height;
    transformAnimation = [(JFXEffect *)self transformAnimation];
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
    trackingProps = [(JFXOverlayEffect *)self trackingProps];
    currentTrackingType = [trackingProps currentTrackingType];

    if ((currentTrackingType - 1) < 2)
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
      [(JFXEffect *)self setTransformAnimation:transformAnimation];

      return;
    }

    if (currentTrackingType)
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
    if (mode)
    {
      if (mode <= 2)
      {
        if (mode == 1)
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
          if (mode != 2)
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
        if (mode != 3)
        {
          if (mode == 13)
          {
            v32 = v21;
            v33 = v21 / v48;
          }

          else
          {
            if (mode == 14)
            {
              v32 = v48 * v20;
            }

            else
            {
              v32 = v48;
            }

            if (mode == 14)
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
    if (mode)
    {
      v36 = 1.0;
      if (mode > 2)
      {
        v37 = v23 / v48;
        v38 = v48 * v22;
        if (mode == 14)
        {
          v36 = v22;
        }

        else
        {
          v38 = v48;
        }

        if (mode == 13)
        {
          v38 = v23;
        }

        else
        {
          v37 = v36;
        }

        if (mode == 3)
        {
          v35 = v23;
        }

        else
        {
          v35 = v38;
        }

        if (mode == 3)
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
      if (mode == 1)
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

      if (mode == 2)
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

- (void)rotate:(double)rotate aroundPoint:(CGPoint)point withComponentTime:(id *)time relativeTo:(CGRect)to basisOrigin:(int)origin
{
  v7 = *&origin;
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  v13 = point.y;
  v14 = point.x;
  trackingProps = [(JFXOverlayEffect *)self trackingProps];
  trackingType = [trackingProps trackingType];

  if (!trackingType)
  {
    *&v31.a = *&time->var0;
    *&v31.c = time->var3;
    [(JFXOverlayEffect *)self imageFrameAtTime:&v31 forcePosterFrame:1 includeDropShadow:1 relativeTo:v7 basisOrigin:x, y, width, height];
    CenterPoint = CGRectGetCenterPoint(v19, v20, v21, v22);
    v26 = height;
    v25 = v24;
    CGAffineTransformMakeRotation(&v27, rotate);
    memset(&v28, 0, sizeof(v28));
    CGAffineTransformMakeTranslation(&t1, -v14, -v13);
    t2 = v27;
    CGAffineTransformConcat(&v31, &t1, &t2);
    CGAffineTransformMakeTranslation(&t1, v14, v13);
    CGAffineTransformConcat(&v28, &v31, &t1);
    CGAffineTransformMakeTranslation(&v31, v28.tx + v25 * v28.c + v28.a * CenterPoint - CenterPoint, v28.ty + v25 * v28.d + v28.b * CenterPoint - v25);
    *&t2.a = *&time->var0;
    *&t2.c = time->var3;
    [(JFXOverlayEffect *)self addTransform:&v31 withComponentTime:&t2 relativeTo:v7 basisOrigin:x, y, width, v26];
  }
}

- (void)applyScaleToFitFrame:(CGRect)frame withComponentTime:(id *)time relativeRect:(CGRect)rect restrictToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = frame.size.height;
  v13 = frame.size.width;
  v14 = frame.origin.y;
  v48 = frame.origin.x;
  *&v56.a = *&time->var0;
  *&v56.c = time->var3;
  [(JFXOverlayEffect *)self imageFrameAtTime:&v56 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v16 = v60.size.width;
  v49 = v60.size.height;
  if (!CGRectIsEmpty(v60))
  {
    v43 = v14;
    v44 = v13;
    v45 = v12;
    *&v56.a = *&time->var0;
    *&v56.c = time->var3;
    [(JFXOverlayEffect *)self imageFrameAtTime:&v56 forcePosterFrame:1 includeDropShadow:0 relativeTo:1 basisOrigin:x, y, width, height];
    v18 = v17;
    v41 = v17;
    v47 = v19;
    memset(&v59, 0, sizeof(v59));
    CGAffineTransformMakeScale(&v59, 2.0, 2.0);
    v55.a = *&v59.a;
    v55.b = *&v59.c;
    v55.c = *&v59.tx;
    *&v58.a = *&time->var0;
    *&v58.c = time->var3;
    [(JFXOverlayEffect *)self addTransform:&v55 withComponentTime:&v58 relativeTo:1 basisOrigin:x, y, width, height];
    *&v56.a = *&time->var0;
    *&v56.c = time->var3;
    [(JFXOverlayEffect *)self imageFrameAtTime:&v56 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:x, y, width, height];
    v21 = v20;
    v23 = v22;
    *&v56.a = *&time->var0;
    *&v56.c = time->var3;
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
    *&v58.a = *&time->var0;
    *&v58.c = time->var3;
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
    v53 = *&time->var0;
    var3 = time->var3;
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
    v55.a = *&time->var0;
    *&v55.b.x = time->var3;
    [(JFXOverlayEffect *)self cornersAtTime:&v55 forcePosterFrame:1 includeDropShadow:1 scale:1 relativeTo:1.0 basisOrigin:1.0, x, y, width, v46];
    v55.a = *&v56.a;
    v55.b = *&v56.c;
    v55.c = *&v56.tx;
    v55.d = v57;
    pv_CGPoint_get_quad_center(&v55);
    CGAffineTransformMakeTranslation(&v55, MidX - v39, MidY - v40);
    v51 = *&time->var0;
    v52 = time->var3;
    [(JFXOverlayEffect *)self addTransform:&v55 withComponentTime:&v51 relativeTo:1 basisOrigin:boundsCopy restrictToBounds:x, y, width, v46];
  }
}

- (void)setPosition:(CGPoint)position withComponentTime:(id *)time relativeTo:(CGRect)to basisOrigin:(int)origin restrictToBounds:(BOOL)bounds
{
  v7 = *&origin;
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  v13 = position.y;
  v14.f64[0] = position.x;
  if (bounds)
  {
    v45 = v13;
    v48 = position.x;
    [(JFXEffect *)self playableRectInOutputSize:to.size.width, to.size.height];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v55 = *&time->var0;
    *&v56 = time->var3;
    [(JFXOverlayEffect *)self effectCenterAtTime:&v55 forcePosterFrame:1 includeTransformAnimation:1 includePlayableAspectScale:1 relativeTo:v7 basisOrigin:x, y, width, height];
    v42 = v25;
    v43 = v24;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v52 = *&time->var0;
    *&v53 = time->var3;
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

  v55 = *&time->var0;
  *&v56 = time->var3;
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

- (CGPoint)screenPointToEffectPoint:(CGPoint)point withComponentTime:(id *)time relativeTo:(CGRect)to basisOrigin:(int)origin
{
  height = to.size.height;
  width = to.size.width;
  x = point.x;
  y = point.y;
  [(JFXEffect *)self playableScaleInOutputSize:to.size.width, to.size.height, to.origin.x, to.origin.y];
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
  transformAnimation = [(JFXEffect *)self transformAnimation];
  *&v64[0].time.value = *&time->var0;
  v64[0].time.epoch = time->var3;
  v15 = [v13 getTransformInfoFromAnimation:transformAnimation atTime:v64 renderSize:14 contentMode:0 invertY:&v65 outInfo:{width, height}];

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

  renderEffect = [(JFXEffect *)self renderEffect];
  [renderEffect outputSize];
  v19 = v18;
  v21 = v20;

  renderEffect2 = [(JFXEffect *)self renderEffect];
  origin = [renderEffect2 origin];

  v24 = *(MEMORY[0x277CBF348] + 8);
  tx = *MEMORY[0x277CBF348];
  if (origin == 2)
  {
    if (origin)
    {
      v37 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      v37 = height * 0.5;
    }

    if (origin)
    {
      v38 = *MEMORY[0x277CBF348];
    }

    else
    {
      v38 = width * 0.5;
    }

    v34 = origin == 1;
    if (origin == 1)
    {
      v35 = height * 0.5;
    }

    else
    {
      v35 = v37;
    }

    if (origin == 1)
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
    if (origin)
    {
      v27 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      v27 = height;
    }

    v28 = origin == 2 || origin == 0;
    if (origin == 2)
    {
      v29 = width * -0.5;
    }

    else
    {
      v26 = v27;
      v29 = *MEMORY[0x277CBF348];
    }

    v30 = height * -0.5;
    v31 = origin == 1;
    if (origin == 1)
    {
      v32 = height;
    }

    else
    {
      v32 = *(MEMORY[0x277CBF348] + 8);
    }

    if (origin == 2)
    {
      v31 = 0;
    }

    else
    {
      v30 = v32;
      v25 = *MEMORY[0x277CBF348];
    }

    if (origin)
    {
      v31 = 0;
      v30 = *(MEMORY[0x277CBF348] + 8);
      v25 = *MEMORY[0x277CBF348];
    }

    v33 = origin == 1;
    if (origin == 1)
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
  effectParameters = [(JFXEffect *)self effectParameters];
  v40 = [effectParameters objectForKeyedSubscript:*MEMORY[0x277D419F8]];
  bOOLValue = [v40 BOOLValue];

  effectParameters2 = [(JFXEffect *)self effectParameters];
  v43 = [effectParameters2 objectForKeyedSubscript:*MEMORY[0x277D41B70]];

  effectParameters3 = [(JFXEffect *)self effectParameters];
  v45 = [effectParameters3 objectForKeyedSubscript:*MEMORY[0x277D41A10]];

  effectParameters4 = [(JFXEffect *)self effectParameters];
  v47 = [effectParameters4 objectForKeyedSubscript:*MEMORY[0x277D41A08]];

  if (bOOLValue && v43 && v45 && v47)
  {
    renderEffect3 = [(JFXEffect *)self renderEffect];
    [renderEffect3 outputROI];

    if (origin == 2)
    {
      tx = v19 * 0.5;
      v24 = v21 * 0.5;
      v49 = 1;
    }

    else if (origin)
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

- (CGPoint)effectCenterAtTime:(id *)time forcePosterFrame:(BOOL)frame includeTransformAnimation:(BOOL)animation includePlayableAspectScale:(BOOL)scale relativeTo:(CGRect)to basisOrigin:(int)origin
{
  height = to.size.height;
  width = to.size.width;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = *&time->var0;
  *&v16 = time->var3;
  [(JFXOverlayEffect *)self transformAtTime:&v15 forcePosterFrame:frame includeTransformAnimation:animation includePlayableAspectScale:scale relativeTo:*&origin basisOrigin:to.origin.x, to.origin.y, to.size.width];
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

- (CGPath)newPathsForHitTestingAtTime:(id *)time forcePosterFrame:(BOOL)frame relativeTo:(CGRect)to basisOrigin:(int)origin adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize outExpandedPath:(const CGPath *)path
{
  var1 = minimumSize.var1;
  var0 = minimumSize.var0;
  sizeCopy = size;
  v13 = *&origin;
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  frameCopy = frame;
  renderEffect = [(JFXEffect *)self renderEffect];
  [(JFXOverlayEffect *)self hitAreaScale];
  v27 = *time;
  v22 = [renderEffect hitAreaPointsAtTime:&v27 forcePosterFrame:frameCopy includeDropShadow:0 scale:v13 viewSize:? viewOrigin:?];

  ClosedCGPathWithPoints = createClosedCGPathWithPoints(v22);
  if (!sizeCopy || (v27 = *time, [(JFXOverlayEffect *)self JFX_adjustedMinimumSizeFromNormalizedMinimumSize:&v27 atTime:frameCopy forcePosterFrame:v13 relativeTo:var0 basisOrigin:var1, x, y, width, height], v24 <= 0.0) || (ExpandedClosedCGPathWithCGPath = createExpandedClosedCGPathWithCGPath(ClosedCGPathWithPoints, v24)) == 0)
  {
    ExpandedClosedCGPathWithCGPath = CGPathRetain(ClosedCGPathWithPoints);
  }

  *path = ExpandedClosedCGPathWithCGPath;

  return ClosedCGPathWithPoints;
}

- (BOOL)hitTestPoint:(CGPoint)point atTime:(id *)time forcePosterFrame:(BOOL)frame relativeTo:(CGRect)to basisOrigin:(int)origin adjustForMinimumSize:(BOOL)size normalizedMinimumSize:(id)minimumSize
{
  var1 = minimumSize.var1;
  var0 = minimumSize.var0;
  sizeCopy = size;
  v12 = *&origin;
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  frameCopy = frame;
  v19 = point.y;
  v20 = point.x;
  if ([(JFXOverlayEffect *)self isHidden])
  {
    return 0;
  }

  v25 = *&time->var0;
  var3 = time->var3;
  path = 0;
  var1 = [(JFXOverlayEffect *)self newPathsForHitTestingAtTime:&v25 forcePosterFrame:frameCopy relativeTo:v12 basisOrigin:sizeCopy adjustForMinimumSize:&path normalizedMinimumSize:x outExpandedPath:y, width, height, var0, var1];
  v28.x = v20;
  v28.y = v19;
  v22 = CGPathContainsPoint(var1, 0, v28, 0);
  if (!v22 && sizeCopy)
  {
    v29.x = v20;
    v29.y = v19;
    v22 = CGPathContainsPoint(path, 0, v29, 0);
  }

  CGPathRelease(var1);
  CGPathRelease(path);
  return v22;
}

- (double)JFX_adjustedMinimumSizeFromNormalizedMinimumSize:(id)size atTime:(id *)time forcePosterFrame:(BOOL)frame relativeTo:(CGRect)to basisOrigin:(int)origin
{
  width = to.size.width;
  height = to.size.height;
  var0 = size.var0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = *time;
  [(JFXOverlayEffect *)self cornersAtTime:&v15 forcePosterFrame:frame includeDropShadow:0 scale:*&origin relativeTo:1.0 basisOrigin:1.0, to.origin.x, to.origin.y];
  v8 = vsubq_f64(v18, v16);
  v9.f64[0] = width;
  v9.f64[1] = height;
  v10 = vmulq_n_f64(v9, 0.2);
  v11 = vpaddq_f64(vmulq_f64(v10, v10), vmulq_f64(v8, v8));
  return var0 * width * fmin(fmax(vdivq_f64(v11, vdupq_laneq_s64(v11, 1)).f64[0], 0.0), 1.0);
}

- (CGPoint)closeButtonInset
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    effectID = [(JFXEffect *)self effectID];
    v7 = [effectID isEqualToString:*MEMORY[0x277D418E8]];

    if (v7)
    {
      v5 = 0x3F92F1A9FBE76C8BLL;
      v4 = 0x3F92F1A9FBE76C8BLL;
    }

    else
    {
      editUIProperties = [(JFXTextEffect *)self editUIProperties];
      effectID2 = [(JFXEffect *)self effectID];
      v10 = [editUIProperties objectForKeyedSubscript:effectID2];

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
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
    initialRotation = [overlayContentDataSource initialRotation];

    if (initialRotation)
    {
      [initialRotation CGPointValue];
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
    initialRotation = [(JFXTextEffect *)self editUIProperties];
    effectID = [(JFXEffect *)self effectID];
    v11 = [initialRotation objectForKeyedSubscript:effectID];

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
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
    pickerScale = [overlayContentDataSource pickerScale];

    if (pickerScale)
    {
      [pickerScale doubleValue];
      v7 = v6;
    }

    else
    {
      v7 = 1.0;
    }
  }

  else
  {
    pickerScale = [(JFXTextEffect *)self editUIProperties];
    effectID = [(JFXEffect *)self effectID];
    v9 = [pickerScale objectForKeyedSubscript:effectID];

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
  effectID = [(JFXEffect *)self effectID];
  if (effectID == *MEMORY[0x277D41910])
  {
    v5 = 0;
  }

  else
  {
    effectID2 = [(JFXEffect *)self effectID];
    v5 = effectID2 != *MEMORY[0x277D41968];
  }

  return v5;
}

- (unint64_t)maxCharacters
{
  v7.receiver = self;
  v7.super_class = JFXOverlayEffect;
  maxCharacters = [(JFXTextEffect *)&v7 maxCharacters];
  if (maxCharacters == -1)
  {
    if (maxCharacters_onceToken != -1)
    {
      [JFXOverlayEffect maxCharacters];
    }

    v4 = [maxCharacters_sMaxCharsMap objectForKeyedSubscript:self->super.super._effectID];
    v5 = v4;
    if (v4)
    {
      maxCharacters = [v4 unsignedIntegerValue];
    }

    else
    {
      maxCharacters = 80;
    }
  }

  return maxCharacters;
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
  effectID = [(JFXEffect *)self effectID];
  effectID2 = [v10 objectForKeyedSubscript:effectID];

  if (!effectID2)
  {
    effectID2 = [(JFXEffect *)self effectID];
  }

  jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
  v6 = [jfxBundle pathForResource:effectID2 ofType:0];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager fileExistsAtPath:v6];

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

- (BOOL)enablePresentationState:(BOOL)state
{
  stateCopy = state;
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

  if (v8 == stateCopy)
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

    if (v12 == stateCopy)
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
  [(JFXOverlayEffect *)self setForceRenderAtPosterFrame:stateCopy];
  v14 = 1;
LABEL_18:

  return v14;
}

- (void)setForceRenderAtPosterFrame:(BOOL)frame
{
  frameCopy = frame;
  v9.receiver = self;
  v9.super_class = JFXOverlayEffect;
  [(JFXEffect *)&v9 setForceRenderAtPosterFrame:?];
  if ([(JFXOverlayEffect *)self JFX_hasPosterFrame])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:frameCopy];
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

  v8 = [MEMORY[0x277CCABB0] numberWithInt:frameCopy ^ 1];
  [(JFXEffect *)self setParameter:v8 forKey:*MEMORY[0x277D41A28]];
}

- (BOOL)loopedRangeRenderIsCacheable
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
    loopRenderRangeIsCachable = [overlayContentDataSource loopRenderRangeIsCachable];
  }

  else
  {
    if (loopedRangeRenderIsCacheable_onceToken != -1)
    {
      [JFXOverlayEffect loopedRangeRenderIsCacheable];
    }

    v6 = loopedRangeRenderIsCacheable_cacheableEffectIDs;
    overlayContentDataSource = [(JFXEffect *)self effectID];
    loopRenderRangeIsCachable = [v6 containsObject:overlayContentDataSource];
  }

  v7 = loopRenderRangeIsCachable;

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
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
    doesNotHavePosterFrame = [overlayContentDataSource doesNotHavePosterFrame];
  }

  else
  {
    overlayContentDataSource = [(JFXEffect *)self effectID];
    doesNotHavePosterFrame = [overlayContentDataSource isEqualToString:*MEMORY[0x277D418E8]];
  }

  v6 = doesNotHavePosterFrame;

  return v6 ^ 1;
}

- (BOOL)JFX_posterFrameIsCachable
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
    v5 = [overlayContentDataSource posterFrameIsNotCachable] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)JFX_shouldEnableDynamicLineSpacingForDiacritics
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
    shouldDisableDynamicLineSpacingForDiatrics = [overlayContentDataSource shouldDisableDynamicLineSpacingForDiatrics];

    if (shouldDisableDynamicLineSpacingForDiatrics)
    {
      bOOLValue = [shouldDisableDynamicLineSpacingForDiatrics BOOLValue];
LABEL_8:
      v8 = bOOLValue ^ 1;
      goto LABEL_9;
    }

    v8 = 1;
  }

  else
  {
    v7 = *MEMORY[0x277D41930];
    shouldDisableDynamicLineSpacingForDiatrics = [(JFXEffect *)self effectID];
    if (([v7 isEqualToString:shouldDisableDynamicLineSpacingForDiatrics] & 1) == 0)
    {
      bOOLValue = [(JFXOverlayEffect *)self isEmoji];
      goto LABEL_8;
    }

    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (void)trackedEffectProperties:(id)properties didChangeTrackingType:(BOOL)type didChangeEnabled:(BOOL)enabled
{
  if (type)
  {
    v6 = [JFXAnalyticsManager sharedInstance:properties];
    [v6 trackEventWithName:@"facetrackedoverlaychangedplanes"];
  }

  faceTrackingTransform = [(JFXOverlayEffect *)self faceTrackingTransform];
  [(JFXOverlayEffect *)self JFX_applyEffectParametersForFaceTrackingTransform:faceTrackingTransform];

  [(JFXOverlayEffect *)self JFX_updateInteractiveMode];
}

- (void)JFX_updateInteractiveMode
{
  isCurrentlyTracking = [(JFXOverlayEffect *)self isInteractiveEditing]|| [(JFXOverlayEffect *)self isCurrentlyTracking];
  renderEffect = [(JFXEffect *)self renderEffect];
  [renderEffect setIsInInteractiveMode:isCurrentlyTracking];
}

- (id)accessibilityName
{
  accessibilityOverlayEffectLabel = [(JFXOverlayEffect *)self accessibilityOverlayEffectLabel];

  if (accessibilityOverlayEffectLabel)
  {
    accessibilityOverlayEffectLabel2 = [(JFXOverlayEffect *)self accessibilityOverlayEffectLabel];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = JFXOverlayEffect;
    accessibilityOverlayEffectLabel2 = [(JFXEffect *)&v6 accessibilityName];
  }

  return accessibilityOverlayEffectLabel2;
}

- (BOOL)hasDynamicText
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
    dynamicTextType = [overlayContentDataSource dynamicTextType];

    LOBYTE(v6) = dynamicTextType != 0;
  }

  else
  {
    editUIProperties = [(JFXTextEffect *)self editUIProperties];
    effectID = [(JFXEffect *)self effectID];
    v9 = [editUIProperties objectForKeyedSubscript:effectID];

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
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
    dynamicTextPlaceholder = [overlayContentDataSource dynamicTextPlaceholder];
  }

  else
  {
    dynamicTextType = [(JFXOverlayEffect *)self dynamicTextType];
    overlayContentDataSource = [objc_opt_class() dynamicTextPlaceholderMap];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:dynamicTextType];
    dynamicTextPlaceholder = [overlayContentDataSource objectForKey:v7];
  }

  return dynamicTextPlaceholder;
}

- (unint64_t)dynamicTextType
{
  contentDataSource = [(JFXEffect *)self contentDataSource];

  if (contentDataSource)
  {
    overlayContentDataSource = [(JFXOverlayEffect *)self overlayContentDataSource];
    dynamicTextType = [overlayContentDataSource dynamicTextType];
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
      dynamicTextPlaceholderMap = [objc_opt_class() dynamicTextPlaceholderMap];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __35__JFXOverlayEffect_dynamicTextType__block_invoke;
      v9[3] = &unk_278D7A888;
      v10 = v6;
      v11 = &v12;
      [dynamicTextPlaceholderMap enumerateKeysAndObjectsUsingBlock:v9];
    }

    dynamicTextType = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  return dynamicTextType;
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

- (void)setDynamicTextString:(id)string
{
  stringCopy = string;
  if ([(JFXOverlayEffect *)self hasDynamicText])
  {
    if (stringCopy)
    {
      [(JFXTextEffect *)self setString:stringCopy atIndex:0];
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
    jFX_dynamicTextPlaceHolderText = [(JFXOverlayEffect *)self JFX_dynamicTextPlaceHolderText];
    [(JFXTextEffect *)self setString:jFX_dynamicTextPlaceHolderText atIndex:0];
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

- (void)updateDynamicTextWithCompletionBlock:(id)block
{
  blockCopy = block;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __57__JFXOverlayEffect_updateDynamicTextWithCompletionBlock___block_invoke;
  v17 = &unk_278D7A8B0;
  selfCopy = self;
  v5 = blockCopy;
  v19 = v5;
  v6 = MEMORY[0x245D22230](&v14);
  v7 = [(JFXOverlayEffect *)self dynamicTextType:v14];
  if (v7 <= 4)
  {
    if (v7 != 1)
    {
      if (v7 == 4)
      {
        date = [MEMORY[0x277CBEAA8] date];
        v9 = +[JTFormatters dateFormatterMonthDay];
LABEL_16:
        v12 = v9;
        v13 = [v9 stringFromDate:date];

        (v6)[2](v6, v13);
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    date = [MEMORY[0x277CBEAA8] date];
    if (updateDynamicTextWithCompletionBlock__onceToken != -1)
    {
      [JFXOverlayEffect updateDynamicTextWithCompletionBlock:];
    }

    v10 = updateDynamicTextWithCompletionBlock__s_shortTimeFormatter;
LABEL_14:
    v11 = [v10 stringFromDate:date];
    (v6)[2](v6, v11);

LABEL_17:
    goto LABEL_18;
  }

  if (v7 == 5)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v9 = +[JTFormatters dateFormatterDayOfWeekMonthDayYear];
    goto LABEL_16;
  }

  if (v7 == 6)
  {
    date = [MEMORY[0x277CBEAA8] date];
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

- (id)JFX_stringAtIndex:(unint64_t)index
{
  v4 = MEMORY[0x277D41B28];
  if (index)
  {
    v4 = MEMORY[0x277D41B48];
  }

  v5 = *v4;
  renderEffect = [(JFXEffect *)self renderEffect];
  effectParameters = [renderEffect effectParameters];

  v8 = [effectParameters objectForKeyedSubscript:v5];

  if (v8)
  {
    string = [v8 string];
  }

  else
  {
    string = 0;
  }

  return string;
}

@end