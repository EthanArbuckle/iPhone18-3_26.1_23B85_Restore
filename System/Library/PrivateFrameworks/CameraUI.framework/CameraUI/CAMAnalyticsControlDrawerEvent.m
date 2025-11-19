@interface CAMAnalyticsControlDrawerEvent
- (CAMAnalyticsControlDrawerEvent)initWithReason:(int64_t)a3 captureMode:(int64_t)a4 devicePosition:(int64_t)a5;
- (void)didChangeValueForControlType:(int64_t)a3;
- (void)dismissedControlDrawerWithReason:(int64_t)a3;
- (void)publish;
- (void)setDismissingControlType:(int64_t)a3;
- (void)setOpeningControlType:(int64_t)a3;
@end

@implementation CAMAnalyticsControlDrawerEvent

- (CAMAnalyticsControlDrawerEvent)initWithReason:(int64_t)a3 captureMode:(int64_t)a4 devicePosition:(int64_t)a5
{
  v13.receiver = self;
  v13.super_class = CAMAnalyticsControlDrawerEvent;
  v8 = [(CAMAnalyticsEvent *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->__openingReason = a3;
    v8->__captureMode = a4;
    v8->__devicePosition = a5;
    v8->__startTime = CFAbsoluteTimeGetCurrent();
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    changedControlTypes = v9->__changedControlTypes;
    v9->__changedControlTypes = v10;
  }

  return v9;
}

- (void)setOpeningControlType:(int64_t)a3
{
  [(CAMAnalyticsControlDrawerEvent *)self set_openingControlType:a3];

  [(CAMAnalyticsControlDrawerEvent *)self set_hasOpeningControlType:1];
}

- (void)setDismissingControlType:(int64_t)a3
{
  [(CAMAnalyticsControlDrawerEvent *)self set_dismissingControlType:a3];

  [(CAMAnalyticsControlDrawerEvent *)self set_hasDismissingControlType:1];
}

- (void)dismissedControlDrawerWithReason:(int64_t)a3
{
  [(CAMAnalyticsControlDrawerEvent *)self set_dismissingReason:a3];
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMAnalyticsControlDrawerEvent *)self _startTime];
  [(CAMAnalyticsControlDrawerEvent *)self set_duration:Current - v5];

  [(CAMAnalyticsControlDrawerEvent *)self publish];
}

- (void)didChangeValueForControlType:(int64_t)a3
{
  v5 = [(CAMAnalyticsControlDrawerEvent *)self _changedControlTypes];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v9 = [(CAMAnalyticsControlDrawerEvent *)self _changedControlTypes];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v9 addObject:v8];
  }
}

- (void)publish
{
  v3 = [(CAMAnalyticsEvent *)self _eventMap];
  v4 = [(CAMAnalyticsControlDrawerEvent *)self _openingReason];
  if (v4 > 9)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E76F8668[v4];
  }

  [v3 setObject:v5 forKeyedSubscript:@"openingReason"];
  v6 = [(CAMAnalyticsControlDrawerEvent *)self _captureMode];
  if (v6 > 9)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E76F8618[v6];
  }

  [v3 setObject:v7 forKeyedSubscript:@"captureMode"];
  v8 = [(CAMAnalyticsControlDrawerEvent *)self _devicePosition];
  v9 = @"Front";
  if (v8 != 1)
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"Back";
  }

  [v3 setObject:v10 forKeyedSubscript:@"devicePosition"];
  if ([(CAMAnalyticsControlDrawerEvent *)self _hasOpeningControlType]&& [(CAMAnalyticsControlDrawerEvent *)self _openingReason]!= 2)
  {
    v11 = [(CAMAnalyticsControlDrawerEvent *)self _openingControlType];
    if (v11 > 0xF)
    {
      v12 = 0;
    }

    else
    {
      v12 = off_1E76F86B8[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"openingControlType"];
  }

  v13 = MEMORY[0x1E696AD98];
  [(CAMAnalyticsControlDrawerEvent *)self _duration];
  v14 = [v13 numberWithDouble:?];
  [v3 setObject:v14 forKeyedSubscript:@"duration"];

  v15 = objc_opt_class();
  [(CAMAnalyticsControlDrawerEvent *)self _duration];
  v16 = [v15 durationRangeStringForDuration:?];
  [v3 setObject:v16 forKeyedSubscript:@"durationRange"];

  v17 = [(CAMAnalyticsControlDrawerEvent *)self _dismissingReason];
  if (v17 > 9)
  {
    v18 = 0;
  }

  else
  {
    v18 = off_1E76F8668[v17];
  }

  [v3 setObject:v18 forKeyedSubscript:@"dismissingReason"];
  if ([(CAMAnalyticsControlDrawerEvent *)self _hasDismissingControlType]&& [(CAMAnalyticsControlDrawerEvent *)self _dismissingReason]!= 2)
  {
    v19 = [(CAMAnalyticsControlDrawerEvent *)self _dismissingControlType];
    if (v19 > 0xF)
    {
      v20 = 0;
    }

    else
    {
      v20 = off_1E76F86B8[v19];
    }

    [v3 setObject:v20 forKeyedSubscript:@"dismissingControlType"];
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = [(CAMAnalyticsControlDrawerEvent *)self _changedControlTypes];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __41__CAMAnalyticsControlDrawerEvent_publish__block_invoke;
  v26[3] = &unk_1E76F85F8;
  v23 = v21;
  v27 = v23;
  [v22 enumerateObjectsUsingBlock:v26];

  [v23 sortUsingSelector:sel_compare_];
  if ([v23 count])
  {
    v24 = [v23 componentsJoinedByString:{@", "}];
    [v3 setObject:v24 forKeyedSubscript:@"changedControls"];
  }

  v25.receiver = self;
  v25.super_class = CAMAnalyticsControlDrawerEvent;
  [(CAMAnalyticsEvent *)&v25 publish];
}

uint64_t __41__CAMAnalyticsControlDrawerEvent_publish__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  if (v3 > 0xF)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E76F86B8[v3];
  }

  v5 = *(a1 + 32);

  return [v5 addObject:v4];
}

@end