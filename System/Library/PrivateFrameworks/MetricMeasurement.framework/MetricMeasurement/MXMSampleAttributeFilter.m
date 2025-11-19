@interface MXMSampleAttributeFilter
- (BOOL)_matchesSampleAttributeNameWithName:(id)a3;
- (BOOL)_matchesSampleAttributeValueWithValue:(id)a3;
- (BOOL)matchesSampleWithAttribute:(id)a3;
- (MXMSampleAttributeFilter)initWithAttribute:(id)a3;
- (MXMSampleAttributeFilter)initWithAttributeName:(id)a3 numericValue:(id)a4;
- (MXMSampleAttributeFilter)initWithAttributeName:(id)a3 stringValue:(id)a4;
- (MXMSampleAttributeFilter)initWithAttributeName:(id)a3 valueType:(int64_t)a4 value:(id)a5;
- (MXMSampleAttributeFilter)initWithCoder:(id)a3;
- (NSNumber)numericValue;
- (NSSet)numericValues;
- (NSSet)stringValues;
- (NSSet)values;
- (NSString)stringValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)value;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(MXMSampleAttributeFilter *)self stringValues];
  if ([v3 count] == 1)
  {
    v4 = [(MXMSampleAttributeFilter *)self stringValues];
    v5 = [v4 anyObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)numericValue
{
  v3 = [(MXMSampleAttributeFilter *)self numericValues];
  if ([v3 count] == 1)
  {
    v4 = [(MXMSampleAttributeFilter *)self numericValues];
    v5 = [v4 anyObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)value
{
  v3 = [(MXMSampleAttribute *)self valueType];
  if (v3 == 2)
  {
    v4 = [(MXMSampleAttributeFilter *)self numericValue];
  }

  else if (v3 == 1)
  {
    v4 = [(MXMSampleAttributeFilter *)self stringValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSSet)values
{
  v3 = [(MXMSampleAttribute *)self valueType];
  if (v3 == 2)
  {
    v4 = [(MXMSampleAttributeFilter *)self numericValues];
  }

  else if (v3 == 1)
  {
    v4 = [(MXMSampleAttributeFilter *)self stringValues];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MXMSampleAttributeFilter)initWithAttribute:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 valueType];
  v7 = MEMORY[0x277CBEB98];
  v8 = [v4 value];

  v9 = [v7 setWithObject:v8];
  v10 = [(MXMSampleAttributeFilter *)self initWithAttributeName:v5 valueType:v6 value:v9];

  return v10;
}

- (MXMSampleAttributeFilter)initWithAttributeName:(id)a3 stringValue:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a3;
  v8 = [v6 setWithObject:a4];
  v9 = [(MXMSampleAttributeFilter *)self initWithAttributeName:v7 stringValues:v8];

  return v9;
}

- (MXMSampleAttributeFilter)initWithAttributeName:(id)a3 numericValue:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a3;
  v8 = [v6 setWithObject:a4];
  v9 = [(MXMSampleAttributeFilter *)self initWithAttributeName:v7 numericValues:v8];

  return v9;
}

- (MXMSampleAttributeFilter)initWithAttributeName:(id)a3 valueType:(int64_t)a4 value:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = MXMSampleAttributeFilter;
  v9 = [(MXMSampleAttribute *)&v15 initWithAttributeName:a3 valueType:a4 value:0];
  if (v9)
  {
    if (a4 == 1)
    {
      v10 = &OBJC_IVAR___MXMSampleAttributeFilter__matchingStringAttributeValues;
      goto LABEL_6;
    }

    if (a4 == 2)
    {
      v10 = &OBJC_IVAR___MXMSampleAttributeFilter__matchingNumericAttributeValues;
LABEL_6:
      v11 = [v8 allObjects];
      v12 = *v10;
      v13 = *(&v9->super.super.isa + v12);
      *(&v9->super.super.isa + v12) = v11;
    }
  }

  return v9;
}

- (BOOL)_matchesSampleAttributeValueWithValue:(id)a3
{
  v4 = a3;
  v5 = [(MXMSampleAttributeFilter *)self values];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)_matchesSampleAttributeNameWithName:(id)a3
{
  v4 = a3;
  v5 = [(MXMSampleAttribute *)self name];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BOOL)matchesSampleWithAttribute:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  if (-[MXMSampleAttributeFilter _matchesSampleAttributeNameWithName:](self, "_matchesSampleAttributeNameWithName:", v5) && -[MXMSampleAttributeFilter _matchesSampleAttributeValueTypeWithAttributeValueType:](self, "_matchesSampleAttributeValueTypeWithAttributeValueType:", [v4 valueType]))
  {
    v6 = [v4 value];
    v7 = [(MXMSampleAttributeFilter *)self _matchesSampleAttributeValueWithValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MXMSampleAttributeFilter alloc];
  v5 = [(MXMSampleAttribute *)self name];
  v6 = [(MXMSampleAttribute *)self valueType];
  v7 = [(MXMSampleAttributeFilter *)self values];
  v8 = [(MXMSampleAttributeFilter *)v4 initWithAttributeName:v5 valueType:v6 value:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MXMSampleAttributeFilter;
  v4 = a3;
  [(MXMSampleAttribute *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_matchingStringAttributeValues forKey:{@"matchingStrings", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_matchingNumericAttributeValues forKey:@"matchingNumerics"];
}

- (MXMSampleAttributeFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MXMSampleAttributeFilter;
  v5 = [(MXMSampleAttribute *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"matchingStrings"];
    matchingStringAttributeValues = v5->_matchingStringAttributeValues;
    v5->_matchingStringAttributeValues = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"matchingNumerics"];
    matchingNumericAttributeValues = v5->_matchingNumericAttributeValues;
    v5->_matchingNumericAttributeValues = v14;
  }

  return v5;
}

@end