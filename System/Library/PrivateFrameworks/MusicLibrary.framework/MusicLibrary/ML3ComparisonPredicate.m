@interface ML3ComparisonPredicate
+ (id)predicateWithProperty:(id)a3 equalToInt64:(int64_t)a4;
+ (id)predicateWithProperty:(id)a3 equalToInteger:(int64_t)a4;
+ (id)predicateWithProperty:(id)a3 equalToValue:(id)a4;
+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparison:(int)a5;
+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparison:(int)a5 caseInsensitive:(BOOL)a6;
+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparison:(int)a5 caseInsensitive:(BOOL)a6 treatNullAsString:(id)a7;
+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparison:(int)a5 transformFunction:(id)a6;
- (BOOL)containsPropertyPredicate:(id)a3 matchingValue:(id)a4 usingComparison:(int)a5;
- (BOOL)isEqual:(id)a3;
- (ML3ComparisonPredicate)initWithCoder:(id)a3;
- (ML3ComparisonPredicate)initWithProperty:(id)a3 value:(id)a4 comparison:(int)a5 caseInsensitive:(BOOL)a6 transformFunction:(id)a7 treatNullAsString:(id)a8;
- (id)databaseStatementParameters;
- (id)description;
- (id)operator;
- (id)valueToBindForOperation:(int64_t)a3;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4;
- (void)encodeWithCoder:(id)a3;
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
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"ML3Predicate.m" lineNumber:538 description:{@"Unknown comparison: %d", self->_comparison}];

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

- (BOOL)containsPropertyPredicate:(id)a3 matchingValue:(id)a4 usingComparison:(int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = a3;
  v10 = [(ML3PropertyPredicate *)self property];
  v11 = [v10 isEqualToString:v9];

  if (v11)
  {
    v12 = [(ML3ComparisonPredicate *)self value];
    v13 = [v8 ml_matchesValue:v12 usingComparison:v5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)valueToBindForOperation:(int64_t)a3
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
        if (a3 == 1)
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
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"ML3Predicate.m" lineNumber:626 description:{@"Unexpected value in predicate: %@", self->_value}];
    }
  }

  v10 = self->_value;
LABEL_18:

  return v10;
}

- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4
{
  v20 = a3;
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

  v12 = [(objc_class *)a4 subselectStatementForProperty:self->super._property];
  if (v12 && ([(objc_class *)a4 subselectPropertyForProperty:self->super._property], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = v12;
    v16 = [(objc_class *)a4 disambiguatedSQLForProperty:v14];
  }

  else
  {
    v15 = [(objc_class *)a4 disambiguatedSQLForProperty:self->super._property];
    v16 = 0;
  }

  v17 = [v16 length];
  objc_msgSend(v20, "appendString:", @"(");
  if (v17)
  {
    [v20 appendString:v16];
    [v20 appendString:@" IN "];
    objc_msgSend(v20, "appendString:", @"(");
    v18 = v15;
  }

  else
  {
    [v20 appendString:v11];
    [v20 appendString:v15];
    v18 = v6;
  }

  [v20 appendString:v18];
  [v20 appendString:@" "];
  v19 = [(ML3ComparisonPredicate *)self operator];
  [v20 appendString:v19];

  [v20 appendString:@" "];
  [v20 appendString:v7];
  [v20 appendString:v11];
  [v20 appendString:@"?"];
  [v20 appendString:v6];
  [v20 appendString:v9];
  [v20 appendString:@""]);
  if ([v16 length])
  {
    [v20 appendString:@""]);
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
  v13 = [(ML3ComparisonPredicate *)self operator];
  v14 = [(ML3ComparisonPredicate *)self valueToBindForOperation:1];
  v15 = [v10 stringWithFormat:@"%@(%@ %@ %@%@%@)%@", v11, property, v13, v5, v14, v6, v9];

  return v15;
}

