@interface FHAmountAggregateFeature
- (BOOL)isEqual:(id)equal;
- (FHAmountAggregateFeature)initWithAmount:(unint64_t)amount comparator:(id)comparator;
- (FHAmountAggregateFeature)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHAmountAggregateFeature

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FHAmountAggregateFeature;
  coderCopy = coder;
  [(FHAggregateFeature *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[FHAmountAggregateFeature amount](self forKey:{"amount", v6.receiver, v6.super_class), @"amount"}];
  comparator = [(FHAmountAggregateFeature *)self comparator];
  [coderCopy encodeObject:comparator forKey:@"comparator"];
}

- (FHAmountAggregateFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = FHAmountAggregateFeature;
  v5 = [(FHAmountAggregateFeature *)&v8 init];
  if (v5)
  {
    -[FHAmountAggregateFeature setAmount:](v5, "setAmount:", [coderCopy decodeIntegerForKey:@"amount"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"comparator"];
    [(FHAmountAggregateFeature *)v5 setComparator:v6];
  }

  return v5;
}

- (FHAmountAggregateFeature)initWithAmount:(unint64_t)amount comparator:(id)comparator
{
  comparatorCopy = comparator;
  v11.receiver = self;
  v11.super_class = FHAmountAggregateFeature;
  v8 = [(FHAmountAggregateFeature *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FHAggregateFeature *)v8 setType:1];
    v9->_amount = amount;
    objc_storeStrong(&v9->_comparator, comparator);
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%lu'; ", @"amount", self->_amount];
  [v3 appendFormat:@"%@: '%@'; ", @"comparator", self->_comparator];
  [v3 appendFormat:@">"];

  return v3;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = FHAmountAggregateFeature;
  v3 = [(FHAggregateFeature *)&v8 hash];
  v4 = [(FHAmountAggregateFeature *)self amount]- v3 + 32 * v3;
  comparator = [(FHAmountAggregateFeature *)self comparator];
  v6 = [comparator hash] - v4 + 32 * v4;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v11.receiver = self, v11.super_class = FHAmountAggregateFeature, [(FHAggregateFeature *)&v11 isEqual:v5]) && (v6 = [(FHAmountAggregateFeature *)self amount], v6 == [(FHAmountAggregateFeature *)v5 amount]))
  {
    comparator = [(FHAmountAggregateFeature *)self comparator];
    comparator2 = [(FHAmountAggregateFeature *)v5 comparator];
    v9 = comparator == comparator2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end