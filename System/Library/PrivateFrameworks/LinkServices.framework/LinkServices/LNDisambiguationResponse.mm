@interface LNDisambiguationResponse
- (LNDisambiguationResponse)initWithCoder:(id)coder;
- (LNDisambiguationResponse)initWithIdentifier:(id)identifier context:(id)context selectedIndex:(id)index value:(id)value updates:(id)updates;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNDisambiguationResponse

- (LNDisambiguationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedIndex"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"updates"];

  if (v5 && (v6 || v7 || v12))
  {
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    self = [(LNDisambiguationResponse *)self initWithIdentifier:v5 context:v14 selectedIndex:v6 value:v7 updates:v12];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = LNDisambiguationResponse;
  coderCopy = coder;
  [(LNResponse *)&v8 encodeWithCoder:coderCopy];
  v5 = [(LNDisambiguationResponse *)self selectedIndex:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"selectedIndex"];

  value = [(LNDisambiguationResponse *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  updates = [(LNDisambiguationResponse *)self updates];
  [coderCopy encodeObject:updates forKey:@"updates"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(LNResponse *)self identifier];
  selectedIndex = [(LNDisambiguationResponse *)self selectedIndex];
  value = [(LNDisambiguationResponse *)self value];
  updates = [(LNDisambiguationResponse *)self updates];
  v10 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, selectedIndex: %@, value: %@, updates: %@>", v5, self, identifier, selectedIndex, value, updates];

  return v10;
}

- (LNDisambiguationResponse)initWithIdentifier:(id)identifier context:(id)context selectedIndex:(id)index value:(id)value updates:(id)updates
{
  identifierCopy = identifier;
  contextCopy = context;
  indexCopy = index;
  valueCopy = value;
  updatesCopy = updates;
  v18 = updatesCopy;
  if (!indexCopy && !valueCopy && !updatesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNDisambiguationResponse.m" lineNumber:21 description:{@"either selectedIndex, value, or updates must be non-null."}];
  }

  v24.receiver = self;
  v24.super_class = LNDisambiguationResponse;
  v19 = [(LNResponse *)&v24 initWithIdentifier:identifierCopy context:contextCopy];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_selectedIndex, index);
    objc_storeStrong(&v20->_value, value);
    objc_storeStrong(&v20->_updates, updates);
    v21 = v20;
  }

  return v20;
}

@end