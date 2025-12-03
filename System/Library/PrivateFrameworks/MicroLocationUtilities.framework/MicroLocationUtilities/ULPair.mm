@interface ULPair
+ (id)pairWithFirst:(id)first second:(id)second;
- (ULPair)initWithFirst:(id)first second:(id)second;
- (id)description;
@end

@implementation ULPair

+ (id)pairWithFirst:(id)first second:(id)second
{
  secondCopy = second;
  firstCopy = first;
  v8 = [[self alloc] initWithFirst:firstCopy second:secondCopy];

  return v8;
}

- (ULPair)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v12.receiver = self;
  v12.super_class = ULPair;
  v9 = [(ULPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, first);
    objc_storeStrong(&v10->_second, second);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  first = [(ULPair *)self first];
  second = [(ULPair *)self second];
  v6 = [v3 stringWithFormat:@"ULPair with first: %@, second: %@", first, second];

  return v6;
}

@end