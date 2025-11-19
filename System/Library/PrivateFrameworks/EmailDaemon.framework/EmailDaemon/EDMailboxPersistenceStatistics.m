@interface EDMailboxPersistenceStatistics
- (EDMailboxPersistenceStatistics)initWithMessagesInLargestMailbox:(int64_t)a3 messagesInSecondLargestMailbox:(int64_t)a4 messagesPerMailbox:(id)a5 mailboxesPerAccount:(id)a6 messagesPerAccount:(id)a7 accountTypePerAccount:(id)a8 messagesPerInbox:(id)a9 accountPerInbox:(id)a10;
- (NSString)debugDescription;
- (NSString)redactedDescription;
@end

@implementation EDMailboxPersistenceStatistics

- (EDMailboxPersistenceStatistics)initWithMessagesInLargestMailbox:(int64_t)a3 messagesInSecondLargestMailbox:(int64_t)a4 messagesPerMailbox:(id)a5 mailboxesPerAccount:(id)a6 messagesPerAccount:(id)a7 accountTypePerAccount:(id)a8 messagesPerInbox:(id)a9 accountPerInbox:(id)a10
{
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v16 = a9;
  v17 = a10;
  v26.receiver = self;
  v26.super_class = EDMailboxPersistenceStatistics;
  v18 = [(EDMailboxPersistenceStatistics *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accountTypePerAccount, a8);
    v19->_messagesInLargestMailbox = a3;
    v19->_messagesInSecondLargestMailbox = a4;
    objc_storeStrong(&v19->_messagesPerMailbox, a5);
    objc_storeStrong(&v19->_mailboxesPerAccount, a6);
    objc_storeStrong(&v19->_messagesPerAccount, a7);
    objc_storeStrong(&v19->_messagesPerInbox, a9);
    objc_storeStrong(&v19->_accountPerInbox, a10);
  }

  return v19;
}

- (NSString)debugDescription
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[EDMailboxPersistenceStatistics messagesInLargestMailbox](self, "messagesInLargestMailbox")}];
  [v3 appendFormat:@"Largest mailbox: %@ messages\n", v4];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[EDMailboxPersistenceStatistics messagesInSecondLargestMailbox](self, "messagesInSecondLargestMailbox")}];
  [v3 appendFormat:@"Second Largest mailbox: %@ messages\n", v5];

  [v3 appendFormat:@"Mailboxes per account:\n"];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = [(EDMailboxPersistenceStatistics *)self mailboxesPerAccount];
  v7 = [v6 keysSortedByValueUsingComparator:&__block_literal_global_42];

  v8 = [v7 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v8)
  {
    v9 = *v56;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v56 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v55 + 1) + 8 * i);
        v12 = [(EDMailboxPersistenceStatistics *)self mailboxesPerAccount];
        v13 = [v12 objectForKeyedSubscript:v11];
        [v3 appendFormat:@"\t%@: %lu\n", v11, objc_msgSend(v13, "count")];
      }

      v8 = [v7 countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v8);
  }

  [v3 appendFormat:@"Messages per account:\n"];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v14 = [(EDMailboxPersistenceStatistics *)self messagesPerAccount];
  v15 = [v14 keysSortedByValueUsingComparator:&__block_literal_global_17];

  v16 = [v15 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v16)
  {
    v17 = *v52;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v51 + 1) + 8 * j);
        v20 = [(EDMailboxPersistenceStatistics *)self messagesPerAccount];
        v21 = [v20 objectForKeyedSubscript:v19];
        [v3 appendFormat:@"\t%@: %@\n", v19, v21];
      }

      v16 = [v15 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v16);
  }

  [v3 appendFormat:@"Messages per inbox:\n"];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v22 = [(EDMailboxPersistenceStatistics *)self messagesPerInbox];
  v23 = [v22 keysSortedByValueUsingComparator:&__block_literal_global_25];

  v24 = [v23 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v24)
  {
    v25 = *v48;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v47 + 1) + 8 * k);
        v28 = [(EDMailboxPersistenceStatistics *)self messagesPerInbox];
        v29 = [v28 objectForKeyedSubscript:v27];
        [v3 appendFormat:@"\t%@: %@\n", v27, v29];
      }

      v24 = [v23 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v24);
  }

  [v3 appendFormat:@"Messages per mailbox:\n"];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v30 = [(EDMailboxPersistenceStatistics *)self messagesPerMailbox];
  obj = [v30 keysSortedByValueUsingComparator:&__block_literal_global_30_0];

  v31 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
  if (v31)
  {
    v32 = *v44;
LABEL_24:
    v33 = 0;
    while (1)
    {
      if (*v44 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v43 + 1) + 8 * v33);
      v35 = [(EDMailboxPersistenceStatistics *)self messagesPerMailbox];
      v36 = [v35 objectForKeyedSubscript:v34];
      v37 = [v36 integerValue] > 0;

      if (!v37)
      {
        break;
      }

      v38 = [(EDMailboxPersistenceStatistics *)self messagesPerMailbox];
      v39 = [v38 objectForKeyedSubscript:v34];
      [v3 appendFormat:@"\t%@: %@\n", v34, v39];

      if (v31 == ++v33)
      {
        v31 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
        if (v31)
        {
          goto LABEL_24;
        }

        break;
      }
    }
  }

  v40 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __50__EDMailboxPersistenceStatistics_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v8 = [v6 compare:v7];

  return v8;
}

