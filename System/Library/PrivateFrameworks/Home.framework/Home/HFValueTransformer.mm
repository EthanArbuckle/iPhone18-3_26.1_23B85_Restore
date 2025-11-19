@interface HFValueTransformer
+ (id)identityTransformer;
+ (id)transformerForValueClass:(Class)a3 transformBlock:(id)a4 reverseTransformBlock:(id)a5;
- (id)transformedValueForValue:(id)a3;
- (id)valueForTransformedValue:(id)a3;
@end

@implementation HFValueTransformer

+ (id)transformerForValueClass:(Class)a3 transformBlock:(id)a4 reverseTransformBlock:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"HFValueTransformer.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"transformBlock"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"HFValueTransformer.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"reverseTransformBlock"}];

LABEL_3:
  v12 = objc_opt_new();
  [v12 setValueClass:a3];
  [v12 setTransformBlock:v9];
  [v12 setReverseTransformBlock:v11];

  return v12;
}

+ (id)identityTransformer
{
  v2 = objc_opt_new();
  [v2 setTransformBlock:&__block_literal_global_189];
  [v2 setReverseTransformBlock:&__block_literal_global_13_7];

  return v2;
}

- (id)transformedValueForValue:(id)a3
{
  v4 = a3;
  if ([(HFValueTransformer *)self valueClass])
  {
    [(HFValueTransformer *)self valueClass];
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v4 = v6;
  }

  v7 = [(HFValueTransformer *)self transformBlock];
  v8 = (v7)[2](v7, v4);

  return v8;
}

- (id)valueForTransformedValue:(id)a3
{
  v4 = a3;
  v5 = [(HFValueTransformer *)self reverseTransformBlock];
  v6 = (v5)[2](v5, v4);

  return v6;
}

@end