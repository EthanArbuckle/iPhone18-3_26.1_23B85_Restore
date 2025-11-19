@interface CHUISWatchComplicationsWidgetHostViewController
- (CGPoint)bezelContentCenter;
- (CHUISWatchComplicationsWidgetHostViewController)initWithWidget:(id)a3 metrics:(id)a4 widgetConfigurationIdentifier:(id)a5;
- (CHUISWatchComplicationsWidgetHostViewControllerDelegate)watchComplicationsDelegate;
- (double)curvedTextAngularWidth;
- (id)additionalSnapshotPresentationContext;
- (id)handleActions:(id)a3;
- (id)sceneSpecification;
- (void)_translateCurvedLabelMetrics;
- (void)sceneDidUpdateClientSettingsWithDiff:(id)a3 oldClientSettings:(id)a4 newClientSettings:(id)a5 transitionContext:(id)a6;
- (void)sceneDidUpdateToSceneIdentifier:(id)a3;
- (void)setBezelContentCenter:(CGPoint)a3;
- (void)setComplicationsCurvedLabelMetrics:(id)a3;
- (void)setCornerPosition:(int64_t)a3;
- (void)setCurvedLabelMetrics:(id)a3;
- (void)setGenerateSnapshotMetadata:(BOOL)a3;
- (void)setIncludeAccessoryViews:(BOOL)a3;
- (void)setShouldReceiveWatchGestureInteractions:(BOOL)a3;
- (void)willModifySceneClientSettings:(id)a3;
- (void)willModifySceneSettings:(id)a3;
@end

@implementation CHUISWatchComplicationsWidgetHostViewController

- (CHUISWatchComplicationsWidgetHostViewController)initWithWidget:(id)a3 metrics:(id)a4 widgetConfigurationIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = CHUISWatchComplicationsWidgetHostViewController;
  v11 = [(CHUISWidgetHostViewController *)&v21 initWithWidget:v8 metrics:v9 widgetConfigurationIdentifier:v10];
  if (v11)
  {
    v12 = objc_alloc_init(CHUISWatchComplicationsWidgetSceneClientSettingsDiffInspector);
    clientSettingsDiffInspector = v11->_clientSettingsDiffInspector;
    v11->_clientSettingsDiffInspector = v12;

    v11->_cornerPosition = 0;
    curvedLabelMetrics = v11->_curvedLabelMetrics;
    v11->_curvedLabelMetrics = 0;

    complicationsCurvedLabelMetrics = v11->_complicationsCurvedLabelMetrics;
    v11->_complicationsCurvedLabelMetrics = 0;

    v11->_bezelContentCenter = *MEMORY[0x1E695EFF8];
    v11->_includeAccessoryViews = 1;
    v11->_generateSnapshotMetadata = 0;
    objc_initWeak(&location, v11);
    v16 = v11->_clientSettingsDiffInspector;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __104__CHUISWatchComplicationsWidgetHostViewController_initWithWidget_metrics_widgetConfigurationIdentifier___block_invoke;
    v18[3] = &unk_1E85755C0;
    objc_copyWeak(&v19, &location);
    [(CHUISWatchComplicationsWidgetSceneClientSettingsDiffInspector *)v16 observeCurvedTextAngularWidthWithBlock:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __104__CHUISWatchComplicationsWidgetHostViewController_initWithWidget_metrics_widgetConfigurationIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained watchComplicationsDelegate];
    [v2 curvedLabelAngularWidthChanged];

    WeakRetained = v3;
  }
}

- (void)_translateCurvedLabelMetrics
{
  v3 = [CHUISWatchComplicationsCurvedLabelMetrics alloc];
  v4 = [(CHSWatchComplicationsCurvedLabelMetrics *)self->_curvedLabelMetrics interior];
  [(CHSWatchComplicationsCurvedLabelMetrics *)self->_curvedLabelMetrics tracking];
  v6 = v5;
  [(CHSWatchComplicationsCurvedLabelMetrics *)self->_curvedLabelMetrics circleCenter];
  v8 = v7;
  v10 = v9;
  [(CHSWatchComplicationsCurvedLabelMetrics *)self->_curvedLabelMetrics circleRadius];
  v12 = v11;
  [(CHSWatchComplicationsCurvedLabelMetrics *)self->_curvedLabelMetrics maximumAngularWidth];
  v14 = v13;
  [(CHSWatchComplicationsCurvedLabelMetrics *)self->_curvedLabelMetrics centerAngle];
  v16 = v15;
  [(CHSWatchComplicationsCurvedLabelMetrics *)self->_curvedLabelMetrics fontSize];
  v18 = v17;
  v26 = [(CHSWatchComplicationsCurvedLabelMetrics *)self->_curvedLabelMetrics textColor];
  v19 = [(CHSWatchComplicationsCurvedLabelMetrics *)self->_curvedLabelMetrics accessoryPlacement];
  [(CHSWatchComplicationsCurvedLabelMetrics *)self->_curvedLabelMetrics accessoryPadding];
  v21 = v20;
  [(CHSWatchComplicationsCurvedLabelMetrics *)self->_curvedLabelMetrics accessoryMaxSize];
  v24 = [(CHUISWatchComplicationsCurvedLabelMetrics *)v3 initWithInterior:v4 tracking:v26 circleCenter:v19 circleRadius:v6 maximumAngularWidth:v8 centerAngle:v10 fontSize:v12 textColor:v14 accessoryPlacement:v16 accessoryPadding:v18 accessoryMaxSize:v21, v22, v23];
  complicationsCurvedLabelMetrics = self->_complicationsCurvedLabelMetrics;
  self->_complicationsCurvedLabelMetrics = v24;
}

