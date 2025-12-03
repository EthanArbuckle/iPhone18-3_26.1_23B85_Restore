@interface FigDepthDataCaptureConnectionConfiguration
- (id)description;
@end

@implementation FigDepthDataCaptureConnectionConfiguration

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

  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"DC %p: <%@>%@ -> <%@>", self, -[FigCaptureConnectionConfiguration sourceConfiguration](self, "sourceConfiguration"), v4, -[FigCaptureConnectionConfiguration sinkConfiguration](self, "sinkConfiguration")];
  [(FigVideoCaptureConnectionConfiguration *)self outputFormat];
  [v5 appendFormat:@", %@/%dx%d", BWStringForOSType(), -[FigVideoCaptureConnectionConfiguration outputWidth](self, "outputWidth"), -[FigVideoCaptureConnectionConfiguration outputHeight](self, "outputHeight")];
  [v5 appendFormat:@", E:%d, VIS:%d, M:%d, R:%d, RBC:%d", -[FigCaptureConnectionConfiguration enabled](self, "enabled"), -[FigVideoCaptureConnectionConfiguration videoStabilizationMethod](self, "videoStabilizationMethod"), -[FigVideoCaptureConnectionConfiguration mirroringEnabled](self, "mirroringEnabled"), -[FigVideoCaptureConnectionConfiguration rotationDegrees](self, "rotationDegrees"), -[FigVideoCaptureConnectionConfiguration retainedBufferCount](self, "retainedBufferCount")];
  return v5;
}

@end