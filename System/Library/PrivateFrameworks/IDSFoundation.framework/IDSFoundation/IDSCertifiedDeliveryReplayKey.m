@interface IDSCertifiedDeliveryReplayKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReplayKey:(id)a3;
- (IDSCertifiedDeliveryReplayKey)initWithCoder:(id)a3;
- (IDSCertifiedDeliveryReplayKey)initWithHash:(id)a3;
- (IDSCertifiedDeliveryReplayKey)initWithPayload:(id)a3 legacyIdentity:(id)a4;
@end

@implementation IDSCertifiedDeliveryReplayKey

- (IDSCertifiedDeliveryReplayKey)initWithPayload:(id)a3 legacyIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = IDSCertifiedDeliveryReplayKey;
  v8 = [(IDSCertifiedDeliveryReplayKey *)&v17 init];
  if (!v8)
  {
    goto LABEL_7;
  }

  if (v7)
  {
    v16 = 0;
    v9 = [v7 protectedHashOfMessageData:v6 error:&v16];
    v10 = v16;
  }

  else
  {
    v9 = [IDSNGMMessageHasher computeHashForMessage:v6];
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
    sub_1A7E1AAF4(v7 == 0, v10, v14);
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (IDSCertifiedDeliveryReplayKey)initWithHash:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = IDSCertifiedDeliveryReplayKey;
  v6 = [(IDSCertifiedDeliveryReplayKey *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_payloadHash, a3);
  }

  v8 = v7;
LABEL_6:

  return v8;
}

- (BOOL)isEqualToReplayKey:(id)a3
{
  v4 = [a3 payloadHash];
  LOBYTE(self) = [v4 isEqual:self->_payloadHash];

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSCertifiedDeliveryReplayKey *)self isEqualToReplayKey:v4];

  return v5;
}

- (IDSCertifiedDeliveryReplayKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hash"];

  v6 = [(IDSCertifiedDeliveryReplayKey *)self initWithHash:v5];
  return v6;
}

@end