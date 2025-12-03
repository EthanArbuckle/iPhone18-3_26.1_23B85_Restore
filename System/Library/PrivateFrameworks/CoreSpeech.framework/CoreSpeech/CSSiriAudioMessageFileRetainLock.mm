@interface CSSiriAudioMessageFileRetainLock
- (CSSiriAudioMessageFileRetainLock)initWithRequestId:(id)id;
@end

@implementation CSSiriAudioMessageFileRetainLock

- (CSSiriAudioMessageFileRetainLock)initWithRequestId:(id)id
{
  idCopy = id;
  v12.receiver = self;
  v12.super_class = CSSiriAudioMessageFileRetainLock;
  v6 = [(CSSiriAudioMessageFileRetainLock *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestId, id);
    v8 = +[NSUUID UUID];
    uUIDString = [v8 UUIDString];
    UUIDString = v7->_UUIDString;
    v7->_UUIDString = uUIDString;
  }

  return v7;
}

@end