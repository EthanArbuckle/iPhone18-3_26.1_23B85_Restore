@interface IDSMagnetDataCorruptionRecoveryTimeInMsMetric
- (IDSMagnetDataCorruptionRecoveryTimeInMsMetric)initWithRecoveryTime:(int64_t)time;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSMagnetDataCorruptionRecoveryTimeInMsMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IDSMagnetDataCorruptionRecoveryTimeInMsMetric recoveryTime](self, "recoveryTime")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"recoveryTime", v4);
  }

  return v3;
}

- (IDSMagnetDataCorruptionRecoveryTimeInMsMetric)initWithRecoveryTime:(int64_t)time
{
  v5.receiver = self;
  v5.super_class = IDSMagnetDataCorruptionRecoveryTimeInMsMetric;
  result = [(IDSMagnetDataCorruptionRecoveryTimeInMsMetric *)&v5 init];
  if (result)
  {
    result->_recoveryTime = time;
  }

  return result;
}

@end