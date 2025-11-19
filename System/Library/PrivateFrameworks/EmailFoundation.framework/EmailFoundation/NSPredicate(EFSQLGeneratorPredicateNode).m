@interface NSPredicate(EFSQLGeneratorPredicateNode)
- (void)predicateNodeFromPropertyMapper:()EFSQLGeneratorPredicateNode addingTablesUsed:;
@end

@implementation NSPredicate(EFSQLGeneratorPredicateNode)

- (void)predicateNodeFromPropertyMapper:()EFSQLGeneratorPredicateNode addingTablesUsed:
{
  v7 = a3;
  v8 = a4;
  [a1 doesNotRecognizeSelector:a2];
  __assert_rtn("[NSPredicate(EFSQLGeneratorPredicateNode) predicateNodeFromPropertyMapper:addingTablesUsed:]", "EFSQLGeneratorPredicateNode.m", 113, "0");
}

@end