@interface ML3ComparisonPredicate
+ (id)predicateWithProperty:(id)property equalToInt64:(int64_t)int64;
+ (id)predicateWithProperty:(id)property equalToInteger:(int64_t)integer;
+ (id)predicateWithProperty:(id)property equalToValue:(id)value;
+ (id)predicateWithProperty:(id)property value:(id)value comparison:(int)comparison;
+ (id)predicateWithProperty:(id)property value:(id)value comparison:(int)comparison caseInsensitive:(BOOL)insensitive;
+ (id)predicateWithProperty:(id)property value:(id)value comparison:(int)comparison caseInsensitive:(BOOL)insensitive treatNullAsString:(id)string;
+ (id)predicateWithProperty:(id)property value:(id)value comparison:(int)comparison transformFunction:(id)function;
- (BOOL)containsPropertyPredicate:(id)predicate matchingValue:(id)value usingComparison:(int)comparison;
- (BOOL)isEqual:(id)equal;
- (ML3ComparisonPredicate)initWithCoder:(id)coder;
- (ML3ComparisonPredicate)initWithProperty:(id)property value:(id)value comparison:(int)comparison caseInsensitive:(BOOL)insensitive transformFunction:(id)function treatNullAsString:(id)string;
- (id)databaseStatementParameters;
- (id)description;
- (id)operator;
- (id)valueToBindForOperation:(int64_t)operation;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)string entityClass:(Class)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3ComparisonPredicate

- (id)operator
{
  comparison = self->_comparison;
  if (comparison <= 5)
  {
    if (comparison > 2)
    {
      if (comparison == 3)
      {
        return @">";
      }

      if (comparison == 4)
      {
        return @">=";
      }

      return @"<";
    }

    if (comparison == 1)
    {
      return @"=";
    }

    if (comparison == 2)
    {
      return @"!=";
    }

LABEL_20:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Predicate.m" lineNumber:538 description:{@"Unknown comparison: %d", self->_comparison}];

    return 0;
  }

  if ((comparison - 7) >= 3)
  {
    if (comparison == 6)
    {
      return @"<=";
    }

    if (comparison == 10)
    {
      return @"&";
    }

    goto LABEL_20;
  }

  if (self->_caseInsensitive)
  {
    return @"LIKE";
  }

  else
  {
    return @"GLOB";
  }
}

- (id)databaseStatementParameters
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(ML3ComparisonPredicate *)self valueToBindForOperation:0];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (BOOL)containsPropertyPredicate:(id)predicate matchingValue:(id)value usingComparison:(int)comparison
{
  v5 = *&comparison;
  valueCopy = value;
  predicateCopy = predicate;
  property = [(ML3PropertyPredicate *)self property];
  v11 = [property isEqualToString:predicateCopy];

  if (v11)
  {
    value = [(ML3ComparisonPredicate *)self value];
    v13 = [valueCopy ml_matchesValue:value usingComparison:v5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)valueToBindForOperation:(int64_t)operation
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_caseInsensitive)
    {
      v6 = @"%";
    }

    else
    {
      v6 = @"*";
    }

    v7 = v6;
    comparison = self->_comparison;
    value = self->_value;
    switch(comparison)
    {
      case 9:
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v7, self->_value, v15];
        break;
      case 8:
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", self->_value, v7, v15];
        break;
      case 7:
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v7, self->_value, v7];
        break;
      default:
        if (operation == 1)
        {
          if (value)
          {
            if (![value length])
            {
              v10 = @"''";
              goto LABEL_17;
            }

            v13 = self->_value;
          }

          else
          {
            v13 = 0;
          }

          v11 = v13;
        }

        else
        {
          v11 = value;
        }

LABEL_16:
        v10 = v11;
LABEL_17:

        goto LABEL_18;
    }
    v11 = ;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Predicate.m" lineNumber:626 description:{@"Unexpected value in predicate: %@", self->_value}];
    }
  }

  v10 = self->_value;
LABEL_18:

  return v10;
}

