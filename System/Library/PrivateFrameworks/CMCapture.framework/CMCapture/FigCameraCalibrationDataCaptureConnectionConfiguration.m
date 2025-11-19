@interface FigCameraCalibrationDataCaptureConnectionConfiguration
- (BOOL)isEqual:(id)a3;
- (FigCameraCalibrationDataCaptureConnectionConfiguration)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)description;
@end

@implementation FigCameraCalibrationDataCaptureConnectionConfiguration

- (FigCameraCalibrationDataCaptureConnectionConfiguration)initWithXPCEncoding:(id)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = FigCameraCalibrationDataCaptureConnectionConfiguration;
    v4 = [(FigCaptureConnectionConfiguration *)&v6 initWithXPCEncoding:?];
    if (v4)
    {
      *(&v4->super._enabled + 1) = xpc_dictionary_get_BOOL(a3, "mirroringEnabled");
      *(&v4->super._enabled + 1) = xpc_dictionary_get_int64(a3, "rotationDegrees");
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
  v3 = [(FigCaptureConnectionConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_BOOL(v3, "mirroringEnabled", [(FigCameraCalibrationDataCaptureConnectionConfiguration *)self mirroringEnabled]);
  xpc_dictionary_set_int64(v3, "rotationDegrees", [(FigCameraCalibrationDataCaptureConnectionConfiguration *)self rotationDegrees]);
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

  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"CaCC %p: <%@>%@ -> <%@>", self, -[FigCaptureConnectionConfiguration sourceConfiguration](self, "sourceConfiguration"), v4, -[FigCaptureConnectionConfiguration sinkConfiguration](self, "sinkConfiguration")];
  [v5 appendFormat:@", E:%d, M:%d, R:%d", -[FigCaptureConnectionConfiguration enabled](self, "enabled"), -[FigCameraCalibrationDataCaptureConnectionConfiguration mirroringEnabled](self, "mirroringEnabled"), -[FigCameraCalibrationDataCaptureConnectionConfiguration rotationDegrees](self, "rotationDegrees")];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = FigCameraCalibrationDataCaptureConnectionConfiguration;
  v4 = [(FigCaptureConnectionConfiguration *)&v6 copyWithZone:a3];
  [v4 setMirroringEnabled:{-[FigCameraCalibrationDataCaptureConnectionConfiguration mirroringEnabled](self, "mirroringEnabled")}];
  [v4 setRotationDegrees:{-[FigCameraCalibrationDataCaptureConnectionConfiguration rotationDegrees](self, "rotationDegrees")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v9.receiver = self;
  v9.super_class = FigCameraCalibrationDataCaptureConnectionConfiguration;
  v5 = [(FigCaptureConnectionConfiguration *)&v9 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = -[FigCameraCalibrationDataCaptureConnectionConfiguration mirroringEnabled](self, "mirroringEnabled"), v6 == [a3 mirroringEnabled]))
    {
      v7 = [(FigCameraCalibrationDataCaptureConnectionConfiguration *)self rotationDegrees];
      LOBYTE(v5) = v7 == [a3 rotationDegrees];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end