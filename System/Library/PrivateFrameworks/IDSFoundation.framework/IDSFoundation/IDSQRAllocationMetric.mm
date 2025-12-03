@interface IDSQRAllocationMetric
- (IDSQRAllocationMetric)initWithDuration:(unint64_t)duration result:(unsigned int)result hasRecipientAccepted:(unsigned int)accepted payloadSize:(unsigned int)size topic:(id)topic service:(id)service;
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

  topic = [(IDSQRAllocationMetric *)self topic];
  if (topic)
  {
    CFDictionarySetValue(v3, @"topic", topic);
  }

  service = [(IDSQRAllocationMetric *)self service];
  if (service)
  {
    CFDictionarySetValue(v3, @"service", service);
  }

  return v3;
}

- (IDSQRAllocationMetric)initWithDuration:(unint64_t)duration result:(unsigned int)result hasRecipientAccepted:(unsigned int)accepted payloadSize:(unsigned int)size topic:(id)topic service:(id)service
{
  topicCopy = topic;
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = IDSQRAllocationMetric;
  v17 = [(IDSQRAllocationMetric *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_duration = duration;
    v17->_result = result;
    v17->_hasRecipientAccepted = accepted;
    v17->_payloadSize = size;
    objc_storeStrong(&v17->_topic, topic);
    objc_storeStrong(&v18->_service, service);
  }

  return v18;
}

@end