@interface MAAutoAssetSetInfoControl
- (MAAutoAssetSetInfoControl)initWithCoder:(id)coder;
- (id)_arrayStringsToString:(id)string;
- (id)initClearingAfter:(BOOL)after limitedToClientDomains:(id)domains limitedToSetIdentifiers:(id)identifiers;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetInfoControl

- (id)initClearingAfter:(BOOL)after limitedToClientDomains:(id)domains limitedToSetIdentifiers:(id)identifiers
{
  domainsCopy = domains;
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = MAAutoAssetSetInfoControl;
  v11 = [(MAAutoAssetSetInfoControl *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_clearingAfter = after;
    objc_storeStrong(&v11->_limitedToClientDomains, domains);
    objc_storeStrong(p_isa + 3, identifiers);
  }

  return p_isa;
}

- (MAAutoAssetSetInfoControl)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = MAAutoAssetSetInfoControl;
  v5 = [(MAAutoAssetSetInfoControl *)&v18 init];
  if (v5)
  {
    v5->_clearingAfter = [coderCopy decodeBoolForKey:@"clearingAfter"];
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v8 = [v6 initWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"limitedToClientDomains"];
    limitedToClientDomains = v5->_limitedToClientDomains;
    v5->_limitedToClientDomains = v9;

    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v13 = [v11 initWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"limitedToSetIdentifiers"];
    limitedToSetIdentifiers = v5->_limitedToSetIdentifiers;
    v5->_limitedToSetIdentifiers = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[MAAutoAssetSetInfoControl clearingAfter](self forKey:{"clearingAfter"), @"clearingAfter"}];
  limitedToClientDomains = [(MAAutoAssetSetInfoControl *)self limitedToClientDomains];
  [coderCopy encodeObject:limitedToClientDomains forKey:@"limitedToClientDomains"];

  limitedToSetIdentifiers = [(MAAutoAssetSetInfoControl *)self limitedToSetIdentifiers];
  [coderCopy encodeObject:limitedToSetIdentifiers forKey:@"limitedToSetIdentifiers"];
}

- (id)summary
{
  v4 = MEMORY[0x1E696AEC0];
  if ([(MAAutoAssetSetInfoControl *)self clearingAfter])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  limitedToClientDomains = [(MAAutoAssetSetInfoControl *)self limitedToClientDomains];
  if (limitedToClientDomains)
  {
    limitedToClientDomains2 = [(MAAutoAssetSetInfoControl *)self limitedToClientDomains];
    v7 = [(MAAutoAssetSetInfoControl *)self _arrayStringsToString:limitedToClientDomains2];
  }

  else
  {
    v7 = @"N";
  }

  limitedToSetIdentifiers = [(MAAutoAssetSetInfoControl *)self limitedToSetIdentifiers];
  if (limitedToSetIdentifiers)
  {
    limitedToSetIdentifiers2 = [(MAAutoAssetSetInfoControl *)self limitedToSetIdentifiers];
    v10 = [(MAAutoAssetSetInfoControl *)self _arrayStringsToString:limitedToSetIdentifiers2];
    v11 = [v4 stringWithFormat:@"clearingAfter:%@, limitedToClientDomains:%@ limitedToSetIdentifiers:%@", v5, v7, v10];
  }

  else
  {
    v11 = [v4 stringWithFormat:@"clearingAfter:%@, limitedToClientDomains:%@ limitedToSetIdentifiers:%@", v5, v7, @"N"];
  }

  if (limitedToClientDomains)
  {
  }

  return v11;
}

- (id)_arrayStringsToString:(id)string
{
  v19 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  v5 = v4;
  if (stringCopy)
  {
    [v4 appendString:@"["];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = stringCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      v10 = &stru_1F0C1B388;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 appendFormat:@"%@%@", v10, *(*(&v14 + 1) + 8 * i), v14];
          v10 = @",";
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v10 = @",";
      }

      while (v8);
    }

    [v5 appendString:@"]"];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

@end