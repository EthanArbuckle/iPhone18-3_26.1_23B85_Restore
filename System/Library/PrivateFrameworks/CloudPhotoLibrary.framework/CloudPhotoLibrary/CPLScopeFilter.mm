@interface CPLScopeFilter
- (BOOL)filterOnScopeIdentifier:(id)a3;
- (CPLScopeFilter)initWithExcludedScopeIdentifiers:(id)a3;
- (CPLScopeFilter)initWithIncludedScopeIdentifiers:(id)a3;
- (NSString)simpleDescription;
- (id)_setOfScopeIdentifiersFromEnumeration:(id)a3;
- (id)description;
@end

@implementation CPLScopeFilter

- (NSString)simpleDescription
{
  includedScopeIdentifiers = self->_includedScopeIdentifiers;
  if (includedScopeIdentifiers)
  {
    v4 = [(NSSet *)includedScopeIdentifiers allObjects];
    v5 = [v4 componentsJoinedByString:{@", "}];
LABEL_5:

    goto LABEL_6;
  }

  if (self->_excludedScopeIdentifiers)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [(NSSet *)self->_excludedScopeIdentifiers allObjects];
    v7 = [v4 componentsJoinedByString:{@", "}];
    v5 = [v6 initWithFormat:@"All Scopes but %@", v7];

    goto LABEL_5;
  }

  v5 = @"All Scopes";
LABEL_6:

  return v5;
}

- (id)description
{
  p_includedScopeIdentifiers = &self->_includedScopeIdentifiers;
  if (self->_includedScopeIdentifiers)
  {
    v3 = @"[incl: %@]";
LABEL_5:
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [(NSSet *)*p_includedScopeIdentifiers allObjects];
    v8 = [v7 componentsJoinedByString:{@", "}];
    v9 = [v6 initWithFormat:v3, v8];

    goto LABEL_6;
  }

  excludedScopeIdentifiers = self->_excludedScopeIdentifiers;
  p_excludedScopeIdentifiers = &self->_excludedScopeIdentifiers;
  if (excludedScopeIdentifiers)
  {
    v3 = @"[excl: %@]";
    p_includedScopeIdentifiers = p_excludedScopeIdentifiers;
    goto LABEL_5;
  }

  v9 = @"[none]";
LABEL_6:

  return v9;
}

- (BOOL)filterOnScopeIdentifier:(id)a3
{
  v4 = a3;
  includedScopeIdentifiers = self->_includedScopeIdentifiers;
  if (includedScopeIdentifiers)
  {
    LOBYTE(v6) = [(NSSet *)includedScopeIdentifiers containsObject:v4];
  }

  else
  {
    excludedScopeIdentifiers = self->_excludedScopeIdentifiers;
    if (excludedScopeIdentifiers)
    {
      v6 = ![(NSSet *)excludedScopeIdentifiers containsObject:v4];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (CPLScopeFilter)initWithExcludedScopeIdentifiers:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CPLScopeFilter;
  v5 = [(CPLScopeFilter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(CPLScopeFilter *)v5 _setOfScopeIdentifiersFromEnumeration:v4];
    excludedScopeIdentifiers = v6->_excludedScopeIdentifiers;
    v6->_excludedScopeIdentifiers = v7;
  }

  return v6;
}

- (CPLScopeFilter)initWithIncludedScopeIdentifiers:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CPLScopeFilter;
  v5 = [(CPLScopeFilter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(CPLScopeFilter *)v5 _setOfScopeIdentifiersFromEnumeration:v4];
    includedScopeIdentifiers = v6->_includedScopeIdentifiers;
    v6->_includedScopeIdentifiers = v7;
  }

  return v6;
}

- (id)_setOfScopeIdentifiersFromEnumeration:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addObject:{*(*(&v12 + 1) + 8 * i), v12}];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

@end