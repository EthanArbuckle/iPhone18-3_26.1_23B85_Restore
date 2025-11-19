@interface CSSmartSiriVolumeEstimate
- (CSSmartSiriVolumeEstimate)initWithCoder:(id)a3;
- (CSSmartSiriVolumeEstimate)initWithVolumeEstimate:(float)a3 debugLogFile:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSSmartSiriVolumeEstimate

- (void)encodeWithCoder:(id)a3
{
  volumeEstimate = self->_volumeEstimate;
  v7 = a3;
  *&v5 = volumeEstimate;
  v6 = [NSNumber numberWithFloat:v5];
  [v7 encodeObject:v6 forKey:@"estimatedTTSVolume"];

  [v7 encodeObject:self->_debugLogPath forKey:@"debugLogPath"];
}

- (CSSmartSiriVolumeEstimate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CSSmartSiriVolumeEstimate;
  v5 = [(CSSmartSiriVolumeEstimate *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedTTSVolume"];
    [v6 floatValue];
    v5->_volumeEstimate = v7;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"debugLogPath"];
    debugLogPath = v5->_debugLogPath;
    v5->_debugLogPath = v8;
  }

  return v5;
}

- (CSSmartSiriVolumeEstimate)initWithVolumeEstimate:(float)a3 debugLogFile:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CSSmartSiriVolumeEstimate;
  v8 = [(CSSmartSiriVolumeEstimate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_volumeEstimate = a3;
    objc_storeStrong(&v8->_debugLogPath, a4);
  }

  return v9;
}

@end