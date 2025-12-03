@interface ML3BitMaskPredicate
+ (id)predicateWithProperty:(id)property mask:(int64_t)mask value:(int64_t)value;
- (BOOL)isEqual:(id)equal;
- (ML3BitMaskPredicate)initWithCoder:(id)coder;
- (ML3BitMaskPredicate)initWithProperty:(id)property mask:(int64_t)mask value:(int64_t)value;
- (id)databaseStatementParameters;
- (id)description;
- (void)appendSQLToMutableString:(id)string entityClass:(Class)class;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3BitMaskPredicate

- (id)databaseStatementParameters
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_mask];
  v7[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_value];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (void)appendSQLToMutableString:(id)string entityClass:(Class)class
{
  property = self->super._property;
  stringCopy = string;
  v7 = [(objc_class *)class disambiguatedSQLForProperty:property];
  objc_msgSend(stringCopy, "appendString:", CFSTR("(("));
  [stringCopy appendString:v7];
  [stringCopy appendString:@" & ? = ?]"));
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = ML3BitMaskPredicate;
  v4 = [(ML3PropertyPredicate *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@((%@ & 0x%llx) = 0x%llx)", v4, self->super._property, self->_mask, self->_value];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ML3BitMaskPredicate;
    if ([(ML3PropertyPredicate *)&v9 isEqual:equalCopy]&& (v5 = [(ML3BitMaskPredicate *)self mask], v5 == [(ML3BitMaskPredicate *)equalCopy mask]))
    {
      value = [(ML3BitMaskPredicate *)self value];
      v7 = value == [(ML3BitMaskPredicate *)equalCopy value];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ML3BitMaskPredicate;
  coderCopy = coder;
  [(ML3PropertyPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:-[ML3BitMaskPredicate mask](self forKey:{"mask", v5.receiver, v5.super_class), @"mask"}];
  [coderCopy encodeInt64:-[ML3BitMaskPredicate value](self forKey:{"value"), @"value"}];
}

- (ML3BitMaskPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ML3BitMaskPredicate;
  v5 = [(ML3PropertyPredicate *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    -[ML3BitMaskPredicate setMask:](v5, "setMask:", [coderCopy decodeInt64ForKey:@"mask"]);
    -[ML3BitMaskPredicate setValue:](v5, "setValue:", [coderCopy decodeInt64ForKey:@"value"]);
  }

  return v5;
}

- (ML3BitMaskPredicate)initWithProperty:(id)property mask:(int64_t)mask value:(int64_t)value
{
  v10.receiver = self;
  v10.super_class = ML3BitMaskPredicate;
  v7 = [(ML3PropertyPredicate *)&v10 initWithProperty:property];
  v8 = v7;
  if (v7)
  {
    [(ML3BitMaskPredicate *)v7 setMask:mask];
    [(ML3BitMaskPredicate *)v8 setValue:value];
  }

  return v8;
}

+ (id)predicateWithProperty:(id)property mask:(int64_t)mask value:(int64_t)value
{
  propertyCopy = property;
  v8 = [objc_alloc(objc_opt_class()) initWithProperty:propertyCopy mask:mask value:value];

  return v8;
}

@end