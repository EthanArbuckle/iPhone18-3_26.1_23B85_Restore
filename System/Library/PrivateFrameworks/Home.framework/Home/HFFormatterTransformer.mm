@interface HFFormatterTransformer
- (HFFormatterTransformer)init;
- (HFFormatterTransformer)initWithSourceFormatter:(id)formatter transformBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringForObjectValue:(id)value;
@end

@implementation HFFormatterTransformer

- (HFFormatterTransformer)initWithSourceFormatter:(id)formatter transformBlock:(id)block
{
  formatterCopy = formatter;
  blockCopy = block;
  v9 = blockCopy;
  if (!formatterCopy || !blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFFormatterTransformer.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"sourceFormatter && transformBlock"}];
  }

  v14.receiver = self;
  v14.super_class = HFFormatterTransformer;
  v10 = [(HFFormatterTransformer *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(HFFormatterTransformer *)v10 setSourceFormatter:formatterCopy];
    [(HFFormatterTransformer *)v11 setTransformBlock:v9];
  }

  return v11;
}

- (HFFormatterTransformer)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithSourceFormatter_transformBlock_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFFormatterTransformer.m" lineNumber:29 description:{@"%s is unavailable; use %@ instead", "-[HFFormatterTransformer init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  sourceFormatter = [(HFFormatterTransformer *)self sourceFormatter];
  transformBlock = [(HFFormatterTransformer *)self transformBlock];
  v7 = [v4 initWithSourceFormatter:sourceFormatter transformBlock:transformBlock];

  return v7;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  sourceFormatter = [(HFFormatterTransformer *)self sourceFormatter];
  v6 = [sourceFormatter stringForObjectValue:valueCopy];

  transformBlock = [(HFFormatterTransformer *)self transformBlock];

  if (transformBlock)
  {
    transformBlock2 = [(HFFormatterTransformer *)self transformBlock];
    v9 = (transformBlock2)[2](transformBlock2, v6, valueCopy);

    v6 = v9;
  }

  return v6;
}

@end