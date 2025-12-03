@interface IDSLocalMessageRTTMetric
- (IDSLocalMessageRTTMetric)initWithService:(id)service isToDefaultPairedDevice:(BOOL)device messageSize:(unint64_t)size linkType:(unint64_t)type deliveryError:(unint64_t)error RTT:(unint64_t)t priority:(unint64_t)priority;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSLocalMessageRTTMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  service = [(IDSLocalMessageRTTMetric *)self service];
  if (service)
  {
    CFDictionarySetValue(v3, @"service", service);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSLocalMessageRTTMetric isToDefaultPairedDevice](self, "isToDefaultPairedDevice")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"isToDefaultPairedDevice", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalMessageRTTMetric messageSize](self, "messageSize")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"messageSize", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalMessageRTTMetric linkType](self, "linkType")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"linkType", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalMessageRTTMetric deliveryError](self, "deliveryError")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"deliveryError", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalMessageRTTMetric RTT](self, "RTT")}];
  if (v9)
  {
    CFDictionarySetValue(v3, @"RTT", v9);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalMessageRTTMetric priority](self, "priority")}];
  if (v10)
  {
    CFDictionarySetValue(v3, @"priority", v10);
  }

  return v3;
}

- (IDSLocalMessageRTTMetric)initWithService:(id)service isToDefaultPairedDevice:(BOOL)device messageSize:(unint64_t)size linkType:(unint64_t)type deliveryError:(unint64_t)error RTT:(unint64_t)t priority:(unint64_t)priority
{
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = IDSLocalMessageRTTMetric;
  v17 = [(IDSLocalMessageRTTMetric *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_service, service);
    v18->_isToDefaultPairedDevice = device;
    v18->_messageSize = size;
    v18->_linkType = type;
    v18->_deliveryError = error;
    v18->_RTT = t;
    v18->_priority = priority;
  }

  return v18;
}

@end