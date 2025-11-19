@interface MIAppReference
+ (BOOL)validateAppReference:(id)a3 withError:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (MIAppReference)initWithCoder:(id)a3;
- (MIAppReference)initWithReferenceUUID:(id)a3 identity:(id)a4 domain:(unint64_t)a5 uid:(unsigned int)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIAppReference

- (MIAppReference)initWithReferenceUUID:(id)a3 identity:(id)a4 domain:(unint64_t)a5 uid:(unsigned int)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = MIAppReference;
  v13 = [(MIAppReference *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_referenceUUID, a3);
    objc_storeStrong(&v14->_identity, a4);
    v14->_domain = a5;
    v14->_uid = a6;
  }

  return v14;
}

- (MIAppReference)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MIAppReference;
  v5 = [(MIAppReference *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceUUID"];
    referenceUUID = v5->_referenceUUID;
    v5->_referenceUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    v5->_domain = [v10 unsignedIntegerValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uid"];
    v5->_uid = [v11 unsignedIntValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIAppReference *)self referenceUUID];
  [v4 encodeObject:v5 forKey:@"referenceUUID"];

  v6 = [(MIAppReference *)self identity];
  [v4 encodeObject:v6 forKey:@"identity"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIAppReference domain](self, "domain")}];
  [v4 encodeObject:v7 forKey:@"domain"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MIAppReference uid](self, "uid")}];
  [v4 encodeObject:v8 forKey:@"uid"];
}

- (unint64_t)hash
{
  v3 = [(MIAppReference *)self referenceUUID];
  v4 = [v3 hash];
  v5 = [(MIAppReference *)self identity];
  v6 = [v5 hash] ^ v4;
  v7 = [(MIAppReference *)self domain];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIAppReference *)self referenceUUID];
      v7 = [(MIAppReference *)v5 referenceUUID];
      v8 = MICompareObjects(v6, v7);

      if (!v8)
      {
        goto LABEL_9;
      }

      v9 = [(MIAppReference *)self identity];
      v10 = [(MIAppReference *)v5 identity];
      v11 = MICompareObjects(v9, v10);

      if (!v11)
      {
        goto LABEL_9;
      }

      v12 = [(MIAppReference *)self domain];
      if (v12 == [(MIAppReference *)v5 domain])
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
  v4 = [(MIAppReference *)self referenceUUID];
  v5 = [(MIAppReference *)self identity];
  v6 = [v3 stringWithFormat:@"[uuid:%@ identity:%@ domain:%lu uid:%u]", v4, v5, -[MIAppReference domain](self, "domain"), -[MIAppReference uid](self, "uid")];

  return v6;
}

+ (BOOL)validateAppReference:(id)a3 withError:(id *)a4
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v12 = *MEMORY[0x1E69A8D00];
    v13 = @"app reference is nil";
    v14 = 112;
LABEL_8:
    v11 = _CreateError("+[MIAppReference validateAppReference:withError:]", v14, v12, 25, 0, 0, v13, v6, v17);
    LOBYTE(v8) = 0;
    goto LABEL_9;
  }

  v8 = [v5 identity];

  if (!v8)
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

  v8 = MEMORY[0x1E69A8D68];
  v10 = [v7 identity];
  v18 = 0;
  LOBYTE(v8) = [v8 validateAppIdentity:v10 withError:&v18];
  v11 = v18;

LABEL_9:
  if (a4 && (v8 & 1) == 0)
  {
    v15 = v11;
    *a4 = v11;
  }

  return v8;
}

@end