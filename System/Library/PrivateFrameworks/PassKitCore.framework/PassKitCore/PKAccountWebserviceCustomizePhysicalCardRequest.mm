@interface PKAccountWebserviceCustomizePhysicalCardRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebserviceCustomizePhysicalCardRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v19 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  if (self->_baseURL)
  {
    accountIdentifier = self->_accountIdentifier;
    if (accountIdentifier)
    {
      v14[0] = @"accounts";
      v14[1] = accountIdentifier;
      v14[2] = @"physicalCard";
      v14[3] = @"customize";
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v7 setObject:self->_accountUserAltDSID forKeyedSubscript:@"accountUserAltDSID"];
      v8 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v6 queryParameters:v7 appleAccountInformation:informationCopy];
      [v8 setHTTPMethod:@"GET"];
      v9 = [v8 copy];

      goto LABEL_10;
    }

    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v11 = NSStringFromClass(v12);
      *buf = 138543618;
      v16 = v11;
      v17 = 2082;
      v18 = "_accountIdentifier";
      goto LABEL_8;
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543618;
      v16 = v11;
      v17 = 2082;
      v18 = "_baseURL";
LABEL_8:
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

@end