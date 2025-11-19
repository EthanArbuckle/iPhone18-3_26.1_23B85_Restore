@interface PKPaymentFetchPassLegalAgreementRequest
- (id)initPassTypeIdentifier:(id)a3 passSerialNumber:(id)a4 agreement:(id)a5;
- (void)_urlRequestWithBuilder:(id)a3 completion:(id)a4;
@end

@implementation PKPaymentFetchPassLegalAgreementRequest

- (id)initPassTypeIdentifier:(id)a3 passSerialNumber:(id)a4 agreement:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKPaymentFetchPassLegalAgreementRequest;
  v12 = [(PKOverlayableWebServiceRequest *)&v15 init];
  p_isa = &v12->super.super.super.super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_passTypeIdentifier, a3);
    objc_storeStrong(p_isa + 12, a4);
    objc_storeStrong(p_isa + 13, a5);
  }

  return p_isa;
}

- (void)_urlRequestWithBuilder:(id)a3 completion:(id)a4
{
  v17[6] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [v7 brokerURL];
    v17[0] = @"devices";
    v9 = [v7 deviceID];
    v17[1] = v9;
    v17[2] = @"passes";
    passSerialNumber = self->_passSerialNumber;
    v17[3] = self->_passTypeIdentifier;
    v17[4] = passSerialNumber;
    v17[5] = @"legalAgreement";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:6];
    v12 = [v7 appleAccountInformation];
    v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v8 version:@"1" endpointComponents:v11 queryParameters:0 appleAccountInformation:v12];

    [v13 setHTTPMethod:@"POST"];
    [v13 setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = [(PKUserLegalAgreementConsent *)self->_agreement identifier];
    [v14 setObject:v15 forKeyedSubscript:@"identifier"];

    v16 = PKUserLegalAgreementTypeToString([(PKUserLegalAgreementConsent *)self->_agreement type]);
    [v14 setObject:v16 forKeyedSubscript:@"type"];

    [v7 configureOverlayRequest:self urlRequest:v13 dictionary:v14];
    v6[2](v6, v13);
  }
}

@end