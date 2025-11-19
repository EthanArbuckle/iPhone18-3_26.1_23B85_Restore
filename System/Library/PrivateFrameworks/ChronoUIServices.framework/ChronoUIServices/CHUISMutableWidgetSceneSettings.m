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
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (int64_t)proximity;
- (unint64_t)clipBehavior;
- (unint64_t)colorScheme;
- (unint64_t)contentType;
- (unint64_t)supportedColorSchemes;
- (unint64_t)supportedProximities;
- (unint64_t)widgetPriority;
- (void)setAdditionalSnapshotPresentationContext:(id)a3;
- (void)setClipBehavior:(unint64_t)a3;
- (void)setColorScheme:(unint64_t)a3;
- (void)setContentType:(unint64_t)a3;
- (void)setIdealizedDateComponents:(id)a3;
- (void)setInlineTextParameters:(id)a3;
- (void)setMetrics:(id)a3;
- (void)setProximity:(int64_t)a3;
- (void)setRemoteViewControllerClassName:(id)a3;
- (void)setRenderScheme:(id)a3;
- (void)setRenderingScale:(double)a3;
- (void)setSupportedColorSchemes:(unint64_t)a3;
- (void)setSupportedProximities:(unint64_t)a3;
- (void)setSupportedRenderSchemes:(id)a3;
- (void)setTintParameters:(id)a3;
- (void)setVisibility:(id)a3;
- (void)setWidget:(id)a3;
- (void)setWidgetConfigurationIdentifier:(id)a3;
- (void)setWidgetHostIdentifier:(id)a3;
- (void)setWidgetPriority:(unint64_t)a3;
@end

@implementation CHUISMutableWidgetSceneSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHUISWidgetSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

- (void)setWidget:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:88888];
}

- (void)setMetrics:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:88889];
}

- (void)setWidgetHostIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:88896];
}

- (void)setWidgetConfigurationIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:88890];
}

- (void)setVisibility:(id)a3
{
  v6 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  v5 = [v6 copy];
  [v4 setObject:v5 forSetting:88891];
}

- (void)setContentType:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:88892];
}

- (void)setColorScheme:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:88893];
}

- (void)setSupportedColorSchemes:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:88913];
}

- (void)setSupportedRenderSchemes:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [CHSWidgetRenderSchemeArrayBox boxWithValue:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(FBSSettings *)self otherSettings];
  [v6 setObject:v5 forSetting:88914];
}

- (void)setWidgetPriority:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:88906];
}

- (void)setTintParameters:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:88898];
}

- (void)setInlineTextParameters:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:88899];
}

- (void)setAdditionalSnapshotPresentationContext:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:88900];
}

- (void)setRemoteViewControllerClassName:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:88901];
}

- (void)setRenderScheme:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:88908];
}

- (void)setClipBehavior:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:88909];
}

- (void)setRenderingScale:(double)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setObject:v4 forSetting:88911];
}

- (void)setIdealizedDateComponents:(id)a3
{
  v5 = a3;
  v4 = [(FBSSettings *)self otherSettings];
  [v4 setObject:v5 forSetting:88916];
}

- (void)setProximity:(int64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v4 forSetting:88912];
}

- (void)setSupportedProximities:(unint64_t)a3
{
  v5 = [(FBSSettings *)self otherSettings];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 setObject:v4 forSetting:88915];
}

- (CHSWidget)widget
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88888];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88889];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88896];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88890];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88891];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88892];
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

  v8 = [v7 unsignedIntegerValue];
  return v8;
}

- (unint64_t)colorScheme
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88893];
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

  v8 = [v7 unsignedIntegerValue];
  return v8;
}

- (unint64_t)widgetPriority
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88906];
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

  v8 = [v7 unsignedIntegerValue];
  return v8;
}

- (BOOL)areAnimationsPaused
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88894];
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

  v8 = [v7 BOOLValue];
  return v8;
}

- (BOOL)isContentPaused
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88904];
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

  v8 = [v7 BOOLValue];
  return v8;
}

- (BOOL)shouldVisibleEntrySnapshot
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88895];
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

  v8 = [v7 BOOLValue];
  return v8;
}

- (BOOL)canAppearInSecureEnvironment
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88897];
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

  v8 = [v7 BOOLValue];
  return v8;
}

- (BOOL)supportsLowLuminance
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88902];
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

  v8 = [v7 BOOLValue];
  return v8;
}

- (BOOL)prefersUnredactedContentInLowLuminanceEnvironment
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88903];
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

  v8 = [v7 BOOLValue];
  return v8;
}

- (CHSWidgetTintParameters)tintParameters
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88898];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88899];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88916];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88905];
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

  v8 = [v7 BOOLValue];
  return v8;
}

- (BOOL)isInteractionDisabled
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88907];
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

  v8 = [v7 BOOLValue];
  return v8;
}

- (NSString)additionalSnapshotPresentationContext
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88900];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88901];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [CHUISWidgetSceneSettings _renderSchemeFromSettings:v2];

  return v3;
}

- (unint64_t)clipBehavior
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88909];
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

  v8 = [v7 unsignedIntegerValue];
  return v8;
}

- (BOOL)wantsBaseContentTouchEvents
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88910];
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

  v8 = [v7 BOOLValue];
  return v8;
}

- (double)renderingScale
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88911];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88912];
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

  v8 = [v7 unsignedIntegerValue];
  return v8;
}

- (NSArray)supportedRenderSchemes
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88914];
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
    v9 = [v7 value];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) copy];
          [v8 addObject:v13];
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88913];
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

  v8 = [v7 integerValue];
  return v8;
}

- (unint64_t)supportedProximities
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88915];
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

  v8 = [v7 integerValue];
  return v8;
}

- (BOOL)separateLayers
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:88917];
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

  v8 = [v7 BOOLValue];
  return v8;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 88888 > 0x1D)
  {
    v5.receiver = self;
    v5.super_class = CHUISMutableWidgetSceneSettings;
    v3 = [(FBSSettings *)&v5 keyDescriptionForSetting:?];
  }

  else
  {
    v3 = CHUISWidgetSceneSettingsKeyDescription(a3);
  }

  return v3;
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v8 = a4;
  if (a5 - 88888 > 0x1D)
  {
    v11.receiver = self;
    v11.super_class = CHUISMutableWidgetSceneSettings;
    v9 = [(FBSSettings *)&v11 valueDescriptionForFlag:a3 object:v8 ofSetting:a5];
  }

  else
  {
    CHUISWidgetSceneSettingsValueDescription(a5, v8);
    objc_claimAutoreleasedReturnValue();
    v9 = v8;
  }

  return v9;
}

@end