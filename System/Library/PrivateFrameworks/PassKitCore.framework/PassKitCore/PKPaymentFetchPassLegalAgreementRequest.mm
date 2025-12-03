@interface PKPaymentFetchPassLegalAgreementRequest
- (id)initPassTypeIdentifier:(id)identifier passSerialNumber:(id)number agreement:(id)agreement;
- (void)_urlRequestWithBuilder:(id)builder completion:(id)completion;
@end

@implementation PKPaymentFetchPassLegalAgreementRequest

- (id)initPassTypeIdentifier:(id)identifier passSerialNumber:(id)number agreement:(id)agreement
{
  identifierCopy = identifier;
  numberCopy = number;
  agreementCopy = agreement;
  v15.receiver = self;
  v15.super_class = PKPaymentFetchPassLegalAgreementRequest;
  v12 = [(PKOverlayableWebServiceRequest *)&v15 init];
  p_isa = &v12->super.super.super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_passTypeIdentifier, identifier);
    objc_storeStrong(p_isa + 12, number);
    objc_storeStrong(p_isa + 13, agreement);
  }

  return p_isa;
}

- (void)_urlRequestWithBuilder:(id)builder completion:(id)completion
{
  v17[6] = *MEMORY[0x1E69E9840];
  if (completion)
  {
    completionCopy = completion;
    builderCopy = builder;
    brokerURL = [builderCopy brokerURL];
    v17[0] = @"devices";
    deviceID = [builderCopy deviceID];
    v17[1] = deviceID;
    v17[2] = @"passes";
    passSerialNumber = self->_passSerialNumber;
    v17[3] = self->_passTypeIdentifier;
    v17[4] = passSerialNumber;
    v17[5] = @"legalAgreement";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:6];
    appleAccountInformation = [builderCopy appleAccountInformation];
    v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL version:@"1" endpointComponents:v11 queryParameters:0 appleAccountInformation:appleAccountInformation];

    [v13 setHTTPMethod:@"POST"];
    [v13 setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    identifier = [(PKUserLegalAgreementConsent *)self->_agreement identifier];
    [v14 setObject:identifier forKeyedSubscript:@"identifier"];

    v16 = PKUserLegalAgreementTypeToString([(PKUserLegalAgreementConsent *)self->_agreement type]);
    [v14 setObject:v16 forKeyedSubscript:@"type"];

    [builderCopy configureOverlayRequest:self urlRequest:v13 dictionary:v14];
    completionCopy[2](completionCopy, v13);
  }
}

@end