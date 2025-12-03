@interface IDSRegistrationOperationRegisterMetric
- (IDSRegistrationOperationRegisterMetric)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationType:(unsigned int)registrationType isHeartbeatRegister:(BOOL)register heartbeatDelay:(id)delay genericError:(id)self0 URLError:(id)self1 POSIXError:(id)self2;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationOperationRegisterMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSRegistrationOperationRegisterMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
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

  heartbeatDelay = [(IDSRegistrationOperationRegisterMetric *)self heartbeatDelay];
  if (heartbeatDelay)
  {
    CFDictionarySetValue(v3, @"heartbeatDelay", heartbeatDelay);
  }

  genericError = [(IDSRegistrationOperationRegisterMetric *)self genericError];
  if (genericError)
  {
    CFDictionarySetValue(v3, @"genericError", genericError);
  }

  uRLError = [(IDSRegistrationOperationRegisterMetric *)self URLError];
  if (uRLError)
  {
    CFDictionarySetValue(v3, @"URLError", uRLError);
  }

  pOSIXError = [(IDSRegistrationOperationRegisterMetric *)self POSIXError];
  if (pOSIXError)
  {
    CFDictionarySetValue(v3, @"POSIXError", pOSIXError);
  }

  return v3;
}

- (IDSRegistrationOperationRegisterMetric)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationType:(unsigned int)registrationType isHeartbeatRegister:(BOOL)register heartbeatDelay:(id)delay genericError:(id)self0 URLError:(id)self1 POSIXError:(id)self2
{
  guidCopy = guid;
  delayCopy = delay;
  errorCopy = error;
  lErrorCopy = lError;
  xErrorCopy = xError;
  v27.receiver = self;
  v27.super_class = IDSRegistrationOperationRegisterMetric;
  v18 = [(IDSRegistrationOperationRegisterMetric *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_guid, guid);
    v19->_success = success;
    v19->_connectionType = type;
    v19->_resultCode = code;
    v19->_registrationError = registrationType;
    v19->_isHeartbeatRegister = register;
    objc_storeStrong(&v19->_heartbeatDelay, delay);
    objc_storeStrong(&v19->_genericError, error);
    objc_storeStrong(&v19->_URLError, lError);
    objc_storeStrong(&v19->_POSIXError, xError);
  }

  return v19;
}

@end