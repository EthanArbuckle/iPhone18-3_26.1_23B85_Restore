@interface EMMailbox
+ (BOOL)deleteMovesToTrashForMailboxes:(id)a3;
+ (BOOL)shouldArchiveByDefaultForMailboxes:(id)a3;
+ (BOOL)supportsArchivingForMailboxes:(id)a3;
+ (BOOL)supportsSelectAllForMailboxes:(id)a3;
+ (BOOL)typeIsValidTransferDestination:(int64_t)a3;
+ (id)predicateForMailboxAccount:(id)a3;
+ (id)predicateForMailboxAccount:(id)a3 topLevelOnly:(BOOL)a4;
+ (id)predicateForMailboxAccountIdentifier:(id)a3 topLevelOnly:(BOOL)a4;
+ (id)predicateForMailboxChildren:(id)a3;
+ (id)predicateForMailboxName:(id)a3;
+ (id)predicateForMailboxType:(int64_t)a3;
+ (id)predicateForPrimaryMailboxWithAccount:(id)a3;
+ (id)predicateForTopLevelMailboxes;
- (BOOL)_hasFetchedAccount;
- (BOOL)_shouldArchiveByDefault;
- (BOOL)isOutgoingMailbox;
- (BOOL)isSendLaterMailbox;
- (BOOL)isTopLevelMailbox;
- (BOOL)shouldArchiveByDefault;
- (EMMailbox)initWithCoder:(id)a3;
- (EMMailbox)initWithObjectID:(id)a3;
- (EMMailbox)initWithObjectID:(id)a3 repository:(id)a4 name:(id)a5 accountIdentifier:(id)a6 type:(int64_t)a7 builder:(id)a8;
- (EMMailbox)parent;
- (EMMailboxObjectID)parentID;
- (EMMailboxRepository)repository;
- (EMReceivingAccount)account;
- (EMReceivingAccount)accountIfAvailable;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (NSURL)externalURL;
- (id)_shouldArchiveByDefaultString;
- (void)_commonInitName:(id)a3 accountIdentifier:(id)a4 type:(int64_t)a5 canContainMessages:(BOOL)a6 children:(id)a7 parentID:(id)a8 builder:(id)a9;
- (void)encodeWithCoder:(id)a3;
- (void)setParentFromMailboxes:(id)a3;
- (void)setRepository:(id)a3;
@end

@implementation EMMailbox

- (EMMailboxObjectID)parentID
{
  v3 = [(EMMailbox *)self parent];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectID];
  }

  else
  {
    v5 = self->_parentID;
  }

  v6 = v5;

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
  v4 = [(EMRepositoryObject *)&v7 repository];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"EMMailbox.m" lineNumber:87 description:@"Wrong repository type"];
    }
  }

  return v4;
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
  v2 = [(EMMailbox *)self name];
  v3 = [v2 isEqualToString:@"x-apple-send-later"];

  return v3;
}

- (NSString)ef_publicDescription
{
  v3 = [(EMMailbox *)self descriptionUsesRealName];
  v4 = [(EMObject *)self objectID];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 debugDescription];

    v7 = [(EMMailbox *)self name];
  }

  else
  {
    v6 = [v4 description];

    v8 = MEMORY[0x1E699B858];
    v9 = [(EMMailbox *)self name];
    v7 = [v8 fullyOrPartiallyRedactedStringForString:v9];
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  [(EMMailbox *)self type];
  v12 = ECNSStringFromMailboxMailboxType();
  [(EMMailbox *)self canArchive];
  v13 = NSStringFromBOOL();
  v14 = [(EMMailbox *)self _shouldArchiveByDefaultString];
  v15 = [v10 stringWithFormat:@"<%@: %p> ObjectID:%@ Name:%@ Type:%@ CanArchive:%@ ShouldArchive:%@", v11, self, v6, v7, v12, v13, v14];

  return v15;
}

