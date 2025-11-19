@interface ExchangeAccount
- (id)_defaultSpecialMailboxNameForType:(int64_t)a3;
- (void)_filterMailboxList:(id)a3 forMailboxWithPath:(id)a4 iisServer:(id)a5;
- (void)filterMailboxList:(id)a3 forMailbox:(id)a4 options:(int64_t)a5;
@end

@implementation ExchangeAccount

- (id)_defaultSpecialMailboxNameForType:(int64_t)a3
{
  if (a3 == 4)
  {
    v5 = @"Sent Items";
  }

  else if (a3 == 3)
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

- (void)filterMailboxList:(id)a3 forMailbox:(id)a4 options:(int64_t)a5
{
  v9 = a3;
  v8 = a4;
  if ((a5 - 1) <= 1)
  {
    [(ExchangeAccount *)self _filterMailboxList:v9 forMailboxWithPath:v8 iisServer:0];
  }
}

- (void)_filterMailboxList:(id)a3 forMailboxWithPath:(id)a4 iisServer:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  if (!v15 || ![v15 count])
  {
    goto LABEL_19;
  }

  if (v7)
  {
    v9 = [v7 length];
    v10 = v9 == 0;
    if (!v8)
    {
      if (v9)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

LABEL_9:
    if ([v8 length] != 0 || !v10)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (v8)
  {
    v10 = 1;
    goto LABEL_9;
  }

LABEL_10:
  v11 = [v15 count];
  if (v11)
  {
    v12 = v11 - 1;
    do
    {
      v13 = [v15 objectAtIndex:v12];
      v14 = [v13 objectForKey:@"MailboxName"];
      if (([@"Contacts" isEqualToString:v14] & 1) != 0 || (objc_msgSend(@"Calendar", "isEqualToString:", v14) & 1) != 0 || (objc_msgSend(@"Journal", "isEqualToString:", v14) & 1) != 0 || (objc_msgSend(@"Notes", "isEqualToString:", v14) & 1) != 0 || objc_msgSend(@"Tasks", "isEqualToString:", v14))
      {
        [v15 removeObjectAtIndex:v12];
      }

      --v12;
    }

    while (v12 != -1);
  }

LABEL_19:
}

@end