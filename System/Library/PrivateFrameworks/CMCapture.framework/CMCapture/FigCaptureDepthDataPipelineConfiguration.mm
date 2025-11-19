@interface FigCaptureDepthDataPipelineConfiguration
- (__n128)setClientAuditToken:(uint64_t)a1;
- (uint64_t)setDepthDataBaseRotationDegrees:(uint64_t)result;
- (uint64_t)setPearlModuleType:(uint64_t)result;
- (uint64_t)setVideoAndConvertedDepthDataOutputEnabled:(uint64_t)result;
- (void)dealloc;
- (void)setCameraInfoByPortType:(void *)a1;
- (void)setRequiredFormat:(void *)a1;
@end

@implementation FigCaptureDepthDataPipelineConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureDepthDataPipelineConfiguration;
  [(FigCaptureDepthDataPipelineConfiguration *)&v3 dealloc];
}

- (uint64_t)setVideoAndConvertedDepthDataOutputEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 34) = a2;
  }

  return result;
}

- (__n128)setClientAuditToken:(uint64_t)a1
{
  if (a1)
  {
    result = *a2;
    v3 = *(a2 + 16);
    *(a1 + 48) = *a2;
    *(a1 + 64) = v3;
  }

  return result;
}

- (uint64_t)setDepthDataBaseRotationDegrees:(uint64_t)result
{
  if (result)
  {
    *(result + 80) = a2;
  }

  return result;
}

- (void)setCameraInfoByPortType:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 88);
  }
}

- (void)setRequiredFormat:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 96);
  }
}

- (uint64_t)setPearlModuleType:(uint64_t)result
{
  if (result)
  {
    *(result + 104) = a2;
  }

  return result;
}

@end