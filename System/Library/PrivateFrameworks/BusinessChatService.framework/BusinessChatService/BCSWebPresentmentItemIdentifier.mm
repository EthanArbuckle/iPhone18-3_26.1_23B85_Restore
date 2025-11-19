@interface BCSWebPresentmentItemIdentifier
- (BCSWebPresentmentItemIdentifier)initWithBrandID:(id)a3 serverType:(int64_t)a4;
- (BCSWebPresentmentItemIdentifier)initWithCoder:(id)a3;
- (BOOL)matchesItemIdentifying:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSWebPresentmentItemIdentifier

- (BCSWebPresentmentItemIdentifier)initWithBrandID:(id)a3 serverType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BCSWebPresentmentItemIdentifier;
  v8 = [(BCSWebPresentmentItemIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_brandId, a3);
    v9->_computedTruncatedHash = [BCSWebPresentmentItemIdentifier _truncatedHashForBrandID:v7];
    v9->_serverType = a4;
  }

  return v9;
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [(BCSWebPresentmentItemIdentifier *)self type];
  if (v5 == [v4 type])
  {
    v6 = [(BCSWebPresentmentItemIdentifier *)self truncatedHash];
    v7 = v6 == [v4 truncatedHash];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v4[2] = [(BCSWebPresentmentItemIdentifier *)self computedTruncatedHash];
    v5 = [(BCSWebPresentmentItemIdentifier *)self brandId];
    v6 = [v5 copy];
    v7 = v4[1];
    v4[1] = v6;

    v4[3] = [(BCSWebPresentmentItemIdentifier *)self serverType];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  brandId = self->_brandId;
  v5 = a3;
  [v5 encodeObject:brandId forKey:@"BrandID"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_serverType];
  [v5 encodeObject:v6 forKey:@"PIRServerType"];
}

- (BCSWebPresentmentItemIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BrandID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PIRServerType"];

  v7 = -[BCSWebPresentmentItemIdentifier initWithBrandID:serverType:](self, "initWithBrandID:serverType:", v5, [v6 integerValue]);
  return v7;
}

@end