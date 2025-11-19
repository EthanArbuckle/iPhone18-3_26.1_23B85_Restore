@interface BCSBusinessLogoItemIdentifier
- (BCSBusinessLogoItemIdentifier)initWithCoder:(id)a3;
- (BOOL)matchesItemIdentifying:(id)a3;
- (NSObject)itemIdentifier;
- (NSString)pirKey;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initWithBusinessId:(void *)a1;
@end

@implementation BCSBusinessLogoItemIdentifier

- (void)initWithBusinessId:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = BCSBusinessLogoItemIdentifier;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      a1[2] = [a1 _truncatedHashForString:a1[1]];
    }
  }

  return a1;
}

- (NSObject)itemIdentifier
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(BCSBusinessLogoItemIdentifier *)self truncatedHash];

  return [v2 numberWithLongLong:v3];
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == [(BCSBusinessLogoItemIdentifier *)self type])
  {
    v6 = [v4 itemIdentifier];
    v7 = [(BCSBusinessLogoItemIdentifier *)self itemIdentifier];
    v8 = [v6 isEqual:v7];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  truncatedHash = self->_truncatedHash;
  v7 = a3;
  v6 = [v4 numberWithLongLong:truncatedHash];
  [v7 encodeObject:v6 forKey:@"TruncatedHash"];

  [v7 encodeObject:self->_businessId forKey:@"BusinessId"];
}

- (BCSBusinessLogoItemIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BCSBusinessLogoItemIdentifier;
  v5 = [(BCSBusinessLogoItemIdentifier *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TruncatedHash"];
    v5->_truncatedHash = [v6 longLongValue];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BusinessId"];
    businessId = v5->_businessId;
    v5->_businessId = v7;
  }

  return v5;
}

@end