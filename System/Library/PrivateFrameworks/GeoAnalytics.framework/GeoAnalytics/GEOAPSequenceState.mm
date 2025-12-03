@interface GEOAPSequenceState
- (GEOAPSequenceState)initWithName:(id)name;
- (unint64_t)processUserAction:(int)action target:(int)target atTime:(double)time;
- (void)reset;
@end

@implementation GEOAPSequenceState

- (void)reset
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOGetGEOAPSequenceStateAnalyticsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    v6 = 138412290;
    v7 = name;
    _os_log_impl(&dword_1AB634000, v3, OS_LOG_TYPE_DEBUG, "reset state '%@'", &v6, 0xCu);
  }

  self->_finished = 0;
  self->_startTime = 0.0;
  v5 = *MEMORY[0x1E69E9840];
}

- (unint64_t)processUserAction:(int)action target:(int)target atTime:(double)time
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v6 = 0;
    _os_log_fault_impl(&dword_1AB634000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: base class has no implementation", v6, 2u);
  }

  return 3;
}

- (GEOAPSequenceState)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = GEOAPSequenceState;
  v5 = [(GEOAPSequenceState *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v5->_finished = 0;
    v5->_startTime = 0.0;
    fulfillmentBlock = v5->_fulfillmentBlock;
    v5->_fulfillmentBlock = 0;
  }

  return v5;
}

@end