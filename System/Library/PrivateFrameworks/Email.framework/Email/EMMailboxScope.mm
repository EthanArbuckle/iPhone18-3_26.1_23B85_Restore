@interface EMMailboxScope
+ (EMMailboxScope)allMailboxesScope;
+ (EMMailboxScope)noMailboxesScope;
- (BOOL)_scopeContainsMailboxWithObjectID:(id)d mailboxTypeBlock:(id)block;
- (BOOL)containsOnlyInboxType;
- (BOOL)isEqual:(id)equal;
- (BOOL)scopeContainsMailbox:(id)mailbox;
- (BOOL)scopeContainsMailboxObjectID:(id)d mailboxTypeResolver:(id)resolver;
- (EMMailboxScope)initWithCoder:(id)coder;
- (EMMailboxScope)initWithMailboxTypes:(id)types excludeTypes:(BOOL)excludeTypes mailboxObjectIDs:(id)ds excludeMailboxes:(BOOL)mailboxes cached:(BOOL)cached;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (id)_mailboxObjectIDsDescription;
- (id)_mailboxObjectIDsForTypesWithMailboxTypeResolver:(id)resolver;
- (id)_mailboxTypesDescription;
- (id)allMailboxObjectIDsWithMailboxTypeResolver:(id)resolver forExclusion:(BOOL *)exclusion;
- (id)cachedSelf;
- (id)mailboxScopeByAddingMailboxes:(id)mailboxes;
- (id)mailboxScopeByRemovingMailboxes:(id)mailboxes;
- (void)_calculateHash;
- (void)encodeWithCoder:(id)coder;
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
  _mailboxTypesDescription = [(EMMailboxScope *)self _mailboxTypesDescription];
  _mailboxObjectIDsDescription = [(EMMailboxScope *)self _mailboxObjectIDsDescription];
  v7 = _mailboxObjectIDsDescription;
  v8 = &stru_1F45FD218;
  if (_mailboxTypesDescription)
  {
    v9 = _mailboxTypesDescription;
  }

  else
  {
    v9 = &stru_1F45FD218;
  }

  if (_mailboxObjectIDsDescription)
  {
    v8 = _mailboxObjectIDsDescription;
  }

  v10 = [v3 stringWithFormat:@"%@:%@%@", v4, v9, v8];

  return v10;
}

- (id)_mailboxTypesDescription
{
  mailboxTypes = [(EMMailboxScope *)self mailboxTypes];
  v4 = [mailboxTypes ef_compactMap:&__block_literal_global_77];
  allObjects = [v4 allObjects];
  v6 = [allObjects componentsJoinedByString:{@", "}];

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

  mailboxObjectIDs = [(EMMailboxScope *)self mailboxObjectIDs];
  v6 = [mailboxObjectIDs count];
  mailboxObjectIDs2 = [(EMMailboxScope *)self mailboxObjectIDs];
  v8 = [v3 stringWithFormat:@" %@ mailboxes: %ld <%p>", v4, v6, objc_msgSend(mailboxObjectIDs2, "hash")];

  return v8;
}

