@interface PKSecureElementProvisioningState
- (BOOL)isEqual:(id)a3;
- (PKSecureElementProvisioningState)init;
- (PKSecureElementProvisioningState)initWithCoder:(id)a3;
- (id)_init;
- (id)createDivergentStateClaimNonce:(BOOL)a3;
- (id)description;
- (id)useNonce;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setNonce:(id)a3;
- (void)setRequirementsResponse:(id)a3;
@end

@implementation PKSecureElementProvisioningState

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKSecureElementProvisioningState;
  return [(PKSecureElementProvisioningState *)&v3 init];
}

- (PKSecureElementProvisioningState)init
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = [(PKSecureElementProvisioningState *)self _init];
  if (v2)
  {
    v9[0] = 0;
    v9[1] = 0;
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    [v3 getUUIDBytes:v9];

    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:16];
    v5 = [v4 base64EncodedStringWithOptions:0];

    v6 = [v5 substringToIndex:22];
    sid = v2->_sid;
    v2->_sid = v6;
  }

  return v2;
}

- (void)setNonce:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_nonce, a3);
    v5 = v6;
  }
}

- (id)useNonce
{
  nonce = self->_nonce;
  v4 = nonce;
  v5 = self->_nonce;
  self->_nonce = 0;

  return nonce;
}

- (void)setRequirementsResponse:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_requirementsResponse, a3);
  v5 = [v6 productIdentifier];
  if (v5)
  {
    objc_storeStrong(&self->_productIdentifier, v5);
  }
}

