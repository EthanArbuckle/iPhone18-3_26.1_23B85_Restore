@interface MOEventBundleLabelCondition
+ (id)stringFromTemplateOperator:(unint64_t)operator;
+ (id)stringFromValueType:(unint64_t)type;
+ (unint64_t)templateOperatorFromString:(id)string;
+ (unint64_t)valueTypeFromString:(id)string;
- (BOOL)isNumeric:(id)numeric;
- (BOOL)yieldConditionForMetaData:(id)data;
- (BOOL)yieldConditionForValueData:(id)data;
- (BOOL)yieldPresenceCheckForValueData:(id)data;
- (MOEventBundleLabelCondition)initWithKeyword:(id)keyword;
- (id)description;
@end

@implementation MOEventBundleLabelCondition

- (MOEventBundleLabelCondition)initWithKeyword:(id)keyword
{
  keywordCopy = keyword;
  if (keywordCopy)
  {
    v15.receiver = self;
    v15.super_class = MOEventBundleLabelCondition;
    v7 = [(MOEventBundleLabelCondition *)&v15 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_keyword, keyword);
      value = v8->_value;
      v8->_templateOperator = 0;
      v8->_value = 0;

      values = v8->_values;
      v8->_values = 0;

      v8->_valueType = 0;
      v8->_capitalized = 0;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v12 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelCondition initWithKeyword:v12];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MOEventBundleLabelCondition.m" lineNumber:23 description:@"Invalid parameter not satisfying: keyword"];

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isNumeric:(id)numeric
{
  v3 = MEMORY[0x277CCABB8];
  numericCopy = numeric;
  v5 = objc_alloc_init(v3);
  v6 = [v5 numberFromString:numericCopy];

  return v6 != 0;
}

- (BOOL)yieldPresenceCheckForValueData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dataCopy;
    if ([v4 length])
    {
      v5 = [v4 isEqualToString:@"NO"];

      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![dataCopy BOOLValue])
  {
    goto LABEL_9;
  }

  v6 = 1;
LABEL_10:

  return v6;
}

