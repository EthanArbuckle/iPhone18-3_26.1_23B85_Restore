@interface WFContactLabeledValue
+ (WFContactLabeledValue)labeledValueWithLabel:(id)label value:(id)value;
+ (id)localizedStringForLabel:(id)label;
- (WFContactLabeledValue)initWithLabel:(id)label value:(id)value;
- (id)description;
@end

@implementation WFContactLabeledValue

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = WFContactLabeledValue;
  v4 = [(WFContactLabeledValue *)&v9 description];
  label = [(WFContactLabeledValue *)self label];
  value = [(WFContactLabeledValue *)self value];
  v7 = [v3 stringWithFormat:@"%@: label=%@, value=%@", v4, label, value];

  return v7;
}

- (WFContactLabeledValue)initWithLabel:(id)label value:(id)value
{
  labelCopy = label;
  valueCopy = value;
  if (valueCopy && (v12.receiver = self, v12.super_class = WFContactLabeledValue, (self = [(WFContactLabeledValue *)&v12 init]) != 0))
  {
    v8 = [labelCopy copy];
    label = self->_label;
    self->_label = v8;

    objc_storeStrong(&self->_value, value);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)localizedStringForLabel:(id)label
{
  labelCopy = label;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getCNLabeledValueClass_softClass;
  v12 = getCNLabeledValueClass_softClass;
  if (!getCNLabeledValueClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getCNLabeledValueClass_block_invoke;
    v8[3] = &unk_27834A178;
    v8[4] = &v9;
    __getCNLabeledValueClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [v4 localizedStringForLabel:labelCopy];

  return v6;
}

+ (WFContactLabeledValue)labeledValueWithLabel:(id)label value:(id)value
{
  valueCopy = value;
  labelCopy = label;
  v8 = [[self alloc] initWithLabel:labelCopy value:valueCopy];

  return v8;
}

@end