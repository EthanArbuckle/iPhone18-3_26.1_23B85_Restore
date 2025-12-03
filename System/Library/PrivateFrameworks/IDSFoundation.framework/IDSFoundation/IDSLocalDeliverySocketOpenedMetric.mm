@interface IDSLocalDeliverySocketOpenedMetric
- (IDSLocalDeliverySocketOpenedMetric)initWithService:(id)service isToDefaultPairedDevice:(BOOL)device openError:(unint64_t)error socketError:(unint64_t)socketError;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSLocalDeliverySocketOpenedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  service = [(IDSLocalDeliverySocketOpenedMetric *)self service];
  if (service)
  {
    CFDictionarySetValue(v3, @"service", service);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSLocalDeliverySocketOpenedMetric isToDefaultPairedDevice](self, "isToDefaultPairedDevice")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"isToDefaultPairedDevice", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliverySocketOpenedMetric openError](self, "openError")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"openError", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSLocalDeliverySocketOpenedMetric socketError](self, "socketError")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"socketError", v7);
  }

  return v3;
}

- (IDSLocalDeliverySocketOpenedMetric)initWithService:(id)service isToDefaultPairedDevice:(BOOL)device openError:(unint64_t)error socketError:(unint64_t)socketError
{
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = IDSLocalDeliverySocketOpenedMetric;
  v12 = [(IDSLocalDeliverySocketOpenedMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_service, service);
    v13->_isToDefaultPairedDevice = device;
    v13->_openError = error;
    v13->_socketError = socketError;
  }

  return v13;
}

@end