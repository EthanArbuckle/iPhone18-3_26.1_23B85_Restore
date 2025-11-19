@interface CSSiriAudioMessageFileRetainLock
- (CSSiriAudioMessageFileRetainLock)initWithRequestId:(id)a3;
@end

@implementation CSSiriAudioMessageFileRetainLock

- (CSSiriAudioMessageFileRetainLock)initWithRequestId:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CSSiriAudioMessageFileRetainLock;
  v6 = [(CSSiriAudioMessageFileRetainLock *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestId, a3);
    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];
    UUIDString = v7->_UUIDString;
    v7->_UUIDString = v9;
  }

  return v7;
}

@end