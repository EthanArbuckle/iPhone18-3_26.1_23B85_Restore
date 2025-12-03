@interface IRPair
+ (id)pairWithFirst:(id)first second:(id)second;
- (IRPair)initWithFirst:(id)first second:(id)second;
@end

@implementation IRPair

+ (id)pairWithFirst:(id)first second:(id)second
{
  secondCopy = second;
  firstCopy = first;
  v8 = [[self alloc] initWithFirst:firstCopy second:secondCopy];

  return v8;
}

- (IRPair)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v12.receiver = self;
  v12.super_class = IRPair;
  v9 = [(IRPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, first);
    objc_storeStrong(&v10->_second, second);
  }

  return v10;
}

@end