- (void)appendSQLToMutableString:(id)string entityClass:(Class)class
{
  stringCopy = string;
  v6 = &stru_28408B690;
  if (self->_transformFunction)
  {
    v7 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@("), self->_transformFunction;
    if (self->_transformFunction)
    {
      v8 = @"");
    }

    else
    {
      v8 = &stru_28408B690;
    }
  }

  else
  {
    v8 = &stru_28408B690;
    v7 = &stru_28408B690;
  }

  v9 = v8;
  if (self->_treatNullAsString)
  {
    v10 = CFSTR("IFNULL(");
  }

  else
  {
    v10 = &stru_28408B690;
  }

  v11 = v10;
  if (self->_treatNullAsString)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@", '%@'"], self->_treatNullAsString);
  }

  v12 = [(objc_class *)class subselectStatementForProperty:self->super._property];
  if (v12 && ([(objc_class *)class subselectPropertyForProperty:self->super._property], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = v12;
    v16 = [(objc_class *)class disambiguatedSQLForProperty:v14];
  }

  else
  {
    v15 = [(objc_class *)class disambiguatedSQLForProperty:self->super._property];
    v16 = 0;
  }

  v17 = [v16 length];
  objc_msgSend(stringCopy, "appendString:", @"(");
  if (v17)
  {
    [stringCopy appendString:v16];
    [stringCopy appendString:@" IN "];
    objc_msgSend(stringCopy, "appendString:", @"(");
    v18 = v15;
  }

  else
  {
    [stringCopy appendString:v11];
    [stringCopy appendString:v15];
    v18 = v6;
  }

  [stringCopy appendString:v18];
  [stringCopy appendString:@" "];
  operator = [(ML3ComparisonPredicate *)self operator];
  [stringCopy appendString:operator];

  [stringCopy appendString:@" "];
  [stringCopy appendString:v7];
  [stringCopy appendString:v11];
  [stringCopy appendString:@"?"];
  [stringCopy appendString:v6];
  [stringCopy appendString:v9];
  [stringCopy appendString:@""]);
  if ([v16 length])
  {
    [stringCopy appendString:@""]);
  }
}

- (id)description
{
  transformFunction = self->_transformFunction;
  v4 = &stru_28408B690;
  if (transformFunction)
  {
    v5 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@("), transformFunction;
    if (self->_transformFunction)
    {
      v4 = @"");
    }
  }

  else
  {
    v5 = &stru_28408B690;
  }

  v6 = v4;
  if ([(NSString *)self->super._property isEqualToString:@"media_type"])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = NSStringFromMLMediaType([self->_value integerValue]);
    v9 = [v7 stringWithFormat:@" [%@]", v8];
  }

  else
  {
    v9 = &stru_28408B690;
  }

  v10 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = ML3ComparisonPredicate;
  v11 = [(ML3PropertyPredicate *)&v17 description];
  property = self->super._property;
  operator = [(ML3ComparisonPredicate *)self operator];
  v14 = [(ML3ComparisonPredicate *)self valueToBindForOperation:1];
  v15 = [v10 stringWithFormat:@"%@(%@ %@ %@%@%@)%@", v11, property, operator, v5, v14, v6, v9];

  return v15;
}

