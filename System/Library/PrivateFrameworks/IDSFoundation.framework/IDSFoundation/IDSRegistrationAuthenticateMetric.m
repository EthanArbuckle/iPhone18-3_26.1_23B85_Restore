@interface IDSRegistrationAuthenticateMetric
- (IDSRegistrationAuthenticateMetric)initWithGuid:(id)a3 success:(BOOL)a4 connectionType:(unsigned int)a5 resultCode:(unsigned int)a6 registrationError:(unsigned int)a7 isPhoneUser:(BOOL)a8 isDSUser:(BOOL)a9 genericError:(id)a10 URLError:(id)a11 POSIXError:(id)a12;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSRegistrationAuthenticateMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IDSRegistrationAuthenticateMetric *)self guid];
  if (v4)
  {
    CFDictionarySetValue(v3, @"guid", v4);
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

  v10 = [(IDSRegistrationAuthenticateMetric *)self genericError];
  if (v10)
  {
    CFDictionarySetValue(v3, @"genericError", v10);
  }

  v11 = [(IDSRegistrationAuthenticateMetric *)self URLError];
  if (v11)
  {
    CFDictionarySetValue(v3, @"URLError", v11);
  }

  v12 = [(IDSRegistrationAuthenticateMetric *)self POSIXError];
  if (v12)
  {
    CFDictionarySetValue(v3, @"POSIXError", v12);
  }

  return v3;
}

- (IDSRegistrationAuthenticateMetric)initWithGuid:(id)a3 success:(BOOL)a4 connectionType:(unsigned int)a5 resultCode:(unsigned int)a6 registrationError:(unsigned int)a7 isPhoneUser:(BOOL)a8 isDSUser:(BOOL)a9 genericError:(id)a10 URLError:(id)a11 POSIXError:(id)a12
{
  v16 = a3;
  v17 = a10;
  v18 = a11;
  v25 = a12;
  v26.receiver = self;
  v26.super_class = IDSRegistrationAuthenticateMetric;
  v19 = [(IDSRegistrationAuthenticateMetric *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_guid, a3);
    v20->_success = a4;
    v20->_connectionType = a5;
    v20->_resultCode = a6;
    v20->_registrationError = a7;
    v20->_isPhoneUser = a8;
    v20->_isDSUser = a9;
    objc_storeStrong(&v20->_genericError, a10);
    objc_storeStrong(&v20->_URLError, a11);
    objc_storeStrong(&v20->_POSIXError, a12);
  }

  return v20;
}

@end