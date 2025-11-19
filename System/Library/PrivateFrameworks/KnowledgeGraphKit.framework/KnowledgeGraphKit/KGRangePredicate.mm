@interface KGRangePredicate
- (KGRangePredicate)initWithComparator:(unint64_t)a3 value1:(id)a4 value2:(id)a5;
- (id)description;
- (id)leftParen:(unint64_t)a3;
- (id)rightParen:(unint64_t)a3;
@end

@implementation KGRangePredicate

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(KGRangePredicate *)self leftParen:self->_comparator];
  value1 = self->_value1;
  value2 = self->_value2;
  v7 = [(KGRangePredicate *)self rightParen:self->_comparator];
  v8 = [v3 stringWithFormat:@"%@%@, %@%@", v4, value1, value2, v7];

  return v8;
}

- (id)rightParen:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    return @"_";
  }

  else
  {
    return off_2797FE580[a3 - 1];
  }
}

- (id)leftParen:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    return @"_";
  }

  else
  {
    return off_2797FE540[a3 - 1];
  }
}

- (KGRangePredicate)initWithComparator:(unint64_t)a3 value1:(id)a4 value2:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = KGRangePredicate;
  v11 = [(KGRangePredicate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_comparator = a3;
    objc_storeStrong(&v11->_value1, a4);
    objc_storeStrong(&v12->_value2, a5);
  }

  return v12;
}

@end