- (void)_calculateHash
{
  v11 = self->_mailboxTypes;
  v3 = self->_mailboxObjectIDs;
  v4 = [(NSSet *)v11 count];
  anyObject = v11;
  if (v4 == 1)
  {
    anyObject = [(NSSet *)v11 anyObject];
  }

  v6 = [anyObject hash];
  if (v4 == 1)
  {
  }

  excludeTypes = self->_excludeTypes;
  v8 = [(NSSet *)v3 count];
  anyObject2 = v3;
  if (v8 == 1)
  {
    anyObject2 = [(NSSet *)v3 anyObject];
  }

  v10 = [anyObject2 hash];
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

- (EMMailboxScope)initWithMailboxTypes:(id)types excludeTypes:(BOOL)excludeTypes mailboxObjectIDs:(id)ds excludeMailboxes:(BOOL)mailboxes cached:(BOOL)cached
{
  cachedCopy = cached;
  typesCopy = types;
  dsCopy = ds;
  v22.receiver = self;
  v22.super_class = EMMailboxScope;
  v14 = [(EMMailboxScope *)&v22 init];
  if (v14)
  {
    v15 = [typesCopy count];
    if (v15)
    {
      v15 = [typesCopy copy];
    }

    else
    {
      excludeTypes = 0;
    }

    mailboxTypes = v14->_mailboxTypes;
    v14->_mailboxTypes = v15;

    v14->_excludeTypes = excludeTypes;
    v17 = [dsCopy count];
    if (v17)
    {
      v17 = [dsCopy copy];
    }

    else
    {
      mailboxes = 0;
    }

    mailboxObjectIDs = v14->_mailboxObjectIDs;
    v14->_mailboxObjectIDs = v17;

    v14->_excludeMailboxes = mailboxes;
    [(EMMailboxScope *)v14 _calculateHash];
  }

  if (cachedCopy)
  {
    cachedSelf = [(EMMailboxScope *)v14 cachedSelf];
  }

  else
  {
    cachedSelf = v14;
  }

  v20 = cachedSelf;

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v9) = 1;
  }

  else if (([(EMMailboxScope *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    mailboxTypes = [(EMMailboxScope *)self mailboxTypes];
    mailboxTypes2 = [(EMMailboxScope *)v5 mailboxTypes];
    if (EFSetsAreEqual() && (v8 = [(EMMailboxScope *)self excludeTypes], v8 == [(EMMailboxScope *)v5 excludeTypes]))
    {
      mailboxObjectIDs = [(EMMailboxScope *)self mailboxObjectIDs];
      mailboxObjectIDs2 = [(EMMailboxScope *)v5 mailboxObjectIDs];
      if (EFSetsAreEqual())
      {
        excludeMailboxes = [(EMMailboxScope *)self excludeMailboxes];
        v9 = excludeMailboxes ^ [(EMMailboxScope *)v5 excludeMailboxes]^ 1;
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
  _mailboxTypesDescription = [(EMMailboxScope *)self _mailboxTypesDescription];
  _mailboxObjectIDsDescription = [(EMMailboxScope *)self _mailboxObjectIDsDescription];
  v7 = _mailboxObjectIDsDescription;
  v8 = &stru_1F45FD218;
  if (_mailboxTypesDescription)
  {
    v9 = _mailboxTypesDescription;
  }

  else
  {
    v9 = &stru_1F45FD218;
  }

  if (_mailboxObjectIDsDescription)
  {
    v8 = _mailboxObjectIDsDescription;
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

- (EMMailboxScope)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = EMMailboxScope;
  v5 = [(EMMailboxScope *)&v20 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"mailboxTypes"];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v9];
      mailboxTypes = v5->_mailboxTypes;
      v5->_mailboxTypes = v10;
    }

    v5->_excludeTypes = [coderCopy decodeBoolForKey:@"EFPropertyKey_excludeTypes"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"mailboxObjectIDs"];

    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v15];
      mailboxObjectIDs = v5->_mailboxObjectIDs;
      v5->_mailboxObjectIDs = v16;
    }

    v5->_excludeMailboxes = [coderCopy decodeBoolForKey:@"EFPropertyKey_excludeMailboxes"];
    [(EMMailboxScope *)v5 _calculateHash];
  }

  cachedSelf = [(EMMailboxScope *)v5 cachedSelf];

  return cachedSelf;
}

- (void)encodeWithCoder:(id)coder
{
  v13[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  mailboxTypes = [(EMMailboxScope *)self mailboxTypes];
  allObjects = [mailboxTypes allObjects];
  v7 = [allObjects sortedArrayUsingSelector:sel_compare_];

  [coderCopy encodeObject:v7 forKey:@"mailboxTypes"];
  [coderCopy encodeBool:-[EMMailboxScope excludeTypes](self forKey:{"excludeTypes"), @"EFPropertyKey_excludeTypes"}];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"url.absoluteString" ascending:1];
  mailboxObjectIDs = [(EMMailboxScope *)self mailboxObjectIDs];
  v13[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11 = [mailboxObjectIDs sortedArrayUsingDescriptors:v10];

  [coderCopy encodeObject:v11 forKey:@"mailboxObjectIDs"];
  [coderCopy encodeBool:-[EMMailboxScope excludeMailboxes](self forKey:{"excludeMailboxes"), @"EFPropertyKey_excludeMailboxes"}];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)mailboxScopeByAddingMailboxes:(id)mailboxes
{
  v29 = *MEMORY[0x1E69E9840];
  mailboxesCopy = mailboxes;
  mailboxObjectIDs = [(EMMailboxScope *)self mailboxObjectIDs];
  v23 = [mailboxObjectIDs mutableCopy];

  selfCopy = self;
  if ([(EMMailboxScope *)self excludeMailboxes])
  {
    v5 = [mailboxesCopy ef_mapSelector:sel_objectID];
    [v23 ef_removeObjectsInArray:v5];

    goto LABEL_16;
  }

  excludeTypes = [(EMMailboxScope *)self excludeTypes];
  mailboxTypes = [(EMMailboxScope *)self mailboxTypes];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = mailboxesCopy;
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
      v14 = [mailboxTypes containsObject:v13];

      if (v14)
      {
        if (!excludeTypes)
        {
          continue;
        }
      }

      else if (excludeTypes)
      {
        continue;
      }

      objectID = [v12 objectID];
      [v23 addObject:objectID];
    }

    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v9);
LABEL_15:

LABEL_16:
  v16 = [EMMailboxScope alloc];
  mailboxTypes2 = [(EMMailboxScope *)selfCopy mailboxTypes];
  v18 = [(EMMailboxScope *)v16 initWithMailboxTypes:mailboxTypes2 excludeTypes:[(EMMailboxScope *)selfCopy excludeTypes] mailboxObjectIDs:v23 excludeMailboxes:[(EMMailboxScope *)selfCopy excludeMailboxes]];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)mailboxScopeByRemovingMailboxes:(id)mailboxes
{
  v29 = *MEMORY[0x1E69E9840];
  mailboxesCopy = mailboxes;
  mailboxObjectIDs = [(EMMailboxScope *)self mailboxObjectIDs];
  v23 = [mailboxObjectIDs mutableCopy];

  selfCopy = self;
  if ([(EMMailboxScope *)self excludeMailboxes])
  {
    excludeTypes = [(EMMailboxScope *)self excludeTypes];
    mailboxTypes = [(EMMailboxScope *)self mailboxTypes];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = mailboxesCopy;
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
        v13 = [mailboxTypes containsObject:v12];

        if (v13)
        {
          if (excludeTypes)
          {
            continue;
          }
        }

        else if (!excludeTypes)
        {
          continue;
        }

        objectID = [v11 objectID];
        [v23 addObject:objectID];
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v8)
      {
LABEL_14:

        goto LABEL_16;
      }
    }
  }

  v15 = [mailboxesCopy ef_mapSelector:sel_objectID];
  [v23 ef_removeObjectsInArray:v15];

