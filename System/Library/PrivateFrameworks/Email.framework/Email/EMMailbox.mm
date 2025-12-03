@interface EMMailbox
+ (BOOL)deleteMovesToTrashForMailboxes:(id)mailboxes;
+ (BOOL)shouldArchiveByDefaultForMailboxes:(id)mailboxes;
+ (BOOL)supportsArchivingForMailboxes:(id)mailboxes;
+ (BOOL)supportsSelectAllForMailboxes:(id)mailboxes;
+ (BOOL)typeIsValidTransferDestination:(int64_t)destination;
+ (id)predicateForMailboxAccount:(id)account;
+ (id)predicateForMailboxAccount:(id)account topLevelOnly:(BOOL)only;
+ (id)predicateForMailboxAccountIdentifier:(id)identifier topLevelOnly:(BOOL)only;
+ (id)predicateForMailboxChildren:(id)children;
+ (id)predicateForMailboxName:(id)name;
+ (id)predicateForMailboxType:(int64_t)type;
+ (id)predicateForPrimaryMailboxWithAccount:(id)account;
+ (id)predicateForTopLevelMailboxes;
- (BOOL)_hasFetchedAccount;
- (BOOL)_shouldArchiveByDefault;
- (BOOL)isOutgoingMailbox;
- (BOOL)isSendLaterMailbox;
- (BOOL)isTopLevelMailbox;
- (BOOL)shouldArchiveByDefault;
- (EMMailbox)initWithCoder:(id)coder;
- (EMMailbox)initWithObjectID:(id)d;
- (EMMailbox)initWithObjectID:(id)d repository:(id)repository name:(id)name accountIdentifier:(id)identifier type:(int64_t)type builder:(id)builder;
- (EMMailbox)parent;
- (EMMailboxObjectID)parentID;
- (EMMailboxRepository)repository;
- (EMReceivingAccount)account;
- (EMReceivingAccount)accountIfAvailable;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (NSURL)externalURL;
- (id)_shouldArchiveByDefaultString;
- (void)_commonInitName:(id)name accountIdentifier:(id)identifier type:(int64_t)type canContainMessages:(BOOL)messages children:(id)children parentID:(id)d builder:(id)builder;
- (void)encodeWithCoder:(id)coder;
- (void)setParentFromMailboxes:(id)mailboxes;
- (void)setRepository:(id)repository;
@end

@implementation EMMailbox

- (EMMailboxObjectID)parentID
{
  parent = [(EMMailbox *)self parent];
  v4 = parent;
  if (parent)
  {
    objectID = [parent objectID];
  }

  else
  {
    objectID = self->_parentID;
  }

  v6 = objectID;

  return v6;
}

- (EMMailbox)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (EMMailboxRepository)repository
{
  v7.receiver = self;
  v7.super_class = EMMailbox;
  repository = [(EMRepositoryObject *)&v7 repository];
  if (repository)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EMMailbox.m" lineNumber:87 description:@"Wrong repository type"];
    }
  }

  return repository;
}

- (BOOL)isOutgoingMailbox
{
  if ([EMMailbox _isOutgoingMailboxType:[(EMMailbox *)self type]])
  {
    return 1;
  }

  return [(EMMailbox *)self isSendLaterMailbox];
}

- (BOOL)isSendLaterMailbox
{
  name = [(EMMailbox *)self name];
  v3 = [name isEqualToString:@"x-apple-send-later"];

  return v3;
}

