@interface FigPointCloudDataCaptureConnectionConfiguration
- (BOOL)isEqual:(id)a3;
- (FigPointCloudDataCaptureConnectionConfiguration)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)description;
@end

@implementation FigPointCloudDataCaptureConnectionConfiguration

- (FigPointCloudDataCaptureConnectionConfiguration)initWithXPCEncoding:(id)a3
{
  if (!a3)
  {

    self = 0;
  }

  v6.receiver = self;
  v6.super_class = FigPointCloudDataCaptureConnectionConfiguration;
  v4 = [(FigVideoCaptureConnectionConfiguration *)&v6 initWithXPCEncoding:a3];
  if (v4)
  {
    *&v4->super._coreMediaFaceTrackingEnabled = xpc_dictionary_get_int64(a3, "projectorMode");
    *(&v4->super._coreMediaFaceTrackingEnabled + 4) = xpc_dictionary_get_BOOL(a3, "supplementalPointCloudData");
    *(&v4->super._coreMediaFaceTrackingEnabled + 5) = xpc_dictionary_get_BOOL(a3, "pointCloudOutputDisabled");
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v5.receiver = self;
  v5.super_class = FigPointCloudDataCaptureConnectionConfiguration;
  v3 = [(FigVideoCaptureConnectionConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_int64(v3, "projectorMode", [(FigPointCloudDataCaptureConnectionConfiguration *)self projectorMode]);
  xpc_dictionary_set_BOOL(v3, "supplementalPointCloudData", [(FigPointCloudDataCaptureConnectionConfiguration *)self supplementalPointCloudData]);
  xpc_dictionary_set_BOOL(v3, "pointCloudOutputDisabled", [(FigPointCloudDataCaptureConnectionConfiguration *)self pointCloudOutputDisabled]);
  return v3;
}

- (id)description
{
  v3 = [(FigCaptureConnectionConfiguration *)self underlyingDeviceType];
  if (v3 == [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] sourceDeviceType])
  {
    v4 = &stru_1F216A3D0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (SUB-DEVICE:%@)", +[FigCaptureSourceConfiguration stringForSourceDeviceType:](FigCaptureSourceConfiguration, "stringForSourceDeviceType:", -[FigCaptureConnectionConfiguration underlyingDeviceType](self, "underlyingDeviceType"))];
  }

  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"PC %p: <%@>%@ -> <%@>", self, -[FigCaptureConnectionConfiguration sourceConfiguration](self, "sourceConfiguration"), v4, -[FigCaptureConnectionConfiguration sinkConfiguration](self, "sinkConfiguration")];
  [(FigVideoCaptureConnectionConfiguration *)self outputFormat];
  [v5 appendFormat:@", %@/%dx%d", BWStringForOSType(), -[FigVideoCaptureConnectionConfiguration outputWidth](self, "outputWidth"), -[FigVideoCaptureConnectionConfiguration outputHeight](self, "outputHeight")];
  [v5 appendFormat:@", E:%d, PROJ:%d, SUP:%d, RBC:%d, PCO=%d", -[FigCaptureConnectionConfiguration enabled](self, "enabled"), -[FigPointCloudDataCaptureConnectionConfiguration projectorMode](self, "projectorMode"), -[FigPointCloudDataCaptureConnectionConfiguration supplementalPointCloudData](self, "supplementalPointCloudData"), -[FigVideoCaptureConnectionConfiguration retainedBufferCount](self, "retainedBufferCount"), -[FigPointCloudDataCaptureConnectionConfiguration pointCloudOutputDisabled](self, "pointCloudOutputDisabled")];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = FigPointCloudDataCaptureConnectionConfiguration;
  v4 = [(FigVideoCaptureConnectionConfiguration *)&v6 copyWithZone:a3];
  [v4 setProjectorMode:{-[FigPointCloudDataCaptureConnectionConfiguration projectorMode](self, "projectorMode")}];
  [v4 setSupplementalPointCloudData:{-[FigPointCloudDataCaptureConnectionConfiguration supplementalPointCloudData](self, "supplementalPointCloudData")}];
  [v4 setPointCloudOutputDisabled:{-[FigPointCloudDataCaptureConnectionConfiguration pointCloudOutputDisabled](self, "pointCloudOutputDisabled")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(FigPointCloudDataCaptureConnectionConfiguration *)self projectorMode];
  if (v5 != [a3 projectorMode])
  {
    return 0;
  }

  v6 = [(FigPointCloudDataCaptureConnectionConfiguration *)self supplementalPointCloudData];
  if (v6 != [a3 supplementalPointCloudData])
  {
    return 0;
  }

  v7 = [(FigPointCloudDataCaptureConnectionConfiguration *)self pointCloudOutputDisabled];
  if (v7 != [a3 pointCloudOutputDisabled])
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = FigPointCloudDataCaptureConnectionConfiguration;
  return [(FigVideoCaptureConnectionConfiguration *)&v9 isEqual:a3];
}

@end