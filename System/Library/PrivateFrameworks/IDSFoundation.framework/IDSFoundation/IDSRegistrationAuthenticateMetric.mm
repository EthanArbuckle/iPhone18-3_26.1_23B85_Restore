@interface IDSRegistrationAuthenticateMetric
- (IDSRegistrationAuthenticateMetric)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationError:(unsigned int)error isPhoneUser:(BOOL)user isDSUser:(BOOL)sUser genericError:(id)self0 URLError:(id)self1 POSIXError:(id)self2;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationAuthenticateMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSRegistrationAuthenticateMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationAuthenticateMetric connectionType](self, "connectionType")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"connectionType", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationAuthenticateMetric resultCode](self, "resultCode")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"resultCode", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationAuthenticateMetric registrationError](self, "registrationError")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"registrationError", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationAuthenticateMetric isPhoneUser](self, "isPhoneUser")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"isPhoneUser", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationAuthenticateMetric isDSUser](self, "isDSUser")}];
  if (v9)
  {
    CFDictionarySetValue(v3, @"isDSUser", v9);
  }

  genericError = [(IDSRegistrationAuthenticateMetric *)self genericError];
  if (genericError)
  {
    CFDictionarySetValue(v3, @"genericError", genericError);
  }

  uRLError = [(IDSRegistrationAuthenticateMetric *)self URLError];
  if (uRLError)
  {
    CFDictionarySetValue(v3, @"URLError", uRLError);
  }

  pOSIXError = [(IDSRegistrationAuthenticateMetric *)self POSIXError];
  if (pOSIXError)
  {
    CFDictionarySetValue(v3, @"POSIXError", pOSIXError);
  }

  return v3;
}

- (IDSRegistrationAuthenticateMetric)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationError:(unsigned int)error isPhoneUser:(BOOL)user isDSUser:(BOOL)sUser genericError:(id)self0 URLError:(id)self1 POSIXError:(id)self2
{
  guidCopy = guid;
  genericErrorCopy = genericError;
  lErrorCopy = lError;
  xErrorCopy = xError;
  v26.receiver = self;
  v26.super_class = IDSRegistrationAuthenticateMetric;
  v19 = [(IDSRegistrationAuthenticateMetric *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_guid, guid);
    v20->_success = success;
    v20->_connectionType = type;
    v20->_resultCode = code;
    v20->_registrationError = error;
    v20->_isPhoneUser = user;
    v20->_isDSUser = sUser;
    objc_storeStrong(&v20->_genericError, genericError);
    objc_storeStrong(&v20->_URLError, lError);
    objc_storeStrong(&v20->_POSIXError, xError);
  }

  return v20;
}

@end