- (NSString)ef_publicDescription
{
  descriptionUsesRealName = [(EMMailbox *)self descriptionUsesRealName];
  objectID = [(EMObject *)self objectID];
  v5 = objectID;
  if (descriptionUsesRealName)
  {
    v6 = [objectID debugDescription];

    name = [(EMMailbox *)self name];
  }

  else
  {
    v6 = [objectID description];

    v8 = MEMORY[0x1E699B858];
    name2 = [(EMMailbox *)self name];
    name = [v8 fullyOrPartiallyRedactedStringForString:name2];
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  [(EMMailbox *)self type];
  v12 = ECNSStringFromMailboxMailboxType();
  [(EMMailbox *)self canArchive];
  v13 = NSStringFromBOOL();
  _shouldArchiveByDefaultString = [(EMMailbox *)self _shouldArchiveByDefaultString];
  v15 = [v10 stringWithFormat:@"<%@: %p> ObjectID:%@ Name:%@ Type:%@ CanArchive:%@ ShouldArchive:%@", v11, self, v6, name, v12, v13, _shouldArchiveByDefaultString];

  return v15;
}

- (id)_shouldArchiveByDefaultString
{
  v3 = [(EMMailbox *)self _canArchiveForMailboxType:[(EMMailbox *)self type]];
  _hasFetchedAccount = [(EMMailbox *)self _hasFetchedAccount];
  v5 = @"?";
  if (v3 && _hasFetchedAccount)
  {
    [(EMMailbox *)self shouldArchiveByDefault];
    v5 = NSStringFromBOOL();
  }

  return v5;
}

- (BOOL)_hasFetchedAccount
{
  os_unfair_lock_lock(&self->_accountLock);
  v3 = self->_account != 0;
  os_unfair_lock_unlock(&self->_accountLock);
  return v3;
}

- (EMReceivingAccount)account
{
  os_unfair_lock_lock(&self->_accountLock);
  accountIdentifier = [(EMMailbox *)self accountIdentifier];
  if (accountIdentifier)
  {
    account = self->_account;

    if (!account)
    {
      repository = [(EMMailbox *)self repository];
      accountRepository = [repository accountRepository];
      accountIdentifier2 = [(EMMailbox *)self accountIdentifier];
      v8 = [accountRepository accountForIdentifier:accountIdentifier2];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      objc_storeStrong(&self->_account, v9);
    }
  }

  v10 = self->_account;
  os_unfair_lock_unlock(&self->_accountLock);

  return v10;
}

- (NSURL)externalURL
{
  selfCopy = self;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (selfCopy)
  {
    v4 = selfCopy;
    do
    {
      if ([v4 type] == 8)
      {
        break;
      }

      name = [v4 name];
      [v3 insertObject:name atIndex:0];

      parent = [v4 parent];

      v4 = parent;
    }

    while (parent);
  }

  else
  {
    v4 = 0;
  }

  if ([v3 count])
  {
    account = [(EMMailbox *)selfCopy account];
    identityEmailAddress = [account identityEmailAddress];

    v9 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v9 setScheme:@"x-apple-mail-mailbox"];
    if (identityEmailAddress)
    {
      localPart = [identityEmailAddress localPart];
      [v9 setUser:localPart];

      domain = [identityEmailAddress domain];
      [v9 setHost:domain];
    }

    v12 = [MEMORY[0x1E696AEC0] pathWithComponents:v3];
    v13 = [@"/" stringByAppendingPathComponent:v12];
    [v9 setPath:v13];

    v14 = [v9 URL];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (EMReceivingAccount)accountIfAvailable
{
  os_unfair_lock_lock(&self->_accountLock);
  v3 = self->_account;
  os_unfair_lock_unlock(&self->_accountLock);

  return v3;
}

+ (BOOL)deleteMovesToTrashForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  if ([mailboxesCopy count])
  {
    v4 = [mailboxesCopy ef_all:&__block_literal_global_23];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __63__EMMailbox_TriageInteraction__deleteMovesToTrashForMailboxes___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] != 3 && objc_msgSend(v2, "type") != 1;

  return v3;
}

+ (BOOL)supportsArchivingForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  if ([mailboxesCopy count])
  {
    v4 = [mailboxesCopy ef_any:&__block_literal_global_2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)shouldArchiveByDefaultForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  if ([mailboxesCopy count])
  {
    v4 = [mailboxesCopy ef_any:&__block_literal_global_4_0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)supportsSelectAllForMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  if ([mailboxesCopy count])
  {
    v4 = [mailboxesCopy ef_all:&__block_literal_global_6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (EMMailbox)initWithObjectID:(id)d
{
  dCopy = d;
  [(EMMailbox *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMMailbox initWithObjectID:]", "EMMailbox.m", 47, "0");
}

- (EMMailbox)initWithObjectID:(id)d repository:(id)repository name:(id)name accountIdentifier:(id)identifier type:(int64_t)type builder:(id)builder
{
  dCopy = d;
  repositoryCopy = repository;
  nameCopy = name;
  identifierCopy = identifier;
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMMailbox.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v24.receiver = self;
  v24.super_class = EMMailbox;
  v20 = [(EMObject *)&v24 initWithObjectID:dCopy];
  v21 = v20;
  if (v20)
  {
    v20->_accountLock._os_unfair_lock_opaque = 0;
    [(EMMailbox *)v20 setRepository:repositoryCopy];
    [(EMMailbox *)v21 _commonInitName:nameCopy accountIdentifier:identifierCopy type:type canContainMessages:0 children:0 parentID:0 builder:builderCopy];
  }

  return v21;
}

- (void)_commonInitName:(id)name accountIdentifier:(id)identifier type:(int64_t)type canContainMessages:(BOOL)messages children:(id)children parentID:(id)d builder:(id)builder
{
  nameCopy = name;
  identifierCopy = identifier;
  childrenCopy = children;
  dCopy = d;
  builderCopy = builder;
  objc_storeStrong(&self->_name, name);
  objc_storeStrong(&self->_accountIdentifier, identifier);
  self->_type = type;
  self->_canContainMessages = messages;
  self->_canArchive = [(EMMailbox *)self _canArchiveForMailboxType:type];
  objc_storeStrong(&self->_children, children);
  objc_storeStrong(&self->_parentID, d);
  builderCopy[2](builderCopy, self);
  if (!self->_children)
  {
    v19 = [EMMailboxCollection alloc];
    repository = [(EMMailbox *)self repository];
    v21 = [(EMMailboxCollection *)v19 initWithMailbox:self repository:repository];
    children = self->_children;
    self->_children = v21;
  }
}

- (void)setRepository:(id)repository
{
  repositoryCopy = repository;
  if (repositoryCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EMMailbox.m" lineNumber:92 description:@"Wrong repository type"];
    }
  }

  v8.receiver = self;
  v8.super_class = EMMailbox;
  [(EMRepositoryObject *)&v8 setRepository:repositoryCopy];
  children = [(EMMailbox *)self children];
  [children setRepository:repositoryCopy];
}

- (void)setParentFromMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  parentID = [(EMMailbox *)self parentID];
  parent = [(EMMailbox *)self parent];

  if (!parent)
  {
    if (parentID)
    {
      v7 = [mailboxesCopy objectForKey:parentID];
      [(EMMailbox *)self setParent:v7];

      parent2 = [(EMMailbox *)self parent];

      if (!parent2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"EMMailbox.m" lineNumber:123 description:{@"failed to set parent mailbox with id:%@", parentID}];
      }
    }
  }

  parentID = self->_parentID;
  self->_parentID = 0;
}

- (BOOL)isTopLevelMailbox
{
  parent = [(EMMailbox *)self parent];
  v3 = parent;
  if (parent)
  {
    v4 = [parent type] == 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)typeIsValidTransferDestination:(int64_t)destination
{
  v4 = [self _isOutgoingMailboxType:?];
  v5 = destination != 8;
  if (destination == -100)
  {
    v5 = 0;
  }

  if (destination == -500)
  {
    v5 = 0;
  }

  return (v4 & 1) == 0 && v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(EMObject *)self objectID];
  v6 = [objectID debugDescription];
  name = [(EMMailbox *)self name];
  [(EMMailbox *)self type];
  v8 = ECNSStringFromMailboxMailboxType();
  [(EMMailbox *)self canArchive];
  v9 = NSStringFromBOOL();
  _shouldArchiveByDefaultString = [(EMMailbox *)self _shouldArchiveByDefaultString];
  v11 = [v3 stringWithFormat:@"<%@: %p> ObjectID:%@ Name:%@ Type:%@ CanArchive:%@ ShouldArchive:%@", v4, self, v6, name, v8, v9, _shouldArchiveByDefaultString];

  return v11;
}

- (EMMailbox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = EMMailbox;
  v5 = [(EMObject *)&v17 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v5->_accountLock._os_unfair_lock_opaque = 0;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_name"];
    v8 = v7;
    v9 = &stru_1F45FD218;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_accountIdentifier"];
    v12 = [coderCopy decodeIntegerForKey:@"EFPropertyKey_type"];
    v13 = [coderCopy decodeBoolForKey:@"EFPropertyKey_canContainMessages"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_children"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_parentID"];
    [(EMMailbox *)v6 _commonInitName:v10 accountIdentifier:v11 type:v12 canContainMessages:v13 children:v14 parentID:v15 builder:&__block_literal_global_24];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EMMailbox;
  [(EMObject *)&v9 encodeWithCoder:coderCopy];
  name = [(EMMailbox *)self name];
  [coderCopy encodeObject:name forKey:@"EFPropertyKey_name"];

  accountIdentifier = [(EMMailbox *)self accountIdentifier];
  [coderCopy encodeObject:accountIdentifier forKey:@"EFPropertyKey_accountIdentifier"];

  [coderCopy encodeInteger:-[EMMailbox type](self forKey:{"type"), @"EFPropertyKey_type"}];
  [coderCopy encodeBool:-[EMMailbox canContainMessages](self forKey:{"canContainMessages"), @"EFPropertyKey_canContainMessages"}];
  [coderCopy encodeBool:-[EMMailbox canArchive](self forKey:{"canArchive"), @"EFPropertyKey_canArchive"}];
  children = [(EMMailbox *)self children];
  [coderCopy encodeObject:children forKey:@"EFPropertyKey_children"];

  parentID = [(EMMailbox *)self parentID];
  [coderCopy encodeObject:parentID forKey:@"EFPropertyKey_parentID"];
}

- (BOOL)shouldArchiveByDefault
{
  v3 = [(EMMailbox *)self type]- 1;
  if (v3 < 5 && ((0x17u >> v3) & 1) != 0)
  {
    return 0;
  }

  return [(EMMailbox *)self _shouldArchiveByDefault];
}

- (BOOL)_shouldArchiveByDefault
{
  account = [(EMMailbox *)self account];
  shouldArchiveByDefault = [account shouldArchiveByDefault];

  return shouldArchiveByDefault;
}

+ (id)predicateForMailboxName:(id)name
{
  nameCopy = name;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"name"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:nameCopy];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:4 options:0];

  return v7;
}

+ (id)predicateForMailboxType:(int64_t)type
{
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"type"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:4 options:0];

  return v9;
}

+ (id)predicateForMailboxAccount:(id)account
{
  v3 = [self predicateForMailboxAccount:account topLevelOnly:0];

  return v3;
}

+ (id)predicateForMailboxAccount:(id)account topLevelOnly:(BOOL)only
{
  onlyCopy = only;
  v20[2] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = MEMORY[0x1E696AB18];
  v8 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"account.objectID.representedObjectID"];
  v9 = MEMORY[0x1E696ABC8];
  objectID = [accountCopy objectID];
  representedObjectID = [objectID representedObjectID];
  v12 = [v9 expressionForConstantValue:representedObjectID];
  v13 = [v7 predicateWithLeftExpression:v8 rightExpression:v12 modifier:0 type:4 options:0];

  if (onlyCopy)
  {
    v14 = MEMORY[0x1E696AB28];
    v20[0] = v13;
    predicateForTopLevelMailboxes = [self predicateForTopLevelMailboxes];
    v20[1] = predicateForTopLevelMailboxes;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v17 = [v14 andPredicateWithSubpredicates:v16];

    v13 = v17;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)predicateForMailboxAccountIdentifier:(id)identifier topLevelOnly:(BOOL)only
{
  onlyCopy = only;
  v17[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = MEMORY[0x1E696AB18];
  v8 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"account.objectID.representedObjectID"];
  v9 = [MEMORY[0x1E696ABC8] expressionForConstantValue:identifierCopy];
  v10 = [v7 predicateWithLeftExpression:v8 rightExpression:v9 modifier:0 type:4 options:0];

  if (onlyCopy)
  {
    v11 = MEMORY[0x1E696AB28];
    v17[0] = v10;
    predicateForTopLevelMailboxes = [self predicateForTopLevelMailboxes];
    v17[1] = predicateForTopLevelMailboxes;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v14 = [v11 andPredicateWithSubpredicates:v13];

    v10 = v14;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)predicateForPrimaryMailboxWithAccount:(id)account
{
  v12[2] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = [self predicateForMailboxAccount:accountCopy topLevelOnly:0];
  v6 = [self predicateForMailboxType:7];
  v7 = MEMORY[0x1E696AB28];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)predicateForMailboxChildren:(id)children
{
  childrenCopy = children;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"parent.objectID.url"];
  v6 = MEMORY[0x1E696ABC8];
  objectID = [childrenCopy objectID];
  v8 = [objectID url];
  v9 = [v6 expressionForConstantValue:v8];
  v10 = [v4 predicateWithLeftExpression:v5 rightExpression:v9 modifier:0 type:4 options:0];

  return v10;
}

+ (id)predicateForTopLevelMailboxes
{
  v2 = MEMORY[0x1E696AB18];
  v3 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"isTopLevelMailbox"];
  v4 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
  v5 = [v2 predicateWithLeftExpression:v3 rightExpression:v4 modifier:0 type:4 options:0];

  return v5;
}

