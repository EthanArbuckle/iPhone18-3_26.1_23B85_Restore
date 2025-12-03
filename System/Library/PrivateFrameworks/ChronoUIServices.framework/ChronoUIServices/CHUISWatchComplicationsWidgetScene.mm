@interface CHUISWatchComplicationsWidgetScene
- (BOOL)generateSnapshotMetadata;
- (BOOL)includeAccessoryViews;
- (CGPoint)bezelContentCenter;
- (CHSWatchComplicationsCurvedLabelMetrics)curvedLabelMetrics;
- (id)_sceneSettings;
- (int64_t)cornerPosition;
@end

@implementation CHUISWatchComplicationsWidgetScene

- (int64_t)cornerPosition
{
  _sceneSettings = [(CHUISWatchComplicationsWidgetScene *)self _sceneSettings];
  cornerPosition = [_sceneSettings cornerPosition];

  return cornerPosition;
}

- (CHSWatchComplicationsCurvedLabelMetrics)curvedLabelMetrics
{
  _sceneSettings = [(CHUISWatchComplicationsWidgetScene *)self _sceneSettings];
  curvedLabelMetrics = [_sceneSettings curvedLabelMetrics];

  return curvedLabelMetrics;
}

- (CGPoint)bezelContentCenter
{
  _sceneSettings = [(CHUISWatchComplicationsWidgetScene *)self _sceneSettings];
  [_sceneSettings bezelContentCenter];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)includeAccessoryViews
{
  _sceneSettings = [(CHUISWatchComplicationsWidgetScene *)self _sceneSettings];
  includeAccessoryViews = [_sceneSettings includeAccessoryViews];

  return includeAccessoryViews;
}

- (BOOL)generateSnapshotMetadata
{
  _sceneSettings = [(CHUISWatchComplicationsWidgetScene *)self _sceneSettings];
  generateSnapshotMetadata = [_sceneSettings generateSnapshotMetadata];

  return generateSnapshotMetadata;
}

- (id)_sceneSettings
{
  _FBSScene = [(CHUISWatchComplicationsWidgetScene *)self _FBSScene];
  settings = [_FBSScene settings];

  return settings;
}

@end