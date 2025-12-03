@interface IDSLocalDeliverySocketClosedMetric
- (IDSLocalDeliverySocketClosedMetric)initWithService:(id)service isToDefaultPairedDevice:(BOOL)device closeError:(unint64_t)error socketError:(unint64_t)socketError bytesSent:(unint64_t)sent packetsSent:(unint64_t)packetsSent bytesReceived:(unint64_t)received packetsReceived:(unint64_t)self0;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSLocalDeliverySocketClosedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  service = [(IDSLocalDeliverySocketClosedMetric *)self service];
  if (service)
  {
    CFDictionarySetValue(v3, @"service", service);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSLocalDeliverySocketClosedMetric isToDefaultPairedDevice](self, "isToDefaultPairedDevice")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"isToDefaultPairedDevice", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliverySocketClosedMetric closeError](self, "closeError")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"closeError", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliverySocketClosedMetric socketError](self, "socketError")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"socketError", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliverySocketClosedMetric bytesSent](self, "bytesSent")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"bytesSent", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliverySocketClosedMetric packetsSent](self, "packetsSent")}];
  if (v9)
  {
    CFDictionarySetValue(v3, @"packetsSent", v9);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliverySocketClosedMetric bytesReceived](self, "bytesReceived")}];
  if (v10)
  {
    CFDictionarySetValue(v3, @"bytesReceived", v10);
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliverySocketClosedMetric packetsReceived](self, "packetsReceived")}];
  if (v11)
  {
    CFDictionarySetValue(v3, @"packetsReceived", v11);
  }

  return v3;
}

- (IDSLocalDeliverySocketClosedMetric)initWithService:(id)service isToDefaultPairedDevice:(BOOL)device closeError:(unint64_t)error socketError:(unint64_t)socketError bytesSent:(unint64_t)sent packetsSent:(unint64_t)packetsSent bytesReceived:(unint64_t)received packetsReceived:(unint64_t)self0
{
  serviceCopy = service;
  v21.receiver = self;
  v21.super_class = IDSLocalDeliverySocketClosedMetric;
  v18 = [(IDSLocalDeliverySocketClosedMetric *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_service, service);
    v19->_isToDefaultPairedDevice = device;
    v19->_closeError = error;
    v19->_socketError = socketError;
    v19->_bytesSent = sent;
    v19->_packetsSent = packetsSent;
    v19->_bytesReceived = received;
    v19->_packetsReceived = packetsReceived;
  }

  return v19;
}

@end