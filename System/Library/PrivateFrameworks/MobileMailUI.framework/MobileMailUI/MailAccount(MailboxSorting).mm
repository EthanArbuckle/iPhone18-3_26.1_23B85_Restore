@interface MailAccount(MailboxSorting)
- (MailboxHierarchyTree)_treeOfAllMailboxesIncludingLocals:()MailboxSorting withOutbox:hideInbox:hideNotes:;
- (MailboxHierarchyTree)treeOfAllGenericMailboxes;
- (id)_allMailboxesIncludingLocals:()MailboxSorting withOutbox:hideInbox:hideNotes:;
- (id)treeOfAllMailboxUidsSortedWithSpecialsAtTopIncludingLocals:()MailboxSorting client:outbox:;
- (void)_addGenericChildrenToMailboxTree:()MailboxSorting forNode:hideNotes:;
- (void)_addSpecialMailbox:()MailboxSorting toTree:;
- (void)_putMailboxesRootedAt:()MailboxSorting intoArray:hideNotes:;
- (void)addSpecialMailbox:()MailboxSorting toArray:;
@end

@implementation MailAccount(MailboxSorting)

- (void)_putMailboxesRootedAt:()MailboxSorting intoArray:hideNotes:
{
  v15 = a3;
  v8 = a4;
  childEnumerator = [v15 childEnumerator];
  v10 = 0;
  while (1)
  {
    nextObject = [childEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    type = [nextObject type];
    if (type || !a5)
    {
      v10 = nextObject;
      if (!type)
      {
LABEL_8:
        [v8 addObject:nextObject];
        v10 = nextObject;
        if ([nextObject hasChildren])
        {
          v10 = nextObject;
          [self _putMailboxesRootedAt:nextObject intoArray:v8 hideNotes:0];
        }
      }
    }

    else
    {
      name = [nextObject name];
      v14 = [name isEqualToString:@"Notes"];

      v10 = nextObject;
      if ((v14 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }
}

- (void)_addGenericChildrenToMailboxTree:()MailboxSorting forNode:hideNotes:
{
  v18 = a3;
  v8 = a4;
  mailbox = [v8 mailbox];
  if (mailbox)
  {
    v17 = mailbox;
    childEnumerator = [mailbox childEnumerator];
    v11 = 0;
    while (1)
    {
      while (1)
      {
        do
        {
          nextObject = [childEnumerator nextObject];

          if (!nextObject)
          {

            mailbox = v17;
            goto LABEL_14;
          }

          objc_opt_class();
          v11 = nextObject;
        }

        while ((objc_opt_isKindOfClass() & 1) == 0);
        type = [nextObject type];
        if (!type)
        {
          if (a5)
          {
            break;
          }
        }

        v11 = nextObject;
        if (!type)
        {
          goto LABEL_10;
        }
      }

      name = [nextObject name];
      v15 = [name isEqualToString:@"Notes"];

      v11 = nextObject;
      if ((v15 & 1) == 0)
      {
LABEL_10:
        v16 = [v18 addChildMailbox:nextObject forMailboxNode:v8];
        if ([nextObject hasChildren])
        {
          [self _addGenericChildrenToMailboxTree:v18 forNode:v16 hideNotes:0];
        }

        v11 = nextObject;
      }
    }
  }

LABEL_14:
}

- (void)addSpecialMailbox:()MailboxSorting toArray:
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [v6 addObject:v7];
    if ([v7 hasChildren])
    {
      [self _putMailboxesRootedAt:v7 intoArray:v6 hideNotes:0];
    }
  }
}

- (void)_addSpecialMailbox:()MailboxSorting toTree:
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    rootMailboxNode = [v6 rootMailboxNode];
    v8 = [v6 addChildMailbox:v9 forMailboxNode:rootMailboxNode];

    if ([v9 hasChildren])
    {
      [self _addGenericChildrenToMailboxTree:v6 forNode:v8 hideNotes:0];
    }
  }
}

