@interface CKFullScreenEffectMediaObject
- (CKFullScreenEffectMediaObject)initWithFullScreenEffectAudioFileURL:(id)l;
@end

@implementation CKFullScreenEffectMediaObject

- (CKFullScreenEffectMediaObject)initWithFullScreenEffectAudioFileURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = CKFullScreenEffectMediaObject;
  v6 = [(CKFullScreenEffectMediaObject *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioFileURL, l);
    v8 = v7;
  }

  return v7;
}

@end