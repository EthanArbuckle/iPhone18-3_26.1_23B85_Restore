@interface LNUndoContext
- (BOOL)isEqual:(id)a3;
- (LNUndoContext)initWithCoder:(id)a3;
- (LNUndoContext)initWithUndoToken:(id)a3 actionString:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNUndoContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNUndoContext *)self undoToken];
  v7 = [(LNUndoContext *)self actionString];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@ action: %@", v5, self, v6, v7];

  return v8;
}

- (LNUndoContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"undoToken"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionString"];

  v7 = [(LNUndoContext *)self initWithUndoToken:v5 actionString:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNUndoContext *)self undoToken];
  [v4 encodeObject:v5 forKey:@"undoToken"];

  v6 = [(LNUndoContext *)self actionString];
  [v4 encodeObject:v6 forKey:@"actionString"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNUndoContext *)self undoToken];
      v8 = [(LNUndoContext *)v6 undoToken];
      v9 = v7;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (LNUndoContext)initWithUndoToken:(id)a3 actionString:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"LNUndoContext.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"token"}];
  }

  v17.receiver = self;
  v17.super_class = LNUndoContext;
  v9 = [(LNUndoContext *)&v17 init];
  if (v9)
  {
    v10 = [v7 copy];
    undoToken = v9->_undoToken;
    v9->_undoToken = v10;

    v12 = [v8 copy];
    actionString = v9->_actionString;
    v9->_actionString = v12;

    v14 = v9;
  }

  return v9;
}

@end