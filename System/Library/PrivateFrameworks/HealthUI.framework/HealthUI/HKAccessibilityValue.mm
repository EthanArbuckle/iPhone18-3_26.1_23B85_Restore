@interface HKAccessibilityValue
- (HKAccessibilityValue)initWithValueTitle:(id)title valueType:(id)type valueDescription:(id)description valueAsNumber:(id)number;
- (id)description;
@end

@implementation HKAccessibilityValue

- (HKAccessibilityValue)initWithValueTitle:(id)title valueType:(id)type valueDescription:(id)description valueAsNumber:(id)number
{
  titleCopy = title;
  typeCopy = type;
  descriptionCopy = description;
  numberCopy = number;
  v18.receiver = self;
  v18.super_class = HKAccessibilityValue;
  v15 = [(HKAccessibilityValue *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_valueTitle, title);
    objc_storeStrong(&v16->_valueType, type);
    objc_storeStrong(&v16->_valueDescription, description);
    objc_storeStrong(&v16->_valueAsNumber, number);
  }

  return v16;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HKAccessibilityValue %p:", self];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  valueTitle = [(HKAccessibilityValue *)self valueTitle];
  v7 = [v5 stringWithFormat:@"  valueTitle = '%@'", valueTitle];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  valueType = [(HKAccessibilityValue *)self valueType];
  v10 = [v8 stringWithFormat:@"  valueType = '%@'", valueType];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  valueDescription = [(HKAccessibilityValue *)self valueDescription];
  v13 = [v11 stringWithFormat:@"  valueDescription = '%@'", valueDescription];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  valueAsNumber = [(HKAccessibilityValue *)self valueAsNumber];
  v16 = [v14 stringWithFormat:@"  valueAsNumber = %@", valueAsNumber];
  [v3 addObject:v16];

  v17 = [v3 componentsJoinedByString:@"\n"];

  return v17;
}

@end