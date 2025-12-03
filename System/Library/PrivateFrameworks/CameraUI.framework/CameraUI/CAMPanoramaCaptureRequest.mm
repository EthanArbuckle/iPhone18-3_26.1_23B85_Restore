@interface CAMPanoramaCaptureRequest
- (CAMPanoramaCaptureRequest)init;
- (CAMPanoramaCaptureRequest)initWithRequest:(id)request distinctPersistence:(BOOL)persistence;
- (CAMPanoramaCaptureRequestDelegate)delegate;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CAMPanoramaCaptureRequest

- (CAMPanoramaCaptureRequest)init
{
  v6.receiver = self;
  v6.super_class = CAMPanoramaCaptureRequest;
  v2 = [(CAMCaptureRequest *)&v6 initWithType:2];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (CAMPanoramaCaptureRequest)initWithRequest:(id)request distinctPersistence:(BOOL)persistence
{
  persistenceCopy = persistence;
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = CAMPanoramaCaptureRequest;
  v7 = [(CAMCaptureRequest *)&v11 initWithRequest:requestCopy distinctPersistence:persistenceCopy];
  if (v7)
  {
    delegate = [requestCopy delegate];
    objc_storeWeak(&v7->_delegate, delegate);

    v9 = v7;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CAMMutablePanoramaCaptureRequest alloc];

  return [(CAMPanoramaCaptureRequest *)v4 initWithRequest:self distinctPersistence:0];
}

- (CAMPanoramaCaptureRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end