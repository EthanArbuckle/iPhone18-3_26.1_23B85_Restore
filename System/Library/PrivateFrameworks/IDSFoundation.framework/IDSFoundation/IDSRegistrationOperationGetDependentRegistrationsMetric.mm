@interface IDSRegistrationOperationGetDependentRegistrationsMetric
- (IDSRegistrationOperationGetDependentRegistrationsMetric)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationType:(unsigned int)registrationType genericError:(id)error URLError:(id)lError POSIXError:(id)self0;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationOperationGetDependentRegistrationsMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSRegistrationOperationGetDependentRegistrationsMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationOperationGetDependentRegistrationsMetric success](self, "success")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"success", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationOperationGetDependentRegistrationsMetric connectionType](self, "connectionType")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"connectionType", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationOperationGetDependentRegistrationsMetric resultCode](self, "resultCode")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"resultCode", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationOperationGetDependentRegistrationsMetric registrationError](self, "registrationError")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"registrationError", v8);
  }

  genericError = [(IDSRegistrationOperationGetDependentRegistrationsMetric *)self genericError];
  if (genericError)
  {
    CFDictionarySetValue(v3, @"genericError", genericError);
  }

  uRLError = [(IDSRegistrationOperationGetDependentRegistrationsMetric *)self URLError];
  if (uRLError)
  {
    CFDictionarySetValue(v3, @"URLError", uRLError);
  }

  pOSIXError = [(IDSRegistrationOperationGetDependentRegistrationsMetric *)self POSIXError];
  if (pOSIXError)
  {
    CFDictionarySetValue(v3, @"POSIXError", pOSIXError);
  }

  return v3;
}

- (IDSRegistrationOperationGetDependentRegistrationsMetric)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationType:(unsigned int)registrationType genericError:(id)error URLError:(id)lError POSIXError:(id)self0
{
  guidCopy = guid;
  errorCopy = error;
  lErrorCopy = lError;
  xErrorCopy = xError;
  v24.receiver = self;
  v24.super_class = IDSRegistrationOperationGetDependentRegistrationsMetric;
  v18 = [(IDSRegistrationOperationGetDependentRegistrationsMetric *)&v24 init];
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