- (MailboxHierarchyTree)_treeOfAllMailboxesIncludingLocals:()MailboxSorting withOutbox:hideInbox:hideNotes:
{
  v26 = a4;
  v10 = [MailboxHierarchyTree alloc];
  rootMailbox = [self rootMailbox];
  v12 = [(MailboxHierarchyTree *)v10 initWithRootMailbox:rootMailbox];

  rootMailboxNode = [(MailboxHierarchyTree *)v12 rootMailboxNode];
  v23 = a6;
  if (a3)
  {
    localAccount = 0;
  }

  else
  {
    localAccount = [MEMORY[0x277D281E0] localAccount];
  }

  primaryMailboxUid = [self primaryMailboxUid];
  v14 = [self mailboxUidOfType:5 createIfNeeded:0];
  v15 = [self mailboxUidOfType:4 createIfNeeded:0];
  v16 = [self mailboxUidOfType:3 createIfNeeded:0];
  v17 = [self mailboxUidOfType:2 createIfNeeded:0];
  v18 = [self mailboxUidOfType:1 createIfNeeded:0];
  if (!a5 || [primaryMailboxUid hasChildren])
  {
    [self _addSpecialMailbox:primaryMailboxUid toTree:v12];
  }

  if ((a3 & 1) != 0 || localAccount && ([v14 account], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != localAccount))
  {
    [self _addSpecialMailbox:v14 toTree:v12];
  }

  if (v26)
  {
    [self _addSpecialMailbox:v26 toTree:v12];
  }

  if ((a3 & 1) != 0 || localAccount && ([v15 account], v20 = objc_claimAutoreleasedReturnValue(), v20, v20 != localAccount))
  {
    [self _addSpecialMailbox:v15 toTree:v12];
  }

  if (v18)
  {
    [self _addSpecialMailbox:v18 toTree:v12];
  }

  if ((a3 & 1) != 0 || localAccount && ([v16 account], v21 = objc_claimAutoreleasedReturnValue(), v21, v21 != localAccount))
  {
    [self _addSpecialMailbox:v16 toTree:v12];
  }

  if (v17)
  {
    [self _addSpecialMailbox:v17 toTree:v12];
  }

  [self _addGenericChildrenToMailboxTree:v12 forNode:rootMailboxNode hideNotes:v23];

  return v12;
}

- (id)_allMailboxesIncludingLocals:()MailboxSorting withOutbox:hideInbox:hideNotes:
{
  v24 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = a6;
  if (a3)
  {
    localAccount = 0;
  }

  else
  {
    localAccount = [MEMORY[0x277D281E0] localAccount];
  }

  primaryMailboxUid = [self primaryMailboxUid];
  v12 = [self mailboxUidOfType:5 createIfNeeded:0];
  v13 = [self mailboxUidOfType:4 createIfNeeded:0];
  v14 = [self mailboxUidOfType:3 createIfNeeded:0];
  v15 = [self mailboxUidOfType:2 createIfNeeded:0];
  v16 = [self mailboxUidOfType:1 createIfNeeded:0];
  if (!a5 || [primaryMailboxUid hasChildren])
  {
    [self addSpecialMailbox:primaryMailboxUid toArray:v10];
  }

  if ((a3 & 1) != 0 || localAccount && ([v12 account], v17 = objc_claimAutoreleasedReturnValue(), v17, v17 != localAccount))
  {
    [self addSpecialMailbox:v12 toArray:v10];
  }

  if (v24)
  {
    [v10 addObject:v24];
  }

  if ((a3 & 1) == 0)
  {
    if (!localAccount)
    {
      goto LABEL_20;
    }

    account = [v13 account];

    if (account == localAccount)
    {
      goto LABEL_18;
    }
  }

  [self addSpecialMailbox:v13 toArray:v10];
  if ((a3 & 1) == 0)
  {
    if (!localAccount)
    {
      goto LABEL_20;
    }

LABEL_18:
    account2 = [v14 account];

    if (account2 == localAccount)
    {
      goto LABEL_20;
    }
  }

  [self addSpecialMailbox:v14 toArray:v10];
LABEL_20:
  if (v15)
  {
    [self addSpecialMailbox:v15 toArray:v10];
  }

  if (v16)
  {
    [self addSpecialMailbox:v16 toArray:v10];
  }

  rootMailbox = [self rootMailbox];
  [self _putMailboxesRootedAt:rootMailbox intoArray:v10 hideNotes:v22];

  return v10;
}

- (id)treeOfAllMailboxUidsSortedWithSpecialsAtTopIncludingLocals:()MailboxSorting client:outbox:
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D28280] log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [self ef_publicDescription];
    v15 = 138543618;
    v16 = ef_publicDescription;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_2149C9000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> client:%{public}@", &v15, 0x16u);
  }

  v12 = [self _treeOfAllMailboxesIncludingLocals:a3 withOutbox:v9 hideInbox:objc_msgSend(v8 hideNotes:{"shouldHideInbox"), objc_msgSend(v8, "shouldHideNotesForAccount:", self)}];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (MailboxHierarchyTree)treeOfAllGenericMailboxes
{
  v2 = [MailboxHierarchyTree alloc];
  rootMailbox = [self rootMailbox];
  v4 = [(MailboxHierarchyTree *)v2 initWithRootMailbox:rootMailbox];

  rootMailboxNode = [(MailboxHierarchyTree *)v4 rootMailboxNode];
  [self _addGenericChildrenToMailboxTree:v4 forNode:rootMailboxNode hideNotes:{objc_msgSend(self, "isSyncingNotes")}];

  return v4;
}

@end