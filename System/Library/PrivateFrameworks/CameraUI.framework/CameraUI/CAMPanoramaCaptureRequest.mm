@interface CAMPanoramaCaptureRequest
- (CAMPanoramaCaptureRequest)init;
- (CAMPanoramaCaptureRequest)initWithRequest:(id)a3 distinctPersistence:(BOOL)a4;
- (CAMPanoramaCaptureRequestDelegate)delegate;
- (id)mutableCopyWithZone:(_NSZone *)a3;
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

- (CAMPanoramaCaptureRequest)initWithRequest:(id)a3 distinctPersistence:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CAMPanoramaCaptureRequest;
  v7 = [(CAMCaptureRequest *)&v11 initWithRequest:v6 distinctPersistence:v4];
  if (v7)
  {
    v8 = [v6 delegate];
    objc_storeWeak(&v7->_delegate, v8);

    v9 = v7;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
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