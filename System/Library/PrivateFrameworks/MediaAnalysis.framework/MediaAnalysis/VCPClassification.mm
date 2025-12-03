@interface VCPClassification
- (VCPClassification)initWithSceneId:(id)id withDuration:(float)duration withConfidence:(float)confidence withAdjustConfidence:(float)adjustConfidence;
@end

@implementation VCPClassification

- (VCPClassification)initWithSceneId:(id)id withDuration:(float)duration withConfidence:(float)confidence withAdjustConfidence:(float)adjustConfidence
{
  idCopy = id;
  if (idCopy)
  {
    v17.receiver = self;
    v17.super_class = VCPClassification;
    v12 = [(VCPClassification *)&v17 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_sceneId, id);
      v13[2] = duration;
      v13[3] = confidence;
      durationCopy = 0.0;
      if (adjustConfidence > 0.0)
      {
        durationCopy = duration;
      }

      v13[4] = adjustConfidence;
      v13[5] = durationCopy;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end