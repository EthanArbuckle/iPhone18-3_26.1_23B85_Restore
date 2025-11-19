@interface PKPeerPaymentAddAssociatedAccountRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPeerPaymentAddAssociatedAccountRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v18 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v24 = 138543618;
    v25 = v20;
    v26 = 2082;
    v27 = "url";
LABEL_17:
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v24, 0x16u);

    goto LABEL_18;
  }

  if (!v7)
  {
    v18 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    v24 = 138543618;
    v25 = v20;
    v26 = 2082;
    v27 = "appleAccountInformation";
    goto LABEL_17;
  }

  if (!self->_altDSID)
  {
    v18 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v20 = NSStringFromClass(v22);
      v24 = 138543618;
      v25 = v20;
      v26 = 2082;
      v27 = "_altDSID";
      goto LABEL_17;
    }

LABEL_18:

    v17 = 0;
    goto LABEL_19;
  }

  v9 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:&unk_1F23B4850 queryParameters:0 appleAccountInformation:v7];
  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = v10;
  altDSID = self->_altDSID;
  if (altDSID)
  {
    [v10 setObject:altDSID forKey:@"altDSID"];
  }

  firstName = self->_firstName;
  if (firstName)
  {
    [v11 setObject:firstName forKey:@"firstName"];
  }

  lastName = self->_lastName;
  if (lastName)
  {
    [v11 setObject:lastName forKey:@"lastName"];
  }

  v15 = PKPeerPaymentAccountRoleToString(self->_role);
  [v11 setObject:v15 forKey:@"role"];

  v16 = [objc_opt_class() _HTTPBodyWithDictionary:v11];
  [v9 setHTTPBody:v16];

  v17 = [v9 copy];
LABEL_19:

  return v17;
}

@end