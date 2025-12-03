@interface MailAccount
+ (id)accountImageForAccount:(id)account;
+ (id)nano_activeMailAccounts;
+ (id)nano_bridgeSettingsInboxesFromAccounts:(id)accounts;
- (id)_allMailboxesIncludingLocals:(BOOL)locals withOutbox:(id)outbox hideInbox:(BOOL)inbox hideNotes:(BOOL)notes;
- (id)_emailAddressStringsFromObjects:(id)objects;
- (id)_treeOfAllMailboxesIncludingLocals:(BOOL)locals withOutbox:(id)outbox hideInbox:(BOOL)inbox hideNotes:(BOOL)notes;
- (id)mailboxesToBeObserved:(id)observed;
- (id)mailboxesToBeObservedWithFavoritesReader:(id)reader;
- (id)nano_emailAddressesAndAliasesList;
- (id)treeOfAllGenericMailboxes;
- (void)_addGenericChildrenToMailboxTree:(id)tree forNode:(id)node hideNotes:(BOOL)notes;
- (void)_addSpecialMailbox:(id)mailbox toTree:(id)tree;
- (void)_putMailboxesRootedAt:(id)at intoArray:(id)array hideNotes:(BOOL)notes;
- (void)addSpecialMailbox:(id)mailbox toArray:(id)array;
@end

@implementation MailAccount

- (id)nano_emailAddressesAndAliasesList
{
  emailAddressesAndAliasesList = [(MailAccount *)self emailAddressesAndAliasesList];
  v4 = [(MailAccount *)self _emailAddressStringsFromObjects:emailAddressesAndAliasesList];

  return v4;
}

+ (id)nano_activeMailAccounts
{
  v15 = 0;
  v2 = [MailAccount activeAccountsWithError:&v15];
  v3 = v15;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v2;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v4 addObject:{v9, v11}];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

+ (id)nano_bridgeSettingsInboxesFromAccounts:(id)accounts
{
  v3 = [accounts ef_map:&stru_1001572E8];
  v4 = [v3 ef_filter:&stru_100157308];

  return v4;
}

- (id)_emailAddressStringsFromObjects:(id)objects
{
  objectsCopy = objects;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [objectsCopy count]);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = objectsCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        ea_uncommentedAddress = [*(*(&v11 + 1) + 8 * i) ea_uncommentedAddress];
        [v4 addObject:ea_uncommentedAddress];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)accountImageForAccount:(id)account
{
  accountCopy = account;
  if (!qword_1001855E8)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = qword_1001855E8;
    qword_1001855E8 = v4;
  }

  iconString = [accountCopy iconString];
  v7 = [qword_1001855E8 objectForKey:iconString];
  if (!v7)
  {
    if (!qword_1001855F0)
    {
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = qword_1001855F0;
      qword_1001855F0 = v8;
    }

    v10 = [UIImage imageNamed:"imageNamed:inBundle:compatibleWithTraitCollection:" inBundle:iconString compatibleWithTraitCollection:?];
    v7 = [v10 _applicationIconImageForFormat:0 precomposed:1];
    if (!v7)
    {
      v7 = +[NSNull null];
    }

    [qword_1001855E8 setObject:v7 forKey:iconString];
  }

  v11 = +[NSNull null];

  if (v11 == v7)
  {

    v7 = 0;
  }

  return v7;
}

