@interface IDSRegistrationOperationGetHandlesMetric
- (IDSRegistrationOperationGetHandlesMetric)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationType:(unsigned int)registrationType genericError:(id)error URLError:(id)lError POSIXError:(id)self0;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationOperationGetHandlesMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSRegistrationOperationGetHandlesMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationOperationGetHandlesMetric success](self, "success")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"success", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationOperationGetHandlesMetric connectionType](self, "connectionType")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"connectionType", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationOperationGetHandlesMetric resultCode](self, "resultCode")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"resultCode", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationOperationGetHandlesMetric registrationError](self, "registrationError")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"registrationError", v8);
  }

  genericError = [(IDSRegistrationOperationGetHandlesMetric *)self genericError];
  if (genericError)
  {
    CFDictionarySetValue(v3, @"genericError", genericError);
  }

  uRLError = [(IDSRegistrationOperationGetHandlesMetric *)self URLError];
  if (uRLError)
  {
    CFDictionarySetValue(v3, @"URLError", uRLError);
  }

  pOSIXError = [(IDSRegistrationOperationGetHandlesMetric *)self POSIXError];
  if (pOSIXError)
  {
    CFDictionarySetValue(v3, @"POSIXError", pOSIXError);
  }

  return v3;
}

- (IDSRegistrationOperationGetHandlesMetric)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationType:(unsigned int)registrationType genericError:(id)error URLError:(id)lError POSIXError:(id)self0
{
  guidCopy = guid;
  errorCopy = error;
  lErrorCopy = lError;
  xErrorCopy = xError;
  v24.receiver = self;
  v24.super_class = IDSRegistrationOperationGetHandlesMetric;
  v18 = [(IDSRegistrationOperationGetHandlesMetric *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_guid, guid);
    v19->_success = success;
    v19->_connectionType = type;
    v19->_resultCode = code;
    v19->_registrationError = registrationType;
    objc_storeStrong(&v19->_genericError, error);
    objc_storeStrong(&v19->_URLError, lError);
    objc_storeStrong(&v19->_POSIXError, xError);
  }

  return v19;
}

@end