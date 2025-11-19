@interface MFNanoServerMessageFetchService
- (id)_criterionForFilterType:(unint64_t)a3;
- (id)_criterionForMessagesFromMailbox:(id)a3 param:(id)a4;
- (id)_criterionForMessagesFromMailboxes:(id)a3 param:(id)a4;
- (id)_filterTypeCriterionForMailbox:(id)a3;
- (id)criterionForMailboxUrl:(id)a3;
- (id)messagesForMailboxes:(id)a3 param:(id)a4;
@end

@implementation MFNanoServerMessageFetchService

- (id)messagesForMailboxes:(id)a3 param:(id)a4
{
  v6 = a4;
  v7 = [(MFNanoServerMessageFetchService *)self _criterionForMessagesFromMailboxes:a3 param:v6];
  if (v7)
  {
    v11 = 0;
    v8 = +[MFMailMessageLibrary defaultInstance];
    v9 = [v8 loadLibraryMessagesFromLibraryMatchingCriterion:v7 count:objc_msgSend(v6 protectedDataAvailable:{"count"), &v11}];

    [v6 setProtectedDataAvailable:v11];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

- (id)_criterionForMessagesFromMailboxes:(id)a3 param:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(MFNanoServerMessageFetchService *)self _criterionForMessagesFromMailbox:*(*(&v16 + 1) + 8 * i) param:v7, v16];
        if (v13)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [MFMessageCriterion orCompoundCriterionWithCriteria:v8];

  return v14;
}

- (id)_criterionForMessagesFromMailbox:(id)a3 param:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 url];
  v9 = [(MFNanoServerMessageFetchService *)self criterionForMailboxUrl:v8];

  if (v9)
  {
    v10 = objc_alloc_init(NSMutableArray);
    [v10 addObject:v9];
    v11 = [(MFNanoServerMessageFetchService *)self _filterTypeCriterionForMailbox:v6];
    if (v11)
    {
      [v10 addObject:v11];
    }

    v12 = [v7 beforeDateReceived];

    if (v12)
    {
      v13 = [MFMessageCriterion alloc];
      v14 = [v7 beforeDateReceived];
      [v14 timeIntervalSince1970];
      v16 = [NSString stringWithFormat:@"%lld", v15];
      v17 = [v13 initWithType:11 qualifier:5 expression:v16];

      [v10 addObject:v17];
    }

    v18 = [v7 dateReceivedLimit];

    if (v18)
    {
      v19 = [MFMessageCriterion alloc];
      v20 = [v7 dateReceivedLimit];
      [v20 timeIntervalSince1970];
      v22 = [NSString stringWithFormat:@"%lld", (v21 + -1.0)];
      v23 = [v19 initWithType:11 qualifier:6 expression:v22];

      [v10 addObject:v23];
    }

    v24 = [v7 conversationId];

    if (v24)
    {
      v25 = [MFMessageCriterion alloc];
      v26 = [v7 conversationId];
      v27 = [v25 initWithType:34 qualifier:3 expression:v26];

      [v10 addObject:v27];
    }

    v28 = [MFMessageCriterion andCompoundCriterionWithCriteria:v10];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)criterionForMailboxUrl:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 absoluteString];
    v6 = [MFMessageCriterion criterionForMailboxURL:v5];
  }

  else
  {
    v7 = +[MailAccount nano_activeMailAccounts];
    v17 = v7;
    if (v7)
    {
      v8 = +[NSMutableArray array];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = [*(*(&v18 + 1) + 8 * i) mailboxUidOfType:7 createIfNeeded:0];
            v14 = [v13 URLString];
            v15 = [MFMessageCriterion criterionForMailboxURL:v14];
            [v8 addObject:v15];
          }

          v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      v6 = [MFMessageCriterion orCompoundCriterionWithCriteria:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_filterTypeCriterionForMailbox:(id)a3
{
  v4 = a3;
  if ([v4 hasFilterType:1])
  {
    v5 = 0;
  }

  else
  {
    v6 = +[NSMutableArray array];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [&off_100163798 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(&off_100163798);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) unsignedIntegerValue];
          if ([v4 hasFilterType:v10])
          {
            v11 = [(MFNanoServerMessageFetchService *)self _criterionForFilterType:v10];
            if (v11)
            {
              [v6 addObject:v11];
            }
          }
        }

        v7 = [&off_100163798 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v5 = [MFMessageCriterion orCompoundCriterionWithCriteria:v6];
  }

  return v5;
}

- (id)_criterionForFilterType:(unint64_t)a3
{
  v3 = 0;
  if (a3 > 15)
  {
    switch(a3)
    {
      case 0x10uLL:
        v3 = +[MFMessageCriterion includesMeCriterion];
        break;
      case 0x20uLL:
        v3 = +[MFMessageCriterion threadNotifyMessageCriterion];
        break;
      case 0x40uLL:
        v3 = +[MFMessageCriterion todayMessageCriterion];
        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        v3 = [MFMessageCriterion senderIsVIPCriterion:1];
        break;
      case 4uLL:
        v3 = +[MFMessageCriterion flaggedMessageCriterion];
        break;
      case 8uLL:
        v3 = +[MFMessageCriterion unreadMessageCriterion];
        break;
    }
  }

  return v3;
}

@end