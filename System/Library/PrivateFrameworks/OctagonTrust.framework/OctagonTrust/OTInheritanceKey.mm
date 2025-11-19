@interface OTInheritanceKey
+ (id)base32:(const char *)a3 len:(unint64_t)a4;
+ (id)parseBase32:(id)a3 checksumSize:(unint64_t)a4 error:(id *)a5;
+ (id)printableWithData:(id)a3 checksumSize:(unint64_t)a4 error:(id *)a5;
+ (id)unbase32:(const char *)a3 len:(unint64_t)a4;
- (BOOL)generateWrappingWithError:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOTInheritanceKey:(id)a3;
- (BOOL)isKeyEquals:(id)a3;
- (BOOL)isRecoveryKeyEqual:(id)a3;
- (BOOL)unwrapWithError:(id *)a3;
- (BOOL)wrapWithWrappingKey:(id)a3 error:(id *)a4;
- (OTInheritanceKey)initWithCoder:(id)a3;
- (OTInheritanceKey)initWithUUID:(id)a3 claimTokenData:(id)a4 wrappingKeyData:(id)a5 error:(id *)a6;
- (OTInheritanceKey)initWithUUID:(id)a3 error:(id *)a4;
- (OTInheritanceKey)initWithUUID:(id)a3 oldIK:(id)a4 error:(id *)a5;
- (OTInheritanceKey)initWithWrappedKeyData:(id)a3 wrappingKeyData:(id)a4 claimTokenData:(id)a5 uuid:(id)a6 error:(id *)a7;
- (OTInheritanceKey)initWithWrappedKeyData:(id)a3 wrappingKeyString:(id)a4 uuid:(id)a5 error:(id *)a6;
- (OTInheritanceKey)initWithWrappedKeyString:(id)a3 wrappingKeyData:(id)a4 uuid:(id)a5 error:(id *)a6;
- (id)dictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OTInheritanceKey

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_wrappingKeyData forKey:@"wrappingKeyData"];
  [v5 encodeObject:self->_wrappedKeyData forKey:@"wrappedKeyData"];
  [v5 encodeObject:self->_wrappingKeyString forKey:@"wrappingKeyString"];
  [v5 encodeObject:self->_wrappedKeyString forKey:@"wrappedKeyString"];
  [v5 encodeObject:self->_claimTokenData forKey:@"claimTokenData"];
  [v5 encodeObject:self->_claimTokenString forKey:@"claimTokenString"];
  [v5 encodeObject:self->_recoveryKeyData forKey:@"recoveryKeyData"];
}

- (OTInheritanceKey)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = OTInheritanceKey;
  v5 = [(OTInheritanceKey *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappingKeyData"];
    wrappingKeyData = v5->_wrappingKeyData;
    v5->_wrappingKeyData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappedKeyData"];
    wrappedKeyData = v5->_wrappedKeyData;
    v5->_wrappedKeyData = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappingKeyString"];
    wrappingKeyString = v5->_wrappingKeyString;
    v5->_wrappingKeyString = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappedKeyString"];
    wrappedKeyString = v5->_wrappedKeyString;
    v5->_wrappedKeyString = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"claimTokenData"];
    claimTokenData = v5->_claimTokenData;
    v5->_claimTokenData = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"claimTokenString"];
    claimTokenString = v5->_claimTokenString;
    v5->_claimTokenString = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recoveryKeyData"];
    recoveryKeyData = v5->_recoveryKeyData;
    v5->_recoveryKeyData = v20;
  }

  return v5;
}

