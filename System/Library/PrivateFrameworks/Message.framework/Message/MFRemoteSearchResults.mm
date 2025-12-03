@interface MFRemoteSearchResults
- (MFRemoteSearchResults)init;
- (unint64_t)count;
- (void)addRemoteID:(id)d mailbox:(id)mailbox;
- (void)addRemoteIDs:(id)ds mailbox:(id)mailbox;
- (void)enumerateMailboxesAndRemoteIDsUsingBlock:(id)block;
@end

@implementation MFRemoteSearchResults

- (MFRemoteSearchResults)init
{
  v6.receiver = self;
  v6.super_class = MFRemoteSearchResults;
  v2 = [(MFRemoteSearchResults *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mailboxToRemoteIdDictionary = v2->_mailboxToRemoteIdDictionary;
    v2->_mailboxToRemoteIdDictionary = v3;
  }

  return v2;
}

- (void)addRemoteID:(id)d mailbox:(id)mailbox
{
  dCopy = d;
  mailboxCopy = mailbox;
  mailboxToRemoteIdDictionary = [(MFRemoteSearchResults *)self mailboxToRemoteIdDictionary];
  v8 = [mailboxToRemoteIdDictionary objectForKeyedSubscript:mailboxCopy];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mailboxToRemoteIdDictionary2 = [(MFRemoteSearchResults *)self mailboxToRemoteIdDictionary];
    [mailboxToRemoteIdDictionary2 setObject:v9 forKeyedSubscript:mailboxCopy];

    v8 = v9;
  }

  [v8 addObject:dCopy];
}

- (void)addRemoteIDs:(id)ds mailbox:(id)mailbox
{
  v19 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  mailboxCopy = mailbox;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        stringValue = [*(*(&v14 + 1) + 8 * v11) stringValue];
        [(MFRemoteSearchResults *)self addRemoteID:stringValue mailbox:mailboxCopy];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mailboxToRemoteIdDictionary = [(MFRemoteSearchResults *)self mailboxToRemoteIdDictionary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__MFRemoteSearchResults_count__block_invoke;
  v5[3] = &unk_1E7AA7750;
  v5[4] = &v6;
  [mailboxToRemoteIdDictionary enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __30__MFRemoteSearchResults_count__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(*(a1 + 32) + 8) + 24) += [v4 count];
}

- (void)enumerateMailboxesAndRemoteIDsUsingBlock:(id)block
{
  blockCopy = block;
  mailboxToRemoteIdDictionary = [(MFRemoteSearchResults *)self mailboxToRemoteIdDictionary];
  [mailboxToRemoteIdDictionary enumerateKeysAndObjectsUsingBlock:blockCopy];
}

@end