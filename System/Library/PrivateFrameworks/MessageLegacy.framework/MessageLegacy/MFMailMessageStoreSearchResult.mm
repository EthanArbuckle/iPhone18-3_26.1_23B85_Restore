@interface MFMailMessageStoreSearchResult
- (MFMailMessageStoreSearchResult)init;
- (unint64_t)count;
- (void)addRemoteID:(id)a3 mailbox:(id)a4;
- (void)dealloc;
- (void)enumerateMailboxesAndRemoteIDsUsingBlock:(id)a3;
@end

@implementation MFMailMessageStoreSearchResult

- (MFMailMessageStoreSearchResult)init
{
  v4.receiver = self;
  v4.super_class = MFMailMessageStoreSearchResult;
  v2 = [(MFMailMessageStoreSearchResult *)&v4 init];
  if (v2)
  {
    v2->_mailboxToRemoteIdDictionary = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFMailMessageStoreSearchResult;
  [(MFMailMessageStoreSearchResult *)&v3 dealloc];
}

- (void)addRemoteID:(id)a3 mailbox:(id)a4
{
  v7 = [(NSMutableDictionary *)[(MFMailMessageStoreSearchResult *)self mailboxToRemoteIdDictionary] objectForKeyedSubscript:a4];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSMutableDictionary *)[(MFMailMessageStoreSearchResult *)self mailboxToRemoteIdDictionary] setObject:v7 forKeyedSubscript:a4];
  }

  [v7 addObject:a3];
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(MFMailMessageStoreSearchResult *)self mailboxToRemoteIdDictionary];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__MFMailMessageStoreSearchResult_count__block_invoke;
  v5[3] = &unk_2798B7540;
  v5[4] = &v6;
  [(NSMutableDictionary *)v2 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __39__MFMailMessageStoreSearchResult_count__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (void)enumerateMailboxesAndRemoteIDsUsingBlock:(id)a3
{
  v4 = [(MFMailMessageStoreSearchResult *)self mailboxToRemoteIdDictionary];

  [(NSMutableDictionary *)v4 enumerateKeysAndObjectsUsingBlock:a3];
}

@end