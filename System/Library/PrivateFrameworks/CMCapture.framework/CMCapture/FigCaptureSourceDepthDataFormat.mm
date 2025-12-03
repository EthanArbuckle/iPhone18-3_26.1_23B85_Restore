@interface FigCaptureSourceDepthDataFormat
- (BOOL)RGBIRStereoFusionSupported;
- (BOOL)gainMapSupported;
- (BOOL)isPrivate;
- (BOOL)isStillImageOnlyDepthData;
- (float)fieldOfView;
- (float)sensorOrientation;
- (id)copyWithNewPixelFormat:(unsigned int)format;
- (id)highResStillImageDimensions;
@end

@implementation FigCaptureSourceDepthDataFormat

- (BOOL)isPrivate
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"Private"];

  return [v2 BOOLValue];
}

- (float)sensorOrientation
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"SensorOrientation"];
  if (!v2)
  {
    return NAN;
  }

  [v2 floatValue];
  return result;
}

- (BOOL)RGBIRStereoFusionSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"RGBIRStereoFusionSupported"];

  return [v2 BOOLValue];
}

- (id)highResStillImageDimensions
{
  v3 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"HighResStillWidth", "intValue"}];
  v4 = [-[NSDictionary objectForKeyedSubscript:](self->super._formatDictionary objectForKeyedSubscript:{@"HighResStillHeight", "intValue"}];
  v6 = [[FigCaptureSourceFormatDimensions alloc] initWithDimensions:v3 | (v4 << 32) deferredPhotoProxyDimensions:v3 | (v4 << 32) isPrivate:0 flavor:0 maxUpscalingDimensions:0];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
}

- (BOOL)isStillImageOnlyDepthData
{
  dimensions = [(FigCaptureSourceFormat *)self dimensions];
  var0 = dimensions.var0;
  v5 = HIDWORD(*&dimensions);
  v6 = [-[FigCaptureSourceDepthDataFormat highResStillImageDimensions](self "highResStillImageDimensions")];
  return (var0 < 1 || v5 < 1) && v6 != 0;
}

- (id)copyWithNewPixelFormat:(unsigned int)format
{
  if (!self->super._formatDictionary)
  {
    return 0;
  }

  v3 = *&format;
  v5 = [FigCaptureSourceDepthDataFormat alloc];
  formatDictionary = self->super._formatDictionary;

  return [(FigCaptureSourceFormat *)v5 initWithFigCaptureStreamFormatDictionary:formatDictionary pixelFormatOverride:v3];
}

- (float)fieldOfView
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:*off_1E798D3E8];

  [v2 floatValue];
  return result;
}

- (BOOL)gainMapSupported
{
  v2 = [(NSDictionary *)self->super._formatDictionary objectForKeyedSubscript:@"GainMapSupported"];

  return [v2 BOOLValue];
}

@end