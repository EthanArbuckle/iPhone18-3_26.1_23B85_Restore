@interface PKNFCPayload
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPKNFCPayload:(id)a3;
- (PKNFCPayload)initWithCoder:(id)a3;
- (PKNFCPayload)initWithNFCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKNFCPayload

- (PKNFCPayload)initWithNFCDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKNFCPayload;
  v5 = [(PKNFCPayload *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"message"];
    message = v5->_message;
    v5->_message = v6;

    v8 = [v4 objectForKey:@"encryptionPublicKey"];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      v10 = PKCreatePublicKeyFromDER(v9);
      encryptionPublicKeyData = v5->_encryptionPublicKeyData;
      v5->_encryptionPublicKeyData = v10;
    }

    v5->_payloadState = 0;
    v5->_requiresAuthentication = [v4 PKBoolForKey:@"requiresAuthentication"];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_message];
  [v3 safelyAddObject:self->_encryptionPublicKeyData];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_requiresAuthentication - v4 + 32 * v4;
  v6 = self->_payloadState - v5 + 32 * v5;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKNFCPayload *)self isEqualToPKNFCPayload:v5];
  }

  return v6;
}

- (BOOL)isEqualToPKNFCPayload:(id)a3
{
  v4 = a3;
  message = self->_message;
  v6 = v4[2];
  if (message)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (message != v6)
    {
      goto LABEL_16;
    }
  }

  else if (([(NSString *)message isEqual:?]& 1) == 0)
  {
    goto LABEL_16;
  }

  encryptionPublicKeyData = self->_encryptionPublicKeyData;
  v9 = v4[3];
  if (!encryptionPublicKeyData || !v9)
  {
    if (encryptionPublicKeyData == v9)
    {
      goto LABEL_14;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  if (([(NSData *)encryptionPublicKeyData isEqual:?]& 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (self->_requiresAuthentication != *(v4 + 8))
  {
    goto LABEL_16;
  }

  v10 = self->_payloadState == v4[4];
LABEL_17:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSString *)self->_message copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_encryptionPublicKeyData copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  *(v5 + 8) = self->_requiresAuthentication;
  v5[4] = self->_payloadState;
  return v5;
}

- (PKNFCPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKNFCPayload;
  v5 = [(PKNFCPayload *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionPublicKey"];
    encryptionPublicKeyData = v5->_encryptionPublicKeyData;
    v5->_encryptionPublicKeyData = v8;

    v5->_requiresAuthentication = [v4 decodeBoolForKey:@"requiresAuthentication"];
    v5->_payloadState = [v4 decodeIntegerForKey:@"payloadState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  message = self->_message;
  v5 = a3;
  [v5 encodeObject:message forKey:@"message"];
  [v5 encodeObject:self->_encryptionPublicKeyData forKey:@"encryptionPublicKey"];
  [v5 encodeBool:self->_requiresAuthentication forKey:@"requiresAuthentication"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_payloadState];
  [v5 encodeObject:v6 forKey:@"payloadState"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"NO";
  if (self->_requiresAuthentication)
  {
    v5 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p; Message: %@; Encryption Public Key: %@; Requires Authentication: %@; Payload State: %lu;>", v4, self, self->_message, self->_encryptionPublicKeyData, v5, self->_payloadState];
}

@end