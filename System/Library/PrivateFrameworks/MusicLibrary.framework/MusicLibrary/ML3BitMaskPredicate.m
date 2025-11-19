@interface ML3BitMaskPredicate
+ (id)predicateWithProperty:(id)a3 mask:(int64_t)a4 value:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (ML3BitMaskPredicate)initWithCoder:(id)a3;
- (ML3BitMaskPredicate)initWithProperty:(id)a3 mask:(int64_t)a4 value:(int64_t)a5;
- (id)databaseStatementParameters;
- (id)description;
- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4;
- (void)encodeWithCoder:(id)a3;
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

- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4
{
  property = self->super._property;
  v6 = a3;
  v7 = [(objc_class *)a4 disambiguatedSQLForProperty:property];
  objc_msgSend(v6, "appendString:", CFSTR("(("));
  [v6 appendString:v7];
  [v6 appendString:@" & ? = ?]"));
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ML3BitMaskPredicate;
    if ([(ML3PropertyPredicate *)&v9 isEqual:v4]&& (v5 = [(ML3BitMaskPredicate *)self mask], v5 == [(ML3BitMaskPredicate *)v4 mask]))
    {
      v6 = [(ML3BitMaskPredicate *)self value];
      v7 = v6 == [(ML3BitMaskPredicate *)v4 value];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ML3BitMaskPredicate;
  v4 = a3;
  [(ML3PropertyPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:-[ML3BitMaskPredicate mask](self forKey:{"mask", v5.receiver, v5.super_class), @"mask"}];
  [v4 encodeInt64:-[ML3BitMaskPredicate value](self forKey:{"value"), @"value"}];
}

- (ML3BitMaskPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ML3BitMaskPredicate;
  v5 = [(ML3PropertyPredicate *)&v7 initWithCoder:v4];
  if (v5)
  {
    -[ML3BitMaskPredicate setMask:](v5, "setMask:", [v4 decodeInt64ForKey:@"mask"]);
    -[ML3BitMaskPredicate setValue:](v5, "setValue:", [v4 decodeInt64ForKey:@"value"]);
  }

  return v5;
}

- (ML3BitMaskPredicate)initWithProperty:(id)a3 mask:(int64_t)a4 value:(int64_t)a5
{
  v10.receiver = self;
  v10.super_class = ML3BitMaskPredicate;
  v7 = [(ML3PropertyPredicate *)&v10 initWithProperty:a3];
  v8 = v7;
  if (v7)
  {
    [(ML3BitMaskPredicate *)v7 setMask:a4];
    [(ML3BitMaskPredicate *)v8 setValue:a5];
  }

  return v8;
}

+ (id)predicateWithProperty:(id)a3 mask:(int64_t)a4 value:(int64_t)a5
{
  v7 = a3;
  v8 = [objc_alloc(objc_opt_class()) initWithProperty:v7 mask:a4 value:a5];

  return v8;
}

@end