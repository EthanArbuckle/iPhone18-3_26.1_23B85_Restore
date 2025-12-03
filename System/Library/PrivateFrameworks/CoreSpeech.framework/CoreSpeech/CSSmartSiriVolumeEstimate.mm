@interface CSSmartSiriVolumeEstimate
- (CSSmartSiriVolumeEstimate)initWithCoder:(id)coder;
- (CSSmartSiriVolumeEstimate)initWithVolumeEstimate:(float)estimate debugLogFile:(id)file;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSSmartSiriVolumeEstimate

- (void)encodeWithCoder:(id)coder
{
  volumeEstimate = self->_volumeEstimate;
  coderCopy = coder;
  *&v5 = volumeEstimate;
  v6 = [NSNumber numberWithFloat:v5];
  [coderCopy encodeObject:v6 forKey:@"estimatedTTSVolume"];

  [coderCopy encodeObject:self->_debugLogPath forKey:@"debugLogPath"];
}

- (CSSmartSiriVolumeEstimate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CSSmartSiriVolumeEstimate;
  v5 = [(CSSmartSiriVolumeEstimate *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"estimatedTTSVolume"];
    [v6 floatValue];
    v5->_volumeEstimate = v7;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"debugLogPath"];
    debugLogPath = v5->_debugLogPath;
    v5->_debugLogPath = v8;
  }

  return v5;
}

- (CSSmartSiriVolumeEstimate)initWithVolumeEstimate:(float)estimate debugLogFile:(id)file
{
  fileCopy = file;
  v11.receiver = self;
  v11.super_class = CSSmartSiriVolumeEstimate;
  v8 = [(CSSmartSiriVolumeEstimate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_volumeEstimate = estimate;
    objc_storeStrong(&v8->_debugLogPath, file);
  }

  return v9;
}

@end