@interface KGBinaryPredicate
- (KGBinaryPredicate)initWithComparator:(unint64_t)a3 value:(id)a4;
- (id)description;
@end

@implementation KGBinaryPredicate

- (id)description
{
  v4 = self->_comparator - 1;
  if (v4 > 7)
  {
    v5 = @"_";
  }

  else
  {
    v5 = off_2797FE500[v4];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v5, self->_value, v2, v3];
}

- (KGBinaryPredicate)initWithComparator:(unint64_t)a3 value:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = KGBinaryPredicate;
  v8 = [(KGBinaryPredicate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_comparator = a3;
    objc_storeStrong(&v8->_value, a4);
  }

  return v9;
}

@end