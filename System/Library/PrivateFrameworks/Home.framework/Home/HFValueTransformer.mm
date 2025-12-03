@interface HFValueTransformer
+ (id)identityTransformer;
+ (id)transformerForValueClass:(Class)class transformBlock:(id)block reverseTransformBlock:(id)transformBlock;
- (id)transformedValueForValue:(id)value;
- (id)valueForTransformedValue:(id)value;
@end

@implementation HFValueTransformer

+ (id)transformerForValueClass:(Class)class transformBlock:(id)block reverseTransformBlock:(id)transformBlock
{
  blockCopy = block;
  transformBlockCopy = transformBlock;
  v11 = transformBlockCopy;
  if (blockCopy)
  {
    if (transformBlockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFValueTransformer.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"transformBlock"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFValueTransformer.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"reverseTransformBlock"}];

LABEL_3:
  v12 = objc_opt_new();
  [v12 setValueClass:class];
  [v12 setTransformBlock:blockCopy];
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

- (id)transformedValueForValue:(id)value
{
  valueCopy = value;
  if ([(HFValueTransformer *)self valueClass])
  {
    [(HFValueTransformer *)self valueClass];
    v5 = valueCopy;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    valueCopy = v6;
  }

  transformBlock = [(HFValueTransformer *)self transformBlock];
  v8 = (transformBlock)[2](transformBlock, valueCopy);

  return v8;
}

- (id)valueForTransformedValue:(id)value
{
  valueCopy = value;
  reverseTransformBlock = [(HFValueTransformer *)self reverseTransformBlock];
  v6 = (reverseTransformBlock)[2](reverseTransformBlock, valueCopy);

  return v6;
}

@end