- (void)setCornerPosition:(int64_t)a3
{
  if (self->_cornerPosition != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_cornerPosition = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__CHUISWatchComplicationsWidgetHostViewController_setCornerPosition___block_invoke;
    v5[3] = &__block_descriptor_40_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    v5[4] = a3;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v5];
  }
}

uint64_t __69__CHUISWatchComplicationsWidgetHostViewController_setCornerPosition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
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

  [v7 setCornerPosition:*(a1 + 32)];
  return 0;
}

- (void)setCurvedLabelMetrics:(id)a3
{
  v5 = a3;
  curvedLabelMetrics = self->_curvedLabelMetrics;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_curvedLabelMetrics, a3);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__CHUISWatchComplicationsWidgetHostViewController_setCurvedLabelMetrics___block_invoke;
    v7[3] = &unk_1E8575608;
    v7[4] = self;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v7];
  }
}

uint64_t __73__CHUISWatchComplicationsWidgetHostViewController_setCurvedLabelMetrics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
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

  [v7 setCurvedLabelMetrics:*(*(a1 + 32) + 1616)];
  return 0;
}

- (void)setComplicationsCurvedLabelMetrics:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_complicationsCurvedLabelMetrics, a3);
  v5 = [v6 copy];
  [(CHUISWatchComplicationsWidgetHostViewController *)self setCurvedLabelMetrics:v5];
}

- (void)setBezelContentCenter:(CGPoint)a3
{
  if (self->_bezelContentCenter.x != a3.x || self->_bezelContentCenter.y != a3.y)
  {
    v8 = v3;
    v9 = v4;
    self->_bezelContentCenter = a3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__CHUISWatchComplicationsWidgetHostViewController_setBezelContentCenter___block_invoke;
    v6[3] = &__block_descriptor_48_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    v7 = a3;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v6];
  }
}

uint64_t __73__CHUISWatchComplicationsWidgetHostViewController_setBezelContentCenter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
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

  [v7 setBezelContentCenter:{*(a1 + 32), *(a1 + 40)}];
  return 0;
}

- (void)setIncludeAccessoryViews:(BOOL)a3
{
  if (self->_includeAccessoryViews != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_includeAccessoryViews = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __76__CHUISWatchComplicationsWidgetHostViewController_setIncludeAccessoryViews___block_invoke;
    v5[3] = &__block_descriptor_33_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    v6 = a3;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v5];
  }
}

uint64_t __76__CHUISWatchComplicationsWidgetHostViewController_setIncludeAccessoryViews___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
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

  [v7 setIncludeAccessoryViews:*(a1 + 32)];
  return 0;
}

- (void)setGenerateSnapshotMetadata:(BOOL)a3
{
  if (self->_generateSnapshotMetadata != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_generateSnapshotMetadata = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __79__CHUISWatchComplicationsWidgetHostViewController_setGenerateSnapshotMetadata___block_invoke;
    v5[3] = &__block_descriptor_33_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    v6 = a3;
    [(CHUISWidgetHostViewController *)self modifySceneSettings:v5];
  }
}

uint64_t __79__CHUISWatchComplicationsWidgetHostViewController_setGenerateSnapshotMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
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

  [v7 setGenerateSnapshotMetadata:*(a1 + 32)];
  return 0;
}

- (double)curvedTextAngularWidth
{
  v2 = [(CHUISWidgetHostViewController *)self clientSettings];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

  v6 = v5;

  [v6 curvedTextAngularWidth];
  v8 = v7;

  return v8;
}

