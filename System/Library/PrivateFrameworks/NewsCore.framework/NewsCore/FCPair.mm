@interface FCPair
+ (id)pair;
+ (id)pairWithFirst:(id)first second:(id)second;
+ (id)pairWithPair:(id)pair;
- (BOOL)isEqual:(id)equal;
- (FCPair)initWithCoder:(id)coder;
- (FCPair)initWithFirst:(id)first second:(id)second;
- (FCPair)initWithPair:(id)pair;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCPair

- (unint64_t)hash
{
  first = [(FCPair *)self first];
  v4 = [first hash];
  second = [(FCPair *)self second];
  v6 = [second hash];

  return v6 ^ v4;
}

+ (id)pairWithFirst:(id)first second:(id)second
{
  secondCopy = second;
  firstCopy = first;
  v8 = [[self alloc] initWithFirst:firstCopy second:secondCopy];

  return v8;
}

+ (id)pairWithPair:(id)pair
{
  pairCopy = pair;
  v5 = [[self alloc] initWithPair:pairCopy];

  return v5;
}

+ (id)pair
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (FCPair)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v11.receiver = self;
  v11.super_class = FCPair;
  v8 = [(FCPair *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FCPair *)v8 p_SetFirst:firstCopy];
    [(FCPair *)v9 p_SetSecond:secondCopy];
  }

  return v9;
}

- (FCPair)initWithPair:(id)pair
{
  pairCopy = pair;
  first = [pairCopy first];
  second = [pairCopy second];

  v7 = [(FCPair *)self initWithFirst:first second:second];
  return v7;
}

- (FCPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  decodeObject = [coderCopy decodeObject];
  decodeObject2 = [coderCopy decodeObject];

  v7 = [(FCPair *)self initWithFirst:decodeObject second:decodeObject2];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  first = [(FCPair *)self first];
  [coderCopy encodeObject:first];

  second = [(FCPair *)self second];
  [coderCopy encodeObject:second];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      first = [(FCPair *)self first];
      first2 = [(FCPair *)equalCopy first];
      if ([first isEqual:first2])
      {
        second = [(FCPair *)self second];
        second2 = [(FCPair *)equalCopy second];
        v9 = [second isEqual:second2];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  first = [(FCPair *)self first];
  v5 = [first description];
  second = [(FCPair *)self second];
  v7 = [second description];
  v8 = [v3 stringWithFormat:@"%@, %@", v5, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  first = [(FCPair *)self first];
  v6 = [first copyWithZone:zone];

  second = [(FCPair *)self second];
  v8 = [second copyWithZone:zone];

  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithFirst:second:", v6, v8}];
  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  first = [(FCPair *)self first];
  v6 = [first copyWithZone:zone];

  second = [(FCPair *)self second];
  v8 = [second copyWithZone:zone];

  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithFirst:second:", v6, v8}];
  return v9;
}

@end