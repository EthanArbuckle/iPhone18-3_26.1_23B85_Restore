@interface IDSWiProxDidConnectToPeerMetric
- (IDSWiProxDidConnectToPeerMetric)initWithDuration:(unint64_t)a3 resultCode:(unint64_t)a4;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSWiProxDidConnectToPeerMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSWiProxDidConnectToPeerMetric duration](self, "duration")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"duration", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSWiProxDidConnectToPeerMetric resultCode](self, "resultCode")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"resultCode", v5);
  }

  return v3;
}

- (IDSWiProxDidConnectToPeerMetric)initWithDuration:(unint64_t)a3 resultCode:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = IDSWiProxDidConnectToPeerMetric;
  result = [(IDSWiProxDidConnectToPeerMetric *)&v7 init];
  if (result)
  {
    result->_duration = a3;
    result->_resultCode = a4;
  }

  return result;
}

@end