- (void)setShouldReceiveWatchGestureInteractions:(BOOL)a3
{
  v3 = a3;
  BSDispatchQueueAssertMain();
  if (self->_shouldReceiveWatchGestureInteractions != v3)
  {
    self->_shouldReceiveWatchGestureInteractions = v3;

    [(CHUISWatchComplicationsWidgetHostViewController *)self updateWatchGestureInteraction];
  }
}

- (id)sceneSpecification
{
  v2 = objc_opt_new();

  return v2;
}

- (void)willModifySceneSettings:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CHUISWatchComplicationsWidgetHostViewController;
  [(CHUISWidgetHostViewController *)&v9 willModifySceneSettings:v4];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setRemoteViewControllerClassName:@"ChronoCore.WatchComplicationsWidgetSceneContentViewController"];
  [v8 setCornerPosition:self->_cornerPosition];
  [v8 setCurvedLabelMetrics:self->_curvedLabelMetrics];
  [v8 setBezelContentCenter:{self->_bezelContentCenter.x, self->_bezelContentCenter.y}];
  [v8 setIncludeAccessoryViews:self->_includeAccessoryViews];
  [v8 setGenerateSnapshotMetadata:self->_generateSnapshotMetadata];
}

- (void)willModifySceneClientSettings:(id)a3
{
  v3.receiver = self;
  v3.super_class = CHUISWatchComplicationsWidgetHostViewController;
  [(CHUISWidgetHostViewController *)&v3 willModifySceneClientSettings:a3];
}

- (void)sceneDidUpdateClientSettingsWithDiff:(id)a3 oldClientSettings:(id)a4 newClientSettings:(id)a5 transitionContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v15.receiver = self;
  v15.super_class = CHUISWatchComplicationsWidgetHostViewController;
  [(CHUISWidgetHostViewController *)&v15 sceneDidUpdateClientSettingsWithDiff:v10 oldClientSettings:v11 newClientSettings:v12 transitionContext:v13];
  v14 = [[CHUISWidgetSceneClientSettingsDiffContext alloc] initWithPreviousClientSettings:v11 currentClientSettings:v12 transitionContext:v13];
  [(CHUISWidgetSceneClientSettingsDiffInspector *)self->_clientSettingsDiffInspector inspectDiff:v10 withContext:v14];
}

- (id)additionalSnapshotPresentationContext
{
  v13.receiver = self;
  v13.super_class = CHUISWatchComplicationsWidgetHostViewController;
  v3 = [(CHUISWidgetHostViewController *)&v13 additionalSnapshotPresentationContext];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, ", v3];
  }

  else
  {
    v4 = &stru_1F54C2DC8;
  }

  if (self->_cornerPosition)
  {
    v5 = [(__CFString *)v4 stringByAppendingFormat:@"pos=%d", self->_cornerPosition];

    v4 = v5;
  }

  curvedLabelMetrics = self->_curvedLabelMetrics;
  if (curvedLabelMetrics)
  {
    v7 = [(CHSWatchComplicationsCurvedLabelMetrics *)curvedLabelMetrics _filenameSafeStableHash];
    v8 = [(__CFString *)v4 stringByAppendingFormat:@", curveMetrics=%@", v7];

    v4 = v8;
  }

  y = self->_bezelContentCenter.y;
  if (self->_bezelContentCenter.x != *MEMORY[0x1E695EFF8] || y != *(MEMORY[0x1E695EFF8] + 8))
  {
    v11 = [(__CFString *)v4 stringByAppendingFormat:@", bezelCirclePos=%f-%f", *&self->_bezelContentCenter.x, *&y];

    v4 = v11;
  }

  return v4;
}

- (id)handleActions:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CHUISWatchComplicationsWidgetHostViewController;
  v21 = [(CHUISWidgetHostViewController *)&v32 handleActions:v4];

  v23 = objc_opt_new();
  v5 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v21;
  v6 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v5;
        }

        else
        {
          v10 = v23;
        }

        [v10 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v12)
  {
    v13 = *v25;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v24 + 1) + 8 * j);
        v16 = [v15 metadata];
        snapshotMetadata = self->_snapshotMetadata;
        self->_snapshotMetadata = v16;

        v18 = [MEMORY[0x1E698E600] response];
        [v15 sendResponse:v18];
      }

      v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)sceneDidUpdateToSceneIdentifier:(id)a3
{
  objc_storeStrong(&self->_sceneIdentifier, a3);

  [(CHUISWatchComplicationsWidgetHostViewController *)self updateWatchGestureInteraction];
}

- (CHUISWatchComplicationsWidgetHostViewControllerDelegate)watchComplicationsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_watchComplicationsDelegate);

  return WeakRetained;
}

- (CGPoint)bezelContentCenter
{
  x = self->_bezelContentCenter.x;
  y = self->_bezelContentCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end