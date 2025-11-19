@interface IDSLocalDeliverySocketClosedMetric
- (IDSLocalDeliverySocketClosedMetric)initWithService:(id)a3 isToDefaultPairedDevice:(BOOL)a4 closeError:(unint64_t)a5 socketError:(unint64_t)a6 bytesSent:(unint64_t)a7 packetsSent:(unint64_t)a8 bytesReceived:(unint64_t)a9 packetsReceived:(unint64_t)a10;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSLocalDeliverySocketClosedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSLocalDeliverySocketClosedMetric *)self service];
  if (v4)
  {
    CFDictionarySetValue(v3, @"service", v4);
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

- (IDSLocalDeliverySocketClosedMetric)initWithService:(id)a3 isToDefaultPairedDevice:(BOOL)a4 closeError:(unint64_t)a5 socketError:(unint64_t)a6 bytesSent:(unint64_t)a7 packetsSent:(unint64_t)a8 bytesReceived:(unint64_t)a9 packetsReceived:(unint64_t)a10
{
  v17 = a3;
  v21.receiver = self;
  v21.super_class = IDSLocalDeliverySocketClosedMetric;
  v18 = [(IDSLocalDeliverySocketClosedMetric *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_service, a3);
    v19->_isToDefaultPairedDevice = a4;
    v19->_closeError = a5;
    v19->_socketError = a6;
    v19->_bytesSent = a7;
    v19->_packetsSent = a8;
    v19->_bytesReceived = a9;
    v19->_packetsReceived = a10;
  }

  return v19;
}

@end