@interface CHUISWidgetScene
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
- (CHSWidget)nullableWidget;
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
- (id)_sceneSettings;
- (int64_t)proximity;
- (unint64_t)clipBehavior;
- (unint64_t)colorScheme;
- (unint64_t)contentType;
- (unint64_t)supportedColorSchemes;
- (unint64_t)supportedProximities;
- (unint64_t)widgetPriority;
@end

@implementation CHUISWidgetScene

- (CHUISWidgetVisibilitySettings)visibility
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 visibility];

  return v3;
}

- (id)_sceneSettings
{
  v2 = [(CHUISWidgetScene *)self _FBSScene];
  v3 = [v2 settings];

  return v3;
}

- (BOOL)areAnimationsPaused
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 areAnimationsPaused];

  return v3;
}

- (CHSWidget)nullableWidget
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 widget];

  return v3;
}

- (NSString)widgetConfigurationIdentifier
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 widgetConfigurationIdentifier];

  return v3;
}

- (NSString)hostIdentifier
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 hostIdentifier];

  return v3;
}

- (unint64_t)widgetPriority
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 widgetPriority];

  return v3;
}

- (CHSWidget)widget
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 widget];

  return v3;
}

- (CHSWidgetMetrics)metrics
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 metrics];

  return v3;
}

- (double)renderingScale
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  [v2 renderingScale];
  v4 = v3;

  return v4;
}

- (unint64_t)contentType
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 contentType];

  return v3;
}

- (BOOL)supportsLowLuminance
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 supportsLowLuminance];

  return v3;
}

- (CHSWidgetRenderScheme)renderScheme
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 renderScheme];

  return v3;
}

- (unint64_t)colorScheme
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 colorScheme];

  return v3;
}

- (unint64_t)supportedColorSchemes
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 supportedColorSchemes];

  return v3;
}

- (BOOL)canAppearInSecureEnvironment
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 canAppearInSecureEnvironment];

  return v3;
}

- (NSArray)supportedRenderSchemes
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 supportedRenderSchemes];

  return v3;
}

- (BOOL)showsWidgetLabel
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 showsWidgetLabel];

  return v3;
}

- (unint64_t)supportedProximities
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 supportedProximities];

  return v3;
}

- (int64_t)proximity
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 proximity];

  return v3;
}

- (BOOL)prefersUnredactedContentInLowLuminanceEnvironment
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 prefersUnredactedContentInLowLuminanceEnvironment];

  return v3;
}

- (CHSWidgetTintParameters)tintParameters
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 tintParameters];

  return v3;
}

- (CHSInlineTextParameters)inlineTextParameters
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 inlineTextParameters];

  return v3;
}

- (unint64_t)clipBehavior
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 clipBehavior];

  return v3;
}

- (BOOL)isInteractionDisabled
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 isInteractionDisabled];

  return v3;
}

- (BOOL)isContentPaused
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 isContentPaused];

  return v3;
}

- (NSDateComponents)idealizedDateComponents
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 idealizedDateComponents];

  return v3;
}

- (BOOL)wantsBaseContentTouchEvents
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 wantsBaseContentTouchEvents];

  return v3;
}

- (NSString)remoteViewControllerClassName
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 remoteViewControllerClassName];

  return v3;
}

- (NSString)additionalSnapshotPresentationContext
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 additionalSnapshotPresentationContext];

  return v3;
}

- (BOOL)shouldVisibleEntrySnapshot
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 shouldVisibleEntrySnapshot];

  return v3;
}

- (BOOL)separateLayers
{
  v2 = [(CHUISWidgetScene *)self _sceneSettings];
  v3 = [v2 separateLayers];

  return v3;
}

@end