@interface _BMXPCConnectionCacheKey
- (BOOL)isEqual:(id)a3;
- (_BMXPCConnectionCacheKey)initWithServiceType:(unint64_t)a3 domain:(unint64_t)a4 user:(unsigned int)a5 useCase:(id)a6 flags:(unint64_t)a7;
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

- (_BMXPCConnectionCacheKey)initWithServiceType:(unint64_t)a3 domain:(unint64_t)a4 user:(unsigned int)a5 useCase:(id)a6 flags:(unint64_t)a7
{
  v13 = a6;
  v17.receiver = self;
  v17.super_class = _BMXPCConnectionCacheKey;
  v14 = [(_BMXPCConnectionCacheKey *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_serviceType = a3;
    v14->_domain = a4;
    v14->_user = a5;
    objc_storeStrong(&v14->_useCase, a6);
    v15->_flags = a7;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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