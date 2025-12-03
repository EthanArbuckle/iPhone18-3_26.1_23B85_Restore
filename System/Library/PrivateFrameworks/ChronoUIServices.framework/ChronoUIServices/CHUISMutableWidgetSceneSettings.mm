@interface CHUISMutableWidgetSceneSettings
- (BOOL)areAnimationsPaused;
- (BOOL)canAppearInSecureEnvironment;
- (BOOL)isContentPaused;
- (BOOL)isInteractionDisabled;
- (BOOL)prefersUnredactedContentInLowLuminanceEnvironment;
- (BOOL)separateLayers;
- (BOOL)shouldVisibleEntrySnapshot;
- (BOOL)showsWidgetLabel;
- (BOOL)supportsLowLuminance;
- (BOOL)wantsBaseContentTouchEvents;
- (CHSInlineTextParameters)inlineTextParameters;
- (CHSWidget)widget;
- (CHSWidgetMetrics)metrics;
- (CHSWidgetRenderScheme)renderScheme;
- (CHSWidgetTintParameters)tintParameters;
- (CHUISWidgetVisibilitySettings)visibility;
- (NSArray)supportedRenderSchemes;
- (NSDateComponents)idealizedDateComponents;
- (NSString)additionalSnapshotPresentationContext;
- (NSString)hostIdentifier;
- (NSString)remoteViewControllerClassName;
- (NSString)widgetConfigurationIdentifier;
- (double)renderingScale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (int64_t)proximity;
- (unint64_t)clipBehavior;
- (unint64_t)colorScheme;
- (unint64_t)contentType;
- (unint64_t)supportedColorSchemes;
- (unint64_t)supportedProximities;
- (unint64_t)widgetPriority;
- (void)setAdditionalSnapshotPresentationContext:(id)context;
- (void)setClipBehavior:(unint64_t)behavior;
- (void)setColorScheme:(unint64_t)scheme;
- (void)setContentType:(unint64_t)type;
- (void)setIdealizedDateComponents:(id)components;
- (void)setInlineTextParameters:(id)parameters;
- (void)setMetrics:(id)metrics;
- (void)setProximity:(int64_t)proximity;
- (void)setRemoteViewControllerClassName:(id)name;
- (void)setRenderScheme:(id)scheme;
- (void)setRenderingScale:(double)scale;
- (void)setSupportedColorSchemes:(unint64_t)schemes;
- (void)setSupportedProximities:(unint64_t)proximities;
- (void)setSupportedRenderSchemes:(id)schemes;
- (void)setTintParameters:(id)parameters;
- (void)setVisibility:(id)visibility;
- (void)setWidget:(id)widget;
- (void)setWidgetConfigurationIdentifier:(id)identifier;
- (void)setWidgetHostIdentifier:(id)identifier;
- (void)setWidgetPriority:(unint64_t)priority;
@end

@implementation CHUISMutableWidgetSceneSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHUISWidgetSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (void)setWidget:(id)widget
{
  widgetCopy = widget;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:widgetCopy forSetting:88888];
}

- (void)setMetrics:(id)metrics
{
  metricsCopy = metrics;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:metricsCopy forSetting:88889];
}

- (void)setWidgetHostIdentifier:(id)identifier
{
  identifierCopy = identifier;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:identifierCopy forSetting:88896];
}

- (void)setWidgetConfigurationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:identifierCopy forSetting:88890];
}

- (void)setVisibility:(id)visibility
{
  visibilityCopy = visibility;
  otherSettings = [(FBSSettings *)self otherSettings];
  v5 = [visibilityCopy copy];
  [otherSettings setObject:v5 forSetting:88891];
}

- (void)setContentType:(unint64_t)type
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [otherSettings setObject:v4 forSetting:88892];
}

- (void)setColorScheme:(unint64_t)scheme
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:scheme];
  [otherSettings setObject:v4 forSetting:88893];
}

- (void)setSupportedColorSchemes:(unint64_t)schemes
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:schemes];
  [otherSettings setObject:v4 forSetting:88913];
}

- (void)setSupportedRenderSchemes:(id)schemes
{
  schemesCopy = schemes;
  v7 = schemesCopy;
  if (schemesCopy)
  {
    v5 = [CHSWidgetRenderSchemeArrayBox boxWithValue:schemesCopy];
  }

  else
  {
    v5 = 0;
  }

  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:v5 forSetting:88914];
}

- (void)setWidgetPriority:(unint64_t)priority
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:priority];
  [otherSettings setObject:v4 forSetting:88906];
}

- (void)setTintParameters:(id)parameters
{
  parametersCopy = parameters;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:parametersCopy forSetting:88898];
}

