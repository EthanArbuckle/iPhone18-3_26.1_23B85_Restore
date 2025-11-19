@interface HDSQLiteJoinPredicate
+ (id)predicateWithJoinClauses:(id)a3;
@end

@implementation HDSQLiteJoinPredicate

+ (id)predicateWithJoinClauses:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HDSQLiteJoinPredicate);
  v5 = [v3 copy];

  joinClauses = v4->_joinClauses;
  v4->_joinClauses = v5;

  return v4;
}

@end