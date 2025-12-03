@interface BCSBusinessLogoItemIdentifier
- (BCSBusinessLogoItemIdentifier)initWithCoder:(id)coder;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (NSObject)itemIdentifier;
- (NSString)pirKey;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)initWithBusinessId:(void *)id;
@end

@implementation BCSBusinessLogoItemIdentifier

- (void)initWithBusinessId:(void *)id
{
  v4 = a2;
  if (id)
  {
    v7.receiver = id;
    v7.super_class = BCSBusinessLogoItemIdentifier;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    id = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      id[2] = [id _truncatedHashForString:id[1]];
    }
  }

  return id;
}

- (NSObject)itemIdentifier
{
  v2 = MEMORY[0x277CCABB0];
  truncatedHash = [(BCSBusinessLogoItemIdentifier *)self truncatedHash];

  return [v2 numberWithLongLong:truncatedHash];
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  type = [identifyingCopy type];
  if (type == [(BCSBusinessLogoItemIdentifier *)self type])
  {
    itemIdentifier = [identifyingCopy itemIdentifier];
    itemIdentifier2 = [(BCSBusinessLogoItemIdentifier *)self itemIdentifier];
    v8 = [itemIdentifier isEqual:itemIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)pirKey
{
  if (self)
  {
    self = self->_businessId;
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    *(v4 + 16) = [(BCSBusinessLogoItemIdentifier *)self truncatedHash];
    if (self)
    {
      businessId = self->_businessId;
    }

    else
    {
      businessId = 0;
    }

    objc_storeStrong((v4 + 8), businessId);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  truncatedHash = self->_truncatedHash;
  coderCopy = coder;
  v6 = [v4 numberWithLongLong:truncatedHash];
  [coderCopy encodeObject:v6 forKey:@"TruncatedHash"];

  [coderCopy encodeObject:self->_businessId forKey:@"BusinessId"];
}

- (BCSBusinessLogoItemIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BCSBusinessLogoItemIdentifier;
  v5 = [(BCSBusinessLogoItemIdentifier *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TruncatedHash"];
    v5->_truncatedHash = [v6 longLongValue];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BusinessId"];
    businessId = v5->_businessId;
    v5->_businessId = v7;
  }

  return v5;
}

@end