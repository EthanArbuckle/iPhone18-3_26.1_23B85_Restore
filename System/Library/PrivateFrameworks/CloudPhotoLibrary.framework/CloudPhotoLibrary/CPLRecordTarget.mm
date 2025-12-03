@interface CPLRecordTarget
+ (id)descriptionForTargetState:(int64_t)state;
- (BOOL)isEqual:(id)equal;
- (CPLRecordTarget)initWithCoder:(id)coder;
- (CPLRecordTarget)initWithScopedIdentifier:(id)identifier otherScopedIdentifier:(id)scopedIdentifier targetState:(int64_t)state;
- (CPLScopedIdentifier)resourceScopedIdentifier;
- (NSArray)targetScopedIdentifiers;
- (NSString)simpleDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLRecordTarget

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_targetState == self->_targetState && [(CPLScopedIdentifier *)equalCopy->_scopedIdentifier isEqual:self->_scopedIdentifier])
    {
      v5 = equalCopy->_otherScopedIdentifier;
      v6 = self->_otherScopedIdentifier;
      v7 = v6;
      v8 = v5 && v6 && ([v5 isEqual:v6] & 1) != 0 || (v5 | v7) == 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)simpleDescription
{
  otherScopedIdentifier = self->_otherScopedIdentifier;
  if (otherScopedIdentifier)
  {
    identifier = [(CPLScopedIdentifier *)otherScopedIdentifier identifier];
    identifier2 = [(CPLScopedIdentifier *)self->_scopedIdentifier identifier];
    v6 = [identifier isEqualToString:identifier2];

    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    descriptionWithNoScopeIndex = [(CPLScopedIdentifier *)self->_scopedIdentifier descriptionWithNoScopeIndex];
    v9 = self->_otherScopedIdentifier;
    if (v6)
    {
      [(CPLScopedIdentifier *)v9 scopeIdentifier];
    }

    else
    {
      [(CPLScopedIdentifier *)v9 descriptionWithNoScopeIndex];
    }
    v11 = ;
    v12 = [CPLRecordTarget descriptionForTargetState:self->_targetState];
    descriptionWithNoScopeIndex2 = [v7 initWithFormat:@"%@->%@ (%@)>", descriptionWithNoScopeIndex, v11, v12];
  }

  else
  {
    descriptionWithNoScopeIndex2 = [(CPLScopedIdentifier *)self->_scopedIdentifier descriptionWithNoScopeIndex];
  }

  return descriptionWithNoScopeIndex2;
}

- (id)description
{
  otherScopedIdentifier = self->_otherScopedIdentifier;
  if (otherScopedIdentifier)
  {
    identifier = [(CPLScopedIdentifier *)otherScopedIdentifier identifier];
    identifier2 = [(CPLScopedIdentifier *)self->_scopedIdentifier identifier];
    v6 = [identifier isEqualToString:identifier2];

    if (v6)
    {
      scopeIndex = [(CPLScopedIdentifier *)self->_otherScopedIdentifier scopeIndex];
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      scopedIdentifier = self->_scopedIdentifier;
      scopeIdentifier = [(CPLScopedIdentifier *)self->_otherScopedIdentifier scopeIdentifier];
      if (scopeIndex < 1)
      {
        v18 = [CPLRecordTarget descriptionForTargetState:self->_targetState];
        v13 = [v8 initWithFormat:@"<Target %@->%@ (%@)>", scopedIdentifier, scopeIdentifier, v18];
      }

      else
      {
        scopeIndex2 = [(CPLScopedIdentifier *)self->_otherScopedIdentifier scopeIndex];
        v12 = [CPLRecordTarget descriptionForTargetState:self->_targetState];
        v13 = [v8 initWithFormat:@"<Target %@->%@(%lu) (%@)>", scopedIdentifier, scopeIdentifier, scopeIndex2, v12];
      }
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v15 = self->_otherScopedIdentifier;
      v16 = self->_scopedIdentifier;
      v17 = [CPLRecordTarget descriptionForTargetState:self->_targetState];
      v13 = [v14 initWithFormat:@"<Target %@->%@ (%@)>", v16, v15, v17];
    }
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<Target %@>", self->_scopedIdentifier];
  }

  return v13;
}

- (CPLScopedIdentifier)resourceScopedIdentifier
{
  v2 = 8;
  if ((self->_targetState & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v2 = 24;
  }

  return *(&self->super.isa + v2);
}

- (NSArray)targetScopedIdentifiers
{
  v13 = *MEMORY[0x1E69E9840];
  otherScopedIdentifier = self->_otherScopedIdentifier;
  scopedIdentifier = self->_scopedIdentifier;
  if (otherScopedIdentifier)
  {
    v11 = self->_scopedIdentifier;
    v12 = otherScopedIdentifier;
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v11;
    v6 = 2;
  }

  else
  {
    v10 = self->_scopedIdentifier;
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v10;
    v6 = 1;
  }

  v7 = [v4 arrayWithObjects:v5 count:{v6, v10, v11, v12, v13}];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  scopedIdentifier = self->_scopedIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:scopedIdentifier forKey:@"i"];
  [coderCopy encodeObject:self->_otherScopedIdentifier forKey:@"o"];
  [coderCopy encodeInteger:self->_targetState forKey:@"t"];
}

- (CPLRecordTarget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"o"];
  v7 = [coderCopy decodeIntegerForKey:@"t"];

  v8 = [(CPLRecordTarget *)self initWithScopedIdentifier:v5 otherScopedIdentifier:v6 targetState:v7];
  return v8;
}

- (CPLRecordTarget)initWithScopedIdentifier:(id)identifier otherScopedIdentifier:(id)scopedIdentifier targetState:(int64_t)state
{
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  v14.receiver = self;
  v14.super_class = CPLRecordTarget;
  v11 = [(CPLRecordTarget *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_scopedIdentifier, identifier);
    v12->_targetState = state;
    objc_storeStrong(&v12->_otherScopedIdentifier, scopedIdentifier);
  }

  return v12;
}

+ (id)descriptionForTargetState:(int64_t)state
{
  if (state >= 4)
  {
    state = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", state];
  }

  else
  {
    state = off_1E861C410[state];
  }

  return state;
}

@end