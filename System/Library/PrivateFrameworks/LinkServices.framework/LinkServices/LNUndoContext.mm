@interface LNUndoContext
- (BOOL)isEqual:(id)equal;
- (LNUndoContext)initWithCoder:(id)coder;
- (LNUndoContext)initWithUndoToken:(id)token actionString:(id)string;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNUndoContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  undoToken = [(LNUndoContext *)self undoToken];
  actionString = [(LNUndoContext *)self actionString];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@ action: %@", v5, self, undoToken, actionString];

  return v8;
}

- (LNUndoContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"undoToken"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionString"];

  v7 = [(LNUndoContext *)self initWithUndoToken:v5 actionString:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  undoToken = [(LNUndoContext *)self undoToken];
  [coderCopy encodeObject:undoToken forKey:@"undoToken"];

  actionString = [(LNUndoContext *)self actionString];
  [coderCopy encodeObject:actionString forKey:@"actionString"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      undoToken = [(LNUndoContext *)self undoToken];
      undoToken2 = [(LNUndoContext *)v6 undoToken];
      v9 = undoToken;
      v10 = undoToken2;
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

- (LNUndoContext)initWithUndoToken:(id)token actionString:(id)string
{
  tokenCopy = token;
  stringCopy = string;
  if (!tokenCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNUndoContext.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"token"}];
  }

  v17.receiver = self;
  v17.super_class = LNUndoContext;
  v9 = [(LNUndoContext *)&v17 init];
  if (v9)
  {
    v10 = [tokenCopy copy];
    undoToken = v9->_undoToken;
    v9->_undoToken = v10;

    v12 = [stringCopy copy];
    actionString = v9->_actionString;
    v9->_actionString = v12;

    v14 = v9;
  }

  return v9;
}

@end