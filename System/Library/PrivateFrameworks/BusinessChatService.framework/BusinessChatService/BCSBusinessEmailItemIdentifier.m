@interface BCSBusinessEmailItemIdentifier
- (BCSBusinessEmailItemIdentifier)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesItemIdentifying:(id)a3;
- (NSObject)itemIdentifier;
- (NSString)pirKey;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)initWithEmail:(void *)a1;
- (void)initWithEmail:(void *)a3 fullDomain:(void *)a4 topLevelDomain:;
@end

@implementation BCSBusinessEmailItemIdentifier

- (void)initWithEmail:(void *)a1
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = BCSBusinessEmailItemIdentifier;
    a1 = objc_msgSendSuper2(&v12, sel_init);
    if (a1)
    {
      v4 = [v3 lowercaseString];
      v5 = a1[3];
      a1[3] = v4;

      v6 = [a1 _truncatedHashForString:a1[3]];
      a1[6] = v6;
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
      v13[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      v9 = a1[7];
      a1[7] = v8;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

- (void)initWithEmail:(void *)a3 fullDomain:(void *)a4 topLevelDomain:
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = BCSBusinessEmailItemIdentifier;
    a1 = objc_msgSendSuper2(&v26, sel_init);
    if (a1)
    {
      v10 = [v7 lowercaseString];
      v11 = a1[3];
      a1[3] = v10;

      v12 = [v8 lowercaseString];
      v13 = a1[4];
      a1[4] = v12;

      v14 = [v9 lowercaseString];
      v15 = a1[5];
      a1[5] = v14;

      v16 = [a1 _truncatedHashForString:a1[3]];
      a1[6] = v16;
      v17 = MEMORY[0x277CBEB18];
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v16];
      v27[0] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      v20 = [v17 arrayWithArray:v19];

      if (v8)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a1, "_truncatedHashForString:", a1[4])}];
        [v20 addObject:v21];
      }

      if (v9)
      {
        v22 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a1, "_truncatedHashForString:", a1[5])}];
        [v20 addObject:v22];
      }

      v23 = a1[7];
      a1[7] = v20;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BCSBusinessEmailItemIdentifier *)self matchesItemIdentifying:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_email hash];
  v4 = [(NSString *)self->_fullDomain hash]^ v3;
  return v4 ^ [(NSString *)self->_topLevelDomain hash];
}

- (NSObject)itemIdentifier
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(BCSBusinessEmailItemIdentifier *)self truncatedHash];

  return [v2 numberWithLongLong:v3];
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = [v4 type];
  if (v5 != [(BCSBusinessEmailItemIdentifier *)self type])
  {
    goto LABEL_10;
  }

  v6 = [v4 itemIdentifier];
  v7 = [(BCSBusinessEmailItemIdentifier *)self itemIdentifier];
  v8 = [v6 isEqual:v7];

  if (!v8)
  {
    goto LABEL_10;
  }

  if (![v4 conformsToProtocol:&unk_285466448])
  {
    goto LABEL_10;
  }

  v9 = [(BCSBusinessEmailItemIdentifier *)self truncatedHashes];

  if (v9)
  {
    v10 = [(BCSBusinessEmailItemIdentifier *)self truncatedHashes];
    v11 = [v4 truncatedHashes];
    v12 = [v10 isEqualToArray:v11];

    if (!v12)
    {
      goto LABEL_10;
    }
  }

  v13 = [v4 truncatedHashes];

  if (!v13 || ([v4 truncatedHashes], v14 = objc_claimAutoreleasedReturnValue(), -[BCSBusinessEmailItemIdentifier truncatedHashes](self, "truncatedHashes"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToArray:", v15), v15, v14, v16))
  {
    v17 = 1;
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  return v17;
}

- (NSString)pirKey
{
  if (![(BCSBusinessEmailItemIdentifier *)self hasMatchingTruncatedHash]|| (!self ? (email = 0) : (email = self->_email), v4 = [(BCSBusinessEmailItemIdentifier *)self _truncatedHashForString:email], v4 == [(BCSBusinessEmailItemIdentifier *)self matchingTruncatedHash]))
  {
LABEL_5:
    if (self)
    {
      v5 = 24;
LABEL_7:
      v6 = *(&self->super.isa + v5);
      goto LABEL_8;
    }

    goto LABEL_21;
  }

  if (self)
  {
    fullDomain = self->_fullDomain;
  }

  else
  {
    fullDomain = 0;
  }

  v9 = [(BCSBusinessEmailItemIdentifier *)self _truncatedHashForString:fullDomain];
  if (v9 != [(BCSBusinessEmailItemIdentifier *)self matchingTruncatedHash])
  {
    if (self)
    {
      topLevelDomain = self->_topLevelDomain;
    }

    else
    {
      topLevelDomain = 0;
    }

    v11 = [(BCSBusinessEmailItemIdentifier *)self _truncatedHashForString:topLevelDomain];
    if (v11 == [(BCSBusinessEmailItemIdentifier *)self matchingTruncatedHash])
    {
      if (self)
      {
        v5 = 40;
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    goto LABEL_5;
  }

  if (self)
  {
    v5 = 32;
    goto LABEL_7;
  }

LABEL_21:
  v6 = 0;
LABEL_8:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    *(v5 + 48) = [(BCSBusinessEmailItemIdentifier *)self truncatedHash];
    v6 = [(BCSBusinessEmailItemIdentifier *)self truncatedHashes];
    v7 = [v6 copyWithZone:a3];
    v8 = *(v5 + 56);
    *(v5 + 56) = v7;

    if (self)
    {
      objc_storeStrong((v5 + 24), self->_email);
      fullDomain = self->_fullDomain;
    }

    else
    {
      v12 = *(v5 + 24);
      *(v5 + 24) = 0;

      fullDomain = 0;
    }

    objc_storeStrong((v5 + 32), fullDomain);
    if (self)
    {
      topLevelDomain = self->_topLevelDomain;
    }

    else
    {
      topLevelDomain = 0;
    }

    objc_storeStrong((v5 + 40), topLevelDomain);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  email = self->_email;
  v5 = a3;
  [v5 encodeObject:email forKey:@"Email"];
  [v5 encodeObject:self->_fullDomain forKey:@"FullDomain"];
  [v5 encodeObject:self->_topLevelDomain forKey:@"TopLevelDomain"];
}

- (BCSBusinessEmailItemIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Email"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FullDomain"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TopLevelDomain"];

  v8 = [(BCSBusinessEmailItemIdentifier *)self initWithEmail:v5 fullDomain:v6 topLevelDomain:v7];
  return v8;
}

@end