- (void)_putMailboxesRootedAt:(id)at intoArray:(id)array hideNotes:(BOOL)notes
{
  notesCopy = notes;
  atCopy = at;
  arrayCopy = array;
  childEnumerator = [atCopy childEnumerator];
  v10 = 0;
  while (1)
  {
    nextObject = [childEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    type = [nextObject type];
    if (type || !notesCopy)
    {
      v10 = nextObject;
      if (!type)
      {
LABEL_8:
        [arrayCopy addObject:nextObject];
        v10 = nextObject;
        if ([nextObject hasChildren])
        {
          v10 = nextObject;
          [(MailAccount *)self _putMailboxesRootedAt:nextObject intoArray:arrayCopy hideNotes:0];
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

- (void)_addGenericChildrenToMailboxTree:(id)tree forNode:(id)node hideNotes:(BOOL)notes
{
  notesCopy = notes;
  treeCopy = tree;
  nodeCopy = node;
  mailbox = [nodeCopy mailbox];
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
        if (!type && notesCopy)
        {
          break;
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
        v16 = [treeCopy addChildMailbox:nextObject forMailboxNode:nodeCopy];
        if ([nextObject hasChildren])
        {
          [(MailAccount *)self _addGenericChildrenToMailboxTree:treeCopy forNode:v16 hideNotes:0];
        }

        v11 = nextObject;
      }
    }
  }

LABEL_14:
}

- (void)addSpecialMailbox:(id)mailbox toArray:(id)array
{
  mailboxCopy = mailbox;
  arrayCopy = array;
  if (mailboxCopy)
  {
    [arrayCopy addObject:mailboxCopy];
    if ([mailboxCopy hasChildren])
    {
      [(MailAccount *)self _putMailboxesRootedAt:mailboxCopy intoArray:arrayCopy hideNotes:0];
    }
  }
}

- (void)_addSpecialMailbox:(id)mailbox toTree:(id)tree
{
  mailboxCopy = mailbox;
  treeCopy = tree;
  if (mailboxCopy)
  {
    rootMailboxNode = [treeCopy rootMailboxNode];
    v8 = [treeCopy addChildMailbox:mailboxCopy forMailboxNode:rootMailboxNode];

    if ([mailboxCopy hasChildren])
    {
      [(MailAccount *)self _addGenericChildrenToMailboxTree:treeCopy forNode:v8 hideNotes:0];
    }
  }
}

- (id)_treeOfAllMailboxesIncludingLocals:(BOOL)locals withOutbox:(id)outbox hideInbox:(BOOL)inbox hideNotes:(BOOL)notes
{
  notesCopy = notes;
  inboxCopy = inbox;
  outboxCopy = outbox;
  v10 = [MailboxHierarchyTree alloc];
  rootMailbox = [(MailAccount *)self rootMailbox];
  v12 = [(MailboxHierarchyTree *)v10 initWithRootMailbox:rootMailbox];

  rootMailboxNode = [(MailboxHierarchyTree *)v12 rootMailboxNode];
  v23 = notesCopy;
  if (locals)
  {
    v13 = 0;
  }

  else
  {
    v13 = +[LocalAccount localAccount];
  }

  primaryMailboxUid = [(MailAccount *)self primaryMailboxUid];
  v14 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
  v15 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];
  v16 = [(MailAccount *)self mailboxUidOfType:3 createIfNeeded:0];
  v17 = [(MailAccount *)self mailboxUidOfType:2 createIfNeeded:0];
  v18 = [(MailAccount *)self mailboxUidOfType:1 createIfNeeded:0];
  if (!inboxCopy || [primaryMailboxUid hasChildren])
  {
    [(MailAccount *)self _addSpecialMailbox:primaryMailboxUid toTree:v12];
  }

  if (locals || v13 && ([v14 account], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != v13))
  {
    [(MailAccount *)self _addSpecialMailbox:v14 toTree:v12];
  }

  if (outboxCopy)
  {
    [(MailAccount *)self _addSpecialMailbox:outboxCopy toTree:v12];
  }

  if (locals || v13 && ([v15 account], v20 = objc_claimAutoreleasedReturnValue(), v20, v20 != v13))
  {
    [(MailAccount *)self _addSpecialMailbox:v15 toTree:v12];
  }

  if (v18)
  {
    [(MailAccount *)self _addSpecialMailbox:v18 toTree:v12];
  }

  if (locals || v13 && ([v16 account], v21 = objc_claimAutoreleasedReturnValue(), v21, v21 != v13))
  {
    [(MailAccount *)self _addSpecialMailbox:v16 toTree:v12];
  }

  if (v17)
  {
    [(MailAccount *)self _addSpecialMailbox:v17 toTree:v12];
  }

  [(MailAccount *)self _addGenericChildrenToMailboxTree:v12 forNode:rootMailboxNode hideNotes:v23];

  return v12;
}

- (id)_allMailboxesIncludingLocals:(BOOL)locals withOutbox:(id)outbox hideInbox:(BOOL)inbox hideNotes:(BOOL)notes
{
  notesCopy = notes;
  inboxCopy = inbox;
  outboxCopy = outbox;
  v10 = objc_alloc_init(NSMutableArray);
  v22 = notesCopy;
  if (locals)
  {
    v11 = 0;
  }

  else
  {
    v11 = +[LocalAccount localAccount];
  }

  primaryMailboxUid = [(MailAccount *)self primaryMailboxUid];
  v12 = [(MailAccount *)self mailboxUidOfType:5 createIfNeeded:0];
  v13 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];
  v14 = [(MailAccount *)self mailboxUidOfType:3 createIfNeeded:0];
  v15 = [(MailAccount *)self mailboxUidOfType:2 createIfNeeded:0];
  v16 = [(MailAccount *)self mailboxUidOfType:1 createIfNeeded:0];
  if (!inboxCopy || [primaryMailboxUid hasChildren])
  {
    [(MailAccount *)self addSpecialMailbox:primaryMailboxUid toArray:v10];
  }

  if (locals || v11 && ([v12 account], v17 = objc_claimAutoreleasedReturnValue(), v17, v17 != v11))
  {
    [(MailAccount *)self addSpecialMailbox:v12 toArray:v10];
  }

  if (outboxCopy)
  {
    [v10 addObject:outboxCopy];
  }

  if (!locals)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    account = [v13 account];

    if (account == v11)
    {
      goto LABEL_18;
    }
  }

  [(MailAccount *)self addSpecialMailbox:v13 toArray:v10];
  if (!locals)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_18:
    account2 = [v14 account];

    if (account2 == v11)
    {
      goto LABEL_20;
    }
  }

  [(MailAccount *)self addSpecialMailbox:v14 toArray:v10];
LABEL_20:
  if (v15)
  {
    [(MailAccount *)self addSpecialMailbox:v15 toArray:v10];
  }

  if (v16)
  {
    [(MailAccount *)self addSpecialMailbox:v16 toArray:v10];
  }

  rootMailbox = [(MailAccount *)self rootMailbox];
  [(MailAccount *)self _putMailboxesRootedAt:rootMailbox intoArray:v10 hideNotes:v22];

  return v10;
}

