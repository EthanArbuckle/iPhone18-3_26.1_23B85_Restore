@interface FigCaptureCameraCalibrationDataSinkConfiguration
- (BOOL)isEqual:(id)equal;
- (FigCaptureCameraCalibrationDataSinkConfiguration)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)description;
@end

@implementation FigCaptureCameraCalibrationDataSinkConfiguration

- (FigCaptureCameraCalibrationDataSinkConfiguration)initWithXPCEncoding:(id)encoding
{
  v6.receiver = self;
  v6.super_class = FigCaptureCameraCalibrationDataSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 initWithXPCEncoding:?];
  if (v4)
  {
    *(&v4->super._deferredStartEnabled + 1) = xpc_dictionary_get_BOOL(encoding, "cameraCalibrationDataDiscardsLateData");
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v5.receiver = self;
  v5.super_class = FigCaptureCameraCalibrationDataSinkConfiguration;
  copyXPCEncoding = [(FigCaptureSinkConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_BOOL(copyXPCEncoding, "cameraCalibrationDataDiscardsLateData", [(FigCaptureCameraCalibrationDataSinkConfiguration *)self discardsLateCameraCalibrationData]);
  return copyXPCEncoding;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = FigCaptureCameraCalibrationDataSinkConfiguration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ discards:%d", -[FigCaptureSinkConfiguration description](&v3, sel_description), -[FigCaptureCameraCalibrationDataSinkConfiguration discardsLateCameraCalibrationData](self, "discardsLateCameraCalibrationData")];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = FigCaptureCameraCalibrationDataSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v6 copyWithZone:zone];
  [v4 setDiscardsLateCameraCalibrationData:{-[FigCaptureCameraCalibrationDataSinkConfiguration discardsLateCameraCalibrationData](self, "discardsLateCameraCalibrationData")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v8.receiver = self;
  v8.super_class = FigCaptureCameraCalibrationDataSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v8 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      discardsLateCameraCalibrationData = [(FigCaptureCameraCalibrationDataSinkConfiguration *)self discardsLateCameraCalibrationData];
      LOBYTE(v5) = discardsLateCameraCalibrationData ^ [equal discardsLateCameraCalibrationData] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

@end