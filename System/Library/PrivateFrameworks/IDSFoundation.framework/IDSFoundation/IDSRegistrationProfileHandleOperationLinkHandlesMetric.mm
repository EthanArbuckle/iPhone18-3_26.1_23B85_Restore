@interface IDSRegistrationProfileHandleOperationLinkHandlesMetric
- (IDSRegistrationProfileHandleOperationLinkHandlesMetric)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationError:(unsigned int)error vettingStatus:(unsigned int)status genericError:(id)genericError URLError:(id)self0 POSIXError:(id)self1;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationProfileHandleOperationLinkHandlesMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSRegistrationProfileHandleOperationLinkHandlesMetric *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationProfileHandleOperationLinkHandlesMetric success](self, "success")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"success", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileHandleOperationLinkHandlesMetric connectionType](self, "connectionType")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"connectionType", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileHandleOperationLinkHandlesMetric resultCode](self, "resultCode")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"resultCode", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileHandleOperationLinkHandlesMetric registrationError](self, "registrationError")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"registrationError", v8);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileHandleOperationLinkHandlesMetric vettingStatus](self, "vettingStatus")}];
  if (v9)
  {
    CFDictionarySetValue(v3, @"vettingStatus", v9);
  }

  genericError = [(IDSRegistrationProfileHandleOperationLinkHandlesMetric *)self genericError];
  if (genericError)
  {
    CFDictionarySetValue(v3, @"genericError", genericError);
  }

  uRLError = [(IDSRegistrationProfileHandleOperationLinkHandlesMetric *)self URLError];
  if (uRLError)
  {
    CFDictionarySetValue(v3, @"URLError", uRLError);
  }

  pOSIXError = [(IDSRegistrationProfileHandleOperationLinkHandlesMetric *)self POSIXError];
  if (pOSIXError)
  {
    CFDictionarySetValue(v3, @"POSIXError", pOSIXError);
  }

  return v3;
}

- (IDSRegistrationProfileHandleOperationLinkHandlesMetric)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationError:(unsigned int)error vettingStatus:(unsigned int)status genericError:(id)genericError URLError:(id)self0 POSIXError:(id)self1
{
  guidCopy = guid;
  genericErrorCopy = genericError;
  lErrorCopy = lError;
  xErrorCopy = xError;
  v25.receiver = self;
  v25.super_class = IDSRegistrationProfileHandleOperationLinkHandlesMetric;
  v18 = [(IDSRegistrationProfileHandleOperationLinkHandlesMetric *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_guid, guid);
    v19->_success = success;
    v19->_connectionType = type;
    v19->_resultCode = code;
    v19->_registrationError = error;
    v19->_vettingStatus = status;
    objc_storeStrong(&v19->_genericError, genericError);
    objc_storeStrong(&v19->_URLError, lError);
    objc_storeStrong(&v19->_POSIXError, xError);
  }

  return v19;
}

@end