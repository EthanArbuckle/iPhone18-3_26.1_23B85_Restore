@interface BCSWebPresentmentItemIdentifier
- (BCSWebPresentmentItemIdentifier)initWithBrandID:(id)d serverType:(int64_t)type;
- (BCSWebPresentmentItemIdentifier)initWithCoder:(id)coder;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSWebPresentmentItemIdentifier

- (BCSWebPresentmentItemIdentifier)initWithBrandID:(id)d serverType:(int64_t)type
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = BCSWebPresentmentItemIdentifier;
  v8 = [(BCSWebPresentmentItemIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_brandId, d);
    v9->_computedTruncatedHash = [BCSWebPresentmentItemIdentifier _truncatedHashForBrandID:dCopy];
    v9->_serverType = type;
  }

  return v9;
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  type = [(BCSWebPresentmentItemIdentifier *)self type];
  if (type == [identifyingCopy type])
  {
    truncatedHash = [(BCSWebPresentmentItemIdentifier *)self truncatedHash];
    v7 = truncatedHash == [identifyingCopy truncatedHash];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v4[2] = [(BCSWebPresentmentItemIdentifier *)self computedTruncatedHash];
    brandId = [(BCSWebPresentmentItemIdentifier *)self brandId];
    v6 = [brandId copy];
    v7 = v4[1];
    v4[1] = v6;

    v4[3] = [(BCSWebPresentmentItemIdentifier *)self serverType];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  brandId = self->_brandId;
  coderCopy = coder;
  [coderCopy encodeObject:brandId forKey:@"BrandID"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_serverType];
  [coderCopy encodeObject:v6 forKey:@"PIRServerType"];
}

- (BCSWebPresentmentItemIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BrandID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PIRServerType"];

  v7 = -[BCSWebPresentmentItemIdentifier initWithBrandID:serverType:](self, "initWithBrandID:serverType:", v5, [v6 integerValue]);
  return v7;
}

@end