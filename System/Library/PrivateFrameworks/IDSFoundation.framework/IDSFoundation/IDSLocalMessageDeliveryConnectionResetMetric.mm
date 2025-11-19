@interface IDSLocalMessageDeliveryConnectionResetMetric
- (IDSLocalMessageDeliveryConnectionResetMetric)initWithService:(id)a3 isToDefaultPairedDevice:(BOOL)a4 messageSize:(unint64_t)a5 linkType:(unint64_t)a6 deliveryError:(unint64_t)a7 RTT:(unint64_t)a8 priority:(unint64_t)a9;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSLocalMessageDeliveryConnectionResetMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSLocalMessageDeliveryConnectionResetMetric *)self service];
  if (v4)
  {
    CFDictionarySetValue(v3, @"service", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSLocalMessageDeliveryConnectionResetMetric isToDefaultPairedDevice](self, "isToDefaultPairedDevice")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"isToDefaultPairedDevice", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalMessageDeliveryConnectionResetMetric messageSize](self, "messageSize")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"messageSize", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalMessageDeliveryConnectionResetMetric linkType](self, "linkType")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"linkType", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalMessageDeliveryConnectionResetMetric deliveryError](self, "deliveryError")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"deliveryError", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalMessageDeliveryConnectionResetMetric RTT](self, "RTT")}];
  if (v9)
  {
    CFDictionarySetValue(v3, @"RTT", v9);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalMessageDeliveryConnectionResetMetric priority](self, "priority")}];
  if (v10)
  {
    CFDictionarySetValue(v3, @"priority", v10);
  }

  return v3;
}

- (IDSLocalMessageDeliveryConnectionResetMetric)initWithService:(id)a3 isToDefaultPairedDevice:(BOOL)a4 messageSize:(unint64_t)a5 linkType:(unint64_t)a6 deliveryError:(unint64_t)a7 RTT:(unint64_t)a8 priority:(unint64_t)a9
{
  v16 = a3;
  v20.receiver = self;
  v20.super_class = IDSLocalMessageDeliveryConnectionResetMetric;
  v17 = [(IDSLocalMessageDeliveryConnectionResetMetric *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_service, a3);
    v18->_isToDefaultPairedDevice = a4;
    v18->_messageSize = a5;
    v18->_linkType = a6;
    v18->_deliveryError = a7;
    v18->_RTT = a8;
    v18->_priority = a9;
  }

  return v18;
}

@end