- (id)_shouldArchiveByDefaultString
{
  v3 = [(EMMailbox *)self _canArchiveForMailboxType:[(EMMailbox *)self type]];
  v4 = [(EMMailbox *)self _hasFetchedAccount];
  v5 = @"?";
  if (v3 && v4)
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
  v3 = [(EMMailbox *)self accountIdentifier];
  if (v3)
  {
    account = self->_account;

    if (!account)
    {
      v5 = [(EMMailbox *)self repository];
      v6 = [v5 accountRepository];
      v7 = [(EMMailbox *)self accountIdentifier];
      v8 = [v6 accountForIdentifier:v7];

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
  v2 = self;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v2)
  {
    v4 = v2;
    do
    {
      if ([v4 type] == 8)
      {
        break;
      }

      v5 = [v4 name];
      [v3 insertObject:v5 atIndex:0];

      v6 = [v4 parent];

      v4 = v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  if ([v3 count])
  {
    v7 = [(EMMailbox *)v2 account];
    v8 = [v7 identityEmailAddress];

    v9 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v9 setScheme:@"x-apple-mail-mailbox"];
    if (v8)
    {
      v10 = [v8 localPart];
      [v9 setUser:v10];

      v11 = [v8 domain];
      [v9 setHost:v11];
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

+ (BOOL)deleteMovesToTrashForMailboxes:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 ef_all:&__block_literal_global_23];
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

+ (BOOL)supportsArchivingForMailboxes:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 ef_any:&__block_literal_global_2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)shouldArchiveByDefaultForMailboxes:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 ef_any:&__block_literal_global_4_0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)supportsSelectAllForMailboxes:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 ef_all:&__block_literal_global_6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (EMMailbox)initWithObjectID:(id)a3
{
  v5 = a3;
  [(EMMailbox *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMMailbox initWithObjectID:]", "EMMailbox.m", 47, "0");
}

- (EMMailbox)initWithObjectID:(id)a3 repository:(id)a4 name:(id)a5 accountIdentifier:(id)a6 type:(int64_t)a7 builder:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  if (!v19)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"EMMailbox.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v24.receiver = self;
  v24.super_class = EMMailbox;
  v20 = [(EMObject *)&v24 initWithObjectID:v15];
  v21 = v20;
  if (v20)
  {
    v20->_accountLock._os_unfair_lock_opaque = 0;
    [(EMMailbox *)v20 setRepository:v16];
    [(EMMailbox *)v21 _commonInitName:v17 accountIdentifier:v18 type:a7 canContainMessages:0 children:0 parentID:0 builder:v19];
  }

  return v21;
}

- (void)_commonInitName:(id)a3 accountIdentifier:(id)a4 type:(int64_t)a5 canContainMessages:(BOOL)a6 children:(id)a7 parentID:(id)a8 builder:(id)a9
{
  v24 = a3;
  v23 = a4;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  objc_storeStrong(&self->_name, a3);
  objc_storeStrong(&self->_accountIdentifier, a4);
  self->_type = a5;
  self->_canContainMessages = a6;
  self->_canArchive = [(EMMailbox *)self _canArchiveForMailboxType:a5];
  objc_storeStrong(&self->_children, a7);
  objc_storeStrong(&self->_parentID, a8);
  v18[2](v18, self);
  if (!self->_children)
  {
    v19 = [EMMailboxCollection alloc];
    v20 = [(EMMailbox *)self repository];
    v21 = [(EMMailboxCollection *)v19 initWithMailbox:self repository:v20];
    children = self->_children;
    self->_children = v21;
  }
}

- (void)setRepository:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"EMMailbox.m" lineNumber:92 description:@"Wrong repository type"];
    }
  }

  v8.receiver = self;
  v8.super_class = EMMailbox;
  [(EMRepositoryObject *)&v8 setRepository:v5];
  v6 = [(EMMailbox *)self children];
  [v6 setRepository:v5];
}

- (void)setParentFromMailboxes:(id)a3
{
  v11 = a3;
  v5 = [(EMMailbox *)self parentID];
  v6 = [(EMMailbox *)self parent];

  if (!v6)
  {
    if (v5)
    {
      v7 = [v11 objectForKey:v5];
      [(EMMailbox *)self setParent:v7];

      v8 = [(EMMailbox *)self parent];

      if (!v8)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:self file:@"EMMailbox.m" lineNumber:123 description:{@"failed to set parent mailbox with id:%@", v5}];
      }
    }
  }

  parentID = self->_parentID;
  self->_parentID = 0;
}

