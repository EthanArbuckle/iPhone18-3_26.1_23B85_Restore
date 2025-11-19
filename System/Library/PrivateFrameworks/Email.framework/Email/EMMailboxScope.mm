@interface EMMailboxScope
+ (EMMailboxScope)allMailboxesScope;
+ (EMMailboxScope)noMailboxesScope;
- (BOOL)_scopeContainsMailboxWithObjectID:(id)a3 mailboxTypeBlock:(id)a4;
- (BOOL)containsOnlyInboxType;
- (BOOL)isEqual:(id)a3;
- (BOOL)scopeContainsMailbox:(id)a3;
- (BOOL)scopeContainsMailboxObjectID:(id)a3 mailboxTypeResolver:(id)a4;
- (EMMailboxScope)initWithCoder:(id)a3;
- (EMMailboxScope)initWithMailboxTypes:(id)a3 excludeTypes:(BOOL)a4 mailboxObjectIDs:(id)a5 excludeMailboxes:(BOOL)a6 cached:(BOOL)a7;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (id)_mailboxObjectIDsDescription;
- (id)_mailboxObjectIDsForTypesWithMailboxTypeResolver:(id)a3;
- (id)_mailboxTypesDescription;
- (id)allMailboxObjectIDsWithMailboxTypeResolver:(id)a3 forExclusion:(BOOL *)a4;
- (id)cachedSelf;
- (id)mailboxScopeByAddingMailboxes:(id)a3;
- (id)mailboxScopeByRemovingMailboxes:(id)a3;
- (void)_calculateHash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMMailboxScope

void __41__EMMailboxScope_EFCacheable__cachedSelf__block_invoke()
{
  cachedSelf_sTableLock_1 = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
  v1 = cachedSelf_sUniqueObjectIDs_1;
  cachedSelf_sUniqueObjectIDs_1 = v0;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EMMailboxScope *)self _mailboxTypesDescription];
  v6 = [(EMMailboxScope *)self _mailboxObjectIDsDescription];
  v7 = v6;
  v8 = &stru_1F45FD218;
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = &stru_1F45FD218;
  }

  if (v6)
  {
    v8 = v6;
  }

  v10 = [v3 stringWithFormat:@"%@:%@%@", v4, v9, v8];

  return v10;
}

- (id)_mailboxTypesDescription
{
  v3 = [(EMMailboxScope *)self mailboxTypes];
  v4 = [v3 ef_compactMap:&__block_literal_global_77];
  v5 = [v4 allObjects];
  v6 = [v5 componentsJoinedByString:{@", "}];

  if ([v6 length])
  {
    if ([(EMMailboxScope *)self excludeTypes])
    {
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = @" excluding types: [%@]";
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = @" including types: [%@]";
    }

    v9 = [v7 initWithFormat:v8, v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_mailboxObjectIDsDescription
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(EMMailboxScope *)self excludeMailboxes])
  {
    v4 = @"excluding";
  }

  else
  {
    v4 = @"including";
  }

  v5 = [(EMMailboxScope *)self mailboxObjectIDs];
  v6 = [v5 count];
  v7 = [(EMMailboxScope *)self mailboxObjectIDs];
  v8 = [v3 stringWithFormat:@" %@ mailboxes: %ld <%p>", v4, v6, objc_msgSend(v7, "hash")];

  return v8;
}

- (void)_calculateHash
{
  v11 = self->_mailboxTypes;
  v3 = self->_mailboxObjectIDs;
  v4 = [(NSSet *)v11 count];
  v5 = v11;
  if (v4 == 1)
  {
    v5 = [(NSSet *)v11 anyObject];
  }

  v6 = [v5 hash];
  if (v4 == 1)
  {
  }

  excludeTypes = self->_excludeTypes;
  v8 = [(NSSet *)v3 count];
  v9 = v3;
  if (v8 == 1)
  {
    v9 = [(NSSet *)v3 anyObject];
  }

  v10 = [v9 hash];
  if (v8 == 1)
  {
  }

  self->_hash = 33 * (33 * (33 * v6 + excludeTypes) + v10) + self->_excludeMailboxes + 0x17C5D0F85;
}

- (id)cachedSelf
{
  if (cachedSelf_onceToken_1 != -1)
  {
    [EMMailboxScope(EFCacheable) cachedSelf];
  }

  os_unfair_lock_lock(&cachedSelf_sTableLock_1);
  v3 = [cachedSelf_sUniqueObjectIDs_1 ef_uniquedObject:self];
  os_unfair_lock_unlock(&cachedSelf_sTableLock_1);

  return v3;
}

