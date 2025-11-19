@interface IDSLocalDeliverySocketOpenedMetric
- (IDSLocalDeliverySocketOpenedMetric)initWithService:(id)a3 isToDefaultPairedDevice:(BOOL)a4 openError:(unint64_t)a5 socketError:(unint64_t)a6;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSLocalDeliverySocketOpenedMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSLocalDeliverySocketOpenedMetric *)self service];
  if (v4)
  {
    CFDictionarySetValue(v3, @"service", v4);
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

- (IDSLocalDeliverySocketOpenedMetric)initWithService:(id)a3 isToDefaultPairedDevice:(BOOL)a4 openError:(unint64_t)a5 socketError:(unint64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = IDSLocalDeliverySocketOpenedMetric;
  v12 = [(IDSLocalDeliverySocketOpenedMetric *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_service, a3);
    v13->_isToDefaultPairedDevice = a4;
    v13->_openError = a5;
    v13->_socketError = a6;
  }

  return v13;
}

@end