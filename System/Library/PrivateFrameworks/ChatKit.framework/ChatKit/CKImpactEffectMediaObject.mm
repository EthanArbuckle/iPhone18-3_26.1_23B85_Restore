@interface CKImpactEffectMediaObject
- (CKImpactEffectMediaObject)initWithImpactEffectAudioFileURL:(id)l;
@end

@implementation CKImpactEffectMediaObject

- (CKImpactEffectMediaObject)initWithImpactEffectAudioFileURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = CKImpactEffectMediaObject;
  v6 = [(CKImpactEffectMediaObject *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioFileURL, l);
    v8 = v7;
  }

  return v7;
}

@end