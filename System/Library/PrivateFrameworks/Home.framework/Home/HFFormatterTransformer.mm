@interface HFFormatterTransformer
- (HFFormatterTransformer)init;
- (HFFormatterTransformer)initWithSourceFormatter:(id)a3 transformBlock:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringForObjectValue:(id)a3;
@end

@implementation HFFormatterTransformer

- (HFFormatterTransformer)initWithSourceFormatter:(id)a3 transformBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || !v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HFFormatterTransformer.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"sourceFormatter && transformBlock"}];
  }

  v14.receiver = self;
  v14.super_class = HFFormatterTransformer;
  v10 = [(HFFormatterTransformer *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(HFFormatterTransformer *)v10 setSourceFormatter:v7];
    [(HFFormatterTransformer *)v11 setTransformBlock:v9];
  }

  return v11;
}

- (HFFormatterTransformer)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithSourceFormatter_transformBlock_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFFormatterTransformer.m" lineNumber:29 description:{@"%s is unavailable; use %@ instead", "-[HFFormatterTransformer init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HFFormatterTransformer *)self sourceFormatter];
  v6 = [(HFFormatterTransformer *)self transformBlock];
  v7 = [v4 initWithSourceFormatter:v5 transformBlock:v6];

  return v7;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  v5 = [(HFFormatterTransformer *)self sourceFormatter];
  v6 = [v5 stringForObjectValue:v4];

  v7 = [(HFFormatterTransformer *)self transformBlock];

  if (v7)
  {
    v8 = [(HFFormatterTransformer *)self transformBlock];
    v9 = (v8)[2](v8, v6, v4);

    v6 = v9;
  }

  return v6;
}

@end