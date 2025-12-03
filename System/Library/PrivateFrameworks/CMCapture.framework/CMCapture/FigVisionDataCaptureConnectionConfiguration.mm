@interface FigVisionDataCaptureConnectionConfiguration
- (FigVisionDataCaptureConnectionConfiguration)init;
- (id)description;
@end

@implementation FigVisionDataCaptureConnectionConfiguration

- (FigVisionDataCaptureConnectionConfiguration)init
{
  v5.receiver = self;
  v5.super_class = FigVisionDataCaptureConnectionConfiguration;
  v2 = [(FigCaptureConnectionConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FigVideoCaptureConnectionConfiguration *)v2 setOutputFormat:1278226488];
    [(FigVideoCaptureConnectionConfiguration *)v3 setOutputWidth:128];
    [(FigVideoCaptureConnectionConfiguration *)v3 setOutputHeight:128];
  }

  return v3;
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

  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"VsnC %p: <%@>%@ -> <%@>", self, -[FigCaptureConnectionConfiguration sourceConfiguration](self, "sourceConfiguration"), v4, -[FigCaptureConnectionConfiguration sinkConfiguration](self, "sinkConfiguration")];
  [(FigVideoCaptureConnectionConfiguration *)self outputFormat];
  [v5 appendFormat:@", %@/%dx%d, E:%d", BWStringForOSType(), -[FigVideoCaptureConnectionConfiguration outputWidth](self, "outputWidth"), -[FigVideoCaptureConnectionConfiguration outputHeight](self, "outputHeight"), -[FigCaptureConnectionConfiguration enabled](self, "enabled")];
  return v5;
}

@end