@interface _KSTextReplacementClientStore
- (_KSTextReplacementClientStore)init;
- (id)phraseShortcuts;
- (id)textReplacementEntries;
- (void)addEntries:(id)entries removeEntries:(id)removeEntries withCompletionHandler:(id)handler;
- (void)modifyEntry:(id)entry toEntry:(id)toEntry withCompletionHandler:(id)handler;
- (void)performTransaction:(id)transaction completionHandler:(id)handler;
- (void)queryTextReplacementsWithCallback:(id)callback;
- (void)queryTextReplacementsWithPredicate:(id)predicate callback:(id)callback;
- (void)requestSyncWithCompletionBlock:(id)block;
@end

@implementation _KSTextReplacementClientStore

- (_KSTextReplacementClientStore)init
{
  v6.receiver = self;
  v6.super_class = _KSTextReplacementClientStore;
  v2 = [(_KSTextReplacementClientStore *)&v6 init];
  if (v2)
  {
    v3 = +[_KSTextReplacementServerConnection serviceConnection];
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

- (void)modifyEntry:(id)entry toEntry:(id)toEntry withCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  toEntryCopy = toEntry;
  handlerCopy = handler;
  if ([toEntryCopy isEquivalentTo:entryCopy])
  {
    v11 = KSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[_KSTextReplacementClientStore modifyEntry:toEntry:withCompletionHandler:]";
      _os_log_impl(&dword_2557E2000, v11, OS_LOG_TYPE_INFO, "%s  not modifying entry as old and new are the same", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v12 = [_KSTextReplacementHelper validateTextReplacement:toEntryCopy];
    if (v12)
    {
      v13 = v12;
      [toEntryCopy setPriorValue:entryCopy];
      v14 = [_KSTextReplacementHelper errorWithCode:v13 forEntry:toEntryCopy];
      (handlerCopy)[2](handlerCopy, v14);
    }

    else
    {
      v21 = toEntryCopy;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
      v20 = entryCopy;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __75___KSTextReplacementClientStore_modifyEntry_toEntry_withCompletionHandler___block_invoke;
      v18[3] = &unk_2797F6F98;
      v19 = handlerCopy;
      [(_KSTextReplacementClientStore *)self addEntries:v15 removeEntries:v16 withCompletionHandler:v18];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addEntries:(id)entries removeEntries:(id)removeEntries withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80___KSTextReplacementClientStore_addEntries_removeEntries_withCompletionHandler___block_invoke;
  v11[3] = &unk_2797F6FC0;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(_KSTextReplacementServerConnection *)connection addEntries:entries removeEntries:removeEntries withReply:v11];
}

- (void)requestSyncWithCompletionBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64___KSTextReplacementClientStore_requestSyncWithCompletionBlock___block_invoke;
  v7[3] = &unk_2797F6FE8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_KSTextReplacementServerConnection *)connection requestSyncWithReply:v7];
}

- (id)textReplacementEntries
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55___KSTextReplacementClientStore_textReplacementEntries__block_invoke;
  v8[3] = &unk_2797F7030;
  v10 = &v11;
  v4 = v3;
  v9 = v4;
  [(_KSTextReplacementClientStore *)self queryTextReplacementsWithCallback:v8];
  v5 = dispatch_time(0, 1000000000);
  v6 = 0;
  if (!dispatch_semaphore_wait(v4, v5))
  {
    v6 = v12[5];
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)queryTextReplacementsWithCallback:(id)callback
{
  callbackCopy = callback;
  connection = self->_connection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67___KSTextReplacementClientStore_queryTextReplacementsWithCallback___block_invoke;
  v7[3] = &unk_2797F7058;
  v8 = callbackCopy;
  v6 = callbackCopy;
  [(_KSTextReplacementServerConnection *)connection queryTextReplacementEntriesWithReply:v7];
}

- (void)queryTextReplacementsWithPredicate:(id)predicate callback:(id)callback
{
  callbackCopy = callback;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77___KSTextReplacementClientStore_queryTextReplacementsWithPredicate_callback___block_invoke;
  v9[3] = &unk_2797F7058;
  v10 = callbackCopy;
  v8 = callbackCopy;
  [(_KSTextReplacementServerConnection *)connection queryTextReplacementsWithPredicate:predicate reply:v9];
}

- (void)performTransaction:(id)transaction completionHandler:(id)handler
{
  transactionCopy = transaction;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  valueToInsert = [transactionCopy valueToInsert];

  if (valueToInsert && (v11 = objc_opt_class(), [transactionCopy valueToInsert], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "textReplaceEntryFromTIDictionaryValue:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
  {
    [array addObject:v13];

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  valueToDelete = [transactionCopy valueToDelete];

  if (valueToDelete)
  {
    v16 = objc_opt_class();
    valueToDelete2 = [transactionCopy valueToDelete];
    valueToDelete = [v16 textReplaceEntryFromTIDictionaryValue:valueToDelete2];

    if ((v14 & 1) == 0)
    {
      [array2 addObject:valueToDelete];
    }
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70___KSTextReplacementClientStore_performTransaction_completionHandler___block_invoke;
  v19[3] = &unk_2797F6F98;
  v20 = handlerCopy;
  v18 = handlerCopy;
  [(_KSTextReplacementClientStore *)self addEntries:array removeEntries:array2 withCompletionHandler:v19];
}

- (id)phraseShortcuts
{
  v17 = *MEMORY[0x277D85DE8];
  textReplacementEntries = [(_KSTextReplacementClientStore *)self textReplacementEntries];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = textReplacementEntries;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [objc_opt_class() transactionFromTextReplacementEntry:*(*(&v12 + 1) + 8 * i) forDelete:{0, v12}];
        [array addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return array;
}

@end