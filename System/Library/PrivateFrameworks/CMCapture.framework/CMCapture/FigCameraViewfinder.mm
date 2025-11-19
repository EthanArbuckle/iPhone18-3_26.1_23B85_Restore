@interface FigCameraViewfinder
+ (BOOL)clientIsAllowedToUseCameraViewfinder:(id *)a3;
- (FigCameraViewfinder)init;
- (void)dealloc;
- (void)startWithOptions:(id)a3;
- (void)stop;
@end

@implementation FigCameraViewfinder

- (FigCameraViewfinder)init
{
  v5.receiver = self;
  v5.super_class = FigCameraViewfinder;
  v2 = [(FigCameraViewfinder *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_class();
    if (v3 == objc_opt_class())
    {

      return objc_alloc_init(FigCameraViewfinderRemote);
    }

    else
    {
      v2->_delegateStorage = objc_alloc_init(FigDelegateStorage);
    }
  }

  return v2;
}

+ (BOOL)clientIsAllowedToUseCameraViewfinder:(id *)a3
{
  v3 = *&a3->var0[4];
  v5[0] = *a3->var0;
  v5[1] = v3;
  return FigCaptureClientHasEntitlement(v5, @"com.apple.coremedia.cameraviewfinder");
}

- (void)startWithOptions:(id)a3
{
  v5 = objc_opt_class();

  _requestConcreteImplementation(self, a2, v5);
}

- (void)stop
{
  v4 = objc_opt_class();

  _requestConcreteImplementation(self, a2, v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCameraViewfinder;
  [(FigCameraViewfinder *)&v3 dealloc];
}

@end