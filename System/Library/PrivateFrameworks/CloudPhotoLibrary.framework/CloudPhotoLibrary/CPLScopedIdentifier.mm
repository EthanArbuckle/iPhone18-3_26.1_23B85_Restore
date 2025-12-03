@interface CPLScopedIdentifier
+ (CPLScopedIdentifier)scopedIdentifierWithString:(id)string includeScopeIndex:(BOOL)index defaultScopeIdentifier:(id)identifier;
+ (id)descriptionWithScopeIdentifier:(id)identifier identifier:(id)a4;
+ (id)scopedIdentifiersFromArrayOfUnknownIdentifiers:(id)identifiers;
+ (id)scopedIdentifiersFromDictionaryOfUnknownIdentifiers:(id)identifiers;
+ (id)scopedIdentifiersFromSetOfUnknownIdentifiers:(id)identifiers;
+ (id)unscopedIdentifiersFromArrayOfScopedIdentifiers:(id)identifiers;
+ (id)unscopedIdentifiersFromDictionaryOfScopedIdentifiers:(id)identifiers;
+ (id)unscopedIdentifiersFromSetOfScopedIdentifiers:(id)identifiers;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInACPLShare;
- (CPLScopedIdentifier)initWithCPLArchiver:(id)archiver;
- (CPLScopedIdentifier)initWithCoder:(id)coder;
- (CPLScopedIdentifier)initWithScopeIdentifier:(id)identifier identifier:(id)a4;
- (CPLScopedIdentifier)initWithScopeIdentifier:(id)identifier identifier:(id)a4 scopeIndex:(int64_t)index;
- (CPLScopedIdentifier)initWithStringRepresentation:(id)representation defaultScopeIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initInMainScopeWithIdentifier:(id)identifier;
- (id)initRelativeToScopedIdentifier:(id)identifier identifier:(id)a4;
- (id)plistArchiveWithCPLArchiver:(id)archiver;
- (id)safeFilename;
- (int64_t)scopeIndex;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setScopeIndex:(int64_t)index;
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

- (CPLScopedIdentifier)initWithCPLArchiver:(id)archiver
{
  v30 = *MEMORY[0x1E69E9840];
  archiverCopy = archiver;
  v5 = archiverCopy[2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        archiverContext = [archiverCopy archiverContext];
        v11 = archiverCopy[2];
        v12 = objc_opt_class();
        v13 = archiverCopy[2];
        *buf = 138412802;
        v25 = archiverContext;
        v26 = 2112;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
        v14 = v12;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%@: Incorrect class for CPLScopedIdentifier. Found %@: '%@'", buf, 0x20u);
      }
    }

    v15 = archiverCopy[2];
    v16 = objc_opt_class();
    v23 = archiverCopy[2];
    _CPLArchiverFailure(archiverCopy, @"Incorrect class for CPLScopedIdentifier. Found %@: '%@'", v17, v18, v19, v20, v21, v22, v16);
  }

  v6 = [(CPLScopedIdentifier *)self initWithCoder:archiverCopy];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)plistArchiveWithCPLArchiver:(id)archiver
{
  v4 = MEMORY[0x1E695DF90];
  archiverCopy = archiver;
  v6 = objc_alloc_init(v4);
  archiveCursor = [archiverCopy archiveCursor];
  [archiverCopy setArchiveCursor:v6];
  [(CPLScopedIdentifier *)self encodeWithCoder:archiverCopy];
  [archiverCopy setArchiveCursor:archiveCursor];

  return v6;
}

