@interface CPLScopedIdentifier
+ (CPLScopedIdentifier)scopedIdentifierWithString:(id)a3 includeScopeIndex:(BOOL)a4 defaultScopeIdentifier:(id)a5;
+ (id)descriptionWithScopeIdentifier:(id)a3 identifier:(id)a4;
+ (id)scopedIdentifiersFromArrayOfUnknownIdentifiers:(id)a3;
+ (id)scopedIdentifiersFromDictionaryOfUnknownIdentifiers:(id)a3;
+ (id)scopedIdentifiersFromSetOfUnknownIdentifiers:(id)a3;
+ (id)unscopedIdentifiersFromArrayOfScopedIdentifiers:(id)a3;
+ (id)unscopedIdentifiersFromDictionaryOfScopedIdentifiers:(id)a3;
+ (id)unscopedIdentifiersFromSetOfScopedIdentifiers:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInACPLShare;
- (CPLScopedIdentifier)initWithCPLArchiver:(id)a3;
- (CPLScopedIdentifier)initWithCoder:(id)a3;
- (CPLScopedIdentifier)initWithScopeIdentifier:(id)a3 identifier:(id)a4;
- (CPLScopedIdentifier)initWithScopeIdentifier:(id)a3 identifier:(id)a4 scopeIndex:(int64_t)a5;
- (CPLScopedIdentifier)initWithStringRepresentation:(id)a3 defaultScopeIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initInMainScopeWithIdentifier:(id)a3;
- (id)initRelativeToScopedIdentifier:(id)a3 identifier:(id)a4;
- (id)plistArchiveWithCPLArchiver:(id)a3;
- (id)safeFilename;
- (int64_t)scopeIndex;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setScopeIndex:(int64_t)a3;
@end

@implementation CPLScopedIdentifier

- (unint64_t)hash
{
  scopeIdentifier = self->_scopeIdentifier;
  v4 = [(NSString *)self->_identifier hash];
  if (scopeIdentifier)
  {
    v4 ^= [(NSString *)self->_scopeIdentifier hash];
  }

  return v4;
}

- (int64_t)scopeIndex
{
  if (self->_scopeIndex <= 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return self->_scopeIndex;
  }
}

- (CPLScopedIdentifier)initWithCPLArchiver:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4[2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v4 archiverContext];
        v11 = v4[2];
        v12 = objc_opt_class();
        v13 = v4[2];
        *buf = 138412802;
        v25 = v10;
        v26 = 2112;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
        v14 = v12;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%@: Incorrect class for CPLScopedIdentifier. Found %@: '%@'", buf, 0x20u);
      }
    }

    v15 = v4[2];
    v16 = objc_opt_class();
    v23 = v4[2];
    _CPLArchiverFailure(v4, @"Incorrect class for CPLScopedIdentifier. Found %@: '%@'", v17, v18, v19, v20, v21, v22, v16);
  }

  v6 = [(CPLScopedIdentifier *)self initWithCoder:v4];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)plistArchiveWithCPLArchiver:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 archiveCursor];
  [v5 setArchiveCursor:v6];
  [(CPLScopedIdentifier *)self encodeWithCoder:v5];
  [v5 setArchiveCursor:v7];

  return v6;
}

- (CPLScopedIdentifier)initWithStringRepresentation:(id)a3 defaultScopeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 rangeOfString:@"#"];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v6;
    v10 = v7;
  }

  else
  {
    v11 = v8;
    v9 = [v6 substringToIndex:v8];
    v10 = [v6 substringFromIndex:v11 + 1];
  }

  v12 = v10;
  v13 = [(CPLScopedIdentifier *)self initWithScopeIdentifier:v10 identifier:v9];

  return v13;
}

- (BOOL)isInACPLShare
{
  if ([(NSString *)self->_scopeIdentifier hasPrefix:@"CMM-"])
  {
    return 1;
  }

  scopeIdentifier = self->_scopeIdentifier;

  return [(NSString *)scopeIdentifier hasPrefix:@"SharedCollection-"];
}

- (id)safeFilename
{
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@#%@", self->_scopeIdentifier, self->_identifier];
  [v2 replaceOccurrencesOfString:@"/" withString:@":" options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CPLScopedIdentifier alloc];
  scopeIdentifier = self->_scopeIdentifier;
  identifier = self->_identifier;

  return [(CPLScopedIdentifier *)v4 initWithScopeIdentifier:scopeIdentifier identifier:identifier];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self->_scopeIdentifier;
    v6 = v5;
    scopeIdentifier = v4->_scopeIdentifier;
    if (v5 && scopeIdentifier)
    {
      v8 = [v5 isEqual:?];

      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = v5 | scopeIdentifier;

      if (v10)
      {
        goto LABEL_6;
      }
    }

    v9 = [(NSString *)self->_identifier isEqualToString:v4->_identifier];
    goto LABEL_10;
  }