LABEL_16:
  v16 = [EMMailboxScope alloc];
  mailboxTypes2 = [(EMMailboxScope *)selfCopy mailboxTypes];
  v18 = [(EMMailboxScope *)v16 initWithMailboxTypes:mailboxTypes2 excludeTypes:[(EMMailboxScope *)selfCopy excludeTypes] mailboxObjectIDs:v23 excludeMailboxes:[(EMMailboxScope *)selfCopy excludeMailboxes]];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)allMailboxObjectIDsWithMailboxTypeResolver:(id)resolver forExclusion:(BOOL *)exclusion
{
  resolverCopy = resolver;
  excludeTypes = [(EMMailboxScope *)self excludeTypes];
  excludeMailboxes = [(EMMailboxScope *)self excludeMailboxes];
  if (excludeTypes == excludeMailboxes)
  {
    mailboxObjectIDs2 = [(EMMailboxScope *)self _mailboxObjectIDsForTypesWithMailboxTypeResolver:resolverCopy];
    if (mailboxObjectIDs2)
    {
      v13 = objc_alloc(MEMORY[0x1E695DFD8]);
      mailboxObjectIDs = [(EMMailboxScope *)self mailboxObjectIDs];
      v15 = [v13 initWithObjects:{mailboxObjectIDs2, mailboxObjectIDs, 0}];

      ef_flatten = [v15 ef_flatten];
    }

    else
    {
      ef_flatten = [(EMMailboxScope *)self mailboxObjectIDs];
    }

    *exclusion = excludeMailboxes;
  }

  else
  {
    mailboxObjectIDs2 = [(EMMailboxScope *)self mailboxObjectIDs];
    if (mailboxObjectIDs2)
    {
      v10 = [(EMMailboxScope *)self _mailboxObjectIDsForTypesWithMailboxTypeResolver:resolverCopy];
      v11 = v10;
      if (((v10 != 0) & excludeMailboxes) == 1)
      {
        ef_flatten = [v10 mutableCopy];
        [ef_flatten minusSet:mailboxObjectIDs2];
        LOBYTE(excludeMailboxes) = 0;
      }

      else
      {
        ef_flatten = mailboxObjectIDs2;
      }

      *exclusion = excludeMailboxes;
    }

    else
    {
      ef_flatten = [(EMMailboxScope *)self _mailboxObjectIDsForTypesWithMailboxTypeResolver:resolverCopy];
      *exclusion = excludeTypes;
    }
  }

  if ([ef_flatten count])
  {
    v16 = ef_flatten;
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v17 = v16;

  return v17;
}

- (id)_mailboxObjectIDsForTypesWithMailboxTypeResolver:(id)resolver
{
  resolverCopy = resolver;
  mailboxTypes = [(EMMailboxScope *)self mailboxTypes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__EMMailboxScope__mailboxObjectIDsForTypesWithMailboxTypeResolver___block_invoke;
  v10[3] = &unk_1E826D970;
  v6 = resolverCopy;
  v11 = v6;
  v7 = [mailboxTypes ef_compactMap:v10];
  ef_flatten = [v7 ef_flatten];

  return ef_flatten;
}

id __67__EMMailboxScope__mailboxObjectIDsForTypesWithMailboxTypeResolver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mailboxObjectIDsForMailboxType:{objc_msgSend(v3, "integerValue")}];

  return v4;
}

