@interface SGSearchableItemIdTriple
+ (SGSearchableItemIdTriple)searchableItemIdTripleWithBundleId:(id)a3 domainId:(id)a4 uniqueId:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSearchableItemIdTriple:(id)a3;
- (SGSearchableItemIdTriple)initWithBundleId:(id)a3 domainId:(id)a4 uniqueId:(id)a5;
- (unint64_t)hash;
@end

@implementation SGSearchableItemIdTriple

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  v4 = [(NSString *)self->_domainId hash]- v3 + 32 * v3;
  return [(NSString *)self->_uniqueId hash]- v4 + 32 * v4;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSearchableItemIdTriple *)self isEqualToSearchableItemIdTriple:v5];
  }

  return v6;
}

- (BOOL)isEqualToSearchableItemIdTriple:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = self->_bundleId == 0;
  v7 = [v4 bundleId];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    v10 = [v5 bundleId];
    v11 = [(NSString *)bundleId isEqual:v10];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_domainId == 0;
  v13 = [v5 domainId];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  domainId = self->_domainId;
  if (domainId)
  {
    v16 = [v5 domainId];
    v17 = [(NSString *)domainId isEqual:v16];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_uniqueId == 0;
  v19 = [v5 uniqueId];
  v20 = v19 != 0;

  if (v18 == v20)
  {
LABEL_11:
    v23 = 0;
  }

  else
  {
    uniqueId = self->_uniqueId;
    if (uniqueId)
    {
      v22 = [v5 uniqueId];
      v23 = [(NSString *)uniqueId isEqual:v22];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (SGSearchableItemIdTriple)initWithBundleId:(id)a3 domainId:(id)a4 uniqueId:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v10)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SGSearchableItemIdTriple.m" lineNumber:11 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"SGSearchableItemIdTriple.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"uniqueId"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = SGSearchableItemIdTriple;
  v14 = [(SGSearchableItemIdTriple *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_bundleId, a3);
    objc_storeStrong(&v15->_domainId, a4);
    objc_storeStrong(&v15->_uniqueId, a5);
  }

  return v15;
}

+ (SGSearchableItemIdTriple)searchableItemIdTripleWithBundleId:(id)a3 domainId:(id)a4 uniqueId:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithBundleId:v10 domainId:v9 uniqueId:v8];

  return v11;
}

@end