@interface IDSCertifiedDeliveryReplayKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReplayKey:(id)key;
- (IDSCertifiedDeliveryReplayKey)initWithCoder:(id)coder;
- (IDSCertifiedDeliveryReplayKey)initWithHash:(id)hash;
- (IDSCertifiedDeliveryReplayKey)initWithPayload:(id)payload legacyIdentity:(id)identity;
@end

@implementation IDSCertifiedDeliveryReplayKey

- (IDSCertifiedDeliveryReplayKey)initWithPayload:(id)payload legacyIdentity:(id)identity
{
  payloadCopy = payload;
  identityCopy = identity;
  v17.receiver = self;
  v17.super_class = IDSCertifiedDeliveryReplayKey;
  v8 = [(IDSCertifiedDeliveryReplayKey *)&v17 init];
  if (!v8)
  {
    goto LABEL_7;
  }

  if (identityCopy)
  {
    v16 = 0;
    v9 = [identityCopy protectedHashOfMessageData:payloadCopy error:&v16];
    v10 = v16;
  }

  else
  {
    v9 = [IDSNGMMessageHasher computeHashForMessage:payloadCopy];
    v10 = 0;
  }

  v11 = [v9 copy];
  payloadHash = v8->_payloadHash;
  v8->_payloadHash = v11;

  if (v8->_payloadHash)
  {

LABEL_7:
    v13 = v8;
    goto LABEL_11;
  }

  v14 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1A7E1AAF4(identityCopy == 0, v10, v14);
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (IDSCertifiedDeliveryReplayKey)initWithHash:(id)hash
{
  hashCopy = hash;
  v10.receiver = self;
  v10.super_class = IDSCertifiedDeliveryReplayKey;
  v6 = [(IDSCertifiedDeliveryReplayKey *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (!hashCopy)
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_payloadHash, hash);
  }

  v8 = v7;
LABEL_6:

  return v8;
}

- (BOOL)isEqualToReplayKey:(id)key
{
  payloadHash = [key payloadHash];
  LOBYTE(self) = [payloadHash isEqual:self->_payloadHash];

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSCertifiedDeliveryReplayKey *)self isEqualToReplayKey:equalCopy];

  return v5;
}

- (IDSCertifiedDeliveryReplayKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hash"];

  v6 = [(IDSCertifiedDeliveryReplayKey *)self initWithHash:v5];
  return v6;
}

@end