- (NSString)redactedDescription
{
  v66 = *MEMORY[0x1E69E9840];
  v45 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v45 appendFormat:@"Largest mailbox: %ld messages\n", objc_msgSend(MEMORY[0x1E699B858], "roundedInteger:", -[EDMailboxPersistenceStatistics messagesInLargestMailbox](self, "messagesInLargestMailbox"))];
  [v45 appendFormat:@"Second Largest mailbox: %ld messages\n", objc_msgSend(MEMORY[0x1E699B858], "roundedInteger:", -[EDMailboxPersistenceStatistics messagesInSecondLargestMailbox](self, "messagesInSecondLargestMailbox"))];
  [v45 appendFormat:@"Mailboxes per account:\n"];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v3 = [(EDMailboxPersistenceStatistics *)self mailboxesPerAccount];
  v4 = [v3 keysSortedByValueUsingComparator:&__block_literal_global_39];

  v5 = v4;
  v6 = [v4 countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v6)
  {
    v7 = *v59;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v59 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v58 + 1) + 8 * i);
        v10 = MEMORY[0x1E699B858];
        v11 = [(EDMailboxPersistenceStatistics *)self mailboxesPerAccount];
        v12 = [v11 objectForKeyedSubscript:v9];
        [v45 appendFormat:@"\t%@: %ld\n", v9, objc_msgSend(v10, "roundedInteger:", objc_msgSend(v12, "count"))];
      }

      v4 = v5;
      v6 = [v5 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v6);
  }

  [v45 appendFormat:@"Messages per account:\n"];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13 = [(EDMailboxPersistenceStatistics *)self messagesPerAccount];
  obj = [v13 keysSortedByValueUsingComparator:&__block_literal_global_44_0];

  v14 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v14)
  {
    v15 = *v55;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v55 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v54 + 1) + 8 * j);
        v18 = MEMORY[0x1E699B858];
        v19 = [(EDMailboxPersistenceStatistics *)self messagesPerAccount];
        v20 = [v19 objectForKeyedSubscript:v17];
        [v45 appendFormat:@"\t%@: %ld\n", v17, objc_msgSend(v18, "roundedInteger:", objc_msgSend(v20, "integerValue"))];
      }

      v14 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v14);
  }

  [v45 appendFormat:@"Messages per inbox:\n"];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v21 = [(EDMailboxPersistenceStatistics *)self messagesPerInbox];
  obja = [v21 keysSortedByValueUsingComparator:&__block_literal_global_46_1];

  v22 = [obja countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v22)
  {
    v23 = *v51;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v51 != v23)
        {
          objc_enumerationMutation(obja);
        }

        v25 = *(*(&v50 + 1) + 8 * k);
        v26 = MEMORY[0x1E699B858];
        v27 = [(EDMailboxPersistenceStatistics *)self messagesPerInbox];
        v28 = [v27 objectForKeyedSubscript:v25];
        [v45 appendFormat:@"\t%@: %ld\n", v25, objc_msgSend(v26, "roundedInteger:", objc_msgSend(v28, "integerValue"))];
      }

      v22 = [obja countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v22);
  }

  [v45 appendFormat:@"Messages per mailbox:\n"];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = [(EDMailboxPersistenceStatistics *)self messagesPerMailbox];
  v30 = [v29 keysSortedByValueUsingComparator:&__block_literal_global_48_0];

  v31 = [v30 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v31)
  {
    v32 = *v47;
LABEL_24:
    v33 = 0;
    while (1)
    {
      if (*v47 != v32)
      {
        objc_enumerationMutation(v30);
      }

      v34 = *(*(&v46 + 1) + 8 * v33);
      v35 = [(EDMailboxPersistenceStatistics *)self messagesPerMailbox];
      v36 = [v35 objectForKeyedSubscript:v34];
      v37 = [v36 integerValue] > 0;

      if (!v37)
      {
        break;
      }

      v38 = MEMORY[0x1E699B858];
      v39 = [(EDMailboxPersistenceStatistics *)self messagesPerMailbox];
      v40 = [v39 objectForKeyedSubscript:v34];
      [v45 appendFormat:@"\t%@: %ld\n", v34, objc_msgSend(v38, "roundedInteger:", objc_msgSend(v40, "integerValue"))];

      if (v31 == ++v33)
      {
        v31 = [v30 countByEnumeratingWithState:&v46 objects:v62 count:16];
        if (v31)
        {
          goto LABEL_24;
        }

        break;
      }
    }
  }

  v41 = *MEMORY[0x1E69E9840];

  return v45;
}

uint64_t __53__EDMailboxPersistenceStatistics_redactedDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  v8 = [v6 compare:v7];

  return v8;
}

@end