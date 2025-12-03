@interface PKAddHomeKeyPassConfiguration
- (PKAddHomeKeyPassConfiguration)initWithCoder:(id)coder;
- (PKAddHomeKeyPassConfiguration)initWithPaymentCredentialTypes:(id)types;
- (PKAddHomeKeyPassConfiguration)initWithPaymentMethodTypes:(id)types;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAddHomeKeyPassConfiguration

- (PKAddHomeKeyPassConfiguration)initWithPaymentCredentialTypes:(id)types
{
  v29 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v25.receiver = self;
  v25.super_class = PKAddHomeKeyPassConfiguration;
  v5 = [(PKAddSecureElementPassConfiguration *)&v25 initWithType:3];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = typesCopy;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          unsignedIntegerValue = [*(*(&v21 + 1) + 8 * i) unsignedIntegerValue];
          if (unsignedIntegerValue == 139)
          {
            v14 = +[PKProvisioningSEStorageSnapshot appletTypePurpleTrustAirAliro];
          }

          else
          {
            v13 = unsignedIntegerValue;
            if (unsignedIntegerValue != 133)
            {
              v19 = PKLogFacilityTypeGetObject(0);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v27 = v13;
                _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Unrecognized payment credential type: %ld", buf, 0xCu);
              }

              v18 = 0;
              goto LABEL_18;
            }

            v14 = +[PKProvisioningSEStorageSnapshot appletTypePurpleTrustAirHome];
          }

          v15 = v14;
          [v6 addObject:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v16 = [v6 copy];
    appletTypes = v5->_appletTypes;
    v5->_appletTypes = v16;
  }

  v18 = v5;
LABEL_18:

  return v18;
}

- (PKAddHomeKeyPassConfiguration)initWithPaymentMethodTypes:(id)types
{
  v25 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = typesCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        unsignedIntegerValue = [*(*(&v18 + 1) + 8 * i) unsignedIntegerValue];
        v12 = &unk_1F23B5630;
        if (unsignedIntegerValue != 1003)
        {
          v13 = unsignedIntegerValue;
          if (unsignedIntegerValue != 1004)
          {
            v16 = PKLogFacilityTypeGetObject(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v23 = v13;
              _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Unrecognized payment method type: %ld", buf, 0xCu);
            }

            selfCopy = 0;
            v14 = v6;
            goto LABEL_15;
          }

          v12 = &unk_1F23B5648;
        }

        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v5 copy];
  self = [(PKAddHomeKeyPassConfiguration *)self initWithPaymentCredentialTypes:v14];
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"appletTypes: '%@'; ", self->_appletTypes];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKAddHomeKeyPassConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKAddHomeKeyPassConfiguration;
  v5 = [(PKAddSecureElementPassConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"appletTypes"];
    appletTypes = v5->_appletTypes;
    v5->_appletTypes = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKAddHomeKeyPassConfiguration;
  coderCopy = coder;
  [(PKAddSecureElementPassConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_appletTypes forKey:{@"appletTypes", v5.receiver, v5.super_class}];
}

@end