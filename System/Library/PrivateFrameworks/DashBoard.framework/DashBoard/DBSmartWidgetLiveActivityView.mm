@interface DBSmartWidgetLiveActivityView
- (BOOL)_liveActivityHasValidMetrics;
- (BOOL)_updateLiveActivityMetricsIfNecessary;
- (CGRect)predictedBounds;
- (DBSmartWidgetLiveActivityView)initWithFrame:(CGRect)frame predictedSize:(CGSize)size;
- (id)_debugDescriptionWithPrediction:(id)prediction;
- (void)_updateViews;
- (void)layoutSubviews;
- (void)predictionDidUpdate:(id)update;
- (void)preparePrediction:(id)prediction withPredictedSize:(CGSize)size completion:(id)completion;
- (void)setPredictedBounds:(CGRect)bounds;
@end

@implementation DBSmartWidgetLiveActivityView

- (DBSmartWidgetLiveActivityView)initWithFrame:(CGRect)frame predictedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v35[4] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = DBSmartWidgetLiveActivityView;
  v6 = [(DBSmartWidgetView *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v6)
  {
    v7 = objc_alloc_init(_TtC9DashBoard34DBLiveActivityWidgetViewController);
    liveActivityViewController = v6->_liveActivityViewController;
    v6->_liveActivityViewController = v7;

    v9 = objc_opt_new();
    view = [(DBLiveActivityWidgetViewController *)v6->_liveActivityViewController view];
    [view _setBackground:v9];

    view2 = [(DBLiveActivityWidgetViewController *)v6->_liveActivityViewController view];
    [view2 setOverrideUserInterfaceStyle:2];

    v6->_predictedBounds.origin.x = 0.0;
    v6->_predictedBounds.origin.y = 0.0;
    v6->_predictedBounds.size.width = width;
    v6->_predictedBounds.size.height = height;
    view3 = [(DBLiveActivityWidgetViewController *)v6->_liveActivityViewController view];
    [(DBSmartWidgetLiveActivityView *)v6 addSubview:view3];

    view4 = [(DBLiveActivityWidgetViewController *)v6->_liveActivityViewController view];
    [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v26 = MEMORY[0x277CCAAD0];
    view5 = [(DBLiveActivityWidgetViewController *)v6->_liveActivityViewController view];
    leadingAnchor = [view5 leadingAnchor];
    leadingAnchor2 = [(DBSmartWidgetLiveActivityView *)v6 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[0] = v30;
    view6 = [(DBLiveActivityWidgetViewController *)v6->_liveActivityViewController view];
    trailingAnchor = [view6 trailingAnchor];
    trailingAnchor2 = [(DBSmartWidgetLiveActivityView *)v6 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[1] = v25;
    view7 = [(DBLiveActivityWidgetViewController *)v6->_liveActivityViewController view];
    topAnchor = [view7 topAnchor];
    topAnchor2 = [(DBSmartWidgetLiveActivityView *)v6 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[2] = v17;
    view8 = [(DBLiveActivityWidgetViewController *)v6->_liveActivityViewController view];
    bottomAnchor = [view8 bottomAnchor];
    bottomAnchor2 = [(DBSmartWidgetLiveActivityView *)v6 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    [v26 activateConstraints:v22];

    [(DBSmartWidgetLiveActivityView *)v6 setOverrideUserInterfaceStyle:2];
  }

  v23 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [DBSmartWidgetLiveActivityView initWithFrame:v6 predictedSize:v23];
  }

  return v6;
}

- (void)preparePrediction:(id)prediction withPredictedSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v21[1] = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  completionCopy = completion;
  [(DBSmartWidgetLiveActivityView *)self setPredictedBounds:0.0, 0.0, width, height];
  [(DBSmartWidgetLiveActivityView *)self _updateLiveActivityMetricsIfNecessary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(DBSmartWidgetLiveActivityView *)self _liveActivityHasValidMetrics])
    {
      v11 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [DBSmartWidgetLiveActivityView preparePrediction:predictionCopy withPredictedSize:? completion:?];
      }

      liveActivityViewController = [(DBSmartWidgetLiveActivityView *)self liveActivityViewController];
      activityDescriptor = [predictionCopy activityDescriptor];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __80__DBSmartWidgetLiveActivityView_preparePrediction_withPredictedSize_completion___block_invoke;
      v17[3] = &unk_278F01640;
      v17[4] = self;
      v18 = predictionCopy;
      v19 = completionCopy;
      [liveActivityViewController activateLiveActivityWithDescriptor:activityDescriptor completion:v17];
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA450];
      v21[0] = @"<%{public}@> Cannot prepare prediction, metrics invalid";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v16 = [v14 errorWithDomain:@"com.apple.dashboard.liveActivity" code:0 userInfo:v15];

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, v16);
      }
    }
  }
}

void __80__DBSmartWidgetLiveActivityView_preparePrediction_withPredictedSize_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __80__DBSmartWidgetLiveActivityView_preparePrediction_withPredictedSize_completion___block_invoke_cold_1(a1, v3);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)layoutSubviews
{
  OUTLINED_FUNCTION_3_0();
  window = [v1 window];
  prediction = [v0 prediction];
  v9 = [v0 _debugDescriptionWithPrediction:prediction];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __47__DBSmartWidgetLiveActivityView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __80__DBSmartWidgetLiveActivityView_preparePrediction_withPredictedSize_completion___block_invoke_cold_1(a1, v3);
  }

  [*(a1 + 32) _updateViews];
}

