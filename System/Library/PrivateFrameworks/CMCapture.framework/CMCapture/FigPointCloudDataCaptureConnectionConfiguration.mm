@interface FigPointCloudDataCaptureConnectionConfiguration
- (BOOL)isEqual:(id)equal;
- (FigPointCloudDataCaptureConnectionConfiguration)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)description;
@end

@implementation FigPointCloudDataCaptureConnectionConfiguration

- (FigPointCloudDataCaptureConnectionConfiguration)initWithXPCEncoding:(id)encoding
{
  if (!encoding)
  {

    self = 0;
  }

  v6.receiver = self;
  v6.super_class = FigPointCloudDataCaptureConnectionConfiguration;
  v4 = [(FigVideoCaptureConnectionConfiguration *)&v6 initWithXPCEncoding:encoding];
  if (v4)
  {
    *&v4->super._coreMediaFaceTrackingEnabled = xpc_dictionary_get_int64(encoding, "projectorMode");
    *(&v4->super._coreMediaFaceTrackingEnabled + 4) = xpc_dictionary_get_BOOL(encoding, "supplementalPointCloudData");
    *(&v4->super._coreMediaFaceTrackingEnabled + 5) = xpc_dictionary_get_BOOL(encoding, "pointCloudOutputDisabled");
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v5.receiver = self;
  v5.super_class = FigPointCloudDataCaptureConnectionConfiguration;
  copyXPCEncoding = [(FigVideoCaptureConnectionConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_int64(copyXPCEncoding, "projectorMode", [(FigPointCloudDataCaptureConnectionConfiguration *)self projectorMode]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "supplementalPointCloudData", [(FigPointCloudDataCaptureConnectionConfiguration *)self supplementalPointCloudData]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "pointCloudOutputDisabled", [(FigPointCloudDataCaptureConnectionConfiguration *)self pointCloudOutputDisabled]);
  return copyXPCEncoding;
}

- (id)description
{
  underlyingDeviceType = [(FigCaptureConnectionConfiguration *)self underlyingDeviceType];
  if (underlyingDeviceType == [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] sourceDeviceType])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = FigPointCloudDataCaptureConnectionConfiguration;
  v4 = [(FigVideoCaptureConnectionConfiguration *)&v6 copyWithZone:zone];
  [v4 setProjectorMode:{-[FigPointCloudDataCaptureConnectionConfiguration projectorMode](self, "projectorMode")}];
  [v4 setSupplementalPointCloudData:{-[FigPointCloudDataCaptureConnectionConfiguration supplementalPointCloudData](self, "supplementalPointCloudData")}];
  [v4 setPointCloudOutputDisabled:{-[FigPointCloudDataCaptureConnectionConfiguration pointCloudOutputDisabled](self, "pointCloudOutputDisabled")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  projectorMode = [(FigPointCloudDataCaptureConnectionConfiguration *)self projectorMode];
  if (projectorMode != [equal projectorMode])
  {
    return 0;
  }

  supplementalPointCloudData = [(FigPointCloudDataCaptureConnectionConfiguration *)self supplementalPointCloudData];
  if (supplementalPointCloudData != [equal supplementalPointCloudData])
  {
    return 0;
  }

  pointCloudOutputDisabled = [(FigPointCloudDataCaptureConnectionConfiguration *)self pointCloudOutputDisabled];
  if (pointCloudOutputDisabled != [equal pointCloudOutputDisabled])
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = FigPointCloudDataCaptureConnectionConfiguration;
  return [(FigVideoCaptureConnectionConfiguration *)&v9 isEqual:equal];
}

@end