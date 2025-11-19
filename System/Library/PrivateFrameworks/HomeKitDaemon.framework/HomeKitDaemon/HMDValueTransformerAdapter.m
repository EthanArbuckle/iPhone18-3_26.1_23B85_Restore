@interface HMDValueTransformerAdapter
- (BOOL)isKindOfTransformer:(Class)a3;
- (HMDValueTransformerAdapter)initWithTransformer:(id)a3;
- (id)reverseTransformedValue:(id)a3 error:(id *)a4;
- (id)transformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDValueTransformerAdapter

- (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(HMDValueTransformerAdapter *)self reverseTransformedValue:v5];

  return v6;
}

- (id)transformedValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(HMDValueTransformerAdapter *)self transformedValue:v5];

  return v6;
}

- (BOOL)isKindOfTransformer:(Class)a3
{
  v7.receiver = self;
  v7.super_class = HMDValueTransformerAdapter;
  if ([(HMDValueTransformer *)&v7 isKindOfTransformer:?])
  {
    isKindOfClass = 1;
  }

  else
  {
    transformer = self->_transformer;
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (HMDValueTransformerAdapter)initWithTransformer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDValueTransformerAdapter;
  v6 = [(HMDValueTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transformer, a3);
  }

  return v7;
}

@end