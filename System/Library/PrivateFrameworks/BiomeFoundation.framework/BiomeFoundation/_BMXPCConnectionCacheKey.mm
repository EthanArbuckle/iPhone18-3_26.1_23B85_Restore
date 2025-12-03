@interface _BMXPCConnectionCacheKey
- (BOOL)isEqual:(id)equal;
- (_BMXPCConnectionCacheKey)initWithServiceType:(unint64_t)type domain:(unint64_t)domain user:(unsigned int)user useCase:(id)case flags:(unint64_t)flags;
- (unint64_t)hash;
@end

@implementation _BMXPCConnectionCacheKey

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_serviceType];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_domain];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_user];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_useCase hash];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_flags];
  v11 = [v10 hash];

  return v9 ^ v11;
}

- (_BMXPCConnectionCacheKey)initWithServiceType:(unint64_t)type domain:(unint64_t)domain user:(unsigned int)user useCase:(id)case flags:(unint64_t)flags
{
  caseCopy = case;
  v17.receiver = self;
  v17.super_class = _BMXPCConnectionCacheKey;
  v14 = [(_BMXPCConnectionCacheKey *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_serviceType = type;
    v14->_domain = domain;
    v14->_user = user;
    objc_storeStrong(&v14->_useCase, case);
    v15->_flags = flags;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      v8 = self->_serviceType == v5->_serviceType && self->_domain == v5->_domain && self->_user == v5->_user && ((useCase = self->_useCase, useCase == v6->_useCase) || [(NSString *)useCase isEqual:?]) && self->_flags == v6->_flags;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end