@interface IDSLocalDeliveryMessageReceivedMetric
- (IDSLocalDeliveryMessageReceivedMetric)initWithService:(id)service isFromDefaultPairedDevice:(BOOL)device messageSize:(unint64_t)size linkType:(unint64_t)type priority:(unint64_t)priority;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSLocalDeliveryMessageReceivedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  service = [(IDSLocalDeliveryMessageReceivedMetric *)self service];
  if (service)
  {
    CFDictionarySetValue(v3, @"service", service);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSLocalDeliveryMessageReceivedMetric isFromDefaultPairedDevice](self, "isFromDefaultPairedDevice")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"isFromDefaultPairedDevice", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliveryMessageReceivedMetric messageSize](self, "messageSize")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"messageSize", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliveryMessageReceivedMetric linkType](self, "linkType")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"linkType", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliveryMessageReceivedMetric priority](self, "priority")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"priority", v8);
  }

  return v3;
}

- (IDSLocalDeliveryMessageReceivedMetric)initWithService:(id)service isFromDefaultPairedDevice:(BOOL)device messageSize:(unint64_t)size linkType:(unint64_t)type priority:(unint64_t)priority
{
  serviceCopy = service;
  v17.receiver = self;
  v17.super_class = IDSLocalDeliveryMessageReceivedMetric;
  v14 = [(IDSLocalDeliveryMessageReceivedMetric *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_service, service);
    v15->_isFromDefaultPairedDevice = device;
    v15->_messageSize = size;
    v15->_linkType = type;
    v15->_priority = priority;
  }

  return v15;
}

@end