uint64_t __60__EMMailbox_EMQueryAdditions__sortDescriptorForDisplayOrder__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v35 = a3;
  v5 = v4;
  v6 = [MEMORY[0x1E695DF70] array];
  v36 = v5;
  if (v5)
  {
    do
    {
      [v6 insertObject:v5 atIndex:0];
      v7 = [v5 parent];

      v5 = v7;
    }

    while (v7);
  }

  v8 = v35;
  v9 = [MEMORY[0x1E695DF70] array];
  if (v8)
  {
    v10 = v8;
    do
    {
      [v9 insertObject:v10 atIndex:0];
      v11 = [v10 parent];

      v10 = v11;
    }

    while (v11);
  }

  v12 = [v6 count];
  v34 = v8;
  v13 = [v9 count];
  v32 = v13;
  v33 = v12;
  if (v12 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = 1;
    v37 = v6;
    do
    {
      v16 = [v6 objectAtIndexedSubscript:{v15 - 1, v32, v33}];
      v17 = [v9 objectAtIndexedSubscript:v15 - 1];
      v18 = v16;
      v19 = v17;
      v20 = [v18 type];
      v21 = [v19 type];
      if (v20 == v21)
      {
        v22 = [v18 name];
        v23 = [v19 name];
        v24 = [v22 localizedStandardCompare:v23];
      }

      else
      {
        if (_mailboxTypeOrder_onceToken != -1)
        {
          __60__EMMailbox_EMQueryAdditions__sortDescriptorForDisplayOrder__block_invoke_cold_1();
        }

        v22 = _mailboxTypeOrder_order;
        v25 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
        v26 = [v22 indexOfObject:v25];

        v27 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
        v28 = [v22 indexOfObject:v27];

        if (v26 < v28)
        {
          v24 = -1;
        }

        else
        {
          v24 = 1;
        }

        v6 = v37;
      }

      v29 = v24 == 0;
      if (v24)
      {
        break;
      }
    }

    while (v15++ < v14);
  }

  else
  {
    v24 = 0;
    v29 = 1;
  }

  if (v29 && v33 != v32)
  {
    if (v33 >= v32)
    {
      if (v33 > v32)
      {
        v24 = 1;
      }
    }

    else
    {
      v24 = -1;
    }
  }

  return v24;
}

@end