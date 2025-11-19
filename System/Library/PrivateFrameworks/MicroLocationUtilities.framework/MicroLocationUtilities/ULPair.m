@interface ULPair
+ (id)pairWithFirst:(id)a3 second:(id)a4;
- (ULPair)initWithFirst:(id)a3 second:(id)a4;
- (id)description;
@end

@implementation ULPair

+ (id)pairWithFirst:(id)a3 second:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithFirst:v7 second:v6];

  return v8;
}

- (ULPair)initWithFirst:(id)a3 second:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ULPair;
  v9 = [(ULPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, a3);
    objc_storeStrong(&v10->_second, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ULPair *)self first];
  v5 = [(ULPair *)self second];
  v6 = [v3 stringWithFormat:@"ULPair with first: %@, second: %@", v4, v5];

  return v6;
}

@end