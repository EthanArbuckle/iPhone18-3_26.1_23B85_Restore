@interface CAMMetalContext
- (CAMMetalContext)init;
@end

@implementation CAMMetalContext

- (CAMMetalContext)init
{
  v9.receiver = self;
  v9.super_class = CAMMetalContext;
  v2 = [(CAMMetalContext *)&v9 init];
  if (v2)
  {
    v3 = MTLCreateSystemDefaultDevice();
    v4 = v3;
    if (v3)
    {
      newCommandQueue = [v3 newCommandQueue];
      if (newCommandQueue)
      {
        objc_storeStrong(&v2->_device, v4);
        objc_storeStrong(&v2->_commandQueue, newCommandQueue);
        v6 = v2;
LABEL_12:

        goto LABEL_13;
      }

      v7 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CAMMetalContext *)v7 init];
      }
    }

    else
    {
      newCommandQueue = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(newCommandQueue, OS_LOG_TYPE_ERROR))
      {
        [(CAMMetalContext *)newCommandQueue init];
      }
    }

    v6 = 0;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

@end