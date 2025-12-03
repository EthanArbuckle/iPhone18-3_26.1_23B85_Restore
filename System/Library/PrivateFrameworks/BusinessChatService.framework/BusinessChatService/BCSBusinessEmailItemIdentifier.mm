@interface BCSBusinessEmailItemIdentifier
- (BCSBusinessEmailItemIdentifier)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (NSObject)itemIdentifier;
- (NSString)pirKey;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)initWithEmail:(void *)email;
- (void)initWithEmail:(void *)email fullDomain:(void *)domain topLevelDomain:;
@end

@implementation BCSBusinessEmailItemIdentifier

- (void)initWithEmail:(void *)email
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (email)
  {
    v12.receiver = email;
    v12.super_class = BCSBusinessEmailItemIdentifier;
    email = objc_msgSendSuper2(&v12, sel_init);
    if (email)
    {
      lowercaseString = [v3 lowercaseString];
      v5 = email[3];
      email[3] = lowercaseString;

      v6 = [email _truncatedHashForString:email[3]];
      email[6] = v6;
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
      v13[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      v9 = email[7];
      email[7] = v8;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return email;
}

- (void)initWithEmail:(void *)email fullDomain:(void *)domain topLevelDomain:
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  emailCopy = email;
  domainCopy = domain;
  if (self)
  {
    v26.receiver = self;
    v26.super_class = BCSBusinessEmailItemIdentifier;
    self = objc_msgSendSuper2(&v26, sel_init);
    if (self)
    {
      lowercaseString = [v7 lowercaseString];
      v11 = self[3];
      self[3] = lowercaseString;

      lowercaseString2 = [emailCopy lowercaseString];
      v13 = self[4];
      self[4] = lowercaseString2;

      lowercaseString3 = [domainCopy lowercaseString];
      v15 = self[5];
      self[5] = lowercaseString3;

      v16 = [self _truncatedHashForString:self[3]];
      self[6] = v16;
      v17 = MEMORY[0x277CBEB18];
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v16];
      v27[0] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      v20 = [v17 arrayWithArray:v19];

      if (emailCopy)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(self, "_truncatedHashForString:", self[4])}];
        [v20 addObject:v21];
      }

      if (domainCopy)
      {
        v22 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(self, "_truncatedHashForString:", self[5])}];
        [v20 addObject:v22];
      }

      v23 = self[7];
      self[7] = v20;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BCSBusinessEmailItemIdentifier *)self matchesItemIdentifying:equalCopy];

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
  truncatedHash = [(BCSBusinessEmailItemIdentifier *)self truncatedHash];

  return [v2 numberWithLongLong:truncatedHash];
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  type = [identifyingCopy type];
  if (type != [(BCSBusinessEmailItemIdentifier *)self type])
  {
    goto LABEL_10;
  }

  itemIdentifier = [identifyingCopy itemIdentifier];
  itemIdentifier2 = [(BCSBusinessEmailItemIdentifier *)self itemIdentifier];
  v8 = [itemIdentifier isEqual:itemIdentifier2];

  if (!v8)
  {
    goto LABEL_10;
  }

  if (![identifyingCopy conformsToProtocol:&unk_285466448])
  {
    goto LABEL_10;
  }

  truncatedHashes = [(BCSBusinessEmailItemIdentifier *)self truncatedHashes];

  if (truncatedHashes)
  {
    truncatedHashes2 = [(BCSBusinessEmailItemIdentifier *)self truncatedHashes];
    truncatedHashes3 = [identifyingCopy truncatedHashes];
    v12 = [truncatedHashes2 isEqualToArray:truncatedHashes3];

    if (!v12)
    {
      goto LABEL_10;
    }
  }

  truncatedHashes4 = [identifyingCopy truncatedHashes];

  if (!truncatedHashes4 || ([identifyingCopy truncatedHashes], v14 = objc_claimAutoreleasedReturnValue(), -[BCSBusinessEmailItemIdentifier truncatedHashes](self, "truncatedHashes"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToArray:", v15), v15, v14, v16))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    *(v5 + 48) = [(BCSBusinessEmailItemIdentifier *)self truncatedHash];
    truncatedHashes = [(BCSBusinessEmailItemIdentifier *)self truncatedHashes];
    v7 = [truncatedHashes copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  email = self->_email;
  coderCopy = coder;
  [coderCopy encodeObject:email forKey:@"Email"];
  [coderCopy encodeObject:self->_fullDomain forKey:@"FullDomain"];
  [coderCopy encodeObject:self->_topLevelDomain forKey:@"TopLevelDomain"];
}

- (BCSBusinessEmailItemIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Email"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FullDomain"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TopLevelDomain"];

  v8 = [(BCSBusinessEmailItemIdentifier *)self initWithEmail:v5 fullDomain:v6 topLevelDomain:v7];
  return v8;
}

@end