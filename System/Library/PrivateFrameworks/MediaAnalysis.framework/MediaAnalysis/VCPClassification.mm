@interface VCPClassification
- (VCPClassification)initWithSceneId:(id)a3 withDuration:(float)a4 withConfidence:(float)a5 withAdjustConfidence:(float)a6;
@end

@implementation VCPClassification

- (VCPClassification)initWithSceneId:(id)a3 withDuration:(float)a4 withConfidence:(float)a5 withAdjustConfidence:(float)a6
{
  v11 = a3;
  if (v11)
  {
    v17.receiver = self;
    v17.super_class = VCPClassification;
    v12 = [(VCPClassification *)&v17 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_sceneId, a3);
      v13[2] = a4;
      v13[3] = a5;
      v14 = 0.0;
      if (a6 > 0.0)
      {
        v14 = a4;
      }

      v13[4] = a6;
      v13[5] = v14;
    }

    self = v13;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end