- (BOOL)scopeContainsMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  objectID = [mailboxCopy objectID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__EMMailboxScope_scopeContainsMailbox___block_invoke;
  v8[3] = &unk_1E826D998;
  v6 = mailboxCopy;
  v9 = v6;
  LOBYTE(self) = [(EMMailboxScope *)self _scopeContainsMailboxWithObjectID:objectID mailboxTypeBlock:v8];

  return self;
}

uint64_t __39__EMMailboxScope_scopeContainsMailbox___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) type];

  return [v1 numberWithInteger:v2];
}

- (BOOL)scopeContainsMailboxObjectID:(id)d mailboxTypeResolver:(id)resolver
{
  dCopy = d;
  resolverCopy = resolver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = dCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__EMMailboxScope_scopeContainsMailboxObjectID_mailboxTypeResolver___block_invoke;
    v11[3] = &unk_1E826D9C0;
    v12 = resolverCopy;
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

- (BOOL)_scopeContainsMailboxWithObjectID:(id)d mailboxTypeBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  mailboxObjectIDs = [(EMMailboxScope *)self mailboxObjectIDs];
  mailboxTypes = [(EMMailboxScope *)self mailboxTypes];
  v10 = mailboxTypes;
  if (!mailboxObjectIDs)
  {
    if (!mailboxTypes)
    {
      LOBYTE(self) = 0;
      goto LABEL_9;
    }

LABEL_7:
    excludeTypes = [(EMMailboxScope *)self excludeTypes];
    mailboxTypes2 = [(EMMailboxScope *)self mailboxTypes];
    v13 = blockCopy[2](blockCopy);
    LODWORD(self) = excludeTypes ^ [mailboxTypes2 containsObject:v13];

    goto LABEL_9;
  }

  if (![mailboxObjectIDs containsObject:dCopy])
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

  mailboxTypes = [(EMMailboxScope *)self mailboxTypes];
  if ([mailboxTypes count] == 1)
  {
    mailboxTypes2 = [(EMMailboxScope *)self mailboxTypes];
    anyObject = [mailboxTypes2 anyObject];
    v3 = [anyObject integerValue] == 7;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end