@interface LNNLGDialog
- (BOOL)isEqual:(id)equal;
- (LNNLGDialog)initWithCoder:(id)coder;
- (LNNLGDialog)initWithNLGParams:(id)params options:(id)options fallbackDialog:(id)dialog localeIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNNLGDialog

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nlgParams = [(LNNLGDialog *)self nlgParams];
  [coderCopy encodeObject:nlgParams forKey:@"nlgParams"];

  options = [(LNNLGDialog *)self options];
  [coderCopy encodeObject:options forKey:@"options"];

  fallbackDialog = [(LNNLGDialog *)self fallbackDialog];
  [coderCopy encodeObject:fallbackDialog forKey:@"fallbackDialog"];

  localeIdentifier = [(LNDialog *)self localeIdentifier];
  [coderCopy encodeObject:localeIdentifier forKey:@"localeIdentifier"];
}

- (LNNLGDialog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"nlgParams"];

  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    if (v9)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fallbackDialog"];
      self = [(LNNLGDialog *)self initWithNLGParams:v8 options:v10 fallbackDialog:v11 localeIdentifier:v9];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  nlgParams = [(LNNLGDialog *)self nlgParams];
  options = [(LNNLGDialog *)self options];
  fallbackDialog = [(LNNLGDialog *)self fallbackDialog];
  v9 = [v3 stringWithFormat:@"<%@: %p, nlgParams: %@, options: %@, fallbackDialog: %@>", v5, self, nlgParams, options, fallbackDialog];

  return v9;
}

- (unint64_t)hash
{
  nlgParams = [(LNNLGDialog *)self nlgParams];
  v4 = [nlgParams hash];
  fallbackDialog = [(LNNLGDialog *)self fallbackDialog];
  v6 = [fallbackDialog hash] ^ v4;
  options = [(LNNLGDialog *)self options];
  v8 = [options hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      nlgParams = [(LNNLGDialog *)self nlgParams];
      nlgParams2 = [(LNNLGDialog *)v6 nlgParams];
      if ([nlgParams isEqual:nlgParams2])
      {
        options = [(LNNLGDialog *)self options];
        options2 = [(LNNLGDialog *)v6 options];
        if ([options isEqual:options2])
        {
          fallbackDialog = [(LNNLGDialog *)self fallbackDialog];
          fallbackDialog2 = [(LNNLGDialog *)v6 fallbackDialog];
          v13 = [fallbackDialog isEqual:fallbackDialog2];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (LNNLGDialog)initWithNLGParams:(id)params options:(id)options fallbackDialog:(id)dialog localeIdentifier:(id)identifier
{
  paramsCopy = params;
  optionsCopy = options;
  dialogCopy = dialog;
  identifierCopy = identifier;
  if (!paramsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNNLGDialog.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"nlgParams"}];
  }

  v25.receiver = self;
  v25.super_class = LNNLGDialog;
  v15 = [(LNDialog *)&v25 initWithLocaleIdentifier:identifierCopy];
  if (v15)
  {
    v16 = [paramsCopy copy];
    nlgParams = v15->_nlgParams;
    v15->_nlgParams = v16;

    v18 = [optionsCopy copy];
    options = v15->_options;
    v15->_options = v18;

    v20 = [dialogCopy copy];
    fallbackDialog = v15->_fallbackDialog;
    v15->_fallbackDialog = v20;

    v22 = v15;
  }

  return v15;
}

@end