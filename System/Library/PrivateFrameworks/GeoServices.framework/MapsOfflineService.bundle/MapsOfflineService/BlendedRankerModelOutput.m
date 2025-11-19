@interface BlendedRankerModelOutput
- (BlendedRankerModelOutput)initWithTarget:(int64_t)a3 classProbability:(id)a4;
- (id)featureValueForName:(id)a3;
@end

@implementation BlendedRankerModelOutput

- (BlendedRankerModelOutput)initWithTarget:(int64_t)a3 classProbability:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BlendedRankerModelOutput;
  v8 = [(BlendedRankerModelOutput *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_target = a3;
    objc_storeStrong(&v8->_classProbability, a4);
  }

  return v9;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"target"])
  {
    v5 = [MLFeatureValue featureValueWithInt64:[(BlendedRankerModelOutput *)self target]];
  }

  else if ([v4 isEqualToString:@"classProbability"])
  {
    v6 = [(BlendedRankerModelOutput *)self classProbability];
    v5 = [MLFeatureValue featureValueWithDictionary:v6 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end