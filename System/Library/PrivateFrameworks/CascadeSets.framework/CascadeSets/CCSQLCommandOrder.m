@interface CCSQLCommandOrder
- (CCSQLCommandOrder)init;
- (CCSQLCommandOrder)initWithOrderMode:(int64_t)a3 columnNames:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CCSQLCommandOrder

- (CCSQLCommandOrder)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSQLCommandOrder)initWithOrderMode:(int64_t)a3 columnNames:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CCSQLCommandOrder;
  v7 = [(CCSQLCommandOrder *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_orderMode = a3;
    v9 = [v6 copy];
    columnNames = v8->_columnNames;
    v8->_columnNames = v9;
  }

  return v8;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CCSQLCommandOrder;
  v3 = [(CCSQLCommandOrder *)&v7 description];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_orderMode];
  v5 = [v3 stringByAppendingFormat:@" orderMode: %@, columnNames: %@", v4, self->_columnNames];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[1] = self->_orderMode;
  v6 = [(NSArray *)self->_columnNames copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

@end