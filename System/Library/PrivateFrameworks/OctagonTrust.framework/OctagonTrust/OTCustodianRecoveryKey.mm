@interface OTCustodianRecoveryKey
- (BOOL)generateWrappingWithError:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCustodianRecoveryKey:(id)a3;
- (BOOL)unwrapWithError:(id *)a3;
- (OTCustodianRecoveryKey)initWithCoder:(id)a3;
- (OTCustodianRecoveryKey)initWithUUID:(id)a3 recoveryString:(id)a4 error:(id *)a5;
- (OTCustodianRecoveryKey)initWithWrappedKey:(id)a3 wrappingKey:(id)a4 uuid:(id)a5 error:(id *)a6;
- (id)dictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OTCustodianRecoveryKey

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_wrappingKey forKey:@"wrappingKey"];
  [v5 encodeObject:self->_wrappedKey forKey:@"wrappedKey"];
  [v5 encodeObject:self->_recoveryString forKey:@"recoveryString"];
}

- (OTCustodianRecoveryKey)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = OTCustodianRecoveryKey;
  v5 = [(OTCustodianRecoveryKey *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappingKey"];
    wrappingKey = v5->_wrappingKey;
    v5->_wrappingKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappedKey"];
    wrappedKey = v5->_wrappedKey;
    v5->_wrappedKey = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recoveryString"];
    recoveryString = v5->_recoveryString;
    v5->_recoveryString = v12;
  }

  return v5;
}

- (id)dictionary
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"uuid";
  v3 = [(OTCustodianRecoveryKey *)self uuid];
  v4 = [v3 description];
  v14[0] = v4;
  v13[1] = @"recoveryString";
  v5 = [(OTCustodianRecoveryKey *)self recoveryString];
  v14[1] = v5;
  v13[2] = @"wrappingKey";
  v6 = [(OTCustodianRecoveryKey *)self wrappingKey];
  v7 = [v6 base64EncodedStringWithOptions:0];
  v14[2] = v7;
  v13[3] = @"wrappedKey";
  v8 = [(OTCustodianRecoveryKey *)self wrappedKey];
  v9 = [v8 base64EncodedStringWithOptions:0];
  v14[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(OTCustodianRecoveryKey *)self isEqualToCustodianRecoveryKey:v4];
  }

  return v5;
}

- (BOOL)isEqualToCustodianRecoveryKey:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    v5 = [(OTCustodianRecoveryKey *)self uuid];
    v6 = [(OTCustodianRecoveryKey *)v4 uuid];
    if ([v5 isEqual:v6])
    {
      v7 = [(OTCustodianRecoveryKey *)self wrappingKey];
      v8 = [(OTCustodianRecoveryKey *)v4 wrappingKey];
      if ([v7 isEqualToData:v8])
      {
        v9 = [(OTCustodianRecoveryKey *)self wrappedKey];
        v10 = [(OTCustodianRecoveryKey *)v4 wrappedKey];
        if ([v9 isEqualToData:v10])
        {
          v11 = [(OTCustodianRecoveryKey *)self recoveryString];
          v12 = [(OTCustodianRecoveryKey *)v4 recoveryString];
          v13 = [v11 isEqualToString:v12];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (OTCustodianRecoveryKey)initWithWrappedKey:(id)a3 wrappingKey:(id)a4 uuid:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = OTCustodianRecoveryKey;
  v14 = [(OTCustodianRecoveryKey *)&v18 init];
  p_isa = &v14->super.isa;
  if (v14 && (objc_storeStrong(&v14->_uuid, a5), objc_storeStrong(p_isa + 3, a3), objc_storeStrong(p_isa + 2, a4), ![p_isa unwrapWithError:a6]))
  {
    v16 = 0;
  }

  else
  {
    v16 = p_isa;
  }

  return v16;
}

- (BOOL)unwrapWithError:(id *)a3
{
  v5 = [objc_alloc(MEMORY[0x1E69CA628]) initWithBitSize:2];
  v6 = [objc_alloc(MEMORY[0x1E69CA620]) initWithData:self->_wrappingKey specifier:v5 error:a3];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69CA638]) initWithKeySpecifier:v5];
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:self->_wrappedKey error:a3];
    if (v8)
    {
      v9 = [v7 decrypt:v8 withKey:v6 error:a3];
      v10 = v9 != 0;
      if (v9)
      {
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
        recoveryString = self->_recoveryString;
        self->_recoveryString = v11;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (OTCustodianRecoveryKey)initWithUUID:(id)a3 recoveryString:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = OTCustodianRecoveryKey;
  v11 = [(OTCustodianRecoveryKey *)&v18 init];
  p_isa = &v11->super.isa;
  if (!v11)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v11->_uuid, a3);
  objc_storeStrong(p_isa + 4, a4);
  v17 = 0;
  v13 = [p_isa generateWrappingWithError:&v17];
  v14 = v17;
  if (v13)
  {

LABEL_4:
    v15 = p_isa;
    goto LABEL_8;
  }

  if (a5)
  {
    v14 = v14;
    *a5 = v14;
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (BOOL)generateWrappingWithError:(id *)a3
{
  v5 = [objc_alloc(MEMORY[0x1E69CA628]) initWithBitSize:2];
  v6 = [objc_alloc(MEMORY[0x1E69CA620]) initRandomKeyWithSpecifier:v5 error:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 keyData];
    wrappingKey = self->_wrappingKey;
    self->_wrappingKey = v8;

    v10 = [objc_alloc(MEMORY[0x1E69CA638]) initWithKeySpecifier:v5];
    v11 = [(NSString *)self->_recoveryString dataUsingEncoding:4];
    v12 = [MEMORY[0x1E695DEF0] data];
    v13 = [v10 encrypt:v11 withKey:v7 additionalAuthenticatedData:v12 error:a3];

    if (v13)
    {
      v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:a3];
      v15 = v14 != 0;
      if (v14)
      {
        objc_storeStrong(&self->_wrappedKey, v14);
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end