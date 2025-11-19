@interface IRPair
+ (id)pairWithFirst:(id)a3 second:(id)a4;
- (IRPair)initWithFirst:(id)a3 second:(id)a4;
@end

@implementation IRPair

+ (id)pairWithFirst:(id)a3 second:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithFirst:v7 second:v6];

  return v8;
}

- (IRPair)initWithFirst:(id)a3 second:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IRPair;
  v9 = [(IRPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, a3);
    objc_storeStrong(&v10->_second, a4);
  }

  return v10;
}

@end