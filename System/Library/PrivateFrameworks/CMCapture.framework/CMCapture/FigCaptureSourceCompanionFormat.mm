@interface FigCaptureSourceCompanionFormat
- (CGPoint)sensorCenterOffset;
- (FigCaptureSourceCompanionFormat)initWithCompanionFormatDictionary:(id)a3;
- (id)description;
- (void)dealloc;
@end

@implementation FigCaptureSourceCompanionFormat

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = FigCaptureSourceCompanionFormat;
  [(FigCaptureSourceCompanionFormat *)&v2 dealloc];
}

- (CGPoint)sensorCenterOffset
{
  objc_copyStruct(v4, &self->_sensorCenterOffset, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (FigCaptureSourceCompanionFormat)initWithCompanionFormatDictionary:(id)a3
{
  if (a3)
  {
    v25.receiver = self;
    v25.super_class = FigCaptureSourceCompanionFormat;
    v4 = [(FigCaptureSourceCompanionFormat *)&v25 init];
    if (v4)
    {
      v4->_formatIndex = [objc_msgSend(a3 objectForKeyedSubscript:{@"Index", "intValue"}];
      v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"Width", "intValue"}];
      v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"Height", "intValue"}];
      v4->_fesDimensions.width = v5;
      v4->_fesDimensions.height = v6;
      v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"FESInputCropWidth", "intValue"}];
      v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"FESInputCropHeight", "intValue"}];
      v4->_fesInputCropDimensions.width = v7;
      v4->_fesInputCropDimensions.height = v8;
      v9 = [objc_msgSend(a3 objectForKeyedSubscript:{@"CropWidthForFES", "intValue"}];
      v10 = [objc_msgSend(a3 objectForKeyedSubscript:{@"CropHeightForFES", "intValue"}];
      v4->_outputCropDimensionsWhenFesIsEnabled.width = v9;
      v4->_outputCropDimensionsWhenFesIsEnabled.height = v10;
      v11 = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798C988), "intValue"}];
      v12 = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798C980), "intValue"}];
      v4->_sensorDimensions.width = v11;
      v4->_sensorDimensions.height = v12;
      v13 = [objc_msgSend(a3 objectForKeyedSubscript:{@"SensorCropWidth", "intValue"}];
      v14 = [objc_msgSend(a3 objectForKeyedSubscript:{@"SensorCropHeight", "intValue"}];
      v4->_sensorCropDimensions.width = v13;
      v4->_sensorCropDimensions.height = v14;
      v15 = [objc_msgSend(a3 objectForKeyedSubscript:{@"SensorCenterOffsetX", "intValue"}];
      v16 = [objc_msgSend(a3 objectForKeyedSubscript:{@"SensorCenterOffsetY", "intValue"}];
      v4->_sensorCenterOffset.x = v15;
      v4->_sensorCenterOffset.y = v16;
      v17 = [objc_msgSend(a3 objectForKeyedSubscript:{@"PostGDCCropWidth", "intValue"}];
      v18 = [objc_msgSend(a3 objectForKeyedSubscript:{@"PostGDCCropHeight", "intValue"}];
      v4->_postGDCCropDimensions.width = v17;
      v4->_postGDCCropDimensions.height = v18;
      v4->_sifrEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"SIFREnabled", "BOOLValue"}];
      v19 = [objc_msgSend(a3 objectForKeyedSubscript:{@"HighQualitySensorWidth", "intValue"}];
      v20 = [objc_msgSend(a3 objectForKeyedSubscript:{@"HighQualitySensorHeight", "intValue"}];
      v4->_highQualitySensorDimensions.width = v19;
      v4->_highQualitySensorDimensions.height = v20;
      v21 = [objc_msgSend(a3 objectForKeyedSubscript:{@"GeometricDistortionCorrectedNativeWidth", "intValue"}];
      v22 = [objc_msgSend(a3 objectForKeyedSubscript:{@"GeometricDistortionCorrectedNativeHeight", "intValue"}];
      v4->_geometricDistortionCorrectedNativeDimensions.width = v21;
      v4->_geometricDistortionCorrectedNativeDimensions.height = v22;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"StereoVideoAEMaxGain", "floatValue"}];
      v4->_stereoVideoAEMaxGain = v23;
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p> [%d]:%dx%d SIFR:%d FESInputCropDim:%dx%d outputCropDimForFES:%dx%d sensorCropDim:%dx%d HighQualitySensorDim:%dx%d", NSStringFromClass(v4), self, self->_formatIndex, self->_fesDimensions.width, self->_fesDimensions.height, self->_sifrEnabled, self->_fesInputCropDimensions.width, self->_fesInputCropDimensions.height, self->_outputCropDimensionsWhenFesIsEnabled.width, self->_outputCropDimensionsWhenFesIsEnabled.height, self->_sensorCropDimensions.width, self->_sensorCropDimensions.height, self->_highQualitySensorDimensions.width, self->_highQualitySensorDimensions.height];
}

@end