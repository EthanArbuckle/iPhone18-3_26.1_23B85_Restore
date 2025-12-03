@interface HFSimpleFormatter
- (HFSimpleFormatter)init;
- (HFSimpleFormatter)initWithAttributedFormatterBlock:(id)block;
- (HFSimpleFormatter)initWithFormatterBlock:(id)block;
- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringForObjectValue:(id)value;
@end

@implementation HFSimpleFormatter

- (HFSimpleFormatter)initWithFormatterBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFSimpleFormatter.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"formatterBlock"}];
  }

  v11.receiver = self;
  v11.super_class = HFSimpleFormatter;
  v6 = [(HFSimpleFormatter *)&v11 init];
  if (v6)
  {
    v7 = [blockCopy copy];
    formatterBlock = v6->_formatterBlock;
    v6->_formatterBlock = v7;
  }

  return v6;
}

- (HFSimpleFormatter)initWithAttributedFormatterBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFSimpleFormatter.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"formatterBlock"}];
  }

  v11.receiver = self;
  v11.super_class = HFSimpleFormatter;
  v6 = [(HFSimpleFormatter *)&v11 init];
  if (v6)
  {
    v7 = [blockCopy copy];
    attributedFormatterBlock = v6->_attributedFormatterBlock;
    v6->_attributedFormatterBlock = v7;
  }

  return v6;
}

- (HFSimpleFormatter)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithFormatterBlock_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFSimpleFormatter.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HFSimpleFormatter init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFSimpleFormatter allocWithZone:zone];
  formatterBlock = [(HFSimpleFormatter *)self formatterBlock];
  v6 = [(HFSimpleFormatter *)v4 initWithFormatterBlock:formatterBlock];

  return v6;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  formatterBlock = [(HFSimpleFormatter *)self formatterBlock];

  if (formatterBlock)
  {
    formatterBlock2 = [(HFSimpleFormatter *)self formatterBlock];
    attributedFormatterBlock = (formatterBlock2)[2](formatterBlock2, valueCopy);
  }

  else
  {
    attributedFormatterBlock = [(HFSimpleFormatter *)self attributedFormatterBlock];

    if (!attributedFormatterBlock)
    {
      goto LABEL_6;
    }

    formatterBlock2 = [(HFSimpleFormatter *)self attributedFormatterBlock];
    v8 = (formatterBlock2[2])(formatterBlock2, valueCopy, MEMORY[0x277CBEC10]);
    attributedFormatterBlock = [v8 string];
  }

LABEL_6:

  return attributedFormatterBlock;
}

- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes
{
  valueCopy = value;
  attributesCopy = attributes;
  attributedFormatterBlock = [(HFSimpleFormatter *)self attributedFormatterBlock];

  if (attributedFormatterBlock)
  {
    attributedFormatterBlock2 = [(HFSimpleFormatter *)self attributedFormatterBlock];
    v10 = attributedFormatterBlock2;
    if (attributesCopy)
    {
      v11 = attributesCopy;
    }

    else
    {
      v11 = MEMORY[0x277CBEC10];
    }

    v12 = (*(attributedFormatterBlock2 + 16))(attributedFormatterBlock2, valueCopy, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end