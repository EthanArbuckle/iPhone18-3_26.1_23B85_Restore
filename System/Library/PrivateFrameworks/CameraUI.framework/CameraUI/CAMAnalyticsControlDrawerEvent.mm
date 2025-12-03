@interface CAMAnalyticsControlDrawerEvent
- (CAMAnalyticsControlDrawerEvent)initWithReason:(int64_t)reason captureMode:(int64_t)mode devicePosition:(int64_t)position;
- (void)didChangeValueForControlType:(int64_t)type;
- (void)dismissedControlDrawerWithReason:(int64_t)reason;
- (void)publish;
- (void)setDismissingControlType:(int64_t)type;
- (void)setOpeningControlType:(int64_t)type;
@end

@implementation CAMAnalyticsControlDrawerEvent

- (CAMAnalyticsControlDrawerEvent)initWithReason:(int64_t)reason captureMode:(int64_t)mode devicePosition:(int64_t)position
{
  v13.receiver = self;
  v13.super_class = CAMAnalyticsControlDrawerEvent;
  v8 = [(CAMAnalyticsEvent *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->__openingReason = reason;
    v8->__captureMode = mode;
    v8->__devicePosition = position;
    v8->__startTime = CFAbsoluteTimeGetCurrent();
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    changedControlTypes = v9->__changedControlTypes;
    v9->__changedControlTypes = v10;
  }

  return v9;
}

- (void)setOpeningControlType:(int64_t)type
{
  [(CAMAnalyticsControlDrawerEvent *)self set_openingControlType:type];

  [(CAMAnalyticsControlDrawerEvent *)self set_hasOpeningControlType:1];
}

- (void)setDismissingControlType:(int64_t)type
{
  [(CAMAnalyticsControlDrawerEvent *)self set_dismissingControlType:type];

  [(CAMAnalyticsControlDrawerEvent *)self set_hasDismissingControlType:1];
}

- (void)dismissedControlDrawerWithReason:(int64_t)reason
{
  [(CAMAnalyticsControlDrawerEvent *)self set_dismissingReason:reason];
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMAnalyticsControlDrawerEvent *)self _startTime];
  [(CAMAnalyticsControlDrawerEvent *)self set_duration:Current - v5];

  [(CAMAnalyticsControlDrawerEvent *)self publish];
}

- (void)didChangeValueForControlType:(int64_t)type
{
  _changedControlTypes = [(CAMAnalyticsControlDrawerEvent *)self _changedControlTypes];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [_changedControlTypes containsObject:v6];

  if ((v7 & 1) == 0)
  {
    _changedControlTypes2 = [(CAMAnalyticsControlDrawerEvent *)self _changedControlTypes];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [_changedControlTypes2 addObject:v8];
  }
}

- (void)publish
{
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  _openingReason = [(CAMAnalyticsControlDrawerEvent *)self _openingReason];
  if (_openingReason > 9)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E76F8668[_openingReason];
  }

  [_eventMap setObject:v5 forKeyedSubscript:@"openingReason"];
  _captureMode = [(CAMAnalyticsControlDrawerEvent *)self _captureMode];
  if (_captureMode > 9)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E76F8618[_captureMode];
  }

  [_eventMap setObject:v7 forKeyedSubscript:@"captureMode"];
  _devicePosition = [(CAMAnalyticsControlDrawerEvent *)self _devicePosition];
  v9 = @"Front";
  if (_devicePosition != 1)
  {
    v9 = 0;
  }

  if (_devicePosition)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"Back";
  }

  [_eventMap setObject:v10 forKeyedSubscript:@"devicePosition"];
  if ([(CAMAnalyticsControlDrawerEvent *)self _hasOpeningControlType]&& [(CAMAnalyticsControlDrawerEvent *)self _openingReason]!= 2)
  {
    _openingControlType = [(CAMAnalyticsControlDrawerEvent *)self _openingControlType];
    if (_openingControlType > 0xF)
    {
      v12 = 0;
    }

    else
    {
      v12 = off_1E76F86B8[_openingControlType];
    }

    [_eventMap setObject:v12 forKeyedSubscript:@"openingControlType"];
  }

  v13 = MEMORY[0x1E696AD98];
  [(CAMAnalyticsControlDrawerEvent *)self _duration];
  v14 = [v13 numberWithDouble:?];
  [_eventMap setObject:v14 forKeyedSubscript:@"duration"];

  v15 = objc_opt_class();
  [(CAMAnalyticsControlDrawerEvent *)self _duration];
  v16 = [v15 durationRangeStringForDuration:?];
  [_eventMap setObject:v16 forKeyedSubscript:@"durationRange"];

  _dismissingReason = [(CAMAnalyticsControlDrawerEvent *)self _dismissingReason];
  if (_dismissingReason > 9)
  {
    v18 = 0;
  }

  else
  {
    v18 = off_1E76F8668[_dismissingReason];
  }

  [_eventMap setObject:v18 forKeyedSubscript:@"dismissingReason"];
  if ([(CAMAnalyticsControlDrawerEvent *)self _hasDismissingControlType]&& [(CAMAnalyticsControlDrawerEvent *)self _dismissingReason]!= 2)
  {
    _dismissingControlType = [(CAMAnalyticsControlDrawerEvent *)self _dismissingControlType];
    if (_dismissingControlType > 0xF)
    {
      v20 = 0;
    }

    else
    {
      v20 = off_1E76F86B8[_dismissingControlType];
    }

    [_eventMap setObject:v20 forKeyedSubscript:@"dismissingControlType"];
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _changedControlTypes = [(CAMAnalyticsControlDrawerEvent *)self _changedControlTypes];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __41__CAMAnalyticsControlDrawerEvent_publish__block_invoke;
  v26[3] = &unk_1E76F85F8;
  v23 = v21;
  v27 = v23;
  [_changedControlTypes enumerateObjectsUsingBlock:v26];

  [v23 sortUsingSelector:sel_compare_];
  if ([v23 count])
  {
    v24 = [v23 componentsJoinedByString:{@", "}];
    [_eventMap setObject:v24 forKeyedSubscript:@"changedControls"];
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