- (id)dictionary
{
  v21[6] = *MEMORY[0x1E69E9840];
  v20[0] = @"uuid";
  v19 = [(OTInheritanceKey *)self uuid];
  v18 = [v19 description];
  v21[0] = v18;
  v20[1] = @"wrappingKeyData";
  v17 = [(OTInheritanceKey *)self wrappingKeyData];
  v3 = [v17 base64EncodedStringWithOptions:0];
  v21[1] = v3;
  v20[2] = @"wrappingKeyString";
  v4 = [(OTInheritanceKey *)self wrappingKeyString];
  v21[2] = v4;
  v20[3] = @"wrappedKeyData";
  v5 = [(OTInheritanceKey *)self wrappedKeyData];
  v6 = [v5 base64EncodedStringWithOptions:0];
  v21[3] = v6;
  v20[4] = @"wrappedKeyString";
  v7 = [(OTInheritanceKey *)self wrappedKeyString];
  v21[4] = v7;
  v20[5] = @"recoveryKeyData";
  v8 = [(OTInheritanceKey *)self recoveryKeyData];
  v9 = [v8 base64EncodedStringWithOptions:0];
  v21[5] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v11 = [v10 mutableCopy];

  v12 = [(OTInheritanceKey *)self claimTokenData];
  v13 = [v12 base64EncodedStringWithOptions:0];
  [v11 setObject:v13 forKeyedSubscript:@"claimTokenData"];

  v14 = [(OTInheritanceKey *)self claimTokenString];
  [v11 setObject:v14 forKeyedSubscript:@"claimTokenString"];

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isKeyEquals:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    v5 = [(OTInheritanceKey *)self wrappingKeyData];
    v6 = [(OTInheritanceKey *)v4 wrappingKeyData];
    if ([v5 isEqualToData:v6])
    {
      v7 = [(OTInheritanceKey *)self wrappingKeyString];
      v8 = [(OTInheritanceKey *)v4 wrappingKeyString];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(OTInheritanceKey *)self wrappedKeyData];
        v10 = [(OTInheritanceKey *)v4 wrappedKeyData];
        if ([v9 isEqualToData:v10])
        {
          v11 = [(OTInheritanceKey *)self wrappedKeyString];
          v12 = [(OTInheritanceKey *)v4 wrappedKeyString];
          if ([v11 isEqualToString:v12])
          {
            v22 = v11;
            v13 = [(OTInheritanceKey *)self claimTokenData];
            [(OTInheritanceKey *)v4 claimTokenData];
            v21 = v23 = v13;
            if ([v13 isEqualToData:?])
            {
              v14 = [(OTInheritanceKey *)self claimTokenString];
              v19 = [(OTInheritanceKey *)v4 claimTokenString];
              v20 = v14;
              if ([v14 isEqualToString:?])
              {
                v15 = [(OTInheritanceKey *)self recoveryKeyData];
                v18 = [(OTInheritanceKey *)v4 recoveryKeyData];
                v16 = [v15 isEqualToData:v18];
              }

              else
              {
                v16 = 0;
              }

              v11 = v22;
            }

            else
            {
              v16 = 0;
              v11 = v22;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (BOOL)isRecoveryKeyEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    v5 = [(OTInheritanceKey *)self uuid];
    v6 = [(OTInheritanceKey *)v4 uuid];
    if ([v5 isEqual:v6])
    {
      v7 = [(OTInheritanceKey *)self wrappingKeyData];
      v8 = [(OTInheritanceKey *)v4 wrappingKeyData];
      if ([v7 isEqualToData:v8])
      {
        v9 = [(OTInheritanceKey *)self wrappingKeyString];
        v10 = [(OTInheritanceKey *)v4 wrappingKeyString];
        if ([v9 isEqualToString:v10])
        {
          v11 = [(OTInheritanceKey *)self wrappedKeyData];
          v12 = [(OTInheritanceKey *)v4 wrappedKeyData];
          if ([v11 isEqualToData:v12])
          {
            v21 = v11;
            v13 = [(OTInheritanceKey *)self wrappedKeyString];
            v14 = [(OTInheritanceKey *)v4 wrappedKeyString];
            v22 = v13;
            v15 = v13;
            v16 = v14;
            if ([v15 isEqualToString:v14])
            {
              v20 = [(OTInheritanceKey *)self recoveryKeyData];
              v19 = [(OTInheritanceKey *)v4 recoveryKeyData];
              v17 = [v20 isEqualToData:v19];
            }

            else
            {
              v17 = 0;
            }

            v11 = v21;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(OTInheritanceKey *)self isEqualToOTInheritanceKey:v4];
  }

  return v5;
}

- (BOOL)isEqualToOTInheritanceKey:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    v5 = [(OTInheritanceKey *)self uuid];
    v6 = [(OTInheritanceKey *)v4 uuid];
    if ([v5 isEqual:v6])
    {
      v7 = [(OTInheritanceKey *)self wrappingKeyData];
      v8 = [(OTInheritanceKey *)v4 wrappingKeyData];
      if ([v7 isEqualToData:v8])
      {
        v9 = [(OTInheritanceKey *)self wrappingKeyString];
        v10 = [(OTInheritanceKey *)v4 wrappingKeyString];
        if ([v9 isEqualToString:v10])
        {
          v11 = [(OTInheritanceKey *)self wrappedKeyData];
          v12 = [(OTInheritanceKey *)v4 wrappedKeyData];
          if ([v11 isEqualToData:v12])
          {
            v25 = v11;
            v13 = [(OTInheritanceKey *)self wrappedKeyString];
            [(OTInheritanceKey *)v4 wrappedKeyString];
            v24 = v26 = v13;
            if ([v13 isEqualToString:?])
            {
              v14 = [(OTInheritanceKey *)self claimTokenData];
              v22 = [(OTInheritanceKey *)v4 claimTokenData];
              v23 = v14;
              if ([v14 isEqualToData:?])
              {
                v15 = [(OTInheritanceKey *)self claimTokenString];
                v20 = [(OTInheritanceKey *)v4 claimTokenString];
                v21 = v15;
                if ([v15 isEqualToString:?])
                {
                  v16 = [(OTInheritanceKey *)self recoveryKeyData];
                  v19 = [(OTInheritanceKey *)v4 recoveryKeyData];
                  v17 = [v16 isEqualToData:v19];
                }

                else
                {
                  v17 = 0;
                }

                v11 = v25;
              }

              else
              {
                v17 = 0;
                v11 = v25;
              }
            }

            else
            {
              v17 = 0;
              v11 = v25;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (OTInheritanceKey)initWithUUID:(id)a3 claimTokenData:(id)a4 wrappingKeyData:(id)a5 error:(id *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v28.receiver = self;
  v28.super_class = OTInheritanceKey;
  v14 = [(OTInheritanceKey *)&v28 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_uuid, a3);
    objc_storeStrong(&v15->_claimTokenData, a4);
    v16 = [OTInheritanceKey printableWithData:v15->_claimTokenData checksumSize:4 error:a6];
    claimTokenString = v15->_claimTokenString;
    v15->_claimTokenString = v16;

    if (!v15->_claimTokenString)
    {
      goto LABEL_8;
    }

    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    bytes[2] = v18;
    bytes[3] = v18;
    bytes[0] = v18;
    bytes[1] = v18;
    v19 = SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x40uLL, bytes);
    if (v19)
    {
      v20 = v19;
      memset_s(bytes, 0x40uLL, 0, 0x40uLL);
      if (a6)
      {
        v21 = MEMORY[0x1E696ABC0];
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SecRandomCopyBytes: %d", v20];
        *a6 = [v21 errorWithDomain:@"com.apple.security.OctagonTrust.OTInheritanceKey" code:7 description:v22];
      }

      goto LABEL_8;
    }

    v23 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:64];
    recoveryKeyData = v15->_recoveryKeyData;
    v15->_recoveryKeyData = v23;

    memset_s(bytes, 0x40uLL, 0, 0x40uLL);
    if (![(OTInheritanceKey *)v15 wrapWithWrappingKey:v13 error:a6])
    {
LABEL_8:
      v25 = 0;
      goto LABEL_9;
    }
  }

  v25 = v15;
LABEL_9:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

- (OTInheritanceKey)initWithUUID:(id)a3 oldIK:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v30.receiver = self;
  v30.super_class = OTInheritanceKey;
  v11 = [(OTInheritanceKey *)&v30 init];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [v10 uuid];
  v13 = [v9 isEqual:v12];

  if (!v13)
  {
    objc_storeStrong(&v11->_uuid, a3);
    v15 = [v10 wrappingKeyData];
    wrappingKeyData = v11->_wrappingKeyData;
    v11->_wrappingKeyData = v15;

    v17 = [v10 wrappingKeyString];
    wrappingKeyString = v11->_wrappingKeyString;
    v11->_wrappingKeyString = v17;

    v19 = [v10 wrappedKeyData];
    wrappedKeyData = v11->_wrappedKeyData;
    v11->_wrappedKeyData = v19;

    v21 = [v10 wrappedKeyString];
    wrappedKeyString = v11->_wrappedKeyString;
    v11->_wrappedKeyString = v21;

    v23 = [v10 claimTokenData];
    claimTokenData = v11->_claimTokenData;
    v11->_claimTokenData = v23;

    v25 = [v10 claimTokenString];
    claimTokenString = v11->_claimTokenString;
    v11->_claimTokenString = v25;

    v27 = [v10 recoveryKeyData];
    recoveryKeyData = v11->_recoveryKeyData;
    v11->_recoveryKeyData = v27;

LABEL_6:
    v14 = v11;
    goto LABEL_7;
  }

  if (a5)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.security.OctagonTrust.OTInheritanceKey" code:11 description:@"recreate needs a different UUID"];
    *a5 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_7:

  return v14;
}

- (OTInheritanceKey)initWithWrappedKeyString:(id)a3 wrappingKeyData:(id)a4 uuid:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [OTInheritanceKey parseBase32:a3 checksumSize:3 error:a6];
  if (v12)
  {
    self = [(OTInheritanceKey *)self initWithWrappedKeyData:v12 wrappingKeyData:v10 uuid:v11 error:a6];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (OTInheritanceKey)initWithWrappedKeyData:(id)a3 wrappingKeyString:(id)a4 uuid:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = [OTInheritanceKey parseBase32:a4 checksumSize:3 error:a6];
  if (v12)
  {
    self = [(OTInheritanceKey *)self initWithWrappedKeyData:v10 wrappingKeyData:v12 uuid:v11 error:a6];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (OTInheritanceKey)initWithWrappedKeyData:(id)a3 wrappingKeyData:(id)a4 claimTokenData:(id)a5 uuid:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v28.receiver = self;
  v28.super_class = OTInheritanceKey;
  v17 = [(OTInheritanceKey *)&v28 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v17->_uuid, a6);
  objc_storeStrong(&v18->_wrappedKeyData, a3);
  objc_storeStrong(&v18->_wrappingKeyData, a4);
  if (![(OTInheritanceKey *)v18 unwrapWithError:a7])
  {
    goto LABEL_7;
  }

  v19 = [OTInheritanceKey printableWithData:v18->_wrappingKeyData checksumSize:3 error:a7];
  wrappingKeyString = v18->_wrappingKeyString;
  v18->_wrappingKeyString = v19;

  if (!v18->_wrappingKeyString)
  {
    goto LABEL_7;
  }

  v21 = [OTInheritanceKey printableWithData:v18->_wrappedKeyData checksumSize:3 error:a7];
  wrappedKeyString = v18->_wrappedKeyString;
  v18->_wrappedKeyString = v21;

  if (!v18->_wrappedKeyString)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v18->_claimTokenData, a5);
  if (!v15)
  {
    claimTokenString = v18->_claimTokenString;
    v18->_claimTokenString = 0;

    goto LABEL_9;
  }

  v23 = [OTInheritanceKey printableWithData:v18->_claimTokenData checksumSize:4 error:a7];
  v24 = v18->_claimTokenString;
  v18->_claimTokenString = v23;

  if (v18->_claimTokenString)
  {
LABEL_9:
    v25 = v18;
    goto LABEL_10;
  }

LABEL_7:
  v25 = 0;
LABEL_10:

  return v25;
}

- (BOOL)unwrapWithError:(id *)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  if ([(NSData *)self->_wrappingKeyData length]== 32)
  {
    if ([(NSData *)self->_wrappedKeyData length]== 72)
    {
      [(NSData *)self->_wrappedKeyData length];
      v5 = ccwrap_unwrapped_size();
      v6 = [MEMORY[0x1E695DF88] dataWithLength:{v5, v5}];
      v7 = ccaes_ecb_decrypt_mode();
      v8 = *v7 + 15;
      v9 = v8 & 0xFFFFFFFFFFFFFFF0;
      if (v8 >= 0x10)
      {
        v10 = (v28 - (v8 & 0xFFFFFFFFFFFFFFF0));
        do
        {
          *v10 = 0xAAAAAAAAAAAAAAAALL;
          v10[1] = 0xAAAAAAAAAAAAAAAALL;
          v10 += 2;
          v9 -= 16;
        }

        while (v9);
      }

      [(NSData *)self->_wrappingKeyData length];
      [(NSData *)self->_wrappingKeyData bytes];
      v11 = ccecb_init();
      if (v11)
      {
        if (a3)
        {
          v12 = MEMORY[0x1E696ABC0];
          recoveryKeyData = [MEMORY[0x1E696AEC0] stringWithFormat:@"ccecb_init failed: %d", v11];
          v14 = v12;
          v15 = 9;
LABEL_18:
          [v14 errorWithDomain:@"com.apple.security.OctagonTrust.OTInheritanceKey" code:v15 description:recoveryKeyData];
          *a3 = v21 = 0;
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        [(NSData *)self->_wrappedKeyData length];
        [(NSData *)self->_wrappedKeyData bytes];
        [v6 mutableBytes];
        v22 = ccwrap_auth_decrypt();
        v23 = *v7;
        cc_clear();
        if (!v22)
        {
          v25 = v6;
          recoveryKeyData = self->_recoveryKeyData;
          self->_recoveryKeyData = v25;
          v21 = 1;
          goto LABEL_21;
        }

        if (a3)
        {
          v24 = MEMORY[0x1E696ABC0];
          recoveryKeyData = [MEMORY[0x1E696AEC0] stringWithFormat:@"ccwrap_auth_decrypt: %d", v22];
          v14 = v24;
          v15 = 5;
          goto LABEL_18;
        }
      }

      v21 = 0;
LABEL_22:

      goto LABEL_23;
    }

    if (a3)
    {
      v20 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wrong wrapped key length: %u", -[NSData length](self->_wrappedKeyData, "length")];
      v18 = v20;
      v19 = 10;
      goto LABEL_13;
    }
  }

  else if (a3)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wrong wrapping key length: %u", -[NSData length](self->_wrappingKeyData, "length")];
    v18 = v16;
    v19 = 8;
LABEL_13:
    *a3 = [v18 errorWithDomain:@"com.apple.security.OctagonTrust.OTInheritanceKey" code:v19 description:v17];
  }

  v21 = 0;
LABEL_23:
  v26 = *MEMORY[0x1E69E9840];
  return v21;
}

- (OTInheritanceKey)initWithUUID:(id)a3 error:(id *)a4
{
  bytes[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v29.receiver = self;
  v29.super_class = OTInheritanceKey;
  v8 = [(OTInheritanceKey *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_uuid, a3);
    bytes[0] = 0xAAAAAAAAAAAAAAAALL;
    bytes[1] = 0xAAAAAAAAAAAAAAAALL;
    v10 = *MEMORY[0x1E697B308];
    v11 = SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, bytes);
    if (v11)
    {
      v12 = v11;
      memset_s(bytes, 0x10uLL, 0, 0x10uLL);
      if (a4)
      {
        v13 = MEMORY[0x1E696ABC0];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SecRandomCopyBytes: %d", v12];
        *a4 = [v13 errorWithDomain:@"com.apple.security.OctagonTrust.OTInheritanceKey" code:7 description:v14];
      }

      goto LABEL_11;
    }

    v15 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:16];
    claimTokenData = v9->_claimTokenData;
    v9->_claimTokenData = v15;

    memset_s(bytes, 0x10uLL, 0, 0x10uLL);
    v17 = [OTInheritanceKey printableWithData:v9->_claimTokenData checksumSize:4 error:a4];
    claimTokenString = v9->_claimTokenString;
    v9->_claimTokenString = v17;

    if (!v9->_claimTokenString)
    {
      goto LABEL_11;
    }

    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __s[2] = v19;
    __s[3] = v19;
    __s[0] = v19;
    __s[1] = v19;
    v20 = SecRandomCopyBytes(v10, 0x40uLL, __s);
    if (v20)
    {
      v21 = v20;
      memset_s(__s, 0x40uLL, 0, 0x40uLL);
      if (a4)
      {
        v22 = MEMORY[0x1E696ABC0];
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SecRandomCopyBytes: %d", v21];
        *a4 = [v22 errorWithDomain:@"com.apple.security.OctagonTrust.OTInheritanceKey" code:7 description:v23];
      }

      goto LABEL_11;
    }

    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:__s length:64];
    recoveryKeyData = v9->_recoveryKeyData;
    v9->_recoveryKeyData = v24;

    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (![(OTInheritanceKey *)v9 generateWrappingWithError:a4])
    {
LABEL_11:
      v26 = 0;
      goto LABEL_12;
    }
  }

  v26 = v9;
LABEL_12:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)wrapWithWrappingKey:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  [(NSData *)self->_recoveryKeyData length];
  v8 = ccwrap_wrapped_size();
  v9 = [MEMORY[0x1E695DF88] dataWithLength:{v8, v8, v29}];
  v10 = ccaes_ecb_encrypt_mode();
  v11 = *v10 + 15;
  v12 = v11 & 0xFFFFFFFFFFFFFFF0;
  if (v11 >= 0x10)
  {
    v13 = (&v28 - (v11 & 0xFFFFFFFFFFFFFFF0));
    do
    {
      *v13 = 0xAAAAAAAAAAAAAAAALL;
      v13[1] = 0xAAAAAAAAAAAAAAAALL;
      v13 += 2;
      v12 -= 16;
    }

    while (v12);
  }

  [v7 length];
  [v7 bytes];
  v14 = ccecb_init();
  if (v14)
  {
    if (a4)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ccecb_init failed: %d", v14];
      v17 = v15;
      v18 = 9;
LABEL_10:
      *a4 = [v17 errorWithDomain:@"com.apple.security.OctagonTrust.OTInheritanceKey" code:v18 description:v16];

LABEL_11:
      LOBYTE(a4) = 0;
    }
  }

  else
  {
    [(NSData *)self->_recoveryKeyData length];
    [(NSData *)self->_recoveryKeyData bytes];
    [v9 mutableBytes];
    v19 = ccwrap_auth_encrypt();
    v20 = *v10;
    cc_clear();
    if (!v19)
    {
      objc_storeStrong(&self->_wrappingKeyData, a3);
      v24 = [OTInheritanceKey printableWithData:self->_wrappingKeyData checksumSize:3 error:a4];
      wrappingKeyString = self->_wrappingKeyString;
      self->_wrappingKeyString = v24;

      if (self->_wrappingKeyString)
      {
        objc_storeStrong(&self->_wrappedKeyData, v9);
        v26 = [OTInheritanceKey printableWithData:self->_wrappedKeyData checksumSize:3 error:a4];
        wrappedKeyString = self->_wrappedKeyString;
        self->_wrappedKeyString = v26;

        LOBYTE(a4) = self->_wrappedKeyString != 0;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (a4)
    {
      v21 = MEMORY[0x1E696ABC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ccwrap_auth_encrypt: %d", v19];
      v17 = v21;
      v18 = 4;
      goto LABEL_10;
    }
  }

LABEL_12:

  v22 = *MEMORY[0x1E69E9840];
  return a4;
}

- (BOOL)generateWrappingWithError:(id *)a3
{
  v5 = [MEMORY[0x1E695DF88] dataWithLength:32];
  v6 = ccrng();
  (*v6)(v6, [v5 length], objc_msgSend(v5, "mutableBytes"));
  LOBYTE(a3) = [(OTInheritanceKey *)self wrapWithWrappingKey:v5 error:a3];

  return a3;
}

+ (id)parseBase32:(id)a3 checksumSize:(unint64_t)a4 error:(id *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [a3 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F48F2A78];
  v6 = [v5 length];
  v7 = [MEMORY[0x1E695DF88] dataWithLength:0];
  v31 = v5;
  v8 = [v5 UTF8String];
  if (v6)
  {
    v9 = v8;
    v10 = 0;
    v11 = v6;
    while (1)
    {
      v12 = v11 - 8;
      v13 = v11 >= 8 ? 8 : v11;
      v14 = [OTInheritanceKey unbase32:v9 + v10 len:v13];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      [v7 appendData:v14];

      v10 += 8;
      v11 = v12;
      if (v10 >= v6)
      {
        goto LABEL_8;
      }
    }

    v16 = a5;
    if (!a5)
    {
      goto LABEL_21;
    }

    v21 = MEMORY[0x1E696ABC0];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot parse %.*s", v13, v9 + v10];
    v23 = v21;
    v24 = 1;
    goto LABEL_20;
  }

LABEL_8:
  if ([v7 length] < a4)
  {
    v16 = a5;
    if (a5)
    {
      v17 = MEMORY[0x1E696ABC0];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Length (%zu) shorter than checksumsize (%zu)", objc_msgSend(v7, "length"), a4];
      v20 = LABEL_14:;
      *v16 = [v17 errorWithDomain:@"com.apple.security.OctagonTrust.OTInheritanceKey" code:3 description:v20];

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __s2[0] = v18;
  __s2[1] = v18;
  v19 = [v7 length] - a4;
  ccsha256_di();
  [v7 bytes];
  ccdigest();
  v16 = a5;
  if (a4 >= 0x21)
  {
    if (a5)
    {
      v17 = MEMORY[0x1E696ABC0];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"checksumsize (%zu) too long (expected %zu)", a4, 32];
      goto LABEL_14;
    }

LABEL_21:
    v26 = 0;
    goto LABEL_22;
  }

  if (memcmp(([v7 bytes] + v19), __s2, a4))
  {
    if (a5)
    {
      v25 = MEMORY[0x1E696ABC0];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Checksum does not match"];
      v23 = v25;
      v24 = 2;
LABEL_20:
      *v16 = [v23 errorWithDomain:@"com.apple.security.OctagonTrust.OTInheritanceKey" code:v24 description:v22];

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v26 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v7 length:{"bytes"), v19}];
LABEL_22:

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)printableWithData:(id)a3 checksumSize:(unint64_t)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(v7, "length") + a4}];
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[0] = v9;
  v28[1] = v9;
  ccsha256_di();
  [v7 length];
  [v7 bytes];
  ccdigest();
  [v8 appendData:v7];
  if (a4 < 0x21)
  {
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v28 length:a4];
    [v8 appendData:v13];

    v14 = [v8 bytes];
    v15 = [v8 length];
    v11 = [MEMORY[0x1E696AD60] stringWithCapacity:0];
    if (v15)
    {
      v16 = v15 - 5;
      if (v15 >= 5)
      {
        v17 = 5;
      }

      else
      {
        v17 = v15;
      }

      v18 = [OTInheritanceKey base32:v14 len:v17];
      if (!v18)
      {
LABEL_18:
        if (a5)
        {
          v24 = MEMORY[0x1E696ABC0];
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bad chunkLen (%zu)", v17];
          *a5 = [v24 errorWithDomain:@"com.apple.security.OctagonTrust.OTInheritanceKey" code:6 description:v25];
        }

        v12 = 0;
        goto LABEL_24;
      }

      v19 = v18;
      v20 = v14 + 5;
      v21 = 5;
      while (1)
      {
        if ([v19 length] < 5)
        {
          [v11 appendString:v19];
        }

        else
        {
          v22 = [v19 substringToIndex:4];
          [v11 appendString:v22];

          [v11 appendString:@"-"];
          v23 = [v19 substringFromIndex:4];
          [v11 appendString:v23];
        }

        if (v21 >= v15)
        {
          break;
        }

        [v11 appendString:@"-"];

        if (v16 >= 5)
        {
          v17 = 5;
        }

        else
        {
          v17 = v16;
        }

        v19 = [OTInheritanceKey base32:v20 len:v17];
        v20 += 5;
        v21 += 5;
        v16 -= 5;
        if (!v19)
        {
          goto LABEL_18;
        }
      }
    }

    v11 = v11;
    v12 = v11;
  }

  else
  {
    if (!a5)
    {
      v12 = 0;
      goto LABEL_25;
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"checksumSize (%zu) too large (%zu)", a4, 32];
    [v10 errorWithDomain:@"com.apple.security.OctagonTrust.OTInheritanceKey" code:3 description:v11];
    *a5 = v12 = 0;
  }

LABEL_24:

LABEL_25:
  v26 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)unbase32:(const char *)a3 len:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = -1431655766;
  v4 = a4 - 2;
  if (a4 - 2 <= 6 && ((0x6Du >> v4) & 1) != 0)
  {
    v7 = 0;
    v8 = qword_1C9452148[v4];
    *&v9 = -1;
    *(&v9 + 1) = -1;
    v19 = v9;
    v20 = v9;
    v17 = v9;
    v18 = v9;
    while (1)
    {
      v10 = memchr("ABCDEFGHJKLMNPQRSTUVWXYZ23456789", a3[v7], 0x21uLL);
      v11 = v10 - "ABCDEFGHJKLMNPQRSTUVWXYZ23456789";
      if (!v10)
      {
        v11 = -1;
      }

      *(&v17 + v7) = v11;
      if (v11 < 0)
      {
        break;
      }

      if (a4 == ++v7)
      {
        v15 = (DWORD2(v17) >> 2) | (8 * v17);
        if (a4 >= 4)
        {
          LOBYTE(v16) = (2 * v18) | (BYTE8(v17) << 6) | (DWORD2(v18) >> 4);
          if (a4 != 4)
          {
            BYTE1(v16) = (v19 >> 1) | (16 * BYTE8(v18));
            if (a4 >= 7)
            {
              BYTE2(v16) = (4 * BYTE8(v19)) | (v19 << 7) | (v20 >> 3);
              if (a4 == 8)
              {
                HIBYTE(v16) = BYTE8(v20) | (32 * v20);
              }
            }
          }
        }

        v12 = [MEMORY[0x1E695DEF0] dataWithBytes:&v15 length:v8];
        goto LABEL_15;
      }
    }
  }

  v12 = 0;
LABEL_15:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)base32:(const char *)a3 len:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 170, sizeof(v16));
  if (!a4)
  {
    goto LABEL_11;
  }

  v4 = *a3;
  v15 = printableChars[v4 >> 3];
  v5 = 4 * (v4 & 7);
  if (a4 != 1)
  {
    v8 = *(a3 + 1);
    v16[0] = printableChars[v5 | (v8 >> 6)];
    v16[1] = printableChars[(v8 >> 1) & 0x1F];
    v5 = 16 * (v8 & 1);
    if (a4 == 2)
    {
      v6 = &v16[2];
      v7 = 4;
      goto LABEL_13;
    }

    v9 = *(a3 + 2);
    v16[2] = printableChars[v5 | (v9 >> 4)];
    v10 = 2 * (v9 & 0xF);
    if (a4 == 3)
    {
      v6 = &v16[3];
      v7 = 5;
      LODWORD(v5) = v10;
      goto LABEL_13;
    }

    v5 = *(a3 + 3);
    v16[3] = printableChars[v10 | (v5 >> 7)];
    v16[4] = printableChars[(v5 >> 2) & 0x1F];
    if (a4 == 5)
    {
      v6 = &v16[6];
      v12 = *(a3 + 4);
      v16[5] = printableChars[(v12 >> 5) & 0xFFFFFFE7 | (8 * (v5 & 3))];
      LODWORD(v5) = v12 & 0x1F;
      v7 = 8;
      goto LABEL_13;
    }

    if (a4 == 4)
    {
      v6 = &v16[5];
      LODWORD(v5) = 8 * (v5 & 3);
      v7 = 7;
      goto LABEL_13;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_14;
  }

  v6 = v16;
  v7 = 2;
LABEL_13:
  *v6 = printableChars[v5];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v15 length:v7 encoding:4];
LABEL_14:
  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

@end