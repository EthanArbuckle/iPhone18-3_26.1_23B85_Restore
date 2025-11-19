@interface MPCPlayerAudioFormatSelection
- (MPCPlayerAudioFormatSelection)initWithExplanation:(id)a3 justification:(id)a4;
- (MPCPlayerAudioFormatSelection)initWithFormat:(id)a3 explanation:(id)a4 justification:(id)a5;
@end

@implementation MPCPlayerAudioFormatSelection

- (MPCPlayerAudioFormatSelection)initWithFormat:(id)a3 explanation:(id)a4 justification:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MPCPlayerAudioFormatSelection;
  v12 = [(MPCPlayerAudioFormatSelection *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_format, a3);
    v14 = [v10 copy];
    explanation = v13->_explanation;
    v13->_explanation = v14;

    objc_storeStrong(&v13->_justification, a5);
  }

  return v13;
}

- (MPCPlayerAudioFormatSelection)initWithExplanation:(id)a3 justification:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MPCPlayerAudioFormatSelection;
  v8 = [(MPCPlayerAudioFormatSelection *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    explanation = v8->_explanation;
    v8->_explanation = v9;

    objc_storeStrong(&v8->_justification, a4);
  }

  return v8;
}

@end