- (unint64_t)hash
{
  property = [(ML3PropertyPredicate *)self property];
  v4 = [property hash];
  value = [(ML3ComparisonPredicate *)self value];
  v6 = [value hash];

  return v6 + v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ML3ComparisonPredicate;
    if ([(ML3PropertyPredicate *)&v15 isEqual:equalCopy])
    {
      value = [(ML3ComparisonPredicate *)self value];
      value2 = [(ML3ComparisonPredicate *)equalCopy value];
      if (value == value2 || [value isEqual:value2])
      {
        transformFunction = [(ML3ComparisonPredicate *)self transformFunction];
        transformFunction2 = [(ML3ComparisonPredicate *)equalCopy transformFunction];
        if ((transformFunction == transformFunction2 || [transformFunction isEqual:transformFunction2]) && (v9 = -[ML3ComparisonPredicate comparison](self, "comparison"), v9 == -[ML3ComparisonPredicate comparison](equalCopy, "comparison")))
        {
          treatNullAsString = [(ML3ComparisonPredicate *)self treatNullAsString];
          treatNullAsString2 = [(ML3ComparisonPredicate *)equalCopy treatNullAsString];
          if (treatNullAsString == treatNullAsString2 || [treatNullAsString isEqual:treatNullAsString2])
          {
            caseInsensitive = [(ML3ComparisonPredicate *)self caseInsensitive];
            v13 = caseInsensitive ^ [(ML3ComparisonPredicate *)equalCopy caseInsensitive]^ 1;
          }

          else
          {
            LOBYTE(v13) = 0;
          }
        }

        else
        {
          LOBYTE(v13) = 0;
        }
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = ML3ComparisonPredicate;
  coderCopy = coder;
  [(ML3PropertyPredicate *)&v8 encodeWithCoder:coderCopy];
  v5 = [(ML3ComparisonPredicate *)self value:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"value"];

  [coderCopy encodeInt:-[ML3ComparisonPredicate comparison](self forKey:{"comparison"), @"comparison"}];
  [coderCopy encodeBool:-[ML3ComparisonPredicate caseInsensitive](self forKey:{"caseInsensitive"), @"caseInsensitive"}];
  treatNullAsString = [(ML3ComparisonPredicate *)self treatNullAsString];
  [coderCopy encodeObject:treatNullAsString forKey:@"treatNullAsString"];

  transformFunction = [(ML3ComparisonPredicate *)self transformFunction];
  [coderCopy encodeObject:transformFunction forKey:@"transformFunction"];
}

- (ML3ComparisonPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ML3ComparisonPredicate;
  v5 = [(ML3PropertyPredicate *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"value"];
    value = v5->_value;
    v5->_value = v10;

    v5->_comparison = [coderCopy decodeIntForKey:@"comparison"];
    v5->_caseInsensitive = [coderCopy decodeBoolForKey:@"caseInsensitive"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"treatNullAsString"];
    treatNullAsString = v5->_treatNullAsString;
    v5->_treatNullAsString = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transformFunction"];
    transformFunction = v5->_transformFunction;
    v5->_transformFunction = v14;
  }

  return v5;
}

- (ML3ComparisonPredicate)initWithProperty:(id)property value:(id)value comparison:(int)comparison caseInsensitive:(BOOL)insensitive transformFunction:(id)function treatNullAsString:(id)string
{
  propertyCopy = property;
  valueCopy = value;
  functionCopy = function;
  stringCopy = string;
  v23.receiver = self;
  v23.super_class = ML3ComparisonPredicate;
  v18 = [(ML3PropertyPredicate *)&v23 initWithProperty:propertyCopy];
  if (v18)
  {
    if (valueCopy)
    {
      if (comparison)
      {
LABEL_4:
        objc_storeStrong(&v18->_value, value);
        v18->_comparison = comparison;
        v18->_caseInsensitive = insensitive;
        objc_storeStrong(&v18->_treatNullAsString, string);
        objc_storeStrong(&v18->_transformFunction, function);
        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v18 file:@"ML3Predicate.m" lineNumber:429 description:{@"invalid value (nil) for property %@.", propertyCopy}];

      if (comparison)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v18 file:@"ML3Predicate.m" lineNumber:430 description:&stru_28408B690];

    goto LABEL_4;
  }

LABEL_5:

  return v18;
}

+ (id)predicateWithProperty:(id)property equalToValue:(id)value
{
  valueCopy = value;
  propertyCopy = property;
  v7 = [objc_alloc(objc_opt_class()) initWithProperty:propertyCopy value:valueCopy comparison:1 caseInsensitive:0 transformFunction:0 treatNullAsString:0];

  return v7;
}

+ (id)predicateWithProperty:(id)property equalToInteger:(int64_t)integer
{
  v6 = MEMORY[0x277CCABB0];
  propertyCopy = property;
  v8 = [v6 numberWithInteger:integer];
  v9 = [self predicateWithProperty:propertyCopy equalToValue:v8];

  return v9;
}

+ (id)predicateWithProperty:(id)property equalToInt64:(int64_t)int64
{
  v6 = MEMORY[0x277CCABB0];
  propertyCopy = property;
  v8 = [v6 numberWithLongLong:int64];
  v9 = [self predicateWithProperty:propertyCopy equalToValue:v8];

  return v9;
}

+ (id)predicateWithProperty:(id)property value:(id)value comparison:(int)comparison transformFunction:(id)function
{
  v6 = *&comparison;
  functionCopy = function;
  valueCopy = value;
  propertyCopy = property;
  v12 = [objc_alloc(objc_opt_class()) initWithProperty:propertyCopy value:valueCopy comparison:v6 caseInsensitive:0 transformFunction:functionCopy treatNullAsString:0];

  return v12;
}

+ (id)predicateWithProperty:(id)property value:(id)value comparison:(int)comparison caseInsensitive:(BOOL)insensitive treatNullAsString:(id)string
{
  insensitiveCopy = insensitive;
  v8 = *&comparison;
  stringCopy = string;
  valueCopy = value;
  propertyCopy = property;
  v14 = [objc_alloc(objc_opt_class()) initWithProperty:propertyCopy value:valueCopy comparison:v8 caseInsensitive:insensitiveCopy transformFunction:0 treatNullAsString:stringCopy];

  return v14;
}

+ (id)predicateWithProperty:(id)property value:(id)value comparison:(int)comparison caseInsensitive:(BOOL)insensitive
{
  insensitiveCopy = insensitive;
  v7 = *&comparison;
  valueCopy = value;
  propertyCopy = property;
  v11 = [objc_alloc(objc_opt_class()) initWithProperty:propertyCopy value:valueCopy comparison:v7 caseInsensitive:insensitiveCopy transformFunction:0 treatNullAsString:0];

  return v11;
}

+ (id)predicateWithProperty:(id)property value:(id)value comparison:(int)comparison
{
  v5 = *&comparison;
  valueCopy = value;
  propertyCopy = property;
  v9 = [objc_alloc(objc_opt_class()) initWithProperty:propertyCopy value:valueCopy comparison:v5 caseInsensitive:0 transformFunction:0 treatNullAsString:0];

  return v9;
}

@end