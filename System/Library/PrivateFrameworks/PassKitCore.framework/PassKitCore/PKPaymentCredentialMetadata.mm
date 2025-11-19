@interface PKPaymentCredentialMetadata
+ (Class)classForValueType:(id)a3;
+ (id)paymentCredentialMetadataWithConfiguration:(id)a3;
- (BOOL)_isEqualToMetadata:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPaymentCredentialMetadata)initWithConfiguration:(id)a3;
- (unint64_t)hash;
@end

@implementation PKPaymentCredentialMetadata

+ (Class)classForValueType:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"text"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"date") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"currency"))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)paymentCredentialMetadataWithConfiguration:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKey:@"valueType"];
  v5 = [objc_opt_class() classForValueType:v4];
  if (v5)
  {
    v6 = [[v5 alloc] initWithConfiguration:v3];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Could not generate meta data for the value type:%{public}@", &v9, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (PKPaymentCredentialMetadata)initWithConfiguration:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentCredentialMetadata;
  v5 = [(PKPaymentCredentialMetadata *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"localizedDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v6;

    v8 = [v4 objectForKey:@"value"];
    value = v5->_value;
    v5->_value = v8;

    if (!v5->_localizedDisplayName || !v5->_value)
    {

      v10 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Bad config could not create metadata", v12, 2u);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPaymentCredentialMetadata *)self _isEqualToMetadata:v4];
  }

  return v5;
}

- (BOOL)_isEqualToMetadata:(id)a3
{
  v4 = a3;
  v5 = v4[1];
  v6 = self->_localizedDisplayName;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

LABEL_10:
    v12 = v4[2];
    v6 = self->_value;
    v13 = v12;
    v8 = v13;
    if (v6 == v13)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v6 && v13)
      {
        v10 = [(NSString *)v6 isEqualToString:v13];
      }
    }

    goto LABEL_15;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v11 = [(NSString *)v6 isEqualToString:v7];

    if (!v11)
    {
      v10 = 0;
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v10 = 0;
LABEL_15:

LABEL_16:
  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_localizedDisplayName];
  [v3 safelyAddObject:self->_value];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end