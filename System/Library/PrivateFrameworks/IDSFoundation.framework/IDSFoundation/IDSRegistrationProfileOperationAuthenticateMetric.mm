@interface IDSRegistrationProfileOperationAuthenticateMetric
- (IDSRegistrationProfileOperationAuthenticateMetric)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationError:(unsigned int)error genericError:(id)genericError URLError:(id)lError POSIXError:(id)self0;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationProfileOperationAuthenticateMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSRegistrationProfileOperationAuthenticateMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationProfileOperationAuthenticateMetric success](self, "success")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"success", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileOperationAuthenticateMetric connectionType](self, "connectionType")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"connectionType", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileOperationAuthenticateMetric resultCode](self, "resultCode")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"resultCode", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileOperationAuthenticateMetric registrationError](self, "registrationError")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"registrationError", v8);
  }

  genericError = [(IDSRegistrationProfileOperationAuthenticateMetric *)self genericError];
  if (genericError)
  {
    CFDictionarySetValue(v3, @"genericError", genericError);
  }

  uRLError = [(IDSRegistrationProfileOperationAuthenticateMetric *)self URLError];
  if (uRLError)
  {
    CFDictionarySetValue(v3, @"URLError", uRLError);
  }

  pOSIXError = [(IDSRegistrationProfileOperationAuthenticateMetric *)self POSIXError];
  if (pOSIXError)
  {
    CFDictionarySetValue(v3, @"POSIXError", pOSIXError);
  }

  return v3;
}

- (IDSRegistrationProfileOperationAuthenticateMetric)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationError:(unsigned int)error genericError:(id)genericError URLError:(id)lError POSIXError:(id)self0
{
  guidCopy = guid;
  genericErrorCopy = genericError;
  lErrorCopy = lError;
  xErrorCopy = xError;
  v24.receiver = self;
  v24.super_class = IDSRegistrationProfileOperationAuthenticateMetric;
  v18 = [(IDSRegistrationProfileOperationAuthenticateMetric *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_guid, guid);
    v19->_success = success;
    v19->_connectionType = type;
    v19->_resultCode = code;
    v19->_registrationError = error;
    objc_storeStrong(&v19->_genericError, genericError);
    objc_storeStrong(&v19->_URLError, lError);
    objc_storeStrong(&v19->_POSIXError, xError);
  }

  return v19;
}

@end