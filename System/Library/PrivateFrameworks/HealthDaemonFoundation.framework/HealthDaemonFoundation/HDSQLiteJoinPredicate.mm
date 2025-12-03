@interface HDSQLiteJoinPredicate
+ (id)predicateWithJoinClauses:(id)clauses;
@end

@implementation HDSQLiteJoinPredicate

+ (id)predicateWithJoinClauses:(id)clauses
{
  clausesCopy = clauses;
  v4 = objc_alloc_init(HDSQLiteJoinPredicate);
  v5 = [clausesCopy copy];

  joinClauses = v4->_joinClauses;
  v4->_joinClauses = v5;

  return v4;
}

@end