@interface CSVoiceTriggerSecondPassResultHolder
- (CSVoiceTriggerSecondPassResultHolder)initWithResult:(unint64_t)a3 voiceTriggerEventInfo:(id)a4 isSecondChanceCandidate:(BOOL)a5;
@end

@implementation CSVoiceTriggerSecondPassResultHolder

- (CSVoiceTriggerSecondPassResultHolder)initWithResult:(unint64_t)a3 voiceTriggerEventInfo:(id)a4 isSecondChanceCandidate:(BOOL)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CSVoiceTriggerSecondPassResultHolder;
  v9 = [(CSVoiceTriggerSecondPassResultHolder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_result = a3;
    v11 = [v8 copy];
    voiceTriggerEventInfo = v10->_voiceTriggerEventInfo;
    v10->_voiceTriggerEventInfo = v11;

    v10->_isSecondChanceCandidate = a5;
  }

  return v10;
}

@end