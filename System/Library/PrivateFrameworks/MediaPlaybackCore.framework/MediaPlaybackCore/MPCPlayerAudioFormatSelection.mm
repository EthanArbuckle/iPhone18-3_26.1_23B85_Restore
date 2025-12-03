@interface MPCPlayerAudioFormatSelection
- (MPCPlayerAudioFormatSelection)initWithExplanation:(id)explanation justification:(id)justification;
- (MPCPlayerAudioFormatSelection)initWithFormat:(id)format explanation:(id)explanation justification:(id)justification;
@end

@implementation MPCPlayerAudioFormatSelection

- (MPCPlayerAudioFormatSelection)initWithFormat:(id)format explanation:(id)explanation justification:(id)justification
{
  formatCopy = format;
  explanationCopy = explanation;
  justificationCopy = justification;
  v17.receiver = self;
  v17.super_class = MPCPlayerAudioFormatSelection;
  v12 = [(MPCPlayerAudioFormatSelection *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_format, format);
    v14 = [explanationCopy copy];
    explanation = v13->_explanation;
    v13->_explanation = v14;

    objc_storeStrong(&v13->_justification, justification);
  }

  return v13;
}

- (MPCPlayerAudioFormatSelection)initWithExplanation:(id)explanation justification:(id)justification
{
  explanationCopy = explanation;
  justificationCopy = justification;
  v12.receiver = self;
  v12.super_class = MPCPlayerAudioFormatSelection;
  v8 = [(MPCPlayerAudioFormatSelection *)&v12 init];
  if (v8)
  {
    v9 = [explanationCopy copy];
    explanation = v8->_explanation;
    v8->_explanation = v9;

    objc_storeStrong(&v8->_justification, justification);
  }

  return v8;
}

@end