- (CPLScopedIdentifier)initWithStringRepresentation:(id)representation defaultScopeIdentifier:(id)identifier
{
  representationCopy = representation;
  identifierCopy = identifier;
  v8 = [representationCopy rangeOfString:@"#"];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = representationCopy;
    v10 = identifierCopy;
  }

  else
  {
    v11 = v8;
    v9 = [representationCopy substringToIndex:v8];
    v10 = [representationCopy substringFromIndex:v11 + 1];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CPLScopedIdentifier alloc];
  scopeIdentifier = self->_scopeIdentifier;
  identifier = self->_identifier;

  return [(CPLScopedIdentifier *)v4 initWithScopeIdentifier:scopeIdentifier identifier:identifier];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self->_scopeIdentifier;
    v6 = v5;
    scopeIdentifier = equalCopy->_scopeIdentifier;
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

    v9 = [(NSString *)self->_identifier isEqualToString:equalCopy->_identifier];
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
    descriptionWithNoScopeIndex = [(CPLScopedIdentifier *)self descriptionWithNoScopeIndex];
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    descriptionWithNoScopeIndex2 = [(CPLScopedIdentifier *)self descriptionWithNoScopeIndex];
    descriptionWithNoScopeIndex = [v3 initWithFormat:@"%@(%ld)", descriptionWithNoScopeIndex2, self->_scopeIndex];
  }

  return descriptionWithNoScopeIndex;
}

- (CPLScopedIdentifier)initWithScopeIdentifier:(id)identifier identifier:(id)a4 scopeIndex:(int64_t)index
{
  result = [(CPLScopedIdentifier *)self initWithScopeIdentifier:identifier identifier:a4];
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result)
    {
      result->_scopeIndex = index;
    }
  }

  return result;
}

- (id)initInMainScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = CPLPrimaryScopeIdentifierForCurrentUniverse();
  v6 = [(CPLScopedIdentifier *)self initWithScopeIdentifier:v5 identifier:identifierCopy];

  return v6;
}

- (id)initRelativeToScopedIdentifier:(id)identifier identifier:(id)a4
{
  identifierCopy = identifier;
  v7 = a4;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v9 = [(CPLScopedIdentifier *)self initWithScopeIdentifier:scopeIdentifier identifier:v7];

  if (v9)
  {
    v9->_scopeIndex = identifierCopy[1];
  }

  return v9;
}

- (CPLScopedIdentifier)initWithScopeIdentifier:(id)identifier identifier:(id)a4
{
  identifierCopy = identifier;
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopedIdentifier.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v18 lineNumber:235 description:@"nil identifier"];

    abort();
  }

  v9 = v8;
  v19.receiver = self;
  v19.super_class = CPLScopedIdentifier;
  v10 = [(CPLScopedIdentifier *)&v19 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    scopeIdentifier = v10->_scopeIdentifier;
    v10->_scopeIdentifier = v11;

    v13 = [v9 copy];
    identifier = v10->_identifier;
    v10->_identifier = v13;
  }

  return v10;
}

- (void)setScopeIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
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

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLScopedIdentifier.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:144 description:@"invalid scope index"];

    abort();
  }

  self->_scopeIndex = index;
}

- (CPLScopedIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPLScopedIdentifier;
  v5 = [(CPLScopedIdentifier *)&v11 init];
  if (v5)
  {
    if (initWithCoder__onceToken_10818 != -1)
    {
      dispatch_once(&initWithCoder__onceToken_10818, &__block_literal_global_59);
    }

    v6 = [coderCopy decodeObjectOfClass:initWithCoder__stringClass_10819 forKey:@"i"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:initWithCoder__stringClass_10819 forKey:@"s"];
    scopeIdentifier = v5->_scopeIdentifier;
    v5->_scopeIdentifier = v8;

    v5->_scopeIndex = [coderCopy decodeIntegerForKey:@"#"];
  }

  return v5;
}

uint64_t __37__CPLScopedIdentifier_initWithCoder___block_invoke()
{
  result = objc_opt_class();
  initWithCoder__stringClass_10819 = result;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"i"];
  [coderCopy encodeObject:self->_scopeIdentifier forKey:@"s"];
  if (self->_scopeIndex >= 1)
  {
    [coderCopy encodeInteger:? forKey:?];
  }
}

