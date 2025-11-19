@interface IDSRegistrationProfileOperationValidateInvitationContext
- (IDSRegistrationProfileOperationValidateInvitationContext)initWithGuid:(id)a3 success:(BOOL)a4 connectionType:(unsigned int)a5 resultCode:(unsigned int)a6 registrationError:(unsigned int)a7 genericError:(id)a8 URLError:(id)a9 POSIXError:(id)a10;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationProfileOperationValidateInvitationContext

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSRegistrationProfileOperationValidateInvitationContext *)self guid];
  if (v4)
  {
    CFDictionarySetValue(v3, @"guid", v4);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSRegistrationProfileOperationValidateInvitationContext success](self, "success")}];
  if (v5)
  {
    CFDictionarySetValue(v3, @"success", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileOperationValidateInvitationContext connectionType](self, "connectionType")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"connectionType", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileOperationValidateInvitationContext resultCode](self, "resultCode")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"resultCode", v7);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[IDSRegistrationProfileOperationValidateInvitationContext registrationError](self, "registrationError")}];
  if (v8)
  {
    CFDictionarySetValue(v3, @"registrationError", v8);
  }

  v9 = [(IDSRegistrationProfileOperationValidateInvitationContext *)self genericError];
  if (v9)
  {
    CFDictionarySetValue(v3, @"genericError", v9);
  }

  v10 = [(IDSRegistrationProfileOperationValidateInvitationContext *)self URLError];
  if (v10)
  {
    CFDictionarySetValue(v3, @"URLError", v10);
  }

  v11 = [(IDSRegistrationProfileOperationValidateInvitationContext *)self POSIXError];
  if (v11)
  {
    CFDictionarySetValue(v3, @"POSIXError", v11);
  }

  return v3;
}

- (IDSRegistrationProfileOperationValidateInvitationContext)initWithGuid:(id)a3 success:(BOOL)a4 connectionType:(unsigned int)a5 resultCode:(unsigned int)a6 registrationError:(unsigned int)a7 genericError:(id)a8 URLError:(id)a9 POSIXError:(id)a10
{
  v23 = a3;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v24.receiver = self;
  v24.super_class = IDSRegistrationProfileOperationValidateInvitationContext;
  v18 = [(IDSRegistrationProfileOperationValidateInvitationContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_guid, a3);
    v19->_success = a4;
    v19->_connectionType = a5;
    v19->_resultCode = a6;
    v19->_registrationError = a7;
    objc_storeStrong(&v19->_genericError, a8);
    objc_storeStrong(&v19->_URLError, a9);
    objc_storeStrong(&v19->_POSIXError, a10);
  }

  return v19;
}

@end