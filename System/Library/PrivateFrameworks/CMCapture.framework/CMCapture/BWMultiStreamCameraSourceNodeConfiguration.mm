@interface BWMultiStreamCameraSourceNodeConfiguration
- ($273FE01EDA4852E8FFB0AF95686D18CC)externalSyncFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)lockedFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)maxFrameRate;
- ($273FE01EDA4852E8FFB0AF95686D18CC)minFrameRate;
- (BWMultiStreamCameraSourceNodeConfiguration)init;
- (CGPoint)sensorCenterOffset;
- (CGSize)sensorOverscan;
- (CGSize)visOverscan;
- (void)dealloc;
- (void)setMaxExposureDurationClientOverride:(id *)override;
- (void)setMaxExposureDurationFrameworkOverride:(id *)override;
@end

@implementation BWMultiStreamCameraSourceNodeConfiguration

- (BWMultiStreamCameraSourceNodeConfiguration)init
{
  v3.receiver = self;
  v3.super_class = BWMultiStreamCameraSourceNodeConfiguration;
  result = [(BWMultiStreamCameraSourceNodeConfiguration *)&v3 init];
  if (result)
  {
    result->_formatIndex = -1;
    result->_fastSwitchingMainFormatIndex = -1;
  }

  return result;
}

- (CGSize)sensorOverscan
{
  width = self->_sensorOverscan.width;
  height = self->_sensorOverscan.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)sensorCenterOffset
{
  x = self->_sensorCenterOffset.x;
  y = self->_sensorCenterOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)minFrameRate
{
  tag = self->_minFrameRate.tag;
  u = self->_minFrameRate.u;
  result.var0 = u;
  result.var1 = tag;
  return result;
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)lockedFrameRate
{
  tag = self->_lockedFrameRate.tag;
  u = self->_lockedFrameRate.u;
  result.var0 = u;
  result.var1 = tag;
  return result;
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)externalSyncFrameRate
{
  tag = self->_externalSyncFrameRate.tag;
  u = self->_externalSyncFrameRate.u;
  result.var0 = u;
  result.var1 = tag;
  return result;
}

- ($273FE01EDA4852E8FFB0AF95686D18CC)maxFrameRate
{
  tag = self->_maxFrameRate.tag;
  u = self->_maxFrameRate.u;
  result.var0 = u;
  result.var1 = tag;
  return result;
}

- (CGSize)visOverscan
{
  width = self->_visOverscan.width;
  height = self->_visOverscan.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMultiStreamCameraSourceNodeConfiguration;
  [(BWMultiStreamCameraSourceNodeConfiguration *)&v3 dealloc];
}

- (void)setMaxExposureDurationClientOverride:(id *)override
{
  v3 = *&override->var0;
  self->_maxExposureDurationClientOverride.epoch = override->var3;
  *&self->_maxExposureDurationClientOverride.value = v3;
}

- (void)setMaxExposureDurationFrameworkOverride:(id *)override
{
  v3 = *&override->var0;
  self->_maxExposureDurationFrameworkOverride.epoch = override->var3;
  *&self->_maxExposureDurationFrameworkOverride.value = v3;
}

@end