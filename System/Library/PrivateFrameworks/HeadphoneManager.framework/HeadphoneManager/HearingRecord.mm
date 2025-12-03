@interface HearingRecord
- (NSString)debugDescription;
- (char)hearingAidEnabled;
- (char)hearingAssistEnabled;
- (char)listeningModeOffAllowed;
- (char)mediaAssistEnabled;
- (char)pmeMediaEnabled;
- (char)pmeVoiceEnabled;
- (char)swipeGainEnabled;
- (float)amplification;
- (float)balance;
- (float)beamFormer;
- (float)noiseSuppression;
- (float)ownVoiceLevel;
- (float)tone;
- (void)setAmplification:(float)amplification;
- (void)setBalance:(float)balance;
- (void)setBeamFormer:(float)former;
- (void)setHearingAidEnabled:(char)enabled;
- (void)setHearingAssistEnabled:(char)enabled;
- (void)setListeningModeOffAllowed:(char)allowed;
- (void)setMediaAssistEnabled:(char)enabled;
- (void)setNoiseSuppression:(float)suppression;
- (void)setOwnVoiceLevel:(float)level;
- (void)setPmeMediaEnabled:(char)enabled;
- (void)setPmeVoiceEnabled:(char)enabled;
- (void)setSwipeGainEnabled:(char)enabled;
- (void)setTone:(float)tone;
@end

@implementation HearingRecord

- (float)amplification
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.amplification.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setAmplification:(float)amplification
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.amplification.setter(amplification);
  MEMORY[0x1E69E5920](self);
}

- (float)balance
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.balance.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBalance:(float)balance
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.balance.setter(balance);
  MEMORY[0x1E69E5920](self);
}

- (float)beamFormer
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.beamFormer.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setBeamFormer:(float)former
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.beamFormer.setter(former);
  MEMORY[0x1E69E5920](self);
}

- (float)noiseSuppression
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.noiseSuppression.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setNoiseSuppression:(float)suppression
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.noiseSuppression.setter(suppression);
  MEMORY[0x1E69E5920](self);
}

- (float)ownVoiceLevel
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.ownVoiceLevel.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setOwnVoiceLevel:(float)level
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.ownVoiceLevel.setter(level);
  MEMORY[0x1E69E5920](self);
}

- (float)tone
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.tone.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setTone:(float)tone
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.tone.setter(tone);
  MEMORY[0x1E69E5920](self);
}

- (char)pmeVoiceEnabled
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.pmeVoiceEnabled.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setPmeVoiceEnabled:(char)enabled
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.pmeVoiceEnabled.setter(enabled);
  MEMORY[0x1E69E5920](self);
}

- (char)pmeMediaEnabled
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.pmeMediaEnabled.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setPmeMediaEnabled:(char)enabled
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.pmeMediaEnabled.setter(enabled);
  MEMORY[0x1E69E5920](self);
}

- (char)mediaAssistEnabled
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.mediaAssistEnabled.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setMediaAssistEnabled:(char)enabled
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.mediaAssistEnabled.setter(enabled);
  MEMORY[0x1E69E5920](self);
}

- (char)hearingAssistEnabled
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.hearingAssistEnabled.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setHearingAssistEnabled:(char)enabled
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.hearingAssistEnabled.setter(enabled);
  MEMORY[0x1E69E5920](self);
}

- (char)swipeGainEnabled
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.swipeGainEnabled.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setSwipeGainEnabled:(char)enabled
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.swipeGainEnabled.setter(enabled);
  MEMORY[0x1E69E5920](self);
}

- (char)hearingAidEnabled
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.hearingAidEnabled.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setHearingAidEnabled:(char)enabled
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.hearingAidEnabled.setter(enabled);
  MEMORY[0x1E69E5920](self);
}

- (char)listeningModeOffAllowed
{
  MEMORY[0x1E69E5928](self);
  v4 = HearingRecord.listeningModeOffAllowed.getter();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setListeningModeOffAllowed:(char)allowed
{
  MEMORY[0x1E69E5928](self);
  HearingRecord.listeningModeOffAllowed.setter(allowed);
  MEMORY[0x1E69E5920](self);
}

- (NSString)debugDescription
{
  MEMORY[0x1E69E5928](self);
  v5 = HearingRecord.debugDescription.getter();
  v6 = v2;
  MEMORY[0x1E69E5920](self);
  v7 = MEMORY[0x1DA730940](v5, v6);

  return v7;
}

@end