+ (EMMailboxScope)allMailboxesScope
{
  if (allMailboxesScope_onceToken != -1)
  {
    +[EMMailboxScope allMailboxesScope];
  }

  v3 = allMailboxesScope_sMailboxScope;

  return v3;
}

void __35__EMMailboxScope_allMailboxesScope__block_invoke()
{
  v0 = [[_EMSpecialMailboxScope alloc] initWithIdentifier:@"AllMailboxes"];
  v1 = allMailboxesScope_sMailboxScope;
  allMailboxesScope_sMailboxScope = v0;
}

void __34__EMMailboxScope_noMailboxesScope__block_invoke()
{
  v0 = [[_EMSpecialMailboxScope alloc] initWithIdentifier:@"NoMailboxes"];
  v1 = noMailboxesScope_sMailboxScope;
  noMailboxesScope_sMailboxScope = v0;
}

+ (EMMailboxScope)noMailboxesScope
{
  if (noMailboxesScope_onceToken != -1)
  {
    +[EMMailboxScope noMailboxesScope];
  }

  v3 = noMailboxesScope_sMailboxScope;

  return v3;
}

- (EMMailboxScope)initWithMailboxTypes:(id)a3 excludeTypes:(BOOL)a4 mailboxObjectIDs:(id)a5 excludeMailboxes:(BOOL)a6 cached:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a5;
  v22.receiver = self;
  v22.super_class = EMMailboxScope;
  v14 = [(EMMailboxScope *)&v22 init];
  if (v14)
  {
    v15 = [v12 count];
    if (v15)
    {
      v15 = [v12 copy];
    }

    else
    {
      a4 = 0;
    }

    mailboxTypes = v14->_mailboxTypes;
    v14->_mailboxTypes = v15;

    v14->_excludeTypes = a4;
    v17 = [v13 count];
    if (v17)
    {
      v17 = [v13 copy];
    }

    else
    {
      a6 = 0;
    }

    mailboxObjectIDs = v14->_mailboxObjectIDs;
    v14->_mailboxObjectIDs = v17;

    v14->_excludeMailboxes = a6;
    [(EMMailboxScope *)v14 _calculateHash];
  }

  if (v7)
  {
    v19 = [(EMMailboxScope *)v14 cachedSelf];
  }

  else
  {
    v19 = v14;
  }

  v20 = v19;

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v9) = 1;
  }

  else if (([(EMMailboxScope *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    v6 = [(EMMailboxScope *)self mailboxTypes];
    v7 = [(EMMailboxScope *)v5 mailboxTypes];
    if (EFSetsAreEqual() && (v8 = [(EMMailboxScope *)self excludeTypes], v8 == [(EMMailboxScope *)v5 excludeTypes]))
    {
      v10 = [(EMMailboxScope *)self mailboxObjectIDs];
      v11 = [(EMMailboxScope *)v5 mailboxObjectIDs];
      if (EFSetsAreEqual())
      {
        v12 = [(EMMailboxScope *)self excludeMailboxes];
        v9 = v12 ^ [(EMMailboxScope *)v5 excludeMailboxes]^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EMMailboxScope *)self _mailboxTypesDescription];
  v6 = [(EMMailboxScope *)self _mailboxObjectIDsDescription];
  v7 = v6;
  v8 = &stru_1F45FD218;
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = &stru_1F45FD218;
  }

  if (v6)
  {
    v8 = v6;
  }

  v10 = [v3 stringWithFormat:@"%@:%@%@", v4, v9, v8];

  return v10;
}

id __42__EMMailboxScope__mailboxTypesDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 integerValue];
  v3 = ECNSStringFromMailboxMailboxType();

  return v3;
}

