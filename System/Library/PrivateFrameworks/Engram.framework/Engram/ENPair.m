@interface ENPair
- (ENPair)initWithFirst:(id)a3 second:(id)a4;
@end

@implementation ENPair

- (ENPair)initWithFirst:(id)a3 second:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ENPair;
  v9 = [(ENPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, a3);
    objc_storeStrong(&v10->_second, a4);
  }

  return v10;
}

@end