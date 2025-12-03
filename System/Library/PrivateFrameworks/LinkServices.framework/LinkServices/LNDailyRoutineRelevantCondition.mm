@interface LNDailyRoutineRelevantCondition
- (LNDailyRoutineRelevantCondition)initWithSituation:(int64_t)situation;
@end

@implementation LNDailyRoutineRelevantCondition

- (LNDailyRoutineRelevantCondition)initWithSituation:(int64_t)situation
{
  v8.receiver = self;
  v8.super_class = LNDailyRoutineRelevantCondition;
  _init = [(LNRelevantCondition *)&v8 _init];
  v5 = _init;
  if (_init)
  {
    _init->_situation = situation;
    v6 = _init;
  }

  return v5;
}

@end