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
  v2 = [(CHUISWatchComplicationsWidgetScene *)self _sceneSettings];
  v3 = [v2 cornerPosition];

  return v3;
}

- (CHSWatchComplicationsCurvedLabelMetrics)curvedLabelMetrics
{
  v2 = [(CHUISWatchComplicationsWidgetScene *)self _sceneSettings];
  v3 = [v2 curvedLabelMetrics];

  return v3;
}

- (CGPoint)bezelContentCenter
{
  v2 = [(CHUISWatchComplicationsWidgetScene *)self _sceneSettings];
  [v2 bezelContentCenter];
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
  v2 = [(CHUISWatchComplicationsWidgetScene *)self _sceneSettings];
  v3 = [v2 includeAccessoryViews];

  return v3;
}

- (BOOL)generateSnapshotMetadata
{
  v2 = [(CHUISWatchComplicationsWidgetScene *)self _sceneSettings];
  v3 = [v2 generateSnapshotMetadata];

  return v3;
}

- (id)_sceneSettings
{
  v2 = [(CHUISWatchComplicationsWidgetScene *)self _FBSScene];
  v3 = [v2 settings];

  return v3;
}

@end