- (PKSecureElementProvisioningState)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PKSecureElementProvisioningState;
  v5 = [(PKSecureElementProvisioningState *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
    sid = v5->_sid;
    v5->_sid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalizedAuth"];
    externalizedAuth = v5->_externalizedAuth;
    v5->_externalizedAuth = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requirementsResponse"];
    requirementsResponse = v5->_requirementsResponse;
    v5->_requirementsResponse = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eligibilityResponse"];
    eligibilityResponse = v5->_eligibilityResponse;
    v5->_eligibilityResponse = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningResponse"];
    provisioningResponse = v5->_provisioningResponse;
    v5->_provisioningResponse = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureElementReservationGroupIdentifier"];
    secureElementReservationGroupIdentifier = v5->_secureElementReservationGroupIdentifier;
    v5->_secureElementReservationGroupIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrerIdentifier"];
    referrerIdentifier = v5->_referrerIdentifier;
    v5->_referrerIdentifier = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningStepState"];
    provisioningStepState = v5->_provisioningStepState;
    v5->_provisioningStepState = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sid = self->_sid;
  v5 = a3;
  [v5 encodeObject:sid forKey:@"sid"];
  [v5 encodeObject:self->_externalizedAuth forKey:@"externalizedAuth"];
  [v5 encodeObject:self->_requirementsResponse forKey:@"requirementsResponse"];
  [v5 encodeObject:self->_eligibilityResponse forKey:@"eligibilityResponse"];
  [v5 encodeObject:self->_provisioningResponse forKey:@"provisioningResponse"];
  [v5 encodeObject:self->_secureElementReservationGroupIdentifier forKey:@"secureElementReservationGroupIdentifier"];
  [v5 encodeObject:self->_productIdentifier forKey:@"productIdentifier"];
  [v5 encodeObject:self->_nonce forKey:@"nonce"];
  [v5 encodeObject:self->_referrerIdentifier forKey:@"referrerIdentifier"];
  [v5 encodeObject:self->_provisioningStepState forKey:@"provisioningStepState"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"sid: '%@'; ", self->_sid];
  if (self->_externalizedAuth)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  [v6 appendFormat:@"hasExternalizedAuth: '%@'; ", v7];
  [v6 appendFormat:@"productIdentifier: '%@'; ", self->_productIdentifier];
  if (self->_provisioningStepState)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  [v6 appendFormat:@"hasProvisioningStepState: '%@'; ", v8];
  [v6 appendFormat:@">"];
  v9 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_sid];
  [v3 safelyAddObject:self->_externalizedAuth];
  [v3 safelyAddObject:self->_requirementsResponse];
  [v3 safelyAddObject:self->_eligibilityResponse];
  [v3 safelyAddObject:self->_provisioningResponse];
  [v3 safelyAddObject:self->_secureElementReservationGroupIdentifier];
  [v3 safelyAddObject:self->_productIdentifier];
  [v3 safelyAddObject:self->_nonce];
  [v3 safelyAddObject:self->_referrerIdentifier];
  [v3 safelyAddObject:self->_provisioningStepState];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        sid = self->_sid;
        v8 = v6->_sid;
        if (sid && v8)
        {
          if (([(NSString *)sid isEqual:?]& 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else if (sid != v8)
        {
          goto LABEL_53;
        }

        externalizedAuth = self->_externalizedAuth;
        v11 = v6->_externalizedAuth;
        if (externalizedAuth && v11)
        {
          if (([(NSData *)externalizedAuth isEqual:?]& 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else if (externalizedAuth != v11)
        {
          goto LABEL_53;
        }

        requirementsResponse = self->_requirementsResponse;
        v13 = v6->_requirementsResponse;
        if (requirementsResponse && v13)
        {
          if (([(PKPaymentRequirementsResponse *)requirementsResponse isEqual:?]& 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else if (requirementsResponse != v13)
        {
          goto LABEL_53;
        }

        eligibilityResponse = self->_eligibilityResponse;
        v15 = v6->_eligibilityResponse;
        if (eligibilityResponse && v15)
        {
          if (([(PKPaymentEligibilityResponse *)eligibilityResponse isEqual:?]& 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else if (eligibilityResponse != v15)
        {
          goto LABEL_53;
        }

        provisioningResponse = self->_provisioningResponse;
        v17 = v6->_provisioningResponse;
        if (provisioningResponse && v17)
        {
          if (([(PKPaymentProvisioningResponse *)provisioningResponse isEqual:?]& 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else if (provisioningResponse != v17)
        {
          goto LABEL_53;
        }

        secureElementReservationGroupIdentifier = self->_secureElementReservationGroupIdentifier;
        v19 = v6->_secureElementReservationGroupIdentifier;
        if (secureElementReservationGroupIdentifier && v19)
        {
          if (([(NSString *)secureElementReservationGroupIdentifier isEqual:?]& 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else if (secureElementReservationGroupIdentifier != v19)
        {
          goto LABEL_53;
        }

        productIdentifier = self->_productIdentifier;
        v21 = v6->_productIdentifier;
        if (productIdentifier && v21)
        {
          if (([(NSString *)productIdentifier isEqual:?]& 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else if (productIdentifier != v21)
        {
          goto LABEL_53;
        }

        nonce = self->_nonce;
        v23 = v6->_nonce;
        if (nonce && v23)
        {
          if (([(NSString *)nonce isEqual:?]& 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else if (nonce != v23)
        {
          goto LABEL_53;
        }

        referrerIdentifier = self->_referrerIdentifier;
        v25 = v6->_referrerIdentifier;
        if (referrerIdentifier && v25)
        {
          if (([(NSString *)referrerIdentifier isEqual:?]& 1) != 0)
          {
LABEL_49:
            provisioningStepState = self->_provisioningStepState;
            v27 = v6->_provisioningStepState;
            if (provisioningStepState && v27)
            {
              v9 = [(NSData *)provisioningStepState isEqual:?];
            }

            else
            {
              v9 = provisioningStepState == v27;
            }

            goto LABEL_54;
          }
        }

        else if (referrerIdentifier == v25)
        {
          goto LABEL_49;
        }

LABEL_53:
        v9 = 0;
LABEL_54:

        goto LABEL_55;
      }
    }

    v9 = 0;
  }

LABEL_55:

  return v9;
}

- (id)createDivergentStateClaimNonce:(BOOL)a3
{
  v3 = a3;
  v5 = [[PKSecureElementProvisioningState alloc] _init];
  v6 = [(NSString *)self->_sid copy];
  v7 = *(v5 + 2);
  *(v5 + 2) = v6;

  v8 = [(NSData *)self->_externalizedAuth copy];
  v9 = *(v5 + 3);
  *(v5 + 3) = v8;

  objc_storeStrong(v5 + 8, self->_requirementsResponse);
  objc_storeStrong(v5 + 9, self->_eligibilityResponse);
  objc_storeStrong(v5 + 10, self->_provisioningResponse);
  v10 = [(NSString *)self->_secureElementReservationGroupIdentifier copy];
  v11 = *(v5 + 4);
  *(v5 + 4) = v10;

  v12 = [(NSString *)self->_productIdentifier copy];
  v13 = *(v5 + 6);
  *(v5 + 6) = v12;

  if (v3)
  {
    v14 = [(PKSecureElementProvisioningState *)self useNonce];
    v15 = *(v5 + 1);
    *(v5 + 1) = v14;
  }

  v16 = [(NSString *)self->_referrerIdentifier copy];
  v17 = *(v5 + 5);
  *(v5 + 5) = v16;

  v18 = [(NSData *)self->_provisioningStepState copy];
  v19 = *(v5 + 7);
  *(v5 + 7) = v18;

  return v5;
}

@end