+ (CPLScopedIdentifier)scopedIdentifierWithString:(id)string includeScopeIndex:(BOOL)index defaultScopeIdentifier:(id)identifier
{
  indexCopy = index;
  identifierCopy = identifier;
  stringCopy = string;
  v11 = [stringCopy rangeOfString:@"#"];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:identifierCopy identifier:stringCopy];
    v13 = stringCopy;
  }

  else
  {
    v14 = v11;
    v13 = [stringCopy substringToIndex:v11];
    v15 = [stringCopy substringFromIndex:v14 + 1];

    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __91__CPLScopedIdentifier_scopedIdentifierWithString_includeScopeIndex_defaultScopeIdentifier___block_invoke;
    v30 = &__block_descriptor_48_e5_v8__0l;
    v31 = a2;
    selfCopy = self;
    if (scopedIdentifierWithString_includeScopeIndex_defaultScopeIdentifier__onceToken != -1)
    {
      dispatch_once(&scopedIdentifierWithString_includeScopeIndex_defaultScopeIdentifier__onceToken, &v27);
    }

    v16 = [scopedIdentifierWithString_includeScopeIndex_defaultScopeIdentifier__regExp firstMatchInString:v15 options:0 range:{0, objc_msgSend(v15, "length", v27, v28, v29, v30, v31, selfCopy)}];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 rangeAtIndex:2];
      v20 = [v15 substringWithRange:{v18, v19}];
      integerValue = [v20 integerValue];

      v22 = [v17 rangeAtIndex:1];
      v24 = [v15 substringWithRange:{v22, v23}];

      v15 = v24;
    }

    else
    {
      integerValue = 0;
    }

    v25 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v15 identifier:v13];
    v12 = v25;
    if (indexCopy && integerValue >= 1)
    {
      [(CPLScopedIdentifier *)v25 setScopeIndex:integerValue];
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

+ (id)descriptionWithScopeIdentifier:(id)identifier identifier:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  identifierCopy = identifier;
  identifierCopy = [[v5 alloc] initWithFormat:@"%@#%@", v6, identifierCopy];

  return identifierCopy;
}

+ (id)unscopedIdentifiersFromDictionaryOfScopedIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__CPLScopedIdentifier_unscopedIdentifiersFromDictionaryOfScopedIdentifiers___block_invoke;
    v8[3] = &unk_1E861D1F0;
    v5 = v4;
    v9 = v5;
    [identifiersCopy enumerateKeysAndObjectsUsingBlock:v8];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
    if (!identifiersCopy)
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

+ (id)unscopedIdentifiersFromSetOfScopedIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = identifiersCopy;
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

          identifier = [*(*(&v13 + 1) + 8 * i) identifier];
          [v4 addObject:identifier];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else if (identifiersCopy)
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

+ (id)unscopedIdentifiersFromArrayOfScopedIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = identifiersCopy;
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

          identifier = [*(*(&v14 + 1) + 8 * i) identifier];
          [v4 addObject:identifier];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
    if (!identifiersCopy)
    {
      v11 = 0;
    }

    v4 = v11;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)scopedIdentifiersFromDictionaryOfUnknownIdentifiers:(id)identifiers
{
  v13 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    memset(v11, 0, sizeof(v11));
    if ([identifiersCopy countByEnumeratingWithState:v11 objects:v12 count:16])
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
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __75__CPLScopedIdentifier_scopedIdentifiersFromDictionaryOfUnknownIdentifiers___block_invoke;
      v9[3] = &unk_1E861D1C8;
      v5 = v6;
      v10 = v5;
      [identifiersCopy enumerateKeysAndObjectsUsingBlock:v9];
    }

    else
    {
      v5 = identifiersCopy;
    }
  }

  else
  {
    v5 = identifiersCopy;
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

+ (id)scopedIdentifiersFromSetOfUnknownIdentifiers:(id)identifiers
{
  v23 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count] && (objc_msgSend(identifiersCopy, "anyObject"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = identifiersCopy;
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
    v6 = identifiersCopy;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)scopedIdentifiersFromArrayOfUnknownIdentifiers:(id)identifiers
{
  v23 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count] && (objc_msgSend(identifiersCopy, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = identifiersCopy;
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
    v6 = identifiersCopy;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

@end