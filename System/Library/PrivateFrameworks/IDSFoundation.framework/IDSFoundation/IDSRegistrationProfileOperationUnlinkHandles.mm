@interface IDSRegistrationProfileOperationUnlinkHandles
- (IDSRegistrationProfileOperationUnlinkHandles)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationError:(unsigned int)error genericError:(id)genericError URLError:(id)lError POSIXError:(id)self0;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationProfileOperationUnlinkHandles

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IDSRegistrationProfileOperationUnlinkHandles *)self guid];
  if (guid)
  {
    CFDictionarySetValue(v3, @"guid", guid);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationProfileOperationUnlinkHandles success](self, "success")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"success", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileOperationUnlinkHandles connectionType](self, "connectionType")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"connectionType", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileOperationUnlinkHandles resultCode](self, "resultCode")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"resultCode", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileOperationUnlinkHandles registrationError](self, "registrationError")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"registrationError", v8);
  }

  genericError = [(IDSRegistrationProfileOperationUnlinkHandles *)self genericError];
  if (genericError)
  {
    CFDictionarySetValue(v3, @"genericError", genericError);
  }

  uRLError = [(IDSRegistrationProfileOperationUnlinkHandles *)self URLError];
  if (uRLError)
  {
    CFDictionarySetValue(v3, @"URLError", uRLError);
  }

  pOSIXError = [(IDSRegistrationProfileOperationUnlinkHandles *)self POSIXError];
  if (pOSIXError)
  {
    CFDictionarySetValue(v3, @"POSIXError", pOSIXError);
  }

  return v3;
}

- (IDSRegistrationProfileOperationUnlinkHandles)initWithGuid:(id)guid success:(BOOL)success connectionType:(unsigned int)type resultCode:(unsigned int)code registrationError:(unsigned int)error genericError:(id)genericError URLError:(id)lError POSIXError:(id)self0
{
  guidCopy = guid;
  genericErrorCopy = genericError;
  lErrorCopy = lError;
  xErrorCopy = xError;
  v24.receiver = self;
  v24.super_class = IDSRegistrationProfileOperationUnlinkHandles;
  v18 = [(IDSRegistrationProfileOperationUnlinkHandles *)&v24 init];
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