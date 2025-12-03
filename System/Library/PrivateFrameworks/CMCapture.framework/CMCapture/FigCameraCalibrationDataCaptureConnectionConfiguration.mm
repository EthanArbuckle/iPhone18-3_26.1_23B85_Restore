@interface FigCameraCalibrationDataCaptureConnectionConfiguration
- (BOOL)isEqual:(id)equal;
- (FigCameraCalibrationDataCaptureConnectionConfiguration)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)description;
@end

@implementation FigCameraCalibrationDataCaptureConnectionConfiguration

- (FigCameraCalibrationDataCaptureConnectionConfiguration)initWithXPCEncoding:(id)encoding
{
  if (encoding)
  {
    v6.receiver = self;
    v6.super_class = FigCameraCalibrationDataCaptureConnectionConfiguration;
    v4 = [(FigCaptureConnectionConfiguration *)&v6 initWithXPCEncoding:?];
    if (v4)
    {
      *(&v4->super._enabled + 1) = xpc_dictionary_get_BOOL(encoding, "mirroringEnabled");
      *(&v4->super._enabled + 1) = xpc_dictionary_get_int64(encoding, "rotationDegrees");
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v5.receiver = self;
  v5.super_class = FigCameraCalibrationDataCaptureConnectionConfiguration;
  copyXPCEncoding = [(FigCaptureConnectionConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_BOOL(copyXPCEncoding, "mirroringEnabled", [(FigCameraCalibrationDataCaptureConnectionConfiguration *)self mirroringEnabled]);
  xpc_dictionary_set_int64(copyXPCEncoding, "rotationDegrees", [(FigCameraCalibrationDataCaptureConnectionConfiguration *)self rotationDegrees]);
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

  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"CaCC %p: <%@>%@ -> <%@>", self, -[FigCaptureConnectionConfiguration sourceConfiguration](self, "sourceConfiguration"), v4, -[FigCaptureConnectionConfiguration sinkConfiguration](self, "sinkConfiguration")];
  [v5 appendFormat:@", E:%d, M:%d, R:%d", -[FigCaptureConnectionConfiguration enabled](self, "enabled"), -[FigCameraCalibrationDataCaptureConnectionConfiguration mirroringEnabled](self, "mirroringEnabled"), -[FigCameraCalibrationDataCaptureConnectionConfiguration rotationDegrees](self, "rotationDegrees")];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = FigCameraCalibrationDataCaptureConnectionConfiguration;
  v4 = [(FigCaptureConnectionConfiguration *)&v6 copyWithZone:zone];
  [v4 setMirroringEnabled:{-[FigCameraCalibrationDataCaptureConnectionConfiguration mirroringEnabled](self, "mirroringEnabled")}];
  [v4 setRotationDegrees:{-[FigCameraCalibrationDataCaptureConnectionConfiguration rotationDegrees](self, "rotationDegrees")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v9.receiver = self;
  v9.super_class = FigCameraCalibrationDataCaptureConnectionConfiguration;
  v5 = [(FigCaptureConnectionConfiguration *)&v9 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = -[FigCameraCalibrationDataCaptureConnectionConfiguration mirroringEnabled](self, "mirroringEnabled"), v6 == [equal mirroringEnabled]))
    {
      rotationDegrees = [(FigCameraCalibrationDataCaptureConnectionConfiguration *)self rotationDegrees];
      LOBYTE(v5) = rotationDegrees == [equal rotationDegrees];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end