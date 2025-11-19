@interface IDSWiProxConnectionFailedMetric
- (IDSWiProxConnectionFailedMetric)initWithDuration:(unint64_t)a3;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSWiProxConnectionFailedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSWiProxConnectionFailedMetric duration](self, "duration")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"duration", v4);
  }

  return v3;
}

- (IDSWiProxConnectionFailedMetric)initWithDuration:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = IDSWiProxConnectionFailedMetric;
  result = [(IDSWiProxConnectionFailedMetric *)&v5 init];
  if (result)
  {
    result->_duration = a3;
  }

  return result;
}

@end