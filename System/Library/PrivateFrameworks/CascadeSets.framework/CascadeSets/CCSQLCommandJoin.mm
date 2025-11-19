@interface CCSQLCommandJoin
- (CCSQLCommandJoin)init;
- (CCSQLCommandJoin)initWithJoinType:(int64_t)a3 joinTables:(id)a4;
- (id)description;
@end

@implementation CCSQLCommandJoin

- (CCSQLCommandJoin)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSQLCommandJoin)initWithJoinType:(int64_t)a3 joinTables:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CCSQLCommandJoin;
  v8 = [(CCSQLCommandJoin *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_joinType = a3;
    objc_storeStrong(&v8->_joinTables, a4);
  }

  return v9;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CCSQLCommandJoin;
  v3 = [(CCSQLCommandJoin *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" joinTables: %@", self->_joinTables];

  return v4;
}

@end