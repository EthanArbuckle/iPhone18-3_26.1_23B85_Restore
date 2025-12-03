@interface IDSWiProxDidDisconnectFromPeerMetric
- (IDSWiProxDidDisconnectFromPeerMetric)initWithDuration:(unint64_t)duration resultCode:(unint64_t)code;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSWiProxDidDisconnectFromPeerMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSWiProxDidDisconnectFromPeerMetric duration](self, "duration")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"duration", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSWiProxDidDisconnectFromPeerMetric resultCode](self, "resultCode")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"resultCode", v5);
  }

  return v3;
}

- (IDSWiProxDidDisconnectFromPeerMetric)initWithDuration:(unint64_t)duration resultCode:(unint64_t)code
{
  v7.receiver = self;
  v7.super_class = IDSWiProxDidDisconnectFromPeerMetric;
  result = [(IDSWiProxDidDisconnectFromPeerMetric *)&v7 init];
  if (result)
  {
    result->_duration = duration;
    result->_resultCode = code;
  }

  return result;
}

@end