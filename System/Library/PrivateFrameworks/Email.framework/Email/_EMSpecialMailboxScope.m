@interface _EMSpecialMailboxScope
- (BOOL)isEqual:(id)a3;
- (BOOL)scopeContainsMailbox:(id)a3;
- (BOOL)scopeContainsMailboxObjectID:(id)a3 mailboxTypeResolver:(id)a4;
- (_EMSpecialMailboxScope)initWithCoder:(id)a3;
- (_EMSpecialMailboxScope)initWithIdentifier:(id)a3;
- (id)allMailboxObjectIDsWithMailboxTypeResolver:(id)a3 forExclusion:(BOOL *)a4;
- (id)cachedSelf;
- (id)ef_publicDescription;
- (id)mailboxScopeByAddingMailboxes:(id)a3;
- (id)mailboxScopeByRemovingMailboxes:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _EMSpecialMailboxScope

- (id)cachedSelf
{
  if (cachedSelf_onceToken_54 != -1)
  {
    [_EMSpecialMailboxScope(EFCacheable) cachedSelf];
  }

  os_unfair_lock_lock(&cachedSelf_sTableLock_52);
  v3 = [cachedSelf_sUniqueObjectIDs_53 ef_uniquedObject:self];
  os_unfair_lock_unlock(&cachedSelf_sTableLock_52);

  return v3;
}

- (unint64_t)hash
{
  v2 = [(_EMSpecialMailboxScope *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_EMSpecialMailboxScope *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (_EMSpecialMailboxScope)initWithIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _EMSpecialMailboxScope;
  v5 = [(EMMailboxScope *)&v10 initWithMailboxTypes:0 excludeTypes:0 mailboxObjectIDs:0 excludeMailboxes:0 cached:0];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  v8 = [(_EMSpecialMailboxScope *)v5 cachedSelf];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_EMSpecialMailboxScope *)self identifier];
      v6 = [(_EMSpecialMailboxScope *)v4 identifier];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (_EMSpecialMailboxScope)initWithCoder:(id)a3
{
  v8 = a3;
  v9 = self;
  v4 = self;
  v5 = v8;
  v6 = EFDecodeCacheableInstance();

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v3 = v4;
  EFEncodeCacheableInstance();
}

- (id)mailboxScopeByAddingMailboxes:(id)a3
{
  v4 = a3;
  v5 = [(_EMSpecialMailboxScope *)self identifier];
  v6 = [v5 isEqualToString:@"AllMailboxes"];

  if (v6)
  {
    v7 = self;
  }

  else
  {
    v8 = [v4 ef_mapSelector:sel_objectID];
    v7 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v8 forExclusion:0];
  }

  return v7;
}

- (id)mailboxScopeByRemovingMailboxes:(id)a3
{
  v4 = a3;
  v5 = [(_EMSpecialMailboxScope *)self identifier];
  v6 = [v5 isEqualToString:@"AllMailboxes"];

  if (v6)
  {
    v7 = [v4 ef_mapSelector:sel_objectID];
    v8 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v7 forExclusion:1];
  }

  else
  {
    v8 = self;
  }

  return v8;
}

- (id)allMailboxObjectIDsWithMailboxTypeResolver:(id)a3 forExclusion:(BOOL *)a4
{
  v6 = a3;
  *a4 = 0;
  v7 = [(_EMSpecialMailboxScope *)self identifier];
  LODWORD(self) = [v7 isEqualToString:@"AllMailboxes"];

  if (self)
  {
    v8 = [v6 allMailboxObjectIDs];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v9 = v8;

  return v9;
}

- (BOOL)scopeContainsMailbox:(id)a3
{
  v3 = [(_EMSpecialMailboxScope *)self identifier];
  v4 = [v3 isEqualToString:@"AllMailboxes"];

  return v4;
}

- (BOOL)scopeContainsMailboxObjectID:(id)a3 mailboxTypeResolver:(id)a4
{
  v4 = [(_EMSpecialMailboxScope *)self identifier:a3];
  v5 = [v4 isEqualToString:@"AllMailboxes"];

  return v5;
}

@end