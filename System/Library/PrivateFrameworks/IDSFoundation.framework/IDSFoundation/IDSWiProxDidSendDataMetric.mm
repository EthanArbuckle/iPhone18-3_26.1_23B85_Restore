@interface IDSWiProxDidSendDataMetric
- (IDSWiProxDidSendDataMetric)initWithResultCode:(unint64_t)code;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSWiProxDidSendDataMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSWiProxDidSendDataMetric resultCode](self, "resultCode")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"resultCode", v4);
  }

  return v3;
}

- (IDSWiProxDidSendDataMetric)initWithResultCode:(unint64_t)code
{
  v5.receiver = self;
  v5.super_class = IDSWiProxDidSendDataMetric;
  result = [(IDSWiProxDidSendDataMetric *)&v5 init];
  if (result)
  {
    result->_resultCode = code;
  }

  return result;
}

@end