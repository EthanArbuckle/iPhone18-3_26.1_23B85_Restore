@interface _EFSQLInsertStatementFollowUpValue
- (id)objectForKeyedSubscript:(id)subscript;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation _EFSQLInsertStatementFollowUpValue

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

LABEL_19:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLInsertStatement.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"columnName != nil"}];

    if (self)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFSQLInsertStatement.m" lineNumber:85 description:@"Value must conform to either EFSQLBindable or EFSQLValueExpressable"];

  if (!subscriptCopy)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (self)
  {
LABEL_4:
    requiredColumns = self->super._requiredColumns;
    goto LABEL_5;
  }

LABEL_20:
  requiredColumns = 0;
LABEL_5:
  if (![(NSMutableOrderedSet *)requiredColumns containsObject:subscriptCopy])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"column: %@ was not defined for the initial value, can't define it for a follow-up value", subscriptCopy];
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v16);
  }

  if (v8)
  {
    if (self)
    {
      bindables = self->super._bindables;
    }

    else
    {
      bindables = 0;
    }
  }

  else
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (self)
    {
      v13 = self->super._bindables;
    }

    else
    {
      v13 = 0;
    }

    [(NSMutableDictionary *)v13 setObject:0 forKeyedSubscript:subscriptCopy];
    if (self)
    {
      bindables = self->super._expressables;
    }

    else
    {
      bindables = 0;
    }
  }

  [(NSMutableDictionary *)bindables setObject:objectCopy forKeyedSubscript:subscriptCopy];
LABEL_15:
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  if (self)
  {
    bindables = self->super._bindables;
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
      expressables = self->super._expressables;
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

@end