- (BOOL)yieldConditionForMetaData:(id)data
{
  dataCopy = data;
  keyword = [(MOEventBundleLabelCondition *)self keyword];
  v6 = [dataCopy objectForKey:keyword];

  if ([(MOEventBundleLabelCondition *)self templateOperator]!= 9)
  {
    v11 = [(MOEventBundleLabelCondition *)self yieldConditionForValueData:v6];
    goto LABEL_10;
  }

  if (!v6)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  value = [(MOEventBundleLabelCondition *)self value];
  if (!value || (v8 = value, -[MOEventBundleLabelCondition value](self, "value"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEqualToString:@"_ANY_"], v9, v8, (v10 & 1) == 0))
  {
    values = [(MOEventBundleLabelCondition *)self values];
    v13 = [values containsObject:v6];

    if (v13)
    {
      v14 = [dataCopy objectForKey:v6];
      v11 = v14 != 0;

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (BOOL)yieldConditionForValueData:(id)data
{
  dataCopy = data;
  value = [(MOEventBundleLabelCondition *)self value];

  if (value)
  {
    if (dataCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = dataCopy;
        if (![v6 length])
        {
LABEL_9:
          LOBYTE(self) = 0;
LABEL_57:

          goto LABEL_58;
        }

        if ([(MOEventBundleLabelCondition *)self templateOperator]== 1 && ![(MOEventBundleLabelCondition *)self valueType])
        {
          value2 = [(MOEventBundleLabelCondition *)self value];
          LOBYTE(self) = [value2 isEqualToString:v6];
        }

        else
        {
          if ([(MOEventBundleLabelCondition *)self templateOperator]!= 2 || [(MOEventBundleLabelCondition *)self valueType])
          {
            goto LABEL_9;
          }

          value2 = [(MOEventBundleLabelCondition *)self value];
          LODWORD(self) = [value2 isEqualToString:v6] ^ 1;
        }

LABEL_56:

        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      v6 = objc_opt_new();
      value3 = [(MOEventBundleLabelCondition *)self value];
      value2 = [v6 numberFromString:value3];

      v10 = dataCopy;
      if ([(MOEventBundleLabelCondition *)self valueType]== 1)
      {
        templateOperator = [(MOEventBundleLabelCondition *)self templateOperator];
        LOBYTE(self) = 0;
        if (templateOperator <= 3)
        {
          switch(templateOperator)
          {
            case 1:
              self = [v10 integerValue];
              LOBYTE(self) = self == [value2 integerValue];
              break;
            case 2:
              self = [v10 integerValue];
              LOBYTE(self) = self != [value2 integerValue];
              break;
            case 3:
              self = [v10 integerValue];
              LOBYTE(self) = self < [value2 integerValue];
              break;
          }

          goto LABEL_55;
        }

        if (templateOperator == 4)
        {
          self = [v10 integerValue];
          LOBYTE(self) = self <= [value2 integerValue];
          goto LABEL_55;
        }

        if (templateOperator != 5)
        {
          if (templateOperator == 6)
          {
            integerValue = [v10 integerValue];
            v18 = integerValue < [value2 integerValue];
            goto LABEL_48;
          }

LABEL_55:

          goto LABEL_56;
        }

        integerValue2 = [v10 integerValue];
        v23 = integerValue2 <= [value2 integerValue];
LABEL_52:
        LOBYTE(self) = !v23;
        goto LABEL_55;
      }

      if ([(MOEventBundleLabelCondition *)self valueType]!= 2 && [(MOEventBundleLabelCondition *)self valueType])
      {

LABEL_22:
        LOBYTE(self) = 0;
        goto LABEL_58;
      }

      templateOperator2 = [(MOEventBundleLabelCondition *)self templateOperator];
      LOBYTE(self) = 0;
      if (templateOperator2 > 3)
      {
        if (templateOperator2 == 4)
        {
          [v10 doubleValue];
          v28 = v27;
          [value2 doubleValue];
          LOBYTE(self) = v28 <= v29;
          goto LABEL_55;
        }

        if (templateOperator2 == 5)
        {
          [v10 doubleValue];
          v34 = v33;
          [value2 doubleValue];
          v23 = v34 <= v35;
          goto LABEL_52;
        }

        if (templateOperator2 != 6)
        {
          goto LABEL_55;
        }

        [v10 doubleValue];
        v20 = v19;
        [value2 doubleValue];
        v18 = v20 < v21;
      }

      else
      {
        if (templateOperator2 == 1)
        {
          [v10 doubleValue];
          v25 = v24;
          [value2 doubleValue];
          v16 = vabdd_f64(v25, v26) < 0.0001;
          goto LABEL_43;
        }

        if (templateOperator2 != 2)
        {
          if (templateOperator2 != 3)
          {
            goto LABEL_55;
          }

          [v10 doubleValue];
          v14 = v13;
          [value2 doubleValue];
          v16 = v14 < v15;
LABEL_43:
          LOBYTE(self) = v16;
          goto LABEL_55;
        }

        [v10 doubleValue];
        v31 = v30;
        [value2 doubleValue];
        v18 = vabdd_f64(v31, v32) < 0.0001;
      }

LABEL_48:
      LOBYTE(self) = !v18;
      goto LABEL_55;
    }

    LOBYTE(self) = [(MOEventBundleLabelCondition *)self templateOperator]== 2;
  }

  else
  {
    v7 = [(MOEventBundleLabelCondition *)self yieldPresenceCheckForValueData:dataCopy];
    LOBYTE(self) = v7 ^ ([(MOEventBundleLabelCondition *)self templateOperator]== 8);
  }

LABEL_58:

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  keyword = [(MOEventBundleLabelCondition *)self keyword];
  v5 = [MOEventBundleLabelCondition stringFromTemplateOperator:[(MOEventBundleLabelCondition *)self templateOperator]];
  value = [(MOEventBundleLabelCondition *)self value];
  v7 = [MOEventBundleLabelCondition stringFromValueType:[(MOEventBundleLabelCondition *)self valueType]];
  v8 = [v3 stringWithFormat:@"keyword, %@, operator, %@, value, %@, value type, %@", keyword, v5, value, v7];

  return v8;
}

+ (unint64_t)templateOperatorFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"="] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"=="))
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"!="])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"<"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"<="])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@">"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@">="])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"!"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@":"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringFromTemplateOperator:(unint64_t)operator
{
  if (operator > 9)
  {
    return @"invalid";
  }

  else
  {
    return off_278775990[operator];
  }
}

+ (unint64_t)valueTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"s"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"d"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"f"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringFromValueType:(unint64_t)type
{
  if (type > 2)
  {
    return @"invalid";
  }

  else
  {
    return off_2787759E0[type];
  }
}

@end