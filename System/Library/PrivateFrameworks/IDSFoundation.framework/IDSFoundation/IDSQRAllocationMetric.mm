@interface IDSQRAllocationMetric
- (IDSQRAllocationMetric)initWithDuration:(unint64_t)a3 result:(unsigned int)a4 hasRecipientAccepted:(unsigned int)a5 payloadSize:(unsigned int)a6 topic:(id)a7 service:(id)a8;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSQRAllocationMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSQRAllocationMetric duration](self, "duration")}];
  if (v4)
  {
    CFDictionarySetValue(v3, @"duration", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSQRAllocationMetric result](self, "result")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"result", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSQRAllocationMetric hasRecipientAccepted](self, "hasRecipientAccepted")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"hasRecipientAccepted", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSQRAllocationMetric payloadSize](self, "payloadSize")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"payloadSize", v7);
  }

  v8 = [(IDSQRAllocationMetric *)self topic];
  if (v8)
  {
    CFDictionarySetValue(v3, @"topic", v8);
  }

  v9 = [(IDSQRAllocationMetric *)self service];
  if (v9)
  {
    CFDictionarySetValue(v3, @"service", v9);
  }

  return v3;
}

- (IDSQRAllocationMetric)initWithDuration:(unint64_t)a3 result:(unsigned int)a4 hasRecipientAccepted:(unsigned int)a5 payloadSize:(unsigned int)a6 topic:(id)a7 service:(id)a8
{
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = IDSQRAllocationMetric;
  v17 = [(IDSQRAllocationMetric *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_duration = a3;
    v17->_result = a4;
    v17->_hasRecipientAccepted = a5;
    v17->_payloadSize = a6;
    objc_storeStrong(&v17->_topic, a7);
    objc_storeStrong(&v18->_service, a8);
  }

  return v18;
}

@end