@interface HKAccessibilityValue
- (HKAccessibilityValue)initWithValueTitle:(id)a3 valueType:(id)a4 valueDescription:(id)a5 valueAsNumber:(id)a6;
- (id)description;
@end

@implementation HKAccessibilityValue

- (HKAccessibilityValue)initWithValueTitle:(id)a3 valueType:(id)a4 valueDescription:(id)a5 valueAsNumber:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HKAccessibilityValue;
  v15 = [(HKAccessibilityValue *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_valueTitle, a3);
    objc_storeStrong(&v16->_valueType, a4);
    objc_storeStrong(&v16->_valueDescription, a5);
    objc_storeStrong(&v16->_valueAsNumber, a6);
  }

  return v16;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKAccessibilityValue %p:", self];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(HKAccessibilityValue *)self valueTitle];
  v7 = [v5 stringWithFormat:@"  valueTitle = '%@'", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(HKAccessibilityValue *)self valueType];
  v10 = [v8 stringWithFormat:@"  valueType = '%@'", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(HKAccessibilityValue *)self valueDescription];
  v13 = [v11 stringWithFormat:@"  valueDescription = '%@'", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(HKAccessibilityValue *)self valueAsNumber];
  v16 = [v14 stringWithFormat:@"  valueAsNumber = %@", v15];
  [v3 addObject:v16];

  v17 = [v3 componentsJoinedByString:@"\n"];

  return v17;
}

@end