- (unint64_t)hash
{
  v3 = [(ML3PropertyPredicate *)self property];
  v4 = [v3 hash];
  v5 = [(ML3ComparisonPredicate *)self value];
  v6 = [v5 hash];

  return v6 + v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ML3ComparisonPredicate;
    if ([(ML3PropertyPredicate *)&v15 isEqual:v4])
    {
      v5 = [(ML3ComparisonPredicate *)self value];
      v6 = [(ML3ComparisonPredicate *)v4 value];
      if (v5 == v6 || [v5 isEqual:v6])
      {
        v7 = [(ML3ComparisonPredicate *)self transformFunction];
        v8 = [(ML3ComparisonPredicate *)v4 transformFunction];
        if ((v7 == v8 || [v7 isEqual:v8]) && (v9 = -[ML3ComparisonPredicate comparison](self, "comparison"), v9 == -[ML3ComparisonPredicate comparison](v4, "comparison")))
        {
          v10 = [(ML3ComparisonPredicate *)self treatNullAsString];
          v11 = [(ML3ComparisonPredicate *)v4 treatNullAsString];
          if (v10 == v11 || [v10 isEqual:v11])
          {
            v12 = [(ML3ComparisonPredicate *)self caseInsensitive];
            v13 = v12 ^ [(ML3ComparisonPredicate *)v4 caseInsensitive]^ 1;
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

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = ML3ComparisonPredicate;
  v4 = a3;
  [(ML3PropertyPredicate *)&v8 encodeWithCoder:v4];
  v5 = [(ML3ComparisonPredicate *)self value:v8.receiver];
  [v4 encodeObject:v5 forKey:@"value"];

  [v4 encodeInt:-[ML3ComparisonPredicate comparison](self forKey:{"comparison"), @"comparison"}];
  [v4 encodeBool:-[ML3ComparisonPredicate caseInsensitive](self forKey:{"caseInsensitive"), @"caseInsensitive"}];
  v6 = [(ML3ComparisonPredicate *)self treatNullAsString];
  [v4 encodeObject:v6 forKey:@"treatNullAsString"];

  v7 = [(ML3ComparisonPredicate *)self transformFunction];
  [v4 encodeObject:v7 forKey:@"transformFunction"];
}

- (ML3ComparisonPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ML3ComparisonPredicate;
  v5 = [(ML3PropertyPredicate *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"value"];
    value = v5->_value;
    v5->_value = v10;

    v5->_comparison = [v4 decodeIntForKey:@"comparison"];
    v5->_caseInsensitive = [v4 decodeBoolForKey:@"caseInsensitive"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"treatNullAsString"];
    treatNullAsString = v5->_treatNullAsString;
    v5->_treatNullAsString = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transformFunction"];
    transformFunction = v5->_transformFunction;
    v5->_transformFunction = v14;
  }

  return v5;
}

- (ML3ComparisonPredicate)initWithProperty:(id)a3 value:(id)a4 comparison:(int)a5 caseInsensitive:(BOOL)a6 transformFunction:(id)a7 treatNullAsString:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = ML3ComparisonPredicate;
  v18 = [(ML3PropertyPredicate *)&v23 initWithProperty:v14];
  if (v18)
  {
    if (v15)
    {
      if (a5)
      {
LABEL_4:
        objc_storeStrong(&v18->_value, a4);
        v18->_comparison = a5;
        v18->_caseInsensitive = a6;
        objc_storeStrong(&v18->_treatNullAsString, a8);
        objc_storeStrong(&v18->_transformFunction, a7);
        goto LABEL_5;
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:v18 file:@"ML3Predicate.m" lineNumber:429 description:{@"invalid value (nil) for property %@.", v14}];

      if (a5)
      {
        goto LABEL_4;
      }
    }

    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:v18 file:@"ML3Predicate.m" lineNumber:430 description:&stru_28408B690];

    goto LABEL_4;
  }

LABEL_5:

  return v18;
}

+ (id)predicateWithProperty:(id)a3 equalToValue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithProperty:v6 value:v5 comparison:1 caseInsensitive:0 transformFunction:0 treatNullAsString:0];

  return v7;
}

+ (id)predicateWithProperty:(id)a3 equalToInteger:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  v9 = [a1 predicateWithProperty:v7 equalToValue:v8];

  return v9;
}

+ (id)predicateWithProperty:(id)a3 equalToInt64:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithLongLong:a4];
  v9 = [a1 predicateWithProperty:v7 equalToValue:v8];

  return v9;
}

+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparison:(int)a5 transformFunction:(id)a6
{
  v6 = *&a5;
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [objc_alloc(objc_opt_class()) initWithProperty:v11 value:v10 comparison:v6 caseInsensitive:0 transformFunction:v9 treatNullAsString:0];

  return v12;
}

+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparison:(int)a5 caseInsensitive:(BOOL)a6 treatNullAsString:(id)a7
{
  v7 = a6;
  v8 = *&a5;
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = [objc_alloc(objc_opt_class()) initWithProperty:v13 value:v12 comparison:v8 caseInsensitive:v7 transformFunction:0 treatNullAsString:v11];

  return v14;
}

+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparison:(int)a5 caseInsensitive:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_alloc(objc_opt_class()) initWithProperty:v10 value:v9 comparison:v7 caseInsensitive:v6 transformFunction:0 treatNullAsString:0];

  return v11;
}

+ (id)predicateWithProperty:(id)a3 value:(id)a4 comparison:(int)a5
{
  v5 = *&a5;
  v7 = a4;
  v8 = a3;
  v9 = [objc_alloc(objc_opt_class()) initWithProperty:v8 value:v7 comparison:v5 caseInsensitive:0 transformFunction:0 treatNullAsString:0];

  return v9;
}

@end