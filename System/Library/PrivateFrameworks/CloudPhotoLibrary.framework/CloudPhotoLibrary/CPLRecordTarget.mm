@interface CPLRecordTarget
+ (id)descriptionForTargetState:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CPLRecordTarget)initWithCoder:(id)a3;
- (CPLRecordTarget)initWithScopedIdentifier:(id)a3 otherScopedIdentifier:(id)a4 targetState:(int64_t)a5;
- (CPLScopedIdentifier)resourceScopedIdentifier;
- (NSArray)targetScopedIdentifiers;
- (NSString)simpleDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLRecordTarget

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v4->_targetState == self->_targetState && [(CPLScopedIdentifier *)v4->_scopedIdentifier isEqual:self->_scopedIdentifier])
    {
      v5 = v4->_otherScopedIdentifier;
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
    v4 = [(CPLScopedIdentifier *)otherScopedIdentifier identifier];
    v5 = [(CPLScopedIdentifier *)self->_scopedIdentifier identifier];
    v6 = [v4 isEqualToString:v5];

    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [(CPLScopedIdentifier *)self->_scopedIdentifier descriptionWithNoScopeIndex];
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
    v10 = [v7 initWithFormat:@"%@->%@ (%@)>", v8, v11, v12];
  }

  else
  {
    v10 = [(CPLScopedIdentifier *)self->_scopedIdentifier descriptionWithNoScopeIndex];
  }

  return v10;
}

- (id)description
{
  otherScopedIdentifier = self->_otherScopedIdentifier;
  if (otherScopedIdentifier)
  {
    v4 = [(CPLScopedIdentifier *)otherScopedIdentifier identifier];
    v5 = [(CPLScopedIdentifier *)self->_scopedIdentifier identifier];
    v6 = [v4 isEqualToString:v5];

    if (v6)
    {
      v7 = [(CPLScopedIdentifier *)self->_otherScopedIdentifier scopeIndex];
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      scopedIdentifier = self->_scopedIdentifier;
      v10 = [(CPLScopedIdentifier *)self->_otherScopedIdentifier scopeIdentifier];
      if (v7 < 1)
      {
        v18 = [CPLRecordTarget descriptionForTargetState:self->_targetState];
        v13 = [v8 initWithFormat:@"<Target %@->%@ (%@)>", scopedIdentifier, v10, v18];
      }

      else
      {
        v11 = [(CPLScopedIdentifier *)self->_otherScopedIdentifier scopeIndex];
        v12 = [CPLRecordTarget descriptionForTargetState:self->_targetState];
        v13 = [v8 initWithFormat:@"<Target %@->%@(%lu) (%@)>", scopedIdentifier, v10, v11, v12];
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

- (void)encodeWithCoder:(id)a3
{
  scopedIdentifier = self->_scopedIdentifier;
  v5 = a3;
  [v5 encodeObject:scopedIdentifier forKey:@"i"];
  [v5 encodeObject:self->_otherScopedIdentifier forKey:@"o"];
  [v5 encodeInteger:self->_targetState forKey:@"t"];
}

- (CPLRecordTarget)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"o"];
  v7 = [v4 decodeIntegerForKey:@"t"];

  v8 = [(CPLRecordTarget *)self initWithScopedIdentifier:v5 otherScopedIdentifier:v6 targetState:v7];
  return v8;
}

- (CPLRecordTarget)initWithScopedIdentifier:(id)a3 otherScopedIdentifier:(id)a4 targetState:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CPLRecordTarget;
  v11 = [(CPLRecordTarget *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_scopedIdentifier, a3);
    v12->_targetState = a5;
    objc_storeStrong(&v12->_otherScopedIdentifier, a4);
  }

  return v12;
}

+ (id)descriptionForTargetState:(int64_t)a3
{
  if (a3 >= 4)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", a3];
  }

  else
  {
    v3 = off_1E861C410[a3];
  }

  return v3;
}

@end