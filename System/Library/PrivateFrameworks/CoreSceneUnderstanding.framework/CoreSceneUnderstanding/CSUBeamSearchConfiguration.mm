@interface CSUBeamSearchConfiguration
- (CSUBeamSearchConfiguration)init;
@end

@implementation CSUBeamSearchConfiguration

- (CSUBeamSearchConfiguration)init
{
  v9.receiver = self;
  v9.super_class = CSUBeamSearchConfiguration;
  v2 = [(CSUBeamSearchConfiguration *)&v9 init];
  v3 = v2;
  if (v2)
  {
    beamWidth = v2->_beamWidth;
    v2->_beamWidth = 0;

    maxSteps = v3->_maxSteps;
    v3->_maxSteps = 0;

    topK = v3->_topK;
    v3->_topK = 0;

    lengthNormalizationAlpha = v3->_lengthNormalizationAlpha;
    v3->_lengthNormalizationAlpha = 0;
  }

  return v3;
}

@end