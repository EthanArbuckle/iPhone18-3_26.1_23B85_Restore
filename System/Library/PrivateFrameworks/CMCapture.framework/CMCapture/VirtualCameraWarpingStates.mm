@interface VirtualCameraWarpingStates
- (double)initWithInputCamera:(void *)a3 outputCamera:(double)a4 outputROI:(double)a5;
- (void)dealloc;
@end

@implementation VirtualCameraWarpingStates

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VirtualCameraWarpingStates;
  [(VirtualCameraWarpingStates *)&v3 dealloc];
}

- (double)initWithInputCamera:(void *)a3 outputCamera:(double)a4 outputROI:(double)a5
{
  if (!a1)
  {
    return 0;
  }

  v15.receiver = a1;
  v15.super_class = VirtualCameraWarpingStates;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  if (v13)
  {
    *(v13 + 1) = a2;
    *(v13 + 2) = a3;
    v13[3] = a4;
    v13[4] = a5;
    v13[5] = a6;
    v13[6] = a7;
  }

  return v13;
}

@end