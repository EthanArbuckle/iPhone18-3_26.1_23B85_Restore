@interface CSVoiceTriggerSecondChanceContext
- (CSVoiceTriggerSecondChanceContext)initWithWindowStartTime:(unint64_t)time;
@end

@implementation CSVoiceTriggerSecondChanceContext

- (CSVoiceTriggerSecondChanceContext)initWithWindowStartTime:(unint64_t)time
{
  v7.receiver = self;
  v7.super_class = CSVoiceTriggerSecondChanceContext;
  v4 = [(CSVoiceTriggerSecondChanceContext *)&v7 init];
  if (v4)
  {
    LODWORD(v5) = 8.0;
    v4->_secondChanceHotTillMachTime = [CSFTimeUtils secondsToHostTime:v5]+ time;
  }

  return v4;
}

@end