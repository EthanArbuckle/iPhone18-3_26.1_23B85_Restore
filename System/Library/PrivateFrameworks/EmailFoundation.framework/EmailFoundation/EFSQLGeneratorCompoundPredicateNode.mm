@interface EFSQLGeneratorCompoundPredicateNode
- (EFSQLGeneratorCompoundPredicateNode)initWithPredicateType:(unint64_t)a3 childPredicates:(id)a4;
- (EFSQLValueExpressable)sqlExpressable;
@end

@implementation EFSQLGeneratorCompoundPredicateNode

- (EFSQLValueExpressable)sqlExpressable
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(EFSQLGeneratorCompoundPredicateNode *)self childPredicates];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v15 + 1) + 8 * i) sqlExpressable];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  if ([(EFSQLGeneratorCompoundPredicateNode *)self predicateType]== 1)
  {
    v9 = off_1E8247DE0;
LABEL_12:
    v10 = [(__objc2_class *)*v9 combined:v3];
    goto LABEL_13;
  }

  if ([(EFSQLGeneratorCompoundPredicateNode *)self predicateType]== 2)
  {
    v9 = off_1E8247E70;
    goto LABEL_12;
  }

  if ([(EFSQLGeneratorCompoundPredicateNode *)self predicateType])
  {
    v10 = 0;
  }

  else
  {
    v13 = [EFSQLNotExpression alloc];
    v14 = [EFSQLAndExpression combined:v3];
    v10 = [(EFSQLNotExpression *)v13 initWithExpression:v14];
  }

LABEL_13:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (EFSQLGeneratorCompoundPredicateNode)initWithPredicateType:(unint64_t)a3 childPredicates:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = EFSQLGeneratorCompoundPredicateNode;
  v8 = [(EFSQLGeneratorCompoundPredicateNode *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_predicateType = a3;
    objc_storeStrong(&v8->_childPredicates, a4);
  }

  return v9;
}

@end