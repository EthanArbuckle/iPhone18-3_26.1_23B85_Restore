@interface EMMailboxRepository(MailUI)
- (id)mui_inboxExternalURLsFromMailboxes:()MailUI;
@end

@implementation EMMailboxRepository(MailUI)

- (id)mui_inboxExternalURLsFromMailboxes:()MailUI
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 ef_all:&__block_literal_global_1])
  {
    v4 = [MEMORY[0x277D07150] futureWithResult:v3];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          if ([v11 type] == 7)
          {
            if ([v11 isSmartMailbox])
            {
              v12 = v11;
              if ([v12 smartMailboxType] == 8)
              {
                v13 = [self mailboxObjectIDsForMailboxType:{objc_msgSend(v12, "type")}];
                allObjects = [v13 allObjects];
                v15 = [self mailboxesForObjectIDs:allObjects];

                [v5 addObjectsFromArray:v15];
              }
            }

            else
            {
              v12 = [MEMORY[0x277D07150] futureWithResult:v11];
              [v5 addObject:v12];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v4 = [MEMORY[0x277D07150] combine:v5];

    v3 = v18;
  }

  v16 = [v4 then:{&__block_literal_global_4, v18}];

  return v16;
}

@end