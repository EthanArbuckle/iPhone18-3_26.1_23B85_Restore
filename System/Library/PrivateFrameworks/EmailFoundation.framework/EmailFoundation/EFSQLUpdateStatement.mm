@interface EFSQLUpdateStatement
- (EFSQLUpdateStatement)initWithTable:(id)table conflictResolution:(unint64_t)resolution;
- (NSString)queryString;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)_renderSQLExpressionForUpsert:(void *)upsert into:;
- (void)enumerateBindingNamesAndValuesUsingBlock:(id)block;
- (void)renderStatementForUpsertInto:(uint64_t)into;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation EFSQLUpdateStatement

- (NSString)queryString
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [(EFSQLUpdateStatement *)self _renderSQLExpressionForUpsert:v3 into:?];

  return v3;
}

- (EFSQLUpdateStatement)initWithTable:(id)table conflictResolution:(unint64_t)resolution
{
  tableCopy = table;
  v15.receiver = self;
  v15.super_class = EFSQLUpdateStatement;
  v7 = [(EFSQLUpdateStatement *)&v15 init];
  if (v7)
  {
    v8 = [tableCopy copy];
    table = v7->_table;
    v7->_table = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    bindables = v7->_bindables;
    v7->_bindables = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    expressables = v7->_expressables;
    v7->_expressables = v12;

    v7->_conflictResolution = resolution;
  }

  return v7;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  v8 = objc_opt_respondsToSelector();
  v9 = objc_opt_respondsToSelector();
  v10 = v9;
  if ((v8 | v9))
  {
    if (subscriptCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLUpdateStatement.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"isBindable || isExpressable"}];

    if (subscriptCopy)
    {
LABEL_3:
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFSQLUpdateStatement.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"columnName != nil"}];

  if (v8)
  {
LABEL_4:
    if (self)
    {
      bindables = self->_bindables;
    }

    else
    {
      bindables = 0;
    }

    goto LABEL_13;
  }

LABEL_8:
  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  if (self)
  {
    v14 = self->_bindables;
  }

  else
  {
    v14 = 0;
  }

  [(NSMutableDictionary *)v14 setObject:0 forKeyedSubscript:subscriptCopy];
  if (self)
  {
    bindables = self->_expressables;
  }

  else
  {
    bindables = 0;
  }

LABEL_13:
  [(NSMutableDictionary *)bindables setObject:objectCopy forKeyedSubscript:subscriptCopy];
LABEL_14:
}

void __65__EFSQLUpdateStatement_enumerateBindingNamesAndValuesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [@":update_" stringByAppendingString:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)_renderSQLExpressionForUpsert:(void *)upsert into:
{
  v32 = *MEMORY[0x1E69E9840];
  upsertCopy = upsert;
  if (!self)
  {
    goto LABEL_21;
  }

  v6 = *(self + 16);
  v7 = [v6 count];
  v8 = [*(self + 24) count];

  if (!(v7 + v8))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__renderSQLExpressionForUpsert_into_ object:self file:@"EFSQLUpdateStatement.m" lineNumber:72 description:@"Need at least one bindable value for a column to generate a queryString"];

    if (a2)
    {
      goto LABEL_4;
    }

LABEL_6:
    v10 = *(self + 40);
    if (v10)
    {
      v11 = EFSQLStringForConflictResolution(v10);
      [upsertCopy appendFormat:@"UPDATE OR %@ %@ SET ", v11, *(self + 32)];
    }

    else
    {
      [upsertCopy appendFormat:@"UPDATE %@ SET ", *(self + 32)];
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_4:
  [upsertCopy appendString:@"UPDATE SET "];
LABEL_9:
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [*(self + 16) allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v23 + 1) + 8 * v15);
        if (v28[3] >= 1)
        {
          [upsertCopy appendString:{@", "}];
        }

        [upsertCopy appendFormat:@"%@ = :update_%@", v16, v16];
        ++v28[3];
        ++v15;
      }

      while (v13 != v15);
      v13 = [allKeys countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v13);
  }

  v17 = *(self + 24);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__EFSQLUpdateStatement__renderSQLExpressionForUpsert_into___block_invoke;
  v20[3] = &unk_1E824A100;
  v22 = &v27;
  v18 = upsertCopy;
  v21 = v18;
  [v17 enumerateKeysAndObjectsUsingBlock:v20];

  if (*(self + 8))
  {
    [v18 appendString:@" WHERE "];
    [*(self + 8) ef_renderSQLExpressionInto:v18];
  }

  _Block_object_dispose(&v27, 8);
LABEL_21:

  v19 = *MEMORY[0x1E69E9840];
}

void __59__EFSQLUpdateStatement__renderSQLExpressionForUpsert_into___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(*(*(a1 + 40) + 8) + 24) >= 1)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendFormat:@"%@ = ", v7];
  v6 = [v5 ef_SQLIsolatedExpression];
  [v6 ef_renderSQLExpressionInto:*(a1 + 32)];

  ++*(*(*(a1 + 40) + 8) + 24);
}

- (void)renderStatementForUpsertInto:(uint64_t)into
{
  v3 = a2;
  if (into)
  {
    [(EFSQLUpdateStatement *)into _renderSQLExpressionForUpsert:v3 into:?];
  }
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  if (self)
  {
    bindables = self->_bindables;
  }

  else
  {
    bindables = 0;
  }

  v6 = bindables;
  v7 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:subscriptCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    if (self)
    {
      expressables = self->_expressables;
    }

    else
    {
      expressables = 0;
    }

    v9 = [(NSMutableDictionary *)expressables objectForKeyedSubscript:subscriptCopy];
  }

  v11 = v9;

  return v11;
}

- (void)enumerateBindingNamesAndValuesUsingBlock:(id)block
{
  blockCopy = block;
  if (self)
  {
    bindables = self->_bindables;
  }

  else
  {
    bindables = 0;
  }

  v6 = bindables;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__EFSQLUpdateStatement_enumerateBindingNamesAndValuesUsingBlock___block_invoke;
  v8[3] = &unk_1E824A0D8;
  v9 = blockCopy;
  v7 = blockCopy;
  [(NSMutableDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v8];
}

@end