- (EMMailboxScope)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = EMMailboxScope;
  v5 = [(EMMailboxScope *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"mailboxTypes"];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v9];
      mailboxTypes = v5->_mailboxTypes;
      v5->_mailboxTypes = v10;
    }

    v5->_excludeTypes = [v4 decodeBoolForKey:@"EFPropertyKey_excludeTypes"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"mailboxObjectIDs"];

    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v15];
      mailboxObjectIDs = v5->_mailboxObjectIDs;
      v5->_mailboxObjectIDs = v16;
    }

    v5->_excludeMailboxes = [v4 decodeBoolForKey:@"EFPropertyKey_excludeMailboxes"];
    [(EMMailboxScope *)v5 _calculateHash];
  }

  v18 = [(EMMailboxScope *)v5 cachedSelf];

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EMMailboxScope *)self mailboxTypes];
  v6 = [v5 allObjects];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];

  [v4 encodeObject:v7 forKey:@"mailboxTypes"];
  [v4 encodeBool:-[EMMailboxScope excludeTypes](self forKey:{"excludeTypes"), @"EFPropertyKey_excludeTypes"}];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"url.absoluteString" ascending:1];
  v9 = [(EMMailboxScope *)self mailboxObjectIDs];
  v13[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11 = [v9 sortedArrayUsingDescriptors:v10];

  [v4 encodeObject:v11 forKey:@"mailboxObjectIDs"];
  [v4 encodeBool:-[EMMailboxScope excludeMailboxes](self forKey:{"excludeMailboxes"), @"EFPropertyKey_excludeMailboxes"}];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)mailboxScopeByAddingMailboxes:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v4 = [(EMMailboxScope *)self mailboxObjectIDs];
  v23 = [v4 mutableCopy];

  v22 = self;
  if ([(EMMailboxScope *)self excludeMailboxes])
  {
    v5 = [v21 ef_mapSelector:sel_objectID];
    [v23 ef_removeObjectsInArray:v5];

    goto LABEL_16;
  }

  v6 = [(EMMailboxScope *)self excludeTypes];
  v7 = [(EMMailboxScope *)self mailboxTypes];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v21;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = *v25;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v24 + 1) + 8 * i);
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "type")}];
      v14 = [v7 containsObject:v13];

      if (v14)
      {
        if (!v6)
        {
          continue;
        }
      }

      else if (v6)
      {
        continue;
      }

      v15 = [v12 objectID];
      [v23 addObject:v15];
    }

    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v9);
LABEL_15:

LABEL_16:
  v16 = [EMMailboxScope alloc];
  v17 = [(EMMailboxScope *)v22 mailboxTypes];
  v18 = [(EMMailboxScope *)v16 initWithMailboxTypes:v17 excludeTypes:[(EMMailboxScope *)v22 excludeTypes] mailboxObjectIDs:v23 excludeMailboxes:[(EMMailboxScope *)v22 excludeMailboxes]];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)mailboxScopeByRemovingMailboxes:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v4 = [(EMMailboxScope *)self mailboxObjectIDs];
  v23 = [v4 mutableCopy];

  v22 = self;
  if ([(EMMailboxScope *)self excludeMailboxes])
  {
    v5 = [(EMMailboxScope *)self excludeTypes];
    v6 = [(EMMailboxScope *)self mailboxTypes];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v21;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = *v25;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "type")}];
        v13 = [v6 containsObject:v12];

        if (v13)
        {
          if (v5)
          {
            continue;
          }
        }

        else if (!v5)
        {
          continue;
        }

        v14 = [v11 objectID];
        [v23 addObject:v14];
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v8)
      {
LABEL_14:

        goto LABEL_16;
      }
    }
  }

  v15 = [v21 ef_mapSelector:sel_objectID];
  [v23 ef_removeObjectsInArray:v15];

