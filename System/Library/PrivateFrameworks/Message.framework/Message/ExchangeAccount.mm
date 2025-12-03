@interface ExchangeAccount
- (id)_defaultSpecialMailboxNameForType:(int64_t)type;
- (void)_filterMailboxList:(id)list forMailboxWithPath:(id)path iisServer:(id)server;
- (void)filterMailboxList:(id)list forMailbox:(id)mailbox options:(int64_t)options;
@end

@implementation ExchangeAccount

- (id)_defaultSpecialMailboxNameForType:(int64_t)type
{
  if (type == 4)
  {
    v5 = @"Sent Items";
  }

  else if (type == 3)
  {
    v5 = @"Deleted Items";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = ExchangeAccount;
    v5 = [(MailAccount *)&v7 _defaultSpecialMailboxNameForType:?];
  }

  return v5;
}

- (void)filterMailboxList:(id)list forMailbox:(id)mailbox options:(int64_t)options
{
  listCopy = list;
  mailboxCopy = mailbox;
  if ((options - 1) <= 1)
  {
    [(ExchangeAccount *)self _filterMailboxList:listCopy forMailboxWithPath:mailboxCopy iisServer:0];
  }
}

- (void)_filterMailboxList:(id)list forMailboxWithPath:(id)path iisServer:(id)server
{
  listCopy = list;
  pathCopy = path;
  serverCopy = server;
  if (!listCopy || ![listCopy count])
  {
    goto LABEL_19;
  }

  if (pathCopy)
  {
    v9 = [pathCopy length];
    v10 = v9 == 0;
    if (!serverCopy)
    {
      if (v9)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

LABEL_9:
    if ([serverCopy length] != 0 || !v10)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (serverCopy)
  {
    v10 = 1;
    goto LABEL_9;
  }

LABEL_10:
  v11 = [listCopy count];
  if (v11)
  {
    v12 = v11 - 1;
    do
    {
      v13 = [listCopy objectAtIndex:v12];
      v14 = [v13 objectForKey:@"MailboxName"];
      if (([@"Contacts" isEqualToString:v14] & 1) != 0 || (objc_msgSend(@"Calendar", "isEqualToString:", v14) & 1) != 0 || (objc_msgSend(@"Journal", "isEqualToString:", v14) & 1) != 0 || (objc_msgSend(@"Notes", "isEqualToString:", v14) & 1) != 0 || objc_msgSend(@"Tasks", "isEqualToString:", v14))
      {
        [listCopy removeObjectAtIndex:v12];
      }

      --v12;
    }

    while (v12 != -1);
  }

LABEL_19:
}

@end