@interface _EFSQLInsertStatementFirstValue
- (id)objectForKeyedSubscript:(id)subscript;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation _EFSQLInsertStatementFirstValue

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

LABEL_18:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLInsertStatement.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"columnName != nil"}];

    if (self)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"EFSQLInsertStatement.m" lineNumber:60 description:@"Value must conform to either EFSQLBindable or EFSQLValueExpressable"];

  if (!subscriptCopy)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (self)
  {
LABEL_4:
    requiredColumns = self->super._requiredColumns;
    goto LABEL_5;
  }

LABEL_19:
  requiredColumns = 0;
LABEL_5:
  [(NSMutableOrderedSet *)requiredColumns addObject:subscriptCopy];
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
      goto LABEL_14;
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
LABEL_14:
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