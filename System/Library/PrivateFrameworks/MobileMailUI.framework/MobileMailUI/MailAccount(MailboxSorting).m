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
  v9 = [v15 childEnumerator];
  v10 = 0;
  while (1)
  {
    v11 = [v9 nextObject];

    if (!v11)
    {
      break;
    }

    v12 = [v11 type];
    if (v12 || !a5)
    {
      v10 = v11;
      if (!v12)
      {
LABEL_8:
        [v8 addObject:v11];
        v10 = v11;
        if ([v11 hasChildren])
        {
          v10 = v11;
          [a1 _putMailboxesRootedAt:v11 intoArray:v8 hideNotes:0];
        }
      }
    }

    else
    {
      v13 = [v11 name];
      v14 = [v13 isEqualToString:@"Notes"];

      v10 = v11;
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
  v9 = [v8 mailbox];
  if (v9)
  {
    v17 = v9;
    v10 = [v9 childEnumerator];
    v11 = 0;
    while (1)
    {
      while (1)
      {
        do
        {
          v12 = [v10 nextObject];

          if (!v12)
          {

            v9 = v17;
            goto LABEL_14;
          }

          objc_opt_class();
          v11 = v12;
        }

        while ((objc_opt_isKindOfClass() & 1) == 0);
        v13 = [v12 type];
        if (!v13)
        {
          if (a5)
          {
            break;
          }
        }

        v11 = v12;
        if (!v13)
        {
          goto LABEL_10;
        }
      }

      v14 = [v12 name];
      v15 = [v14 isEqualToString:@"Notes"];

      v11 = v12;
      if ((v15 & 1) == 0)
      {
LABEL_10:
        v16 = [v18 addChildMailbox:v12 forMailboxNode:v8];
        if ([v12 hasChildren])
        {
          [a1 _addGenericChildrenToMailboxTree:v18 forNode:v16 hideNotes:0];
        }

        v11 = v12;
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
      [a1 _putMailboxesRootedAt:v7 intoArray:v6 hideNotes:0];
    }
  }
}

- (void)_addSpecialMailbox:()MailboxSorting toTree:
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [v6 rootMailboxNode];
    v8 = [v6 addChildMailbox:v9 forMailboxNode:v7];

    if ([v9 hasChildren])
    {
      [a1 _addGenericChildrenToMailboxTree:v6 forNode:v8 hideNotes:0];
    }
  }
}

- (MailboxHierarchyTree)_treeOfAllMailboxesIncludingLocals:()MailboxSorting withOutbox:hideInbox:hideNotes:
{
  v26 = a4;
  v10 = [MailboxHierarchyTree alloc];
  v11 = [a1 rootMailbox];
  v12 = [(MailboxHierarchyTree *)v10 initWithRootMailbox:v11];

  v24 = [(MailboxHierarchyTree *)v12 rootMailboxNode];
  v23 = a6;
  if (a3)
  {
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277D281E0] localAccount];
  }

  v25 = [a1 primaryMailboxUid];
  v14 = [a1 mailboxUidOfType:5 createIfNeeded:0];
  v15 = [a1 mailboxUidOfType:4 createIfNeeded:0];
  v16 = [a1 mailboxUidOfType:3 createIfNeeded:0];
  v17 = [a1 mailboxUidOfType:2 createIfNeeded:0];
  v18 = [a1 mailboxUidOfType:1 createIfNeeded:0];
  if (!a5 || [v25 hasChildren])
  {
    [a1 _addSpecialMailbox:v25 toTree:v12];
  }

  if ((a3 & 1) != 0 || v13 && ([v14 account], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != v13))
  {
    [a1 _addSpecialMailbox:v14 toTree:v12];
  }

  if (v26)
  {
    [a1 _addSpecialMailbox:v26 toTree:v12];
  }

  if ((a3 & 1) != 0 || v13 && ([v15 account], v20 = objc_claimAutoreleasedReturnValue(), v20, v20 != v13))
  {
    [a1 _addSpecialMailbox:v15 toTree:v12];
  }

  if (v18)
  {
    [a1 _addSpecialMailbox:v18 toTree:v12];
  }

  if ((a3 & 1) != 0 || v13 && ([v16 account], v21 = objc_claimAutoreleasedReturnValue(), v21, v21 != v13))
  {
    [a1 _addSpecialMailbox:v16 toTree:v12];
  }

  if (v17)
  {
    [a1 _addSpecialMailbox:v17 toTree:v12];
  }

  [a1 _addGenericChildrenToMailboxTree:v12 forNode:v24 hideNotes:v23];

  return v12;
}

- (id)_allMailboxesIncludingLocals:()MailboxSorting withOutbox:hideInbox:hideNotes:
{
  v24 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = a6;
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277D281E0] localAccount];
  }

  v23 = [a1 primaryMailboxUid];
  v12 = [a1 mailboxUidOfType:5 createIfNeeded:0];
  v13 = [a1 mailboxUidOfType:4 createIfNeeded:0];
  v14 = [a1 mailboxUidOfType:3 createIfNeeded:0];
  v15 = [a1 mailboxUidOfType:2 createIfNeeded:0];
  v16 = [a1 mailboxUidOfType:1 createIfNeeded:0];
  if (!a5 || [v23 hasChildren])
  {
    [a1 addSpecialMailbox:v23 toArray:v10];
  }

  if ((a3 & 1) != 0 || v11 && ([v12 account], v17 = objc_claimAutoreleasedReturnValue(), v17, v17 != v11))
  {
    [a1 addSpecialMailbox:v12 toArray:v10];
  }

  if (v24)
  {
    [v10 addObject:v24];
  }

  if ((a3 & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v18 = [v13 account];

    if (v18 == v11)
    {
      goto LABEL_18;
    }
  }

  [a1 addSpecialMailbox:v13 toArray:v10];
  if ((a3 & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_18:
    v19 = [v14 account];

    if (v19 == v11)
    {
      goto LABEL_20;
    }
  }

  [a1 addSpecialMailbox:v14 toArray:v10];
LABEL_20:
  if (v15)
  {
    [a1 addSpecialMailbox:v15 toArray:v10];
  }

  if (v16)
  {
    [a1 addSpecialMailbox:v16 toArray:v10];
  }

  v20 = [a1 rootMailbox];
  [a1 _putMailboxesRootedAt:v20 intoArray:v10 hideNotes:v22];

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
    v11 = [a1 ef_publicDescription];
    v15 = 138543618;
    v16 = v11;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_2149C9000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> client:%{public}@", &v15, 0x16u);
  }

  v12 = [a1 _treeOfAllMailboxesIncludingLocals:a3 withOutbox:v9 hideInbox:objc_msgSend(v8 hideNotes:{"shouldHideInbox"), objc_msgSend(v8, "shouldHideNotesForAccount:", a1)}];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (MailboxHierarchyTree)treeOfAllGenericMailboxes
{
  v2 = [MailboxHierarchyTree alloc];
  v3 = [a1 rootMailbox];
  v4 = [(MailboxHierarchyTree *)v2 initWithRootMailbox:v3];

  v5 = [(MailboxHierarchyTree *)v4 rootMailboxNode];
  [a1 _addGenericChildrenToMailboxTree:v4 forNode:v5 hideNotes:{objc_msgSend(a1, "isSyncingNotes")}];

  return v4;
}

@end