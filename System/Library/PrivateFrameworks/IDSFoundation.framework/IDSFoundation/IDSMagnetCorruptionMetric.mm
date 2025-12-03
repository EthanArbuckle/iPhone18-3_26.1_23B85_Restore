@interface IDSMagnetCorruptionMetric
- (IDSMagnetCorruptionMetric)initWithCorrectFramesSinceLastCorruption:(unint64_t)corruption correctRawBytesSinceLastCorruption:(unint64_t)lastCorruption discardedRawBytes:(unint64_t)bytes recoveryTimeInMs:(unint64_t)ms linkType:(unint64_t)type;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSMagnetCorruptionMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSMagnetCorruptionMetric correctFramesSinceLastCorruption](self, "correctFramesSinceLastCorruption")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"correctFramesSinceLastCorruption", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSMagnetCorruptionMetric correctRawBytesSinceLastCorruption](self, "correctRawBytesSinceLastCorruption")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"correctRawBytesSinceLastCorruption", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSMagnetCorruptionMetric discardedRawBytes](self, "discardedRawBytes")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"discardedRawBytes", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSMagnetCorruptionMetric recoveryTimeInMs](self, "recoveryTimeInMs")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"recoveryTimeInMs", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSMagnetCorruptionMetric linkType](self, "linkType")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"linkType", v8);
  }

  return v3;
}

- (IDSMagnetCorruptionMetric)initWithCorrectFramesSinceLastCorruption:(unint64_t)corruption correctRawBytesSinceLastCorruption:(unint64_t)lastCorruption discardedRawBytes:(unint64_t)bytes recoveryTimeInMs:(unint64_t)ms linkType:(unint64_t)type
{
  v13.receiver = self;
  v13.super_class = IDSMagnetCorruptionMetric;
  result = [(IDSMagnetCorruptionMetric *)&v13 init];
  if (result)
  {
    result->_correctFramesSinceLastCorruption = corruption;
    result->_correctRawBytesSinceLastCorruption = lastCorruption;
    result->_discardedRawBytes = bytes;
    result->_recoveryTimeInMs = ms;
    result->_linkType = type;
  }

  return result;
}

@end