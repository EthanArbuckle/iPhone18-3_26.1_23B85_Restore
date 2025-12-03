@interface DTProcessorTraceTapConfig
- (BOOL)decodeOnSave;
- (BOOL)enableProductionMode;
- (BOOL)enableThrottlingMode;
- (DTProcessorTraceTapConfig)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)targetPid;
- (int64_t)copyImagesMode;
- (int64_t)recordingMode;
- (int64_t)target;
- (void)setCopyImagesMode:(int64_t)mode;
- (void)setRecordingMode:(int64_t)mode;
- (void)setTarget:(int64_t)target;
@end

@implementation DTProcessorTraceTapConfig

- (DTProcessorTraceTapConfig)init
{
  v5.receiver = self;
  v5.super_class = DTProcessorTraceTapConfig;
  v2 = [(DTTapConfig *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] setWithObject:@"XNU"];
    [(DTProcessorTraceTapConfig *)v2 setTargetSystems:v3];

    [(DTProcessorTraceTapConfig *)v2 setFetchChunkSize:&unk_285A36B28];
    [(DTProcessorTraceTapConfig *)v2 setCopyImagesMode:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = DTProcessorTraceTapConfig;
  v4 = [(DTTapConfig *)&v8 copyWithZone:zone];
  v5 = [self->_tapHandler copy];
  v6 = v4[10];
  v4[10] = v5;

  return v4;
}

- (int64_t)target
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"tt"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setTarget:(int64_t)target
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:target];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"tt"];
}

- (int)targetPid
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"tp"];
  intValue = [v2 intValue];

  return intValue;
}

- (BOOL)enableProductionMode
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"pm"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)enableThrottlingMode
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"tm"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)recordingMode
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"rm"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setRecordingMode:(int64_t)mode
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"rm"];
}

- (int64_t)copyImagesMode
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"ci"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setCopyImagesMode:(int64_t)mode
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"ci"];
}

- (BOOL)decodeOnSave
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"de"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end