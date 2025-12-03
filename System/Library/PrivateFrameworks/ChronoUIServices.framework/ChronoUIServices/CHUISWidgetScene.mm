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
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  visibility = [_sceneSettings visibility];

  return visibility;
}

- (id)_sceneSettings
{
  _FBSScene = [(CHUISWidgetScene *)self _FBSScene];
  settings = [_FBSScene settings];

  return settings;
}

- (BOOL)areAnimationsPaused
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  areAnimationsPaused = [_sceneSettings areAnimationsPaused];

  return areAnimationsPaused;
}

- (CHSWidget)nullableWidget
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  widget = [_sceneSettings widget];

  return widget;
}

- (NSString)widgetConfigurationIdentifier
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  widgetConfigurationIdentifier = [_sceneSettings widgetConfigurationIdentifier];

  return widgetConfigurationIdentifier;
}

- (NSString)hostIdentifier
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  hostIdentifier = [_sceneSettings hostIdentifier];

  return hostIdentifier;
}

- (unint64_t)widgetPriority
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  widgetPriority = [_sceneSettings widgetPriority];

  return widgetPriority;
}

- (CHSWidget)widget
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  widget = [_sceneSettings widget];

  return widget;
}

- (CHSWidgetMetrics)metrics
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  metrics = [_sceneSettings metrics];

  return metrics;
}

- (double)renderingScale
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  [_sceneSettings renderingScale];
  v4 = v3;

  return v4;
}

- (unint64_t)contentType
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  contentType = [_sceneSettings contentType];

  return contentType;
}

- (BOOL)supportsLowLuminance
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  supportsLowLuminance = [_sceneSettings supportsLowLuminance];

  return supportsLowLuminance;
}

- (CHSWidgetRenderScheme)renderScheme
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  renderScheme = [_sceneSettings renderScheme];

  return renderScheme;
}

- (unint64_t)colorScheme
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  colorScheme = [_sceneSettings colorScheme];

  return colorScheme;
}

- (unint64_t)supportedColorSchemes
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  supportedColorSchemes = [_sceneSettings supportedColorSchemes];

  return supportedColorSchemes;
}

- (BOOL)canAppearInSecureEnvironment
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  canAppearInSecureEnvironment = [_sceneSettings canAppearInSecureEnvironment];

  return canAppearInSecureEnvironment;
}

- (NSArray)supportedRenderSchemes
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  supportedRenderSchemes = [_sceneSettings supportedRenderSchemes];

  return supportedRenderSchemes;
}

- (BOOL)showsWidgetLabel
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  showsWidgetLabel = [_sceneSettings showsWidgetLabel];

  return showsWidgetLabel;
}

- (unint64_t)supportedProximities
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  supportedProximities = [_sceneSettings supportedProximities];

  return supportedProximities;
}

- (int64_t)proximity
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  proximity = [_sceneSettings proximity];

  return proximity;
}

- (BOOL)prefersUnredactedContentInLowLuminanceEnvironment
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  prefersUnredactedContentInLowLuminanceEnvironment = [_sceneSettings prefersUnredactedContentInLowLuminanceEnvironment];

  return prefersUnredactedContentInLowLuminanceEnvironment;
}

- (CHSWidgetTintParameters)tintParameters
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  tintParameters = [_sceneSettings tintParameters];

  return tintParameters;
}

- (CHSInlineTextParameters)inlineTextParameters
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  inlineTextParameters = [_sceneSettings inlineTextParameters];

  return inlineTextParameters;
}

- (unint64_t)clipBehavior
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  clipBehavior = [_sceneSettings clipBehavior];

  return clipBehavior;
}

- (BOOL)isInteractionDisabled
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  isInteractionDisabled = [_sceneSettings isInteractionDisabled];

  return isInteractionDisabled;
}

- (BOOL)isContentPaused
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  isContentPaused = [_sceneSettings isContentPaused];

  return isContentPaused;
}

- (NSDateComponents)idealizedDateComponents
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  idealizedDateComponents = [_sceneSettings idealizedDateComponents];

  return idealizedDateComponents;
}

- (BOOL)wantsBaseContentTouchEvents
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  wantsBaseContentTouchEvents = [_sceneSettings wantsBaseContentTouchEvents];

  return wantsBaseContentTouchEvents;
}

- (NSString)remoteViewControllerClassName
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  remoteViewControllerClassName = [_sceneSettings remoteViewControllerClassName];

  return remoteViewControllerClassName;
}

- (NSString)additionalSnapshotPresentationContext
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  additionalSnapshotPresentationContext = [_sceneSettings additionalSnapshotPresentationContext];

  return additionalSnapshotPresentationContext;
}

- (BOOL)shouldVisibleEntrySnapshot
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  shouldVisibleEntrySnapshot = [_sceneSettings shouldVisibleEntrySnapshot];

  return shouldVisibleEntrySnapshot;
}

- (BOOL)separateLayers
{
  _sceneSettings = [(CHUISWidgetScene *)self _sceneSettings];
  separateLayers = [_sceneSettings separateLayers];

  return separateLayers;
}

@end