@interface HFSimpleFormatter
- (HFSimpleFormatter)init;
- (HFSimpleFormatter)initWithAttributedFormatterBlock:(id)a3;
- (HFSimpleFormatter)initWithFormatterBlock:(id)a3;
- (id)attributedStringForObjectValue:(id)a3 withDefaultAttributes:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringForObjectValue:(id)a3;
@end

@implementation HFSimpleFormatter

- (HFSimpleFormatter)initWithFormatterBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFSimpleFormatter.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"formatterBlock"}];
  }

  v11.receiver = self;
  v11.super_class = HFSimpleFormatter;
  v6 = [(HFSimpleFormatter *)&v11 init];
  if (v6)
  {
    v7 = [v5 copy];
    formatterBlock = v6->_formatterBlock;
    v6->_formatterBlock = v7;
  }

  return v6;
}

- (HFSimpleFormatter)initWithAttributedFormatterBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFSimpleFormatter.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"formatterBlock"}];
  }

  v11.receiver = self;
  v11.super_class = HFSimpleFormatter;
  v6 = [(HFSimpleFormatter *)&v11 init];
  if (v6)
  {
    v7 = [v5 copy];
    attributedFormatterBlock = v6->_attributedFormatterBlock;
    v6->_attributedFormatterBlock = v7;
  }

  return v6;
}

- (HFSimpleFormatter)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithFormatterBlock_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFSimpleFormatter.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HFSimpleFormatter init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HFSimpleFormatter allocWithZone:a3];
  v5 = [(HFSimpleFormatter *)self formatterBlock];
  v6 = [(HFSimpleFormatter *)v4 initWithFormatterBlock:v5];

  return v6;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  v5 = [(HFSimpleFormatter *)self formatterBlock];

  if (v5)
  {
    v6 = [(HFSimpleFormatter *)self formatterBlock];
    v7 = (v6)[2](v6, v4);
  }

  else
  {
    v7 = [(HFSimpleFormatter *)self attributedFormatterBlock];

    if (!v7)
    {
      goto LABEL_6;
    }

    v6 = [(HFSimpleFormatter *)self attributedFormatterBlock];
    v8 = (v6[2])(v6, v4, MEMORY[0x277CBEC10]);
    v7 = [v8 string];
  }

LABEL_6:

  return v7;
}

- (id)attributedStringForObjectValue:(id)a3 withDefaultAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HFSimpleFormatter *)self attributedFormatterBlock];

  if (v8)
  {
    v9 = [(HFSimpleFormatter *)self attributedFormatterBlock];
    v10 = v9;
    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = MEMORY[0x277CBEC10];
    }

    v12 = (*(v9 + 16))(v9, v6, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end