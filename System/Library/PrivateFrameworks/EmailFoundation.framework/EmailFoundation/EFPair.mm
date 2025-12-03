@interface EFPair
+ (id)pairWithFirst:(id)first second:(id)second;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPair:(id)pair;
- (EFPair)initWithCoder:(id)coder;
- (EFPair)initWithFirst:(id)first second:(id)second;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EFPair

+ (id)pairWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v8 = [[self alloc] initWithFirst:firstCopy second:secondCopy];

  return v8;
}

- (EFPair)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v12.receiver = self;
  v12.super_class = EFPair;
  v9 = [(EFPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, first);
    objc_storeStrong(&v10->_second, second);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(EFPair *)self isEqualToPair:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToPair:(id)pair
{
  pairCopy = pair;
  v6 = pairCopy;
  if (self == pairCopy)
  {
    v14 = 1;
    goto LABEL_18;
  }

  if (!pairCopy)
  {
    goto LABEL_15;
  }

  first = self->_first;
  v8 = first;
  if (first)
  {
LABEL_6:
    first = [(EFPair *)v6 first];
    v10 = [v8 isEqual:first];

    if (first)
    {
      if (v10)
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    v14 = 0;
    goto LABEL_18;
  }

  first2 = [(EFPair *)pairCopy first];
  if (first2)
  {
    v8 = self->_first;
    goto LABEL_6;
  }

LABEL_8:
  second = self->_second;
  v12 = second;
  if (!second)
  {
    first2 = [(EFPair *)v6 second];
    if (!first2)
    {
      v14 = 1;
LABEL_17:

      goto LABEL_18;
    }

    v12 = self->_second;
  }

  second = [(EFPair *)v6 second];
  v14 = [v12 isEqual:second];

  if (!second)
  {
    goto LABEL_17;
  }

LABEL_18:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  first = [(EFPair *)self first];
  [coderCopy encodeObject:first forKey:@"EFPropertyKey_first"];

  second = [(EFPair *)self second];
  [coderCopy encodeObject:second forKey:@"EFPropertyKey_second"];
}

- (EFPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = EFPair;
  v5 = [(EFPair *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_first"];
    first = v5->_first;
    v5->_first = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_second"];
    second = v5->_second;
    v5->_second = v8;
  }

  return v5;
}

@end