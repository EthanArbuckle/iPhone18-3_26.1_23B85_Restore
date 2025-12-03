@interface NSCompoundPredicate(EFSQLGeneratorPredicateNode)
- (EFSQLGeneratorCompoundPredicateNode)predicateNodeFromPropertyMapper:()EFSQLGeneratorPredicateNode addingTablesUsed:;
@end

@implementation NSCompoundPredicate(EFSQLGeneratorPredicateNode)

- (EFSQLGeneratorCompoundPredicateNode)predicateNodeFromPropertyMapper:()EFSQLGeneratorPredicateNode addingTablesUsed:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  subpredicates = [self subpredicates];
  v10 = [subpredicates countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(subpredicates);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) predicateNodeFromPropertyMapper:v6 addingTablesUsed:v7];
        [v8 addObject:v13];
      }

      v10 = [subpredicates countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = -[EFSQLGeneratorCompoundPredicateNode initWithPredicateType:childPredicates:]([EFSQLGeneratorCompoundPredicateNode alloc], "initWithPredicateType:childPredicates:", [self compoundPredicateType], v8);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end