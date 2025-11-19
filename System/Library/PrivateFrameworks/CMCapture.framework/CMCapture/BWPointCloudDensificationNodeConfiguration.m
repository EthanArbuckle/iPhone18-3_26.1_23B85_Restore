@interface BWPointCloudDensificationNodeConfiguration
- (BWPointCloudDensificationNodeConfiguration)initWithRGBSensorConfiguration:(id)a3 timeOfFlightSensorConfiguration:(id)a4 rgbCameraHorizontalSensorBinningFactor:(int)a5 rgbCameraVerticalSensorBinningFactor:(int)a6 filteringEnabled:(BOOL)a7 depthPixelFormat:(unsigned int)a8 depthOutputDimensions:(id)a9 timeOfFlightCameraType:(int)a10;
- (void)dealloc;
@end

@implementation BWPointCloudDensificationNodeConfiguration

- (BWPointCloudDensificationNodeConfiguration)initWithRGBSensorConfiguration:(id)a3 timeOfFlightSensorConfiguration:(id)a4 rgbCameraHorizontalSensorBinningFactor:(int)a5 rgbCameraVerticalSensorBinningFactor:(int)a6 filteringEnabled:(BOOL)a7 depthPixelFormat:(unsigned int)a8 depthOutputDimensions:(id)a9 timeOfFlightCameraType:(int)a10
{
  v18.receiver = self;
  v18.super_class = BWPointCloudDensificationNodeConfiguration;
  v16 = [(BWPointCloudDensificationNodeConfiguration *)&v18 init];
  if (v16)
  {
    v16->_rgbSensorConfiguration = a3;
    v16->_timeOfFlightSensorConfiguration = a4;
    v16->_rgbCameraHorizontalSensorBinningFactor = a5;
    v16->_rgbCameraVerticalSensorBinningFactor = a6;
    v16->_filteringEnabled = a7;
    v16->_depthPixelFormat = a8;
    v16->_depthOutputDimensions = a9;
    v16->_timeOfFlightCameraType = a10;
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