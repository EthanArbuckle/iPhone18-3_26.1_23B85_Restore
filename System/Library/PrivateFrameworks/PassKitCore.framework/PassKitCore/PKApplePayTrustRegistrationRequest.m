@interface PKApplePayTrustRegistrationRequest
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKApplePayTrustRegistrationRequest

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = @"devices";
  v23 = a4;
  v24 = @"submitEnrollmentData";
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v22 count:3];
  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 endpointComponents:v12 queryParameters:0 appleAccountInformation:v9, v22, v23, v24, v25];

  v14 = [MEMORY[0x1E695DF90] dictionary];
  v15 = [(PKApplePayTrustKey *)self->_applePayTrustKey signedEnrollmentData];
  v16 = [v15 hexEncoding];
  [v14 setObject:v16 forKeyedSubscript:@"signedEnrollmentData"];

  v17 = [(PKApplePayTrustKey *)self->_applePayTrustKey certificate];

  v18 = [v17 hexEncoding];
  [v14 setObject:v18 forKeyedSubscript:@"casdCertificate"];

  v19 = [objc_opt_class() _HTTPBodyWithDictionary:v14];
  [v13 setHTTPBody:v19];

  [v13 setHTTPMethod:@"POST"];
  v20 = [v13 copy];

  return v20;
}

@end