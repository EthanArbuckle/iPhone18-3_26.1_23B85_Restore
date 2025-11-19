@interface CCSQLCommandClause
- (CCSQLCommandClause)init;
- (CCSQLCommandClause)initWithClause:(id)a3 parameters:(id)a4;
- (id)description;
@end

@implementation CCSQLCommandClause

- (CCSQLCommandClause)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSQLCommandClause)initWithClause:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CCSQLCommandClause;
  v8 = [(CCSQLCommandClause *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    clause = v8->_clause;
    v8->_clause = v9;

    v11 = [v7 copy];
    parameters = v8->_parameters;
    v8->_parameters = v11;
  }

  return v8;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CCSQLCommandClause;
  v3 = [(CCSQLCommandClause *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" clause: %@, parameters: %@", self->_clause, self->_parameters];

  return v4;
}

@end