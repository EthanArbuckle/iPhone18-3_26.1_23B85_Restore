@interface IDSRegistrationProfileHandleOperationValidateHandleMetric
- (IDSRegistrationProfileHandleOperationValidateHandleMetric)initWithGuid:(id)a3 success:(BOOL)a4 connectionType:(unsigned int)a5 resultCode:(unsigned int)a6 registrationError:(unsigned int)a7 vettingStatus:(unsigned int)a8 genericError:(id)a9 URLError:(id)a10 POSIXError:(id)a11;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationProfileHandleOperationValidateHandleMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSRegistrationProfileHandleOperationValidateHandleMetric *)self guid];
  if (v4)
  {
    CFDictionarySetValue(v3, @"guid", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationProfileHandleOperationValidateHandleMetric success](self, "success")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"success", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileHandleOperationValidateHandleMetric connectionType](self, "connectionType")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"connectionType", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileHandleOperationValidateHandleMetric resultCode](self, "resultCode")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"resultCode", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileHandleOperationValidateHandleMetric registrationError](self, "registrationError")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"registrationError", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileHandleOperationValidateHandleMetric vettingStatus](self, "vettingStatus")}];
  if (v9)
  {
    CFDictionarySetValue(v3, @"vettingStatus", v9);
  }

  v10 = [(IDSRegistrationProfileHandleOperationValidateHandleMetric *)self genericError];
  if (v10)
  {
    CFDictionarySetValue(v3, @"genericError", v10);
  }

  v11 = [(IDSRegistrationProfileHandleOperationValidateHandleMetric *)self URLError];
  if (v11)
  {
    CFDictionarySetValue(v3, @"URLError", v11);
  }

  v12 = [(IDSRegistrationProfileHandleOperationValidateHandleMetric *)self POSIXError];
  if (v12)
  {
    CFDictionarySetValue(v3, @"POSIXError", v12);
  }

  return v3;
}

- (IDSRegistrationProfileHandleOperationValidateHandleMetric)initWithGuid:(id)a3 success:(BOOL)a4 connectionType:(unsigned int)a5 resultCode:(unsigned int)a6 registrationError:(unsigned int)a7 vettingStatus:(unsigned int)a8 genericError:(id)a9 URLError:(id)a10 POSIXError:(id)a11
{
  v24 = a3;
  v15 = a9;
  v16 = a10;
  v17 = a11;
  v25.receiver = self;
  v25.super_class = IDSRegistrationProfileHandleOperationValidateHandleMetric;
  v18 = [(IDSRegistrationProfileHandleOperationValidateHandleMetric *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_guid, a3);
    v19->_success = a4;
    v19->_connectionType = a5;
    v19->_resultCode = a6;
    v19->_registrationError = a7;
    v19->_vettingStatus = a8;
    objc_storeStrong(&v19->_genericError, a9);
    objc_storeStrong(&v19->_URLError, a10);
    objc_storeStrong(&v19->_POSIXError, a11);
  }

  return v19;
}

@end