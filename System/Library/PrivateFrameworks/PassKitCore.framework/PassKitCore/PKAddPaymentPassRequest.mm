@interface PKAddPaymentPassRequest
- (BOOL)_hasRequiredFields:(BOOL)a3;
- (BOOL)_hasRequiredThirdPartyFields:(BOOL)a3;
- (PKAddPaymentPassRequest)init;
- (PKAddPaymentPassRequest)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAddPaymentPassRequest

- (PKAddPaymentPassRequest)init
{
  v3.receiver = self;
  v3.super_class = PKAddPaymentPassRequest;
  return [(PKAddPaymentPassRequest *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKAddPaymentPassRequest;
  [(PKAddPaymentPassRequest *)&v2 dealloc];
}

- (PKAddPaymentPassRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKAddPaymentPassRequest;
  v5 = [(PKAddPaymentPassRequest *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedPassData"];
    encryptedPassData = v5->_encryptedPassData;
    v5->_encryptedPassData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activationData"];
    activationData = v5->_activationData;
    v5->_activationData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKey"];
    ephemeralPublicKey = v5->_ephemeralPublicKey;
    v5->_ephemeralPublicKey = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappedKey"];
    wrappedKey = v5->_wrappedKey;
    v5->_wrappedKey = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  encryptedPassData = self->_encryptedPassData;
  v5 = a3;
  [v5 encodeObject:encryptedPassData forKey:@"encryptedPassData"];
  [v5 encodeObject:self->_activationData forKey:@"activationData"];
  [v5 encodeObject:self->_ephemeralPublicKey forKey:@"ephemeralPublicKey"];
  [v5 encodeObject:self->_wrappedKey forKey:@"wrappedKey"];
}

- (BOOL)_hasRequiredThirdPartyFields:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PKAddPaymentPassRequest__hasRequiredThirdPartyFields___block_invoke;
  aBlock[3] = &unk_1E79DAA38;
  v9 = a3;
  aBlock[4] = self;
  aBlock[5] = &v10;
  v4 = _Block_copy(aBlock);
  v4[2](v4, self->_encryptedPassData != 0, @"encryptedPassData missing");
  v4[2](v4, self->_activationData != 0, @"activationData missing");
  if (self->_ephemeralPublicKey)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(NSString *)self->_encryptionVersion isEqualToString:@"EV_ECC_v2"]^ 1;
  }

  v4[2](v4, v5, @"ephemeralPublicKey missing");
  v6 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v6;
}

void __56__PKAddPaymentPassRequest__hasRequiredThirdPartyFields___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1 && (a2 & 1) == 0)
  {
    *(v6 + 24) = 0;
    if (*(a1 + 48) == 1)
    {
      v7 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = 134218242;
        v10 = v8;
        v11 = 2114;
        v12 = v5;
        _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "PKAddPaymentPassRequest (%p): %{public}@", &v9, 0x16u);
      }
    }
  }
}

- (BOOL)_hasRequiredFields:(BOOL)a3
{
  v4 = self;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = [(PKAddPaymentPassRequest *)self _hasRequiredThirdPartyFields:?];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PKAddPaymentPassRequest__hasRequiredFields___block_invoke;
  aBlock[3] = &unk_1E79DAA38;
  v8 = a3;
  aBlock[4] = v4;
  aBlock[5] = &v9;
  v5 = _Block_copy(aBlock);
  v5[2](v5, v4->_encryptionVersion != 0, @"encryptionVersion missing");
  v5[2](v5, v4->_issuerIdentifier != 0, @"teamID missing");
  v5[2](v5, v4->_hostApplicationIdentifier != 0, @"applicationIdentifier missing");
  v5[2](v5, v4->_hostApplicationVersion != 0, @"bundleVersion missing");
  v5[2](v5, v4->_publicKeyHash != 0, @"precondition failed");
  LOBYTE(v4) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v4;
}

void __46__PKAddPaymentPassRequest__hasRequiredFields___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1 && (a2 & 1) == 0)
  {
    *(v6 + 24) = 0;
    if (*(a1 + 48) == 1)
    {
      v7 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = 134218242;
        v10 = v8;
        v11 = 2114;
        v12 = v5;
        _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "PKAddPaymentPassRequest (%p): %{public}@", &v9, 0x16u);
      }
    }
  }
}

@end