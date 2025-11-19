@interface BLTPreviouslySentMessageStore
- (BLTPreviouslySentMessageStore)initWithMessageStorePath:(id)a3;
- (BOOL)isEmpty;
- (id)messageDigestForUnsentMessage:(id)a3 messageKey:(id)a4;
- (void)_cancelSave;
- (void)_enqueueSave;
- (void)_save;
- (void)clear;
- (void)dealloc;
- (void)invalidate;
- (void)recordMessageDigestAsPreviouslySent:(id)a3 messageKey:(id)a4;
- (void)removeDigestForKey:(id)a3;
- (void)setDirty:(BOOL)a3;
@end

@implementation BLTPreviouslySentMessageStore

- (BLTPreviouslySentMessageStore)initWithMessageStorePath:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = BLTPreviouslySentMessageStore;
  v6 = [(BLTPreviouslySentMessageStore *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, a3);
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v12 contentsAtPath:v5];

    v25 = 0;
    v14 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v13 error:&v25];
    v15 = v25;
    if (v15)
    {
      v16 = blt_general_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(BLTPreviouslySentMessageStore *)v15 initWithMessageStorePath:v16];
      }
    }

    v17 = [v14 decodeObjectOfClasses:v11 forKey:*MEMORY[0x277CCA308]];
    messageDigests = v7->_messageDigests;
    v7->_messageDigests = v17;

    if (!v7->_messageDigests)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v20 = v7->_messageDigests;
      v7->_messageDigests = v19;
    }

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("com.apple.bulletindistributor.previouslysentmessagestore", v21);
    queue = v7->_queue;
    v7->_queue = v22;
  }

  return v7;
}

- (id)messageDigestForUnsentMessage:(id)a3 messageKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__BLTPreviouslySentMessageStore_messageDigestForUnsentMessage_messageKey___block_invoke;
  v13[3] = &unk_278D31E38;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v16 = &v17;
  v9 = v6;
  v10 = v7;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __74__BLTPreviouslySentMessageStore_messageDigestForUnsentMessage_messageKey___block_invoke(uint64_t a1)
{
  v8 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v2 = [[BLTMessageDigest alloc] initWithMessage:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if ([*(*(*(a1 + 56) + 8) + 40) isEqual:v8])
  {
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  else
  {
    v7 = v8;
    if (!v8)
    {
      goto LABEL_6;
    }

    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
    [*(a1 + 32) setDirty:1];
  }

  v7 = v8;
LABEL_6:
}

- (void)recordMessageDigestAsPreviouslySent:(id)a3 messageKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__BLTPreviouslySentMessageStore_recordMessageDigestAsPreviouslySent_messageKey___block_invoke;
  block[3] = &unk_278D316C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

uint64_t __80__BLTPreviouslySentMessageStore_recordMessageDigestAsPreviouslySent_messageKey___block_invoke(void *a1)
{
  [*(a1[4] + 8) setObject:a1[5] forKey:a1[6]];
  v2 = a1[4];

  return [v2 setDirty:1];
}

- (void)removeDigestForKey:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__BLTPreviouslySentMessageStore_removeDigestForKey___block_invoke;
  v7[3] = &unk_278D31400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __52__BLTPreviouslySentMessageStore_removeDigestForKey___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setDirty:1];
}

- (void)invalidate
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__BLTPreviouslySentMessageStore_invalidate__block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)dealloc
{
  [(BLTPreviouslySentMessageStore *)self invalidate];
  v3.receiver = self;
  v3.super_class = BLTPreviouslySentMessageStore;
  [(BLTPreviouslySentMessageStore *)&v3 dealloc];
}

- (void)clear
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BLTPreviouslySentMessageStore_clear__block_invoke;
  block[3] = &unk_278D31428;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __38__BLTPreviouslySentMessageStore_clear__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 _save];
}

- (BOOL)isEmpty
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = v2->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__BLTPreviouslySentMessageStore_isEmpty__block_invoke;
  v5[3] = &unk_278D31650;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __40__BLTPreviouslySentMessageStore_isEmpty__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result == 0;
  return result;
}

- (void)_save
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0(&dword_241FB3000, v3, v4, "Error %@ writing to %@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueSave
{
  [(BLTPreviouslySentMessageStore *)self _cancelSave];
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  saveTimer = self->_saveTimer;
  self->_saveTimer = v3;

  v5 = self->_saveTimer;
  v6 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  v7 = self->_saveTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __45__BLTPreviouslySentMessageStore__enqueueSave__block_invoke;
  handler[3] = &unk_278D31428;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  dispatch_resume(self->_saveTimer);
}

void __45__BLTPreviouslySentMessageStore__enqueueSave__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _save];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

- (void)_cancelSave
{
  saveTimer = self->_saveTimer;
  if (saveTimer)
  {
    dispatch_source_cancel(saveTimer);
  }
}

- (void)setDirty:(BOOL)a3
{
  if (self->_dirty != a3 && a3)
  {
    [(BLTPreviouslySentMessageStore *)self _enqueueSave];
  }
}

- (void)initWithMessageStorePath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Error initializing unarchiver for previously sent message store: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithMessageStorePath:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0(&dword_241FB3000, a2, a3, "Exception %@ unarchiving %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end