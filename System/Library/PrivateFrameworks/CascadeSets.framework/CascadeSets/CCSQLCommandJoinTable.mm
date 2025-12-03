@interface CCSQLCommandJoinTable
- (CCSQLCommandJoinTable)init;
- (CCSQLCommandJoinTable)initWithTable:(id)table joinCriterion:(id)criterion;
- (id)description;
@end

@implementation CCSQLCommandJoinTable

- (CCSQLCommandJoinTable)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSQLCommandJoinTable)initWithTable:(id)table joinCriterion:(id)criterion
{
  tableCopy = table;
  criterionCopy = criterion;
  v14.receiver = self;
  v14.super_class = CCSQLCommandJoinTable;
  v8 = [(CCSQLCommandJoinTable *)&v14 init];
  if (v8)
  {
    v9 = [tableCopy copy];
    table = v8->_table;
    v8->_table = v9;

    v11 = [criterionCopy copy];
    joinCriterion = v8->_joinCriterion;
    v8->_joinCriterion = v11;
  }

  return v8;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CCSQLCommandJoinTable;
  v3 = [(CCSQLCommandJoinTable *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" table: %@, criterion: %@", self->_table, self->_joinCriterion];

  return v4;
}

@end