- (void)setInlineTextParameters:(id)parameters
{
  parametersCopy = parameters;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:parametersCopy forSetting:88899];
}

- (void)setAdditionalSnapshotPresentationContext:(id)context
{
  contextCopy = context;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:contextCopy forSetting:88900];
}

- (void)setRemoteViewControllerClassName:(id)name
{
  nameCopy = name;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:nameCopy forSetting:88901];
}

- (void)setRenderScheme:(id)scheme
{
  schemeCopy = scheme;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:schemeCopy forSetting:88908];
}

- (void)setClipBehavior:(unint64_t)behavior
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:behavior];
  [otherSettings setObject:v4 forSetting:88909];
}

- (void)setRenderingScale:(double)scale
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:scale];
  [otherSettings setObject:v4 forSetting:88911];
}

- (void)setIdealizedDateComponents:(id)components
{
  componentsCopy = components;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:componentsCopy forSetting:88916];
}

- (void)setProximity:(int64_t)proximity
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:proximity];
  [otherSettings setObject:v4 forSetting:88912];
}

- (void)setSupportedProximities:(unint64_t)proximities
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:proximities];
  [otherSettings setObject:v4 forSetting:88915];
}

- (CHSWidget)widget
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88888];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (CHSWidgetMetrics)metrics
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88889];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (NSString)hostIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88896];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (NSString)widgetConfigurationIdentifier
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88890];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (CHUISWidgetVisibilitySettings)visibility
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88891];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 copy];

  return v8;
}

- (unint64_t)contentType
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88892];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (unint64_t)colorScheme
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88893];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (unint64_t)widgetPriority
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88906];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (BOOL)areAnimationsPaused
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88894];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  return bOOLValue;
}

- (BOOL)isContentPaused
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88904];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  return bOOLValue;
}

- (BOOL)shouldVisibleEntrySnapshot
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88895];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  return bOOLValue;
}

- (BOOL)canAppearInSecureEnvironment
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88897];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  return bOOLValue;
}

- (BOOL)supportsLowLuminance
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88902];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  return bOOLValue;
}

- (BOOL)prefersUnredactedContentInLowLuminanceEnvironment
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88903];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  return bOOLValue;
}

- (CHSWidgetTintParameters)tintParameters
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88898];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (CHSInlineTextParameters)inlineTextParameters
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88899];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (NSDateComponents)idealizedDateComponents
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88916];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 copy];

  return v8;
}

- (BOOL)showsWidgetLabel
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88905];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  return bOOLValue;
}

- (BOOL)isInteractionDisabled
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88907];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  return bOOLValue;
}

- (NSString)additionalSnapshotPresentationContext
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88900];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 copy];

  return v8;
}

- (NSString)remoteViewControllerClassName
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88901];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 copy];

  return v8;
}

- (CHSWidgetRenderScheme)renderScheme
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [CHUISWidgetSceneSettings _renderSchemeFromSettings:otherSettings];

  return v3;
}

- (unint64_t)clipBehavior
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88909];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (BOOL)wantsBaseContentTouchEvents
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88910];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  return bOOLValue;
}

- (double)renderingScale
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88911];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 bs_CGFloatValue];
  v9 = v8;

  return v9;
}

- (int64_t)proximity
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88912];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (NSArray)supportedRenderSchemes
{
  v21 = *MEMORY[0x1E69E9840];
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88914];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    value = [v7 value];
    v10 = [value countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(value);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) copy];
          [v8 addObject:v13];
        }

        v10 = [value countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (unint64_t)supportedColorSchemes
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88913];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  integerValue = [v7 integerValue];
  return integerValue;
}

- (unint64_t)supportedProximities
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88915];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  integerValue = [v7 integerValue];
  return integerValue;
}

- (BOOL)separateLayers
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:88917];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  return bOOLValue;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 88888 > 0x1D)
  {
    v5.receiver = self;
    v5.super_class = CHUISMutableWidgetSceneSettings;
    v3 = [(FBSSettings *)&v5 keyDescriptionForSetting:?];
  }

  else
  {
    v3 = CHUISWidgetSceneSettingsKeyDescription(setting);
  }

  return v3;
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  if (setting - 88888 > 0x1D)
  {
    v11.receiver = self;
    v11.super_class = CHUISMutableWidgetSceneSettings;
    v9 = [(FBSSettings *)&v11 valueDescriptionForFlag:flag object:objectCopy ofSetting:setting];
  }

  else
  {
    CHUISWidgetSceneSettingsValueDescription(setting, objectCopy);
    objc_claimAutoreleasedReturnValue();
    v9 = objectCopy;
  }

  return v9;
}

@end