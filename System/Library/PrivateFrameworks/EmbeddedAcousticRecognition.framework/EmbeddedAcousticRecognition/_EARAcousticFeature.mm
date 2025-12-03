@interface _EARAcousticFeature
- (id)_initWithAcousticFeatureValues:(id)values frameDuration:(float)duration;
@end

@implementation _EARAcousticFeature

- (id)_initWithAcousticFeatureValues:(id)values frameDuration:(float)duration
{
  valuesCopy = values;
  v11.receiver = self;
  v11.super_class = _EARAcousticFeature;
  v7 = [(_EARAcousticFeature *)&v11 init];
  if (v7)
  {
    v8 = [valuesCopy copy];
    acousticFeatureValuePerFrame = v7->_acousticFeatureValuePerFrame;
    v7->_acousticFeatureValuePerFrame = v8;

    v7->_frameDuration = duration;
  }

  return v7;
}

@end