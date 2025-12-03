@interface PKSEConsistencyCheckPassCredential
- (PKAppletSubcredential)subcredential;
- (PKPaymentApplication)paymentApplication;
- (PKSEConsistencyCheckPassCredential)initWithPassCredential:(id)credential address:(id)address paymentMethod:(unint64_t)method;
- (id)description;
@end

@implementation PKSEConsistencyCheckPassCredential

- (PKSEConsistencyCheckPassCredential)initWithPassCredential:(id)credential address:(id)address paymentMethod:(unint64_t)method
{
  credentialCopy = credential;
  addressCopy = address;
  v16.receiver = self;
  v16.super_class = PKSEConsistencyCheckPassCredential;
  v11 = [(PKSEConsistencyCheckPassCredential *)&v16 init];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11->_type = 0;
      v12 = credentialCopy;
      v11->_state = [v12 state];
      subcredentials = [v12 subcredentials];

      v11->_containsSubkeys = [subcredentials count] != 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = 0;
        goto LABEL_8;
      }

      v11->_type = 1;
      v11->_state = [credentialCopy state];
    }

    objc_storeStrong(&v11->_underlyingpassCredential, credential);
    objc_storeStrong(&v11->_address, address);
    v11->_paymentMethod = method;
  }

  v14 = v11;
LABEL_8:

  return v14;
}

- (PKPaymentApplication)paymentApplication
{
  if (self->_type)
  {
    return 0;
  }

  else
  {
    return self->_underlyingpassCredential;
  }
}

- (PKAppletSubcredential)subcredential
{
  if (self->_type == 1)
  {
    return self->_underlyingpassCredential;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  type = self->_type;
  v4 = @"AppletSubcredential";
  if (type != 1)
  {
    v4 = 0;
  }

  if (type)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"PaymentApplication";
  }

  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v6 appendFormat:@"type: '%@'; ", v5];
  [v6 appendFormat:@"state: '%lu'; ", self->_state];
  shortDescription = [(PKSECredentialAddress *)self->_address shortDescription];
  [v6 appendFormat:@"address: '%@'; ", shortDescription];

  if (self->_containsSubkeys)
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  [v6 appendFormat:@"containsSubkeys: '%@'; ", v8];
  if (self->_keyMaterialHashForDeviceCredentialType)
  {
    [v6 appendFormat:@"keyMaterialHashes: {"];
    keyMaterialHashForDeviceCredentialType = self->_keyMaterialHashForDeviceCredentialType;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__PKSEConsistencyCheckPassCredential_description__block_invoke;
    v12[3] = &unk_1E79D9C38;
    v10 = v6;
    v13 = v10;
    [(NSDictionary *)keyMaterialHashForDeviceCredentialType enumerateKeysAndObjectsUsingBlock:v12];
    [v10 appendFormat:@"}; "];
  }

  [v6 appendFormat:@">"];

  return v6;
}

void __49__PKSEConsistencyCheckPassCredential_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 base64EncodedStringWithOptions:0];
  [v4 appendFormat:@"%@: %@, ", v5, v6];
}

@end