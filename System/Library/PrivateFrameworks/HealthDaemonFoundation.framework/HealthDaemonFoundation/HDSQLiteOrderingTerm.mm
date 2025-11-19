@interface HDSQLiteOrderingTerm
- (BOOL)isEqual:(id)a3;
- (HDSQLiteOrderingTerm)init;
- (HDSQLiteOrderingTerm)initWithExpression:(id)a3 ascending:(BOOL)a4;
- (id)SQL;
- (id)description;
@end

@implementation HDSQLiteOrderingTerm

- (id)SQL
{
  v2 = HDSQLiteOrderAscending;
  if (!self->_ascending)
  {
    v2 = HDSQLiteOrderDescending;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", self->_expression, *v2];
}

- (HDSQLiteOrderingTerm)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDSQLiteOrderingTerm)initWithExpression:(id)a3 ascending:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDSQLiteOrderingTerm;
  v7 = [(HDSQLiteOrderingTerm *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    expression = v7->_expression;
    v7->_expression = v8;

    v7->_ascending = a4;
  }

  return v7;
}

- (id)description
{
  if (self->_ascending)
  {
    v2 = @"ascending";
  }

  else
  {
    v2 = @"descending";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<Order: %@ %@>", self->_expression, v2];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      expression = self->_expression;
      v7 = v5->_expression;
      v8 = (expression == v7 || v7 && [(NSString *)expression isEqualToString:?]) && self->_ascending == v5->_ascending;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end