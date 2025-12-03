@interface PKNFCPayload
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPKNFCPayload:(id)payload;
- (PKNFCPayload)initWithCoder:(id)coder;
- (PKNFCPayload)initWithNFCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKNFCPayload

- (PKNFCPayload)initWithNFCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PKNFCPayload;
  v5 = [(PKNFCPayload *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"message"];
    message = v5->_message;
    v5->_message = v6;

    v8 = [dictionaryCopy objectForKey:@"encryptionPublicKey"];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
      v10 = PKCreatePublicKeyFromDER(v9);
      encryptionPublicKeyData = v5->_encryptionPublicKeyData;
      v5->_encryptionPublicKeyData = v10;
    }

    v5->_payloadState = 0;
    v5->_requiresAuthentication = [dictionaryCopy PKBoolForKey:@"requiresAuthentication"];
  }

  return v5;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_message];
  [array safelyAddObject:self->_encryptionPublicKeyData];
  v4 = PKCombinedHash(17, array);
  v5 = self->_requiresAuthentication - v4 + 32 * v4;
  v6 = self->_payloadState - v5 + 32 * v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKNFCPayload *)self isEqualToPKNFCPayload:v5];
  }

  return v6;
}

- (BOOL)isEqualToPKNFCPayload:(id)payload
{
  payloadCopy = payload;
  message = self->_message;
  v6 = payloadCopy[2];
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
  v9 = payloadCopy[3];
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
  if (self->_requiresAuthentication != *(payloadCopy + 8))
  {
    goto LABEL_16;
  }

  v10 = self->_payloadState == payloadCopy[4];
LABEL_17:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSString *)self->_message copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_encryptionPublicKeyData copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  *(v5 + 8) = self->_requiresAuthentication;
  v5[4] = self->_payloadState;
  return v5;
}

- (PKNFCPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKNFCPayload;
  v5 = [(PKNFCPayload *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionPublicKey"];
    encryptionPublicKeyData = v5->_encryptionPublicKeyData;
    v5->_encryptionPublicKeyData = v8;

    v5->_requiresAuthentication = [coderCopy decodeBoolForKey:@"requiresAuthentication"];
    v5->_payloadState = [coderCopy decodeIntegerForKey:@"payloadState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  message = self->_message;
  coderCopy = coder;
  [coderCopy encodeObject:message forKey:@"message"];
  [coderCopy encodeObject:self->_encryptionPublicKeyData forKey:@"encryptionPublicKey"];
  [coderCopy encodeBool:self->_requiresAuthentication forKey:@"requiresAuthentication"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_payloadState];
  [coderCopy encodeObject:v6 forKey:@"payloadState"];
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