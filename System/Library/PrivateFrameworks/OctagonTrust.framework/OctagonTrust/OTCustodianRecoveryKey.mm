@interface OTCustodianRecoveryKey
- (BOOL)generateWrappingWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCustodianRecoveryKey:(id)key;
- (BOOL)unwrapWithError:(id *)error;
- (OTCustodianRecoveryKey)initWithCoder:(id)coder;
- (OTCustodianRecoveryKey)initWithUUID:(id)d recoveryString:(id)string error:(id *)error;
- (OTCustodianRecoveryKey)initWithWrappedKey:(id)key wrappingKey:(id)wrappingKey uuid:(id)uuid error:(id *)error;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OTCustodianRecoveryKey

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_wrappingKey forKey:@"wrappingKey"];
  [coderCopy encodeObject:self->_wrappedKey forKey:@"wrappedKey"];
  [coderCopy encodeObject:self->_recoveryString forKey:@"recoveryString"];
}

- (OTCustodianRecoveryKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = OTCustodianRecoveryKey;
  v5 = [(OTCustodianRecoveryKey *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wrappingKey"];
    wrappingKey = v5->_wrappingKey;
    v5->_wrappingKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wrappedKey"];
    wrappedKey = v5->_wrappedKey;
    v5->_wrappedKey = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recoveryString"];
    recoveryString = v5->_recoveryString;
    v5->_recoveryString = v12;
  }

  return v5;
}

- (id)dictionary
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"uuid";
  uuid = [(OTCustodianRecoveryKey *)self uuid];
  v4 = [uuid description];
  v14[0] = v4;
  v13[1] = @"recoveryString";
  recoveryString = [(OTCustodianRecoveryKey *)self recoveryString];
  v14[1] = recoveryString;
  v13[2] = @"wrappingKey";
  wrappingKey = [(OTCustodianRecoveryKey *)self wrappingKey];
  v7 = [wrappingKey base64EncodedStringWithOptions:0];
  v14[2] = v7;
  v13[3] = @"wrappedKey";
  wrappedKey = [(OTCustodianRecoveryKey *)self wrappedKey];
  v9 = [wrappedKey base64EncodedStringWithOptions:0];
  v14[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(OTCustodianRecoveryKey *)self isEqualToCustodianRecoveryKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCustodianRecoveryKey:(id)key
{
  keyCopy = key;
  if (self == keyCopy)
  {
    v13 = 1;
  }

  else
  {
    uuid = [(OTCustodianRecoveryKey *)self uuid];
    uuid2 = [(OTCustodianRecoveryKey *)keyCopy uuid];
    if ([uuid isEqual:uuid2])
    {
      wrappingKey = [(OTCustodianRecoveryKey *)self wrappingKey];
      wrappingKey2 = [(OTCustodianRecoveryKey *)keyCopy wrappingKey];
      if ([wrappingKey isEqualToData:wrappingKey2])
      {
        wrappedKey = [(OTCustodianRecoveryKey *)self wrappedKey];
        wrappedKey2 = [(OTCustodianRecoveryKey *)keyCopy wrappedKey];
        if ([wrappedKey isEqualToData:wrappedKey2])
        {
          recoveryString = [(OTCustodianRecoveryKey *)self recoveryString];
          recoveryString2 = [(OTCustodianRecoveryKey *)keyCopy recoveryString];
          v13 = [recoveryString isEqualToString:recoveryString2];
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

- (OTCustodianRecoveryKey)initWithWrappedKey:(id)key wrappingKey:(id)wrappingKey uuid:(id)uuid error:(id *)error
{
  keyCopy = key;
  wrappingKeyCopy = wrappingKey;
  uuidCopy = uuid;
  v18.receiver = self;
  v18.super_class = OTCustodianRecoveryKey;
  v14 = [(OTCustodianRecoveryKey *)&v18 init];
  p_isa = &v14->super.isa;
  if (v14 && (objc_storeStrong(&v14->_uuid, uuid), objc_storeStrong(p_isa + 3, key), objc_storeStrong(p_isa + 2, wrappingKey), ![p_isa unwrapWithError:error]))
  {
    v16 = 0;
  }

  else
  {
    v16 = p_isa;
  }

  return v16;
}

- (BOOL)unwrapWithError:(id *)error
{
  v5 = [objc_alloc(MEMORY[0x1E69CA628]) initWithBitSize:2];
  v6 = [objc_alloc(MEMORY[0x1E69CA620]) initWithData:self->_wrappingKey specifier:v5 error:error];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69CA638]) initWithKeySpecifier:v5];
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:self->_wrappedKey error:error];
    if (v8)
    {
      v9 = [v7 decrypt:v8 withKey:v6 error:error];
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

- (OTCustodianRecoveryKey)initWithUUID:(id)d recoveryString:(id)string error:(id *)error
{
  dCopy = d;
  stringCopy = string;
  v18.receiver = self;
  v18.super_class = OTCustodianRecoveryKey;
  v11 = [(OTCustodianRecoveryKey *)&v18 init];
  p_isa = &v11->super.isa;
  if (!v11)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v11->_uuid, d);
  objc_storeStrong(p_isa + 4, string);
  v17 = 0;
  v13 = [p_isa generateWrappingWithError:&v17];
  v14 = v17;
  if (v13)
  {

LABEL_4:
    v15 = p_isa;
    goto LABEL_8;
  }

  if (error)
  {
    v14 = v14;
    *error = v14;
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (BOOL)generateWrappingWithError:(id *)error
{
  v5 = [objc_alloc(MEMORY[0x1E69CA628]) initWithBitSize:2];
  v6 = [objc_alloc(MEMORY[0x1E69CA620]) initRandomKeyWithSpecifier:v5 error:error];
  v7 = v6;
  if (v6)
  {
    keyData = [v6 keyData];
    wrappingKey = self->_wrappingKey;
    self->_wrappingKey = keyData;

    v10 = [objc_alloc(MEMORY[0x1E69CA638]) initWithKeySpecifier:v5];
    v11 = [(NSString *)self->_recoveryString dataUsingEncoding:4];
    data = [MEMORY[0x1E695DEF0] data];
    v13 = [v10 encrypt:v11 withKey:v7 additionalAuthenticatedData:data error:error];

    if (v13)
    {
      v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:error];
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