LABEL_6:
  v9 = 0;
LABEL_10:

  return v9;
}

- (id)description
{
  if (self->_scopeIndex <= 0)
  {
    v5 = [(CPLScopedIdentifier *)self descriptionWithNoScopeIndex];
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [(CPLScopedIdentifier *)self descriptionWithNoScopeIndex];
    v5 = [v3 initWithFormat:@"%@(%ld)", v4, self->_scopeIndex];
  }

  return v5;
}

- (CPLScopedIdentifier)initWithScopeIdentifier:(id)a3 identifier:(id)a4 scopeIndex:(int64_t)a5
{
  result = [(CPLScopedIdentifier *)self initWithScopeIdentifier:a3 identifier:a4];
  if (a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result)
    {
      result->_scopeIndex = a5;
    }
  }

  return result;
}

- (id)initInMainScopeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = CPLPrimaryScopeIdentifierForCurrentUniverse();
  v6 = [(CPLScopedIdentifier *)self initWithScopeIdentifier:v5 identifier:v4];

  return v6;
}

- (id)initRelativeToScopedIdentifier:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 scopeIdentifier];
  v9 = [(CPLScopedIdentifier *)self initWithScopeIdentifier:v8 identifier:v7];

  if (v9)
  {
    v9->_scopeIndex = v6[1];
  }

  return v9;
}

- (CPLScopedIdentifier)initWithScopeIdentifier:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "nil identifier", buf, 2u);
      }
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopedIdentifier.m"];
    [v17 handleFailureInMethod:a2 object:self file:v18 lineNumber:235 description:@"nil identifier"];

    abort();
  }

  v9 = v8;
  v19.receiver = self;
  v19.super_class = CPLScopedIdentifier;
  v10 = [(CPLScopedIdentifier *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
    scopeIdentifier = v10->_scopeIdentifier;
    v10->_scopeIdentifier = v11;

    v13 = [v9 copy];
    identifier = v10->_identifier;
    v10->_identifier = v13;
  }

  return v10;
}

- (void)setScopeIndex:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_ERROR, "invalid scope index", v8, 2u);
      }
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopedIdentifier.m"];
    [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:144 description:@"invalid scope index"];

    abort();
  }

  self->_scopeIndex = a3;
}

- (CPLScopedIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLScopedIdentifier;
  v5 = [(CPLScopedIdentifier *)&v11 init];
  if (v5)
  {
    if (initWithCoder__onceToken_10818 != -1)
    {
      dispatch_once(&initWithCoder__onceToken_10818, &__block_literal_global_59);
    }

    v6 = [v4 decodeObjectOfClass:initWithCoder__stringClass_10819 forKey:@"i"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:initWithCoder__stringClass_10819 forKey:@"s"];
    scopeIdentifier = v5->_scopeIdentifier;
    v5->_scopeIdentifier = v8;

    v5->_scopeIndex = [v4 decodeIntegerForKey:@"#"];
  }

  return v5;
}

uint64_t __37__CPLScopedIdentifier_initWithCoder___block_invoke()
{
  result = objc_opt_class();
  initWithCoder__stringClass_10819 = result;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_identifier forKey:@"i"];
  [v4 encodeObject:self->_scopeIdentifier forKey:@"s"];
  if (self->_scopeIndex >= 1)
  {
    [v4 encodeInteger:? forKey:?];
  }
}

+ (CPLScopedIdentifier)scopedIdentifierWithString:(id)a3 includeScopeIndex:(BOOL)a4 defaultScopeIdentifier:(id)a5
{
  v5 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 rangeOfString:@"#"];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v9 identifier:v10];
    v13 = v10;
  }

  else
  {
    v14 = v11;
    v13 = [v10 substringToIndex:v11];
    v15 = [v10 substringFromIndex:v14 + 1];

    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __91__CPLScopedIdentifier_scopedIdentifierWithString_includeScopeIndex_defaultScopeIdentifier___block_invoke;
    v30 = &__block_descriptor_48_e5_v8__0l;
    v31 = a2;
    v32 = a1;
    if (scopedIdentifierWithString_includeScopeIndex_defaultScopeIdentifier__onceToken != -1)
    {
      dispatch_once(&scopedIdentifierWithString_includeScopeIndex_defaultScopeIdentifier__onceToken, &v27);
    }

    v16 = [scopedIdentifierWithString_includeScopeIndex_defaultScopeIdentifier__regExp firstMatchInString:v15 options:0 range:{0, objc_msgSend(v15, "length", v27, v28, v29, v30, v31, v32)}];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 rangeAtIndex:2];
      v20 = [v15 substringWithRange:{v18, v19}];
      v21 = [v20 integerValue];

      v22 = [v17 rangeAtIndex:1];
      v24 = [v15 substringWithRange:{v22, v23}];

      v15 = v24;
    }

    else
    {
      v21 = 0;
    }

    v25 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v15 identifier:v13];
    v12 = v25;
    if (v5 && v21 >= 1)
    {
      [(CPLScopedIdentifier *)v25 setScopeIndex:v21];
    }
  }

  return v12;
}