- (BOOL)isTopLevelMailbox
{
  v2 = [(EMMailbox *)self parent];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 type] == 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)typeIsValidTransferDestination:(int64_t)a3
{
  v4 = [a1 _isOutgoingMailboxType:?];
  v5 = a3 != 8;
  if (a3 == -100)
  {
    v5 = 0;
  }

  if (a3 == -500)
  {
    v5 = 0;
  }

  return (v4 & 1) == 0 && v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EMObject *)self objectID];
  v6 = [v5 debugDescription];
  v7 = [(EMMailbox *)self name];
  [(EMMailbox *)self type];
  v8 = ECNSStringFromMailboxMailboxType();
  [(EMMailbox *)self canArchive];
  v9 = NSStringFromBOOL();
  v10 = [(EMMailbox *)self _shouldArchiveByDefaultString];
  v11 = [v3 stringWithFormat:@"<%@: %p> ObjectID:%@ Name:%@ Type:%@ CanArchive:%@ ShouldArchive:%@", v4, self, v6, v7, v8, v9, v10];

  return v11;
}

- (EMMailbox)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = EMMailbox;
  v5 = [(EMObject *)&v17 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v5->_accountLock._os_unfair_lock_opaque = 0;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_name"];
    v8 = v7;
    v9 = &stru_1F45FD218;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_accountIdentifier"];
    v12 = [v4 decodeIntegerForKey:@"EFPropertyKey_type"];
    v13 = [v4 decodeBoolForKey:@"EFPropertyKey_canContainMessages"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_children"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_parentID"];
    [(EMMailbox *)v6 _commonInitName:v10 accountIdentifier:v11 type:v12 canContainMessages:v13 children:v14 parentID:v15 builder:&__block_literal_global_24];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EMMailbox;
  [(EMObject *)&v9 encodeWithCoder:v4];
  v5 = [(EMMailbox *)self name];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_name"];

  v6 = [(EMMailbox *)self accountIdentifier];
  [v4 encodeObject:v6 forKey:@"EFPropertyKey_accountIdentifier"];

  [v4 encodeInteger:-[EMMailbox type](self forKey:{"type"), @"EFPropertyKey_type"}];
  [v4 encodeBool:-[EMMailbox canContainMessages](self forKey:{"canContainMessages"), @"EFPropertyKey_canContainMessages"}];
  [v4 encodeBool:-[EMMailbox canArchive](self forKey:{"canArchive"), @"EFPropertyKey_canArchive"}];
  v7 = [(EMMailbox *)self children];
  [v4 encodeObject:v7 forKey:@"EFPropertyKey_children"];

  v8 = [(EMMailbox *)self parentID];
  [v4 encodeObject:v8 forKey:@"EFPropertyKey_parentID"];
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
  v2 = [(EMMailbox *)self account];
  v3 = [v2 shouldArchiveByDefault];

  return v3;
}

+ (id)predicateForMailboxName:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"name"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v3];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:4 options:0];

  return v7;
}

+ (id)predicateForMailboxType:(int64_t)a3
{
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"type"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:4 options:0];

  return v9;
}

+ (id)predicateForMailboxAccount:(id)a3
{
  v3 = [a1 predicateForMailboxAccount:a3 topLevelOnly:0];

  return v3;
}

+ (id)predicateForMailboxAccount:(id)a3 topLevelOnly:(BOOL)a4
{
  v4 = a4;
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AB18];
  v8 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"account.objectID.representedObjectID"];
  v9 = MEMORY[0x1E696ABC8];
  v10 = [v6 objectID];
  v11 = [v10 representedObjectID];
  v12 = [v9 expressionForConstantValue:v11];
  v13 = [v7 predicateWithLeftExpression:v8 rightExpression:v12 modifier:0 type:4 options:0];

  if (v4)
  {
    v14 = MEMORY[0x1E696AB28];
    v20[0] = v13;
    v15 = [a1 predicateForTopLevelMailboxes];
    v20[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v17 = [v14 andPredicateWithSubpredicates:v16];

    v13 = v17;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)predicateForMailboxAccountIdentifier:(id)a3 topLevelOnly:(BOOL)a4
{
  v4 = a4;
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E696AB18];
  v8 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"account.objectID.representedObjectID"];
  v9 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v6];
  v10 = [v7 predicateWithLeftExpression:v8 rightExpression:v9 modifier:0 type:4 options:0];

  if (v4)
  {
    v11 = MEMORY[0x1E696AB28];
    v17[0] = v10;
    v12 = [a1 predicateForTopLevelMailboxes];
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v14 = [v11 andPredicateWithSubpredicates:v13];

    v10 = v14;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)predicateForPrimaryMailboxWithAccount:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 predicateForMailboxAccount:v4 topLevelOnly:0];
  v6 = [a1 predicateForMailboxType:7];
  v7 = MEMORY[0x1E696AB28];
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)predicateForMailboxChildren:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"parent.objectID.url"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [v3 objectID];
  v8 = [v7 url];
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