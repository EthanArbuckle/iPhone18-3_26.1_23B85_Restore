@interface JFXCaptureCallObserver
- (JFXCaptureCallObserver)init;
- (int64_t)callCount;
@end

@implementation JFXCaptureCallObserver

- (JFXCaptureCallObserver)init
{
  v6.receiver = self;
  v6.super_class = JFXCaptureCallObserver;
  v2 = [(JFXCaptureCallObserver *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    callObserver = v2->_callObserver;
    v2->_callObserver = v3;

    [(CXCallObserver *)v2->_callObserver setDelegate:v2 queue:MEMORY[0x277D85CD0]];
  }

  return v2;
}

- (int64_t)callCount
{
  callObserver = [(JFXCaptureCallObserver *)self callObserver];
  calls = [callObserver calls];
  v4 = [calls count];

  return v4;
}

@end