void __91__CPLScopedIdentifier_scopedIdentifierWithString_includeScopeIndex_defaultScopeIdentifier___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^(.*)\\(([0-9]+)\\)$" options:0 error:0];
  v3 = scopedIdentifierWithString_includeScopeIndex_defaultScopeIdentifier__regExp;
  scopedIdentifierWithString_includeScopeIndex_defaultScopeIdentifier__regExp = v2;

  if (!scopedIdentifierWithString_includeScopeIndex_defaultScopeIdentifier__regExp)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_ERROR, "Impossible to create regular expression for scopes", v9, 2u);
      }
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopedIdentifier.m"];
    [v5 handleFailureInMethod:v7 object:v6 file:v8 lineNumber:320 description:@"Impossible to create regular expression for scopes"];

    abort();
  }
}

+ (id)descriptionWithScopeIdentifier:(id)a3 identifier:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithFormat:@"%@#%@", v6, v7];

  return v8;
}

+ (id)unscopedIdentifiersFromDictionaryOfScopedIdentifiers:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__CPLScopedIdentifier_unscopedIdentifiersFromDictionaryOfScopedIdentifiers___block_invoke;
    v8[3] = &unk_1E861D1F0;
    v5 = v4;
    v9 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v8];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
    if (!v3)
    {
      v6 = 0;
    }

    v5 = v6;
  }

  return v5;
}

void __76__CPLScopedIdentifier_unscopedIdentifiersFromDictionaryOfScopedIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 identifier];
  [v4 setObject:v5 forKeyedSubscript:v6];
}

+ (id)unscopedIdentifiersFromSetOfScopedIdentifiers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) identifier];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else if (v3)
  {
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)unscopedIdentifiersFromArrayOfScopedIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) identifier];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
    if (!v3)
    {
      v11 = 0;
    }

    v4 = v11;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)scopedIdentifiersFromDictionaryOfUnknownIdentifiers:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    memset(v11, 0, sizeof(v11));
    if ([v3 countByEnumeratingWithState:v11 objects:v12 count:16])
    {
      v4 = **(&v11[0] + 1);
    }

    else
    {
      v4 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __75__CPLScopedIdentifier_scopedIdentifiersFromDictionaryOfUnknownIdentifiers___block_invoke;
      v9[3] = &unk_1E861D1C8;
      v5 = v6;
      v10 = v5;
      [v3 enumerateKeysAndObjectsUsingBlock:v9];
    }

    else
    {
      v5 = v3;
    }
  }

  else
  {
    v5 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

void __75__CPLScopedIdentifier_scopedIdentifiersFromDictionaryOfUnknownIdentifiers___block_invoke(uint64_t a1, CPLScopedIdentifier *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = a2;
    a2 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:@"PrimarySync" identifier:v5];
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:a2];
}

+ (id)scopedIdentifiersFromSetOfUnknownIdentifiers:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] && (objc_msgSend(v3, "anyObject"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if (v12)
          {
            v13 = v12;
            v14 = [CPLScopedIdentifier alloc];
            v15 = [(CPLScopedIdentifier *)v14 initWithScopeIdentifier:@"PrimarySync" identifier:v13, v18];
          }

          else
          {
            v15 = 0;
          }

          [v6 addObject:{v15, v18}];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = v3;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)scopedIdentifiersFromArrayOfUnknownIdentifiers:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] && (objc_msgSend(v3, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if (v12)
          {
            v13 = v12;
            v14 = [CPLScopedIdentifier alloc];
            v15 = [(CPLScopedIdentifier *)v14 initWithScopeIdentifier:@"PrimarySync" identifier:v13, v18];
          }

          else
          {
            v15 = 0;
          }

          [v6 addObject:{v15, v18}];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = v3;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

@end