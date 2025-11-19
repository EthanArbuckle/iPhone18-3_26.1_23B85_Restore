@interface PKPaymentRegisterPreTrackCredentialRequest
- (PKPaymentRegisterPreTrackCredentialRequest)initWithCredential:(id)a3 encryptedVehicleDataRequest:(id)a4 encryptedShareData:(id)a5 metadata:(id)a6;
- (PKPaymentRegisterPreTrackCredentialRequest)initWithCredential:(id)a3 metadata:(id)a4;
- (void)buildRequestBody:(id)a3;
@end

@implementation PKPaymentRegisterPreTrackCredentialRequest

- (PKPaymentRegisterPreTrackCredentialRequest)initWithCredential:(id)a3 metadata:(id)a4
{
  v8.receiver = self;
  v8.super_class = PKPaymentRegisterPreTrackCredentialRequest;
  v4 = [(PKPaymentRegisterCredentialRequest *)&v8 initWithCredential:a3 metadata:a4];
  v5 = v4;
  if (v4)
  {
    encryptedVehicleDataRequest = v4->_encryptedVehicleDataRequest;
    v4->_encryptedVehicleDataRequest = 0;
  }

  return v5;
}

- (PKPaymentRegisterPreTrackCredentialRequest)initWithCredential:(id)a3 encryptedVehicleDataRequest:(id)a4 encryptedShareData:(id)a5 metadata:(id)a6
{
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = PKPaymentRegisterPreTrackCredentialRequest;
  v12 = [(PKPaymentRegisterCredentialRequest *)&v21 initWithCredential:a3 metadata:a6];
  if (!v12)
  {
LABEL_5:
    v17 = v12;
    goto LABEL_9;
  }

  v13 = dictionaryFromSubcredentialEncryptedRequest(v10);
  encryptedVehicleDataRequest = v12->_encryptedVehicleDataRequest;
  v12->_encryptedVehicleDataRequest = v13;

  if (v12->_encryptedVehicleDataRequest)
  {
    if (v11)
    {
      v15 = dictionaryFromSubcredentialEncryptedRequest(v11);
      encryptedShareData = v12->_encryptedShareData;
      v12->_encryptedShareData = v15;
    }

    goto LABEL_5;
  }

  v18 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Missing encryptedVehicleDataRequest on register request", v20, 2u);
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (void)buildRequestBody:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPaymentRegisterPreTrackCredentialRequest;
  [(PKPaymentRegisterCredentialRequest *)&v10 buildRequestBody:v4];
  if (self->_encryptedVehicleDataRequest)
  {
    if (PKSharingForceNilVehicleDataInPreTrackRequest())
    {
      v5 = PKLogFacilityTypeGetObject(0x22uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKSharingForceNilVehicleDataInPreTrackRequest enabled", v9, 2u);
      }

      encryptedVehicleDataRequest = 0;
    }

    else
    {
      encryptedVehicleDataRequest = self->_encryptedVehicleDataRequest;
    }

    [v4 setObject:encryptedVehicleDataRequest forKeyedSubscript:@"vehicleData"];
  }

  if (self->_encryptedShareData)
  {
    if (PKSharingForceNilShareDataInPreTrackRequest())
    {
      v7 = PKLogFacilityTypeGetObject(0x22uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKSharingForceNilShareDataInPreTrackRequest enabled", v9, 2u);
      }

      encryptedShareData = 0;
    }

    else
    {
      encryptedShareData = self->_encryptedShareData;
    }

    [v4 setObject:encryptedShareData forKeyedSubscript:@"shareData"];
  }
}

@end