LABEL_16:
  v16 = [EMMailboxScope alloc];
  v17 = [(EMMailboxScope *)v22 mailboxTypes];
  v18 = [(EMMailboxScope *)v16 initWithMailboxTypes:v17 excludeTypes:[(EMMailboxScope *)v22 excludeTypes] mailboxObjectIDs:v23 excludeMailboxes:[(EMMailboxScope *)v22 excludeMailboxes]];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)allMailboxObjectIDsWithMailboxTypeResolver:(id)a3 forExclusion:(BOOL *)a4
{
  v6 = a3;
  v7 = [(EMMailboxScope *)self excludeTypes];
  v8 = [(EMMailboxScope *)self excludeMailboxes];
  if (v7 == v8)
  {
    v9 = [(EMMailboxScope *)self _mailboxObjectIDsForTypesWithMailboxTypeResolver:v6];
    if (v9)
    {
      v13 = objc_alloc(MEMORY[0x1E695DFD8]);
      v14 = [(EMMailboxScope *)self mailboxObjectIDs];
      v15 = [v13 initWithObjects:{v9, v14, 0}];

      v12 = [v15 ef_flatten];
    }

    else
    {
      v12 = [(EMMailboxScope *)self mailboxObjectIDs];
    }

    *a4 = v8;
  }

  else
  {
    v9 = [(EMMailboxScope *)self mailboxObjectIDs];
    if (v9)
    {
      v10 = [(EMMailboxScope *)self _mailboxObjectIDsForTypesWithMailboxTypeResolver:v6];
      v11 = v10;
      if (((v10 != 0) & v8) == 1)
      {
        v12 = [v10 mutableCopy];
        [v12 minusSet:v9];
        LOBYTE(v8) = 0;
      }

      else
      {
        v12 = v9;
      }

      *a4 = v8;
    }

    else
    {
      v12 = [(EMMailboxScope *)self _mailboxObjectIDsForTypesWithMailboxTypeResolver:v6];
      *a4 = v7;
    }
  }

  if ([v12 count])
  {
    v16 = v12;
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v17 = v16;

  return v17;
}

- (id)_mailboxObjectIDsForTypesWithMailboxTypeResolver:(id)a3
{
  v4 = a3;
  v5 = [(EMMailboxScope *)self mailboxTypes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__EMMailboxScope__mailboxObjectIDsForTypesWithMailboxTypeResolver___block_invoke;
  v10[3] = &unk_1E826D970;
  v6 = v4;
  v11 = v6;
  v7 = [v5 ef_compactMap:v10];
  v8 = [v7 ef_flatten];

  return v8;
}

id __67__EMMailboxScope__mailboxObjectIDsForTypesWithMailboxTypeResolver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mailboxObjectIDsForMailboxType:{objc_msgSend(v3, "integerValue")}];

  return v4;
}

- (BOOL)scopeContainsMailbox:(id)a3
{
  v4 = a3;
  v5 = [v4 objectID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__EMMailboxScope_scopeContainsMailbox___block_invoke;
  v8[3] = &unk_1E826D998;
  v6 = v4;
  v9 = v6;
  LOBYTE(self) = [(EMMailboxScope *)self _scopeContainsMailboxWithObjectID:v5 mailboxTypeBlock:v8];

  return self;
}

uint64_t __39__EMMailboxScope_scopeContainsMailbox___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) type];

  return [v1 numberWithInteger:v2];
}

- (BOOL)scopeContainsMailboxObjectID:(id)a3 mailboxTypeResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__EMMailboxScope_scopeContainsMailboxObjectID_mailboxTypeResolver___block_invoke;
    v11[3] = &unk_1E826D9C0;
    v12 = v7;
    v13 = v8;
    v9 = [(EMMailboxScope *)self _scopeContainsMailboxWithObjectID:v8 mailboxTypeBlock:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __67__EMMailboxScope_scopeContainsMailboxObjectID_mailboxTypeResolver___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mailboxTypeForMailboxObjectID:*(a1 + 40)];
  v2 = MEMORY[0x1E696AD98];

  return [v2 numberWithInteger:v1];
}

- (BOOL)_scopeContainsMailboxWithObjectID:(id)a3 mailboxTypeBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EMMailboxScope *)self mailboxObjectIDs];
  v9 = [(EMMailboxScope *)self mailboxTypes];
  v10 = v9;
  if (!v8)
  {
    if (!v9)
    {
      LOBYTE(self) = 0;
      goto LABEL_9;
    }

LABEL_7:
    v11 = [(EMMailboxScope *)self excludeTypes];
    v12 = [(EMMailboxScope *)self mailboxTypes];
    v13 = v7[2](v7);
    LODWORD(self) = v11 ^ [v12 containsObject:v13];

    goto LABEL_9;
  }

  if (![v8 containsObject:v6])
  {
    if (!v10)
    {
      LOBYTE(self) = [(EMMailboxScope *)self excludeMailboxes];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  LODWORD(self) = ![(EMMailboxScope *)self excludeMailboxes];
LABEL_9:

  return self;
}

- (BOOL)containsOnlyInboxType
{
  if ([(EMMailboxScope *)self excludeTypes])
  {
    return 0;
  }

  v4 = [(EMMailboxScope *)self mailboxTypes];
  if ([v4 count] == 1)
  {
    v5 = [(EMMailboxScope *)self mailboxTypes];
    v6 = [v5 anyObject];
    v3 = [v6 integerValue] == 7;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end