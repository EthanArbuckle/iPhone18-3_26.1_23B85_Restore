@interface _EMSpecialMailboxScope
- (BOOL)isEqual:(id)equal;
- (BOOL)scopeContainsMailbox:(id)mailbox;
- (BOOL)scopeContainsMailboxObjectID:(id)d mailboxTypeResolver:(id)resolver;
- (_EMSpecialMailboxScope)initWithCoder:(id)coder;
- (_EMSpecialMailboxScope)initWithIdentifier:(id)identifier;
- (id)allMailboxObjectIDsWithMailboxTypeResolver:(id)resolver forExclusion:(BOOL *)exclusion;
- (id)cachedSelf;
- (id)ef_publicDescription;
- (id)mailboxScopeByAddingMailboxes:(id)mailboxes;
- (id)mailboxScopeByRemovingMailboxes:(id)mailboxes;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  identifier = [(_EMSpecialMailboxScope *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(_EMSpecialMailboxScope *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, identifier];

  return v6;
}

- (_EMSpecialMailboxScope)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = _EMSpecialMailboxScope;
  v5 = [(EMMailboxScope *)&v10 initWithMailboxTypes:0 excludeTypes:0 mailboxObjectIDs:0 excludeMailboxes:0 cached:0];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  cachedSelf = [(_EMSpecialMailboxScope *)v5 cachedSelf];

  return cachedSelf;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(_EMSpecialMailboxScope *)self identifier];
      identifier2 = [(_EMSpecialMailboxScope *)equalCopy identifier];
      v7 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (_EMSpecialMailboxScope)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  selfCopy2 = self;
  v5 = coderCopy;
  v6 = EFDecodeCacheableInstance();

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = coderCopy;
  EFEncodeCacheableInstance();
}

- (id)mailboxScopeByAddingMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  identifier = [(_EMSpecialMailboxScope *)self identifier];
  v6 = [identifier isEqualToString:@"AllMailboxes"];

  if (v6)
  {
    selfCopy = self;
  }

  else
  {
    v8 = [mailboxesCopy ef_mapSelector:sel_objectID];
    selfCopy = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v8 forExclusion:0];
  }

  return selfCopy;
}

- (id)mailboxScopeByRemovingMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  identifier = [(_EMSpecialMailboxScope *)self identifier];
  v6 = [identifier isEqualToString:@"AllMailboxes"];

  if (v6)
  {
    v7 = [mailboxesCopy ef_mapSelector:sel_objectID];
    selfCopy = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v7 forExclusion:1];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)allMailboxObjectIDsWithMailboxTypeResolver:(id)resolver forExclusion:(BOOL *)exclusion
{
  resolverCopy = resolver;
  *exclusion = 0;
  identifier = [(_EMSpecialMailboxScope *)self identifier];
  LODWORD(self) = [identifier isEqualToString:@"AllMailboxes"];

  if (self)
  {
    allMailboxObjectIDs = [resolverCopy allMailboxObjectIDs];
  }

  else
  {
    allMailboxObjectIDs = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v9 = allMailboxObjectIDs;

  return v9;
}

- (BOOL)scopeContainsMailbox:(id)mailbox
{
  identifier = [(_EMSpecialMailboxScope *)self identifier];
  v4 = [identifier isEqualToString:@"AllMailboxes"];

  return v4;
}

- (BOOL)scopeContainsMailboxObjectID:(id)d mailboxTypeResolver:(id)resolver
{
  v4 = [(_EMSpecialMailboxScope *)self identifier:d];
  v5 = [v4 isEqualToString:@"AllMailboxes"];

  return v5;
}

@end