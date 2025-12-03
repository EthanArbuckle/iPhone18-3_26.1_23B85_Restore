@interface BWPointCloudDensificationNodeConfiguration
- (BWPointCloudDensificationNodeConfiguration)initWithRGBSensorConfiguration:(id)configuration timeOfFlightSensorConfiguration:(id)sensorConfiguration rgbCameraHorizontalSensorBinningFactor:(int)factor rgbCameraVerticalSensorBinningFactor:(int)binningFactor filteringEnabled:(BOOL)enabled depthPixelFormat:(unsigned int)format depthOutputDimensions:(id)dimensions timeOfFlightCameraType:(int)self0;
- (void)dealloc;
@end

@implementation BWPointCloudDensificationNodeConfiguration

- (BWPointCloudDensificationNodeConfiguration)initWithRGBSensorConfiguration:(id)configuration timeOfFlightSensorConfiguration:(id)sensorConfiguration rgbCameraHorizontalSensorBinningFactor:(int)factor rgbCameraVerticalSensorBinningFactor:(int)binningFactor filteringEnabled:(BOOL)enabled depthPixelFormat:(unsigned int)format depthOutputDimensions:(id)dimensions timeOfFlightCameraType:(int)self0
{
  v18.receiver = self;
  v18.super_class = BWPointCloudDensificationNodeConfiguration;
  v16 = [(BWPointCloudDensificationNodeConfiguration *)&v18 init];
  if (v16)
  {
    v16->_rgbSensorConfiguration = configuration;
    v16->_timeOfFlightSensorConfiguration = sensorConfiguration;
    v16->_rgbCameraHorizontalSensorBinningFactor = factor;
    v16->_rgbCameraVerticalSensorBinningFactor = binningFactor;
    v16->_filteringEnabled = enabled;
    v16->_depthPixelFormat = format;
    v16->_depthOutputDimensions = dimensions;
    v16->_timeOfFlightCameraType = type;
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPointCloudDensificationNodeConfiguration;
  [(BWPointCloudDensificationNodeConfiguration *)&v3 dealloc];
}

@end