@interface MXMSampleAttributeFilter
- (BOOL)_matchesSampleAttributeNameWithName:(id)name;
- (BOOL)_matchesSampleAttributeValueWithValue:(id)value;
- (BOOL)matchesSampleWithAttribute:(id)attribute;
- (MXMSampleAttributeFilter)initWithAttribute:(id)attribute;
- (MXMSampleAttributeFilter)initWithAttributeName:(id)name numericValue:(id)value;
- (MXMSampleAttributeFilter)initWithAttributeName:(id)name stringValue:(id)value;
- (MXMSampleAttributeFilter)initWithAttributeName:(id)name valueType:(int64_t)type value:(id)value;
- (MXMSampleAttributeFilter)initWithCoder:(id)coder;
- (NSNumber)numericValue;
- (NSSet)numericValues;
- (NSSet)stringValues;
- (NSSet)values;
- (NSString)stringValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXMSampleAttributeFilter

- (NSSet)stringValues
{
  if ([(MXMSampleAttribute *)self valueType]== 1 && [(MXMSampleAttributeFilter *)self finite])
  {
    v3 = [MEMORY[0x277CBEB98] setWithArray:self->_matchingStringAttributeValues];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSSet)numericValues
{
  if ([(MXMSampleAttribute *)self valueType]== 2 && [(MXMSampleAttributeFilter *)self finite])
  {
    v3 = [MEMORY[0x277CBEB98] setWithArray:self->_matchingNumericAttributeValues];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)stringValue
{
  stringValues = [(MXMSampleAttributeFilter *)self stringValues];
  if ([stringValues count] == 1)
  {
    stringValues2 = [(MXMSampleAttributeFilter *)self stringValues];
    anyObject = [stringValues2 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (NSNumber)numericValue
{
  numericValues = [(MXMSampleAttributeFilter *)self numericValues];
  if ([numericValues count] == 1)
  {
    numericValues2 = [(MXMSampleAttributeFilter *)self numericValues];
    anyObject = [numericValues2 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)value
{
  valueType = [(MXMSampleAttribute *)self valueType];
  if (valueType == 2)
  {
    numericValue = [(MXMSampleAttributeFilter *)self numericValue];
  }

  else if (valueType == 1)
  {
    numericValue = [(MXMSampleAttributeFilter *)self stringValue];
  }

  else
  {
    numericValue = 0;
  }

  return numericValue;
}

- (NSSet)values
{
  valueType = [(MXMSampleAttribute *)self valueType];
  if (valueType == 2)
  {
    numericValues = [(MXMSampleAttributeFilter *)self numericValues];
  }

  else if (valueType == 1)
  {
    numericValues = [(MXMSampleAttributeFilter *)self stringValues];
  }

  else
  {
    numericValues = 0;
  }

  return numericValues;
}

- (MXMSampleAttributeFilter)initWithAttribute:(id)attribute
{
  attributeCopy = attribute;
  name = [attributeCopy name];
  valueType = [attributeCopy valueType];
  v7 = MEMORY[0x277CBEB98];
  value = [attributeCopy value];

  v9 = [v7 setWithObject:value];
  v10 = [(MXMSampleAttributeFilter *)self initWithAttributeName:name valueType:valueType value:v9];

  return v10;
}

- (MXMSampleAttributeFilter)initWithAttributeName:(id)name stringValue:(id)value
{
  v6 = MEMORY[0x277CBEB98];
  nameCopy = name;
  v8 = [v6 setWithObject:value];
  v9 = [(MXMSampleAttributeFilter *)self initWithAttributeName:nameCopy stringValues:v8];

  return v9;
}

- (MXMSampleAttributeFilter)initWithAttributeName:(id)name numericValue:(id)value
{
  v6 = MEMORY[0x277CBEB98];
  nameCopy = name;
  v8 = [v6 setWithObject:value];
  v9 = [(MXMSampleAttributeFilter *)self initWithAttributeName:nameCopy numericValues:v8];

  return v9;
}

- (MXMSampleAttributeFilter)initWithAttributeName:(id)name valueType:(int64_t)type value:(id)value
{
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = MXMSampleAttributeFilter;
  v9 = [(MXMSampleAttribute *)&v15 initWithAttributeName:name valueType:type value:0];
  if (v9)
  {
    if (type == 1)
    {
      v10 = &OBJC_IVAR___MXMSampleAttributeFilter__matchingStringAttributeValues;
      goto LABEL_6;
    }

    if (type == 2)
    {
      v10 = &OBJC_IVAR___MXMSampleAttributeFilter__matchingNumericAttributeValues;
LABEL_6:
      allObjects = [valueCopy allObjects];
      v12 = *v10;
      v13 = *(&v9->super.super.isa + v12);
      *(&v9->super.super.isa + v12) = allObjects;
    }
  }

  return v9;
}

- (BOOL)_matchesSampleAttributeValueWithValue:(id)value
{
  valueCopy = value;
  values = [(MXMSampleAttributeFilter *)self values];
  v6 = [values containsObject:valueCopy];

  return v6;
}

- (BOOL)_matchesSampleAttributeNameWithName:(id)name
{
  nameCopy = name;
  name = [(MXMSampleAttribute *)self name];
  v6 = [nameCopy isEqualToString:name];

  return v6;
}

- (BOOL)matchesSampleWithAttribute:(id)attribute
{
  attributeCopy = attribute;
  name = [attributeCopy name];
  if (-[MXMSampleAttributeFilter _matchesSampleAttributeNameWithName:](self, "_matchesSampleAttributeNameWithName:", name) && -[MXMSampleAttributeFilter _matchesSampleAttributeValueTypeWithAttributeValueType:](self, "_matchesSampleAttributeValueTypeWithAttributeValueType:", [attributeCopy valueType]))
  {
    value = [attributeCopy value];
    v7 = [(MXMSampleAttributeFilter *)self _matchesSampleAttributeValueWithValue:value];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MXMSampleAttributeFilter alloc];
  name = [(MXMSampleAttribute *)self name];
  valueType = [(MXMSampleAttribute *)self valueType];
  values = [(MXMSampleAttributeFilter *)self values];
  v8 = [(MXMSampleAttributeFilter *)v4 initWithAttributeName:name valueType:valueType value:values];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MXMSampleAttributeFilter;
  coderCopy = coder;
  [(MXMSampleAttribute *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_matchingStringAttributeValues forKey:{@"matchingStrings", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_matchingNumericAttributeValues forKey:@"matchingNumerics"];
}

- (MXMSampleAttributeFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MXMSampleAttributeFilter;
  v5 = [(MXMSampleAttribute *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"matchingStrings"];
    matchingStringAttributeValues = v5->_matchingStringAttributeValues;
    v5->_matchingStringAttributeValues = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"matchingNumerics"];
    matchingNumericAttributeValues = v5->_matchingNumericAttributeValues;
    v5->_matchingNumericAttributeValues = v14;
  }

  return v5;
}

@end