@interface SGDatabaseJournal
- (BOOL)stopJournaling;
- (void)_closeCurrentFile;
@end

@implementation SGDatabaseJournal

- (BOOL)stopJournaling
{
  if (self->_inMemory)
  {
    v2 = 0;
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    queue = self->_queue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __35__SGDatabaseJournal_stopJournaling__block_invoke;
    v5[3] = &unk_2789561D0;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(queue, v5);
    v2 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  return v2 & 1;
}

uint64_t __35__SGDatabaseJournal_stopJournaling__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 40);
  *(*(result + 32) + 40) = 0;
  return result;
}

- (void)_closeCurrentFile
{
  [(SGDatabaseJournalFile *)self->_currentFile destroyAndUnlinkIfEmpty];
  currentFile = self->_currentFile;
  self->_currentFile = 0;
}

@end