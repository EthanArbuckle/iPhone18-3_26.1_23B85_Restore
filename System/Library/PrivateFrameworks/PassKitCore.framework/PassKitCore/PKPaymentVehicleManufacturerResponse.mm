@interface PKPaymentVehicleManufacturerResponse
- (PKPaymentVehicleManufacturerResponse)initWithData:(id)a3;
- (PKPaymentVehicleManufacturerResponse)initWithEncryptionScheme:(id)a3 ephemeralPublicKey:(id)a4 publicKeyHash:(id)a5 encryptedData:(id)a6;
@end

@implementation PKPaymentVehicleManufacturerResponse

- (PKPaymentVehicleManufacturerResponse)initWithData:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PKPaymentVehicleManufacturerResponse;
  v3 = [(PKWebServiceResponse *)&v21 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 PKDictionaryForKey:@"oemData"];
      v7 = [v6 PKStringForKey:@"version"];
      encryptionScheme = v4->_encryptionScheme;
      v4->_encryptionScheme = v7;

      v9 = [v6 PKStringForKey:@"ephemeralPublicKey"];
      ephemeralPublicKey = v4->_ephemeralPublicKey;
      v4->_ephemeralPublicKey = v9;

      v11 = [v6 PKStringForKey:@"publicKeyHash"];
      publicKeyHash = v4->_publicKeyHash;
      v4->_publicKeyHash = v11;

      v13 = [v6 PKStringForKey:@"data"];
      if (v13)
      {
        v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v13 options:1];
        encryptedData = v4->_encryptedData;
        v4->_encryptedData = v14;
      }
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = objc_opt_class();
        *buf = 138543618;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        v19 = v18;
        _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v6 = v4;
      v4 = 0;
    }
  }

  return v4;
}

- (PKPaymentVehicleManufacturerResponse)initWithEncryptionScheme:(id)a3 ephemeralPublicKey:(id)a4 publicKeyHash:(id)a5 encryptedData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = PKPaymentVehicleManufacturerResponse;
  v14 = [(PKPaymentVehicleManufacturerResponse *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    encryptionScheme = v14->_encryptionScheme;
    v14->_encryptionScheme = v15;

    v17 = [v11 copy];
    ephemeralPublicKey = v14->_ephemeralPublicKey;
    v14->_ephemeralPublicKey = v17;

    v19 = [v12 copy];
    publicKeyHash = v14->_publicKeyHash;
    v14->_publicKeyHash = v19;

    v21 = [v13 copy];
    encryptedData = v14->_encryptedData;
    v14->_encryptedData = v21;
  }

  return v14;
}

@end