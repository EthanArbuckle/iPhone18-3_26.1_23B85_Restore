@interface WFContactLabeledValue
+ (WFContactLabeledValue)labeledValueWithLabel:(id)a3 value:(id)a4;
+ (id)localizedStringForLabel:(id)a3;
- (WFContactLabeledValue)initWithLabel:(id)a3 value:(id)a4;
- (id)description;
@end

@implementation WFContactLabeledValue

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = WFContactLabeledValue;
  v4 = [(WFContactLabeledValue *)&v9 description];
  v5 = [(WFContactLabeledValue *)self label];
  v6 = [(WFContactLabeledValue *)self value];
  v7 = [v3 stringWithFormat:@"%@: label=%@, value=%@", v4, v5, v6];

  return v7;
}

- (WFContactLabeledValue)initWithLabel:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && (v12.receiver = self, v12.super_class = WFContactLabeledValue, (self = [(WFContactLabeledValue *)&v12 init]) != 0))
  {
    v8 = [v6 copy];
    label = self->_label;
    self->_label = v8;

    objc_storeStrong(&self->_value, a4);
    self = self;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)localizedStringForLabel:(id)a3
{
  v3 = a3;
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
  v6 = [v4 localizedStringForLabel:v3];

  return v6;
}

+ (WFContactLabeledValue)labeledValueWithLabel:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithLabel:v7 value:v6];

  return v8;
}

@end