- (void)setPredictedBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  p_predictedBounds = &self->_predictedBounds;
  if (!CGRectEqualToRect(bounds, self->_predictedBounds))
  {
    v8 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [DBSmartWidgetLiveActivityView setPredictedBounds:];
    }

    p_predictedBounds->origin.x = x;
    p_predictedBounds->origin.y = y;
    p_predictedBounds->size.width = width;
    p_predictedBounds->size.height = height;
  }
}

- (void)_updateViews
{
  OUTLINED_FUNCTION_3_0();
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = v1;
  v5 = 2112;
  v6 = objc_opt_class();
  v2 = v6;
  _os_log_error_impl(&dword_248146000, v0, OS_LOG_TYPE_ERROR, "<%{public}@> unexpected prediction %@", &v3, 0x16u);
}

- (BOOL)_updateLiveActivityMetricsIfNecessary
{
  [(DBSmartWidgetLiveActivityView *)self bounds];
  if (v3 != 0.0)
  {
    [(DBSmartWidgetLiveActivityView *)self bounds];
    if (v4 != 0.0)
    {
      [(DBSmartWidgetLiveActivityView *)self bounds];
      v6 = v5;
      [(DBSmartWidgetLiveActivityView *)self bounds];
LABEL_7:
      v10 = v7;
      v8 = 0.0;
      v9 = 0.0;
      goto LABEL_8;
    }
  }

  v9 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  [(DBSmartWidgetLiveActivityView *)self predictedBounds];
  if (v11 != 0.0)
  {
    [(DBSmartWidgetLiveActivityView *)self predictedBounds];
    if (v12 != 0.0)
    {
      [(DBSmartWidgetLiveActivityView *)self predictedBounds];
      v6 = v13;
      [(DBSmartWidgetLiveActivityView *)self predictedBounds];
      goto LABEL_7;
    }
  }

LABEL_8:
  [(DBLiveActivityWidgetViewController *)self->_liveActivityViewController rectForSystemMetrics];
  v17.origin.x = v9;
  v17.origin.y = v8;
  v17.size.width = v6;
  v17.size.height = v10;
  v14 = CGRectEqualToRect(v16, v17);
  if (!v14)
  {
    [(DBLiveActivityWidgetViewController *)self->_liveActivityViewController setRectForSystemMetrics:v9, v8, v6, v10];
  }

  return !v14;
}

- (id)_debugDescriptionWithPrediction:(id)prediction
{
  liveActivityViewController = self->_liveActivityViewController;
  predictionCopy = prediction;
  [(DBLiveActivityWidgetViewController *)liveActivityViewController rectForSystemMetrics];
  v7 = v6;
  v9 = v8;
  v10 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [predictionCopy uniqueIdentifier];

  uUIDString = [uniqueIdentifier UUIDString];
  v13 = MEMORY[0x277CCAE60];
  [(DBSmartWidgetLiveActivityView *)self bounds];
  v27[0] = v14;
  v27[1] = v15;
  v16 = [v13 valueWithBytes:v27 objCType:"{CGSize=dd}"];
  v17 = MEMORY[0x277CCAE60];
  [(DBSmartWidgetLiveActivityView *)self predictedBounds];
  v26[0] = v18;
  v26[1] = v19;
  v20 = [v17 valueWithBytes:v26 objCType:"{CGSize=dd}"];
  *v25 = v7;
  *&v25[1] = v9;
  v21 = [MEMORY[0x277CCAE60] valueWithBytes:v25 objCType:"{CGSize=dd}"];
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v9];
  v23 = [v10 stringWithFormat:@"Identifier: %@. Current size %@ predicted size %@. LA size %@. Aspect ratio: %@", uUIDString, v16, v20, v21, v22];

  return v23;
}

- (BOOL)_liveActivityHasValidMetrics
{
  [(DBLiveActivityWidgetViewController *)self->_liveActivityViewController rectForSystemMetrics];
  if (v3 == 0.0)
  {
    return 0;
  }

  [(DBLiveActivityWidgetViewController *)self->_liveActivityViewController rectForSystemMetrics];
  return v4 != 0.0;
}

- (void)predictionDidUpdate:(id)update
{
  updateCopy = update;
  prediction = [(DBSmartWidgetView *)self prediction];
  uniqueIdentifier = [prediction uniqueIdentifier];
  uniqueIdentifier2 = [updateCopy uniqueIdentifier];

  if (uniqueIdentifier == uniqueIdentifier2)
  {
    v8.receiver = self;
    v8.super_class = DBSmartWidgetLiveActivityView;
    [(DBSmartWidgetView *)&v8 predictionDidUpdate:updateCopy];
  }
}

- (CGRect)predictedBounds
{
  x = self->_predictedBounds.origin.x;
  y = self->_predictedBounds.origin.y;
  width = self->_predictedBounds.size.width;
  height = self->_predictedBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithFrame:(uint64_t)a1 predictedSize:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 456);
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = v2;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "<%{public}@> initialized liveActivityViewController %{public}@", &v3, 0x16u);
}

- (void)preparePrediction:(void *)a1 withPredictedSize:(uint64_t)a2 completion:.cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 _debugDescriptionWithPrediction:a2];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __80__DBSmartWidgetLiveActivityView_preparePrediction_withPredictedSize_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [a2 debugDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

- (void)setPredictedBounds:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v2 = [v1 prediction];
  v3 = [v0 _debugDescriptionWithPrediction:v2];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end