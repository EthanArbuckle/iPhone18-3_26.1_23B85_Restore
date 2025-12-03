@interface FHMerchantAggregateFeature
- (BOOL)isEqual:(id)equal;
- (FHMerchantAggregateFeature)initWithCoder:(id)coder;
- (FHMerchantAggregateFeature)initWithMerchantID:(id)d merchantDisplayName:(id)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHMerchantAggregateFeature

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = FHMerchantAggregateFeature;
  coderCopy = coder;
  [(FHAggregateFeature *)&v7 encodeWithCoder:coderCopy];
  v5 = [(FHMerchantAggregateFeature *)self merchantID:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"merchantID"];

  merchantDisplayName = [(FHMerchantAggregateFeature *)self merchantDisplayName];
  [coderCopy encodeObject:merchantDisplayName forKey:@"merchantDisplayName"];
}

- (FHMerchantAggregateFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FHMerchantAggregateFeature;
  v5 = [(FHAggregateFeature *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantID"];
    [(FHMerchantAggregateFeature *)v5 setMerchantID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantDisplayName"];
    [(FHMerchantAggregateFeature *)v5 setMerchantDisplayName:v7];
  }

  return v5;
}

- (FHMerchantAggregateFeature)initWithMerchantID:(id)d merchantDisplayName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = FHMerchantAggregateFeature;
  v9 = [(FHMerchantAggregateFeature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(FHAggregateFeature *)v9 setType:3];
    objc_storeStrong(&v10->_merchantID, d);
    objc_storeStrong(&v10->_merchantDisplayName, name);
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"merchantID", self->_merchantID];
  [v3 appendFormat:@"%@: '%@'; ", @"merchantDisplayName", self->_merchantDisplayName];
  [v3 appendFormat:@">"];

  return v3;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = FHMerchantAggregateFeature;
  v3 = [(FHAggregateFeature *)&v9 hash];
  merchantID = [(FHMerchantAggregateFeature *)self merchantID];
  v5 = [merchantID hash] - v3 + 32 * v3;

  merchantDisplayName = [(FHMerchantAggregateFeature *)self merchantDisplayName];
  v7 = [merchantDisplayName hash] - v5 + 32 * v5;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v12.receiver = self, v12.super_class = FHMerchantAggregateFeature, [(FHAggregateFeature *)&v12 isEqual:v5]))
  {
    merchantID = [(FHMerchantAggregateFeature *)self merchantID];
    merchantID2 = [(FHMerchantAggregateFeature *)v5 merchantID];
    if ([merchantID isEqual:merchantID2])
    {
      merchantDisplayName = [(FHMerchantAggregateFeature *)self merchantDisplayName];
      merchantDisplayName2 = [(FHMerchantAggregateFeature *)v5 merchantDisplayName];
      v10 = [merchantDisplayName isEqual:merchantDisplayName2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end