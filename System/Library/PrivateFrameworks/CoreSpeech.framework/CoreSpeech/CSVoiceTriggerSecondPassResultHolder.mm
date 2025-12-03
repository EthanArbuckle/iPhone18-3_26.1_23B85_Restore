@interface CSVoiceTriggerSecondPassResultHolder
- (CSVoiceTriggerSecondPassResultHolder)initWithResult:(unint64_t)result voiceTriggerEventInfo:(id)info isSecondChanceCandidate:(BOOL)candidate;
@end

@implementation CSVoiceTriggerSecondPassResultHolder

- (CSVoiceTriggerSecondPassResultHolder)initWithResult:(unint64_t)result voiceTriggerEventInfo:(id)info isSecondChanceCandidate:(BOOL)candidate
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = CSVoiceTriggerSecondPassResultHolder;
  v9 = [(CSVoiceTriggerSecondPassResultHolder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_result = result;
    v11 = [infoCopy copy];
    voiceTriggerEventInfo = v10->_voiceTriggerEventInfo;
    v10->_voiceTriggerEventInfo = v11;

    v10->_isSecondChanceCandidate = candidate;
  }

  return v10;
}

@end