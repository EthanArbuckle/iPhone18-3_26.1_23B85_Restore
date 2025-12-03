@interface FigCaptureStillImageProcessingSettings
- (FigCaptureStillImageProcessingSettings)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FigCaptureStillImageProcessingSettings

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureStillImageProcessingSettings;
  [(FigCaptureStillImageProcessingSettings *)&v3 dealloc];
}

- (FigCaptureStillImageProcessingSettings)initWithCoder:(id)coder
{
  v23.receiver = self;
  v23.super_class = FigCaptureStillImageProcessingSettings;
  v4 = [(FigCaptureStillImageProcessingSettings *)&v23 init];
  if (v4)
  {
    [coder decodeFloatForKey:@"uiZoomFactor"];
    v4->_uiZoomFactor = v5;
    v6 = [coder decodeIntForKey:@"sensorRawPixelFormat"];
    if (v6)
    {
      v4->_sensorRawPixelFormat = v6;
      v7 = [coder decodeInt32ForKey:@"sensorRawDimensionWidth"];
      v8 = [coder decodeInt32ForKey:@"sensorRawDimensionHeight"];
      v4->_sensorRawDimensions.width = v7;
      v4->_sensorRawDimensions.height = v8;
      v9 = [coder decodeInt32ForKey:@"ultraHighResSensorRawDimensionWidth"];
      v10 = [coder decodeInt32ForKey:@"ultraHighResSensorRawDimensionHeight"];
      v4->_ultraHighResSensorRawDimensions.width = v9;
      v4->_ultraHighResSensorRawDimensions.height = v10;
    }

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v4->_cameraInfoByPortType = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, v13, v14, v15, v16, v17, objc_opt_class(), 0), @"cameraInfoByPortType", "copy"}];
    if ([coder error] || (v18 = MEMORY[0x1E695DFD8], v19 = objc_opt_class(), v20 = objc_opt_class(), v21 = objc_opt_class(), v4->_moduleCalibrationByPortType = objc_msgSend(objc_msgSend(coder, "decodeObjectOfClasses:forKey:", objc_msgSend(v18, "setWithObjects:", v19, v20, v21, objc_opt_class(), 0), @"moduleCalibrationByPortType"), "copy"), objc_msgSend(coder, "error")))
    {

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  *&v3 = self->_uiZoomFactor;
  [coder encodeFloat:@"uiZoomFactor" forKey:v3];
  sensorRawPixelFormat = self->_sensorRawPixelFormat;
  if (sensorRawPixelFormat)
  {
    [coder encodeInt:sensorRawPixelFormat forKey:@"sensorRawPixelFormat"];
    [coder encodeInt32:self->_sensorRawDimensions.width forKey:@"sensorRawDimensionWidth"];
    [coder encodeInt32:self->_sensorRawDimensions.height forKey:@"sensorRawDimensionHeight"];
    [coder encodeInt32:self->_ultraHighResSensorRawDimensions.width forKey:@"ultraHighResSensorRawDimensionWidth"];
    [coder encodeInt32:self->_ultraHighResSensorRawDimensions.height forKey:@"ultraHighResSensorRawDimensionHeight"];
  }

  [coder encodeObject:self->_cameraInfoByPortType forKey:@"cameraInfoByPortType"];
  moduleCalibrationByPortType = self->_moduleCalibrationByPortType;

  [coder encodeObject:moduleCalibrationByPortType forKey:@"moduleCalibrationByPortType"];
}

@end