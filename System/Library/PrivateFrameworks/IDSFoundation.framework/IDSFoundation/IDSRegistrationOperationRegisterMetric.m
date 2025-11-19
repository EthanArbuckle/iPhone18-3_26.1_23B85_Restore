@interface IDSRegistrationOperationRegisterMetric
- (IDSRegistrationOperationRegisterMetric)initWithGuid:(id)a3 success:(BOOL)a4 connectionType:(unsigned int)a5 resultCode:(unsigned int)a6 registrationType:(unsigned int)a7 isHeartbeatRegister:(BOOL)a8 heartbeatDelay:(id)a9 genericError:(id)a10 URLError:(id)a11 POSIXError:(id)a12;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationOperationRegisterMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSRegistrationOperationRegisterMetric *)self guid];
  if (v4)
  {
    CFDictionarySetValue(v3, @"guid", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationOperationRegisterMetric success](self, "success")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"success", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationOperationRegisterMetric connectionType](self, "connectionType")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"connectionType", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationOperationRegisterMetric resultCode](self, "resultCode")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"resultCode", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationOperationRegisterMetric registrationError](self, "registrationError")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"registrationError", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationOperationRegisterMetric isHeartbeatRegister](self, "isHeartbeatRegister")}];
  if (v9)
  {
    CFDictionarySetValue(v3, @"isHeartbeatRegister", v9);
  }

  v10 = [(IDSRegistrationOperationRegisterMetric *)self heartbeatDelay];
  if (v10)
  {
    CFDictionarySetValue(v3, @"heartbeatDelay", v10);
  }

  v11 = [(IDSRegistrationOperationRegisterMetric *)self genericError];
  if (v11)
  {
    CFDictionarySetValue(v3, @"genericError", v11);
  }

  v12 = [(IDSRegistrationOperationRegisterMetric *)self URLError];
  if (v12)
  {
    CFDictionarySetValue(v3, @"URLError", v12);
  }

  v13 = [(IDSRegistrationOperationRegisterMetric *)self POSIXError];
  if (v13)
  {
    CFDictionarySetValue(v3, @"POSIXError", v13);
  }

  return v3;
}

- (IDSRegistrationOperationRegisterMetric)initWithGuid:(id)a3 success:(BOOL)a4 connectionType:(unsigned int)a5 resultCode:(unsigned int)a6 registrationType:(unsigned int)a7 isHeartbeatRegister:(BOOL)a8 heartbeatDelay:(id)a9 genericError:(id)a10 URLError:(id)a11 POSIXError:(id)a12
{
  v26 = a3;
  v25 = a9;
  v15 = a10;
  v16 = a11;
  v17 = a12;
  v27.receiver = self;
  v27.super_class = IDSRegistrationOperationRegisterMetric;
  v18 = [(IDSRegistrationOperationRegisterMetric *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_guid, a3);
    v19->_success = a4;
    v19->_connectionType = a5;
    v19->_resultCode = a6;
    v19->_registrationError = a7;
    v19->_isHeartbeatRegister = a8;
    objc_storeStrong(&v19->_heartbeatDelay, a9);
    objc_storeStrong(&v19->_genericError, a10);
    objc_storeStrong(&v19->_URLError, a11);
    objc_storeStrong(&v19->_POSIXError, a12);
  }

  return v19;
}

@end