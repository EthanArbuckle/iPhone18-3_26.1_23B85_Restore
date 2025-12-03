@interface MIAppReference
+ (BOOL)validateAppReference:(id)reference withError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (MIAppReference)initWithCoder:(id)coder;
- (MIAppReference)initWithReferenceUUID:(id)d identity:(id)identity domain:(unint64_t)domain uid:(unsigned int)uid;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIAppReference

- (MIAppReference)initWithReferenceUUID:(id)d identity:(id)identity domain:(unint64_t)domain uid:(unsigned int)uid
{
  dCopy = d;
  identityCopy = identity;
  v16.receiver = self;
  v16.super_class = MIAppReference;
  v13 = [(MIAppReference *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_referenceUUID, d);
    objc_storeStrong(&v14->_identity, identity);
    v14->_domain = domain;
    v14->_uid = uid;
  }

  return v14;
}

- (MIAppReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MIAppReference;
  v5 = [(MIAppReference *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceUUID"];
    referenceUUID = v5->_referenceUUID;
    v5->_referenceUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    v5->_domain = [v10 unsignedIntegerValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uid"];
    v5->_uid = [v11 unsignedIntValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  referenceUUID = [(MIAppReference *)self referenceUUID];
  [coderCopy encodeObject:referenceUUID forKey:@"referenceUUID"];

  identity = [(MIAppReference *)self identity];
  [coderCopy encodeObject:identity forKey:@"identity"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIAppReference domain](self, "domain")}];
  [coderCopy encodeObject:v7 forKey:@"domain"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MIAppReference uid](self, "uid")}];
  [coderCopy encodeObject:v8 forKey:@"uid"];
}

- (unint64_t)hash
{
  referenceUUID = [(MIAppReference *)self referenceUUID];
  v4 = [referenceUUID hash];
  identity = [(MIAppReference *)self identity];
  v6 = [identity hash] ^ v4;
  domain = [(MIAppReference *)self domain];

  return v6 ^ domain;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      referenceUUID = [(MIAppReference *)self referenceUUID];
      referenceUUID2 = [(MIAppReference *)v5 referenceUUID];
      v8 = MICompareObjects(referenceUUID, referenceUUID2);

      if (!v8)
      {
        goto LABEL_9;
      }

      identity = [(MIAppReference *)self identity];
      identity2 = [(MIAppReference *)v5 identity];
      v11 = MICompareObjects(identity, identity2);

      if (!v11)
      {
        goto LABEL_9;
      }

      domain = [(MIAppReference *)self domain];
      if (domain == [(MIAppReference *)v5 domain])
      {
        v13 = [(MIAppReference *)self uid];
        v14 = v13 == [(MIAppReference *)v5 uid];
      }

      else
      {
LABEL_9:
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  referenceUUID = [(MIAppReference *)self referenceUUID];
  identity = [(MIAppReference *)self identity];
  v6 = [v3 stringWithFormat:@"[uuid:%@ identity:%@ domain:%lu uid:%u]", referenceUUID, identity, -[MIAppReference domain](self, "domain"), -[MIAppReference uid](self, "uid")];

  return v6;
}

+ (BOOL)validateAppReference:(id)reference withError:(id *)error
{
  referenceCopy = reference;
  v7 = referenceCopy;
  if (!referenceCopy)
  {
    v12 = *MEMORY[0x1E69A8D00];
    v13 = @"app reference is nil";
    v14 = 112;
LABEL_8:
    v11 = _CreateError("+[MIAppReference validateAppReference:withError:]", v14, v12, 25, 0, 0, v13, v6, v17);
    LOBYTE(identity) = 0;
    goto LABEL_9;
  }

  identity = [referenceCopy identity];

  if (!identity)
  {
    v11 = _CreateError("+[MIAppReference validateAppReference:withError:]", 117, *MEMORY[0x1E69A8D00], 25, 0, 0, @"app reference has nil app identity", v9, v17);
    goto LABEL_9;
  }

  if (![v7 domain])
  {
    v12 = *MEMORY[0x1E69A8D00];
    v13 = @"app reference has unknown domain";
    v14 = 122;
    goto LABEL_8;
  }

  identity = MEMORY[0x1E69A8D68];
  identity2 = [v7 identity];
  v18 = 0;
  LOBYTE(identity) = [identity validateAppIdentity:identity2 withError:&v18];
  v11 = v18;

LABEL_9:
  if (error && (identity & 1) == 0)
  {
    v15 = v11;
    *error = v11;
  }

  return identity;
}

@end