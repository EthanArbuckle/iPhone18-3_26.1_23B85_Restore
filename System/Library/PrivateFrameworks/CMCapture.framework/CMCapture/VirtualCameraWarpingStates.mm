@interface VirtualCameraWarpingStates
- (double)initWithInputCamera:(void *)camera outputCamera:(double)outputCamera outputROI:(double)i;
- (void)dealloc;
@end

@implementation VirtualCameraWarpingStates

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VirtualCameraWarpingStates;
  [(VirtualCameraWarpingStates *)&v3 dealloc];
}

- (double)initWithInputCamera:(void *)camera outputCamera:(double)outputCamera outputROI:(double)i
{
  if (!self)
  {
    return 0;
  }

  v15.receiver = self;
  v15.super_class = VirtualCameraWarpingStates;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  if (v13)
  {
    *(v13 + 1) = a2;
    *(v13 + 2) = camera;
    v13[3] = outputCamera;
    v13[4] = i;
    v13[5] = a6;
    v13[6] = a7;
  }

  return v13;
}

@end