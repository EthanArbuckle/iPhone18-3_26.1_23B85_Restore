@interface PKApplePayTrustRegistrationRequest
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKApplePayTrustRegistrationRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = @"devices";
  identifierCopy = identifier;
  v24 = @"submitEnrollmentData";
  v8 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy2 = identifier;
  lCopy = l;
  v12 = [v8 arrayWithObjects:&v22 count:3];
  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy, v22, identifierCopy, v24, v25];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  signedEnrollmentData = [(PKApplePayTrustKey *)self->_applePayTrustKey signedEnrollmentData];
  hexEncoding = [signedEnrollmentData hexEncoding];
  [dictionary setObject:hexEncoding forKeyedSubscript:@"signedEnrollmentData"];

  certificate = [(PKApplePayTrustKey *)self->_applePayTrustKey certificate];

  hexEncoding2 = [certificate hexEncoding];
  [dictionary setObject:hexEncoding2 forKeyedSubscript:@"casdCertificate"];

  v19 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v13 setHTTPBody:v19];

  [v13 setHTTPMethod:@"POST"];
  v20 = [v13 copy];

  return v20;
}

@end