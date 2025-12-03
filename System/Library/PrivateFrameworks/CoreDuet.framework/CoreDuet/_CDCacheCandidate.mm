@interface _CDCacheCandidate
- (BOOL)isEqual:(id)equal;
- (_CDCacheCandidate)initWithDomainId:(id)id derivedIntentId:(id)intentId bundleId:(id)bundleId recipientsId:(id)recipientsId;
- (id)description;
- (unint64_t)hash;
@end

@implementation _CDCacheCandidate

- (_CDCacheCandidate)initWithDomainId:(id)id derivedIntentId:(id)intentId bundleId:(id)bundleId recipientsId:(id)recipientsId
{
  idCopy = id;
  intentIdCopy = intentId;
  bundleIdCopy = bundleId;
  recipientsIdCopy = recipientsId;
  v18.receiver = self;
  v18.super_class = _CDCacheCandidate;
  v15 = [(_CDCacheCandidate *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_domainId, id);
    objc_storeStrong(&v16->_derivedIntentId, intentId);
    objc_storeStrong(&v16->_bundleId, bundleId);
    objc_storeStrong(&v16->_recipientsId, recipientsId);
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_domainId;
      v7 = v6;
      if (v6 == v5[1])
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v10 = self->_derivedIntentId;
      v11 = v10;
      if (v10 == v5[2])
      {
      }

      else
      {
        v12 = [(NSString *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v13 = self->_bundleId;
      v14 = v13;
      if (v13 == v5[3])
      {
      }

      else
      {
        v15 = [(NSString *)v13 isEqual:?];

        if ((v15 & 1) == 0)
        {
LABEL_14:
          v9 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }

      v16 = self->_recipientsId;
      v17 = v16;
      if (v16 == v5[4])
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSString *)v16 isEqual:?];
      }

      goto LABEL_20;
    }
  }

  v9 = 0;
LABEL_21:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_derivedIntentId hash];
  v4 = [(NSString *)self->_domainId hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_bundleId hash]- v4 + 32 * v4;
  return [(NSString *)self->_recipientsId hash]- v5 + 32 * v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_%@_%@", self->_domainId, self->_derivedIntentId, self->_bundleId, self->_recipientsId];

  return v2;
}

@end