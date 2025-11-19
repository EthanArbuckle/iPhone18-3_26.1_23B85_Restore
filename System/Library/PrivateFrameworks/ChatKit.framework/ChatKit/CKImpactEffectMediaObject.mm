@interface CKImpactEffectMediaObject
- (CKImpactEffectMediaObject)initWithImpactEffectAudioFileURL:(id)a3;
@end

@implementation CKImpactEffectMediaObject

- (CKImpactEffectMediaObject)initWithImpactEffectAudioFileURL:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CKImpactEffectMediaObject;
  v6 = [(CKImpactEffectMediaObject *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioFileURL, a3);
    v8 = v7;
  }

  return v7;
}

@end