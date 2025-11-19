@interface CADPropertyFilter
- (BOOL)applicableToEntityType:(int)a3;
- (BOOL)validate;
- (BOOL)validateWithRequiredPropertyType:(int)a3;
- (CADPropertyFilter)initWithCoder:(id)a3;
- (CADPropertyFilter)initWithProperty:(int64_t)a3 comparison:(int64_t)a4 dateValue:(id)a5;
- (CADPropertyFilter)initWithProperty:(int64_t)a3 comparison:(int64_t)a4 integerValue:(int64_t)a5;
- (CADPropertyFilter)initWithProperty:(int64_t)a3 comparison:(int64_t)a4 stringValue:(id)a5;
- (id)extendWhereClause:(id)a3 usingOperation:(int64_t)a4 withValues:(id)a5 andTypes:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADPropertyFilter

- (CADPropertyFilter)initWithProperty:(int64_t)a3 comparison:(int64_t)a4 stringValue:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CADPropertyFilter;
  v10 = [(CADPropertyFilter *)&v14 init];
  v11 = v10;
  if (v10 && (v10->_property = a3, v10->_comparison = a4, objc_storeStrong(&v10->_stringValue, a5), ![(CADPropertyFilter *)v11 validateWithRequiredPropertyType:0]))
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (CADPropertyFilter)initWithProperty:(int64_t)a3 comparison:(int64_t)a4 integerValue:(int64_t)a5
{
  v12.receiver = self;
  v12.super_class = CADPropertyFilter;
  v8 = [(CADPropertyFilter *)&v12 init];
  v9 = v8;
  if (v8 && (v8->_property = a3, v8->_comparison = a4, v8->_integerValue = a5, ![(CADPropertyFilter *)v8 validateWithRequiredPropertyType:1]))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (CADPropertyFilter)initWithProperty:(int64_t)a3 comparison:(int64_t)a4 dateValue:(id)a5
{
  v8 = a5;
  v17.receiver = self;
  v17.super_class = CADPropertyFilter;
  v9 = [(CADPropertyFilter *)&v17 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_5;
  }

  v9->_property = a3;
  v9->_comparison = a4;
  if (v8)
  {
    v11 = MEMORY[0x277CBEAA8];
    [v8 timeIntervalSinceReferenceDate];
    v13 = [v11 dateWithTimeIntervalSinceReferenceDate:floor(v12)];
    dateValue = v10->_dateValue;
    v10->_dateValue = v13;
  }

  if (![(CADPropertyFilter *)v10 validateWithRequiredPropertyType:2])
  {
    v15 = 0;
  }

  else
  {
LABEL_5:
    v15 = v10;
  }

  return v15;
}

- (BOOL)validateWithRequiredPropertyType:(int)a3
{
  v5 = [(CADPropertyFilter *)self validate];
  if (v5)
  {
    if (*(getSearchPropertyInfo(self->_property) + 2) == a3)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v6 = CADLogHandle;
      v5 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        *v8 = 0;
        _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_ERROR, "Property is of the wrong type; you must use the initializer that matches the property type.", v8, 2u);
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (BOOL)validate
{
  v14 = *MEMORY[0x277D85DE8];
  if (getSearchPropertyInfo(self->_property))
  {
    if ([(CADPropertyFilter *)self isDate])
    {
      v3 = [(CADPropertyFilter *)self dateValue];
    }

    else
    {
      if (![(CADPropertyFilter *)self isString])
      {
        goto LABEL_10;
      }

      v3 = [(CADPropertyFilter *)self stringValue];
    }

    v8 = v3;

    if (!v8 && [(CADPropertyFilter *)self comparison])
    {
      v5 = [(CADPropertyFilter *)self comparison];
      if (v5 != 1)
      {
        v4 = CADLogHandle;
        LODWORD(v5) = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR);
        if (v5)
        {
          comparison = self->_comparison;
          v12 = 134217984;
          v13 = comparison;
          v7 = "comparison %li is invalid for null values.";
          goto LABEL_6;
        }
      }

      goto LABEL_11;
    }

LABEL_10:
    LOBYTE(v5) = 1;
    goto LABEL_11;
  }

  v4 = CADLogHandle;
  LODWORD(v5) = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    property = self->_property;
    v12 = 134217984;
    v13 = property;
    v7 = "property %li is invalid.";
LABEL_6:
    _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_ERROR, v7, &v12, 0xCu);
    LOBYTE(v5) = 0;
  }

LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)applicableToEntityType:(int)a3
{
  if (a3 == -1)
  {
    return 0;
  }

  v4 = getSearchPropertyInfo(self->_property)[2];
  do
  {
    isa = v4->isa;
    v4 = (v4 + 4);
    v5 = isa;
    result = isa != -1;
  }

  while (isa != a3 && v5 != -1);
  return result;
}

- (id)extendWhereClause:(id)a3 usingOperation:(int64_t)a4 withValues:(id)a5 andTypes:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a3;
  SearchPropertyInfo = getSearchPropertyInfo([(CADPropertyFilter *)self property]);
  v14 = *(SearchPropertyInfo + 2);
  switch(v14)
  {
    case 0:
      v18 = [(CADPropertyFilter *)self stringValue];

      if (v18)
      {
        v15 = [(CADPropertyFilter *)self stringValue];
        v16 = &unk_2837C7528;
        goto LABEL_9;
      }

      goto LABEL_17;
    case 2:
      v17 = [(CADPropertyFilter *)self dateValue];

      if (v17)
      {
        v15 = [(CADPropertyFilter *)self dateValue];
        v16 = &unk_2837C7510;
        goto LABEL_9;
      }

LABEL_17:
      v24 = [(CADPropertyFilter *)self comparison];
      if (v24 > 5)
      {
        v25 = 0;
      }

      else
      {
        v25 = off_27851B568[v24];
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ NULL", *SearchPropertyInfo, v25];
      goto LABEL_14;
    case 1:
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CADPropertyFilter integerValue](self, "integerValue")}];
      v16 = &unk_2837C74F8;
LABEL_9:
      [v10 addObject:v15];

      [v11 addObject:v16];
      break;
  }

  v19 = [(CADPropertyFilter *)self comparison];
  if (v19 > 5)
  {
    v20 = 0;
  }

  else
  {
    v20 = off_27851B598[v19];
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ ?", *SearchPropertyInfo, v20];
  v21 = LABEL_14:;
  v22 = _CADPropertySearchPredicateExtendWhereClause(v12, a4, v21);

  return v22;
}

- (CADPropertyFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CADPropertyFilter;
  v5 = [(CADFilter *)&v12 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_3;
  }

  v5->_property = [v4 decodeIntegerForKey:@"property"];
  v5->_comparison = [v4 decodeIntegerForKey:@"comparison"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
  stringValue = v5->_stringValue;
  v5->_stringValue = v6;

  v5->_integerValue = [v4 decodeIntegerForKey:@"integerValue"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateValue"];
  dateValue = v5->_dateValue;
  v5->_dateValue = v8;

  if (![(CADPropertyFilter *)v5 validate])
  {
    v10 = 0;
  }

  else
  {
LABEL_3:
    v10 = v5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CADPropertyFilter;
  v4 = a3;
  [(CADFilter *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_property forKey:{@"property", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_comparison forKey:@"comparison"];
  [v4 encodeObject:self->_stringValue forKey:@"stringValue"];
  [v4 encodeInteger:self->_integerValue forKey:@"integerValue"];
  [v4 encodeObject:self->_dateValue forKey:@"dateValue"];
}

@end