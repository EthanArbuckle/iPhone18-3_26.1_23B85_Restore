@interface _EARAcousticFeature
- (id)_initWithAcousticFeatureValues:(id)a3 frameDuration:(float)a4;
@end

@implementation _EARAcousticFeature

- (id)_initWithAcousticFeatureValues:(id)a3 frameDuration:(float)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _EARAcousticFeature;
  v7 = [(_EARAcousticFeature *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    acousticFeatureValuePerFrame = v7->_acousticFeatureValuePerFrame;
    v7->_acousticFeatureValuePerFrame = v8;

    v7->_frameDuration = a4;
  }

  return v7;
}

@end