- (id)treeOfAllGenericMailboxes
{
  v3 = [MailboxHierarchyTree alloc];
  rootMailbox = [(MailAccount *)self rootMailbox];
  v5 = [(MailboxHierarchyTree *)v3 initWithRootMailbox:rootMailbox];

  rootMailboxNode = [(MailboxHierarchyTree *)v5 rootMailboxNode];
  [(MailAccount *)self _addGenericChildrenToMailboxTree:v5 forNode:rootMailboxNode hideNotes:[(MailAccount *)self isSyncingNotes]];

  return v5;
}

- (id)mailboxesToBeObserved:(id)observed
{
  observedCopy = observed;
  v5 = [NSMutableSet alloc];
  pushedMailboxUids = [(MailAccount *)self pushedMailboxUids];
  v7 = [v5 initWithSet:pushedMailboxUids];

  v8 = [observedCopy favoriteMailboxesForAccount:self];
  [v7 unionSet:v8];

  return v7;
}

- (id)mailboxesToBeObservedWithFavoritesReader:(id)reader
{
  readerCopy = reader;
  v5 = [NSMutableSet alloc];
  pushedMailboxUids = [(MailAccount *)self pushedMailboxUids];
  v7 = [v5 initWithSet:pushedMailboxUids];
  v8 = [v7 ef_filter:&stru_10015A198];
  v9 = [v8 mutableCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  mailboxesCollection = [readerCopy mailboxesCollection];
  visibleItems = [mailboxesCollection visibleItems];

  v12 = [visibleItems countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(visibleItems);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([v15 type] == 2)
        {
          account = [v15 account];
          if (account == self)
          {
            representingMailbox = [v15 representingMailbox];
            v18 = representingMailbox == 0;

            if (v18)
            {
              continue;
            }

            account = [v15 representingMailbox];
            [v9 addObject:account];
          }
        }
      }

      v12 = [visibleItems countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return v9;
}

@end