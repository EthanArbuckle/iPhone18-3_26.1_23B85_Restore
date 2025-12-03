@interface MKCallHistoryMigrator
- (MKCallHistoryMigrator)init;
- (MKSIMLabel)label;
- (void)didImportCallHistory:(unint64_t)history size:(unint64_t)size;
- (void)import:(id)import;
- (void)importCallHistory:(id)history size:(unint64_t)size;
- (void)importDataEncodedInJSON:(id)n;
- (void)importNumbers:(id)numbers;
@end

@implementation MKCallHistoryMigrator

- (MKCallHistoryMigrator)init
{
  v7.receiver = self;
  v7.super_class = MKCallHistoryMigrator;
  v2 = [(MKMigrator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(MKMigrator *)v2 setType:6];
    v4 = objc_alloc_init(MEMORY[0x277CF7D40]);
    callHistoryManager = v3->_callHistoryManager;
    v3->_callHistoryManager = v4;
  }

  return v3;
}

- (void)importDataEncodedInJSON:(id)n
{
  nCopy = n;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_autoreleasePoolPush();
  [(MKCallHistoryMigrator *)selfCopy import:nCopy];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(selfCopy);
}

- (void)import:(id)import
{
  importCopy = import;
  v8 = 0;
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:importCopy options:0 error:&v8];
  v6 = v8;
  if (v6)
  {
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MKCallHistoryMigrator *)v6 import:v7];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MKCallHistoryMigrator *)self importNumbers:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MKCallHistoryMigrator importCallHistory:size:](self, "importCallHistory:size:", v5, [importCopy length]);
    }
  }
}

- (void)importNumbers:(id)numbers
{
  numbersCopy = numbers;
  v9 = [[MKCallHistoryNumbers alloc] initWithSerializedData:numbersCopy];

  v5 = MEMORY[0x277CBEB98];
  numbersInUse = [(MKCallHistoryNumbers *)v9 numbersInUse];
  v7 = [v5 setWithArray:numbersInUse];

  WeakRetained = objc_loadWeakRetained(&self->_label);
  [WeakRetained createLabelsForNumbersInUse:v7];
}

- (void)importCallHistory:(id)history size:(unint64_t)size
{
  v27[1] = *MEMORY[0x277D85DE8];
  historyCopy = history;
  if ([historyCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_label);
    v8 = [MKCallHistory calls:historyCopy label:WeakRetained];

    v9 = [historyCopy count];
    v10 = v9 - [v8 count];
    v11 = [v8 count];
    if (v10 >= 1)
    {
      v12 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v25 = @"could not parse call history data.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v14 = [v12 errorWithDomain:@"MKCallHistoryError" code:0 userInfo:v13];
      [(MKMigrator *)self migratorDidFailWithImportError:v14 count:v10];
    }

    if (v11)
    {
      delegate = [(MKMigrator *)self delegate];
      [delegate migratorWillExecuteOperation:self];

      objc_initWeak(&location, self);
      callHistoryManager = self->_callHistoryManager;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __48__MKCallHistoryMigrator_importCallHistory_size___block_invoke;
      v21[3] = &unk_2798DCE10;
      objc_copyWeak(v22, &location);
      v22[1] = v11;
      v22[2] = size;
      [(CHManager *)callHistoryManager addArrayToCallHistory:v8 withCompletion:v21];
      objc_destroyWeak(v22);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v17 = +[MKLog log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MKCallHistoryMigrator importCallHistory:v17 size:?];
    }

    v18 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"could not parse call history data.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v19 = [v18 errorWithDomain:@"MKCallHistoryError" code:0 userInfo:v8];
    [(MKMigrator *)self migratorDidFailWithImportError:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __48__MKCallHistoryMigrator_importCallHistory_size___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didImportCallHistory:*(a1 + 40) size:*(a1 + 48)];
}

- (void)didImportCallHistory:(unint64_t)history size:(unint64_t)size
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    historyCopy = history;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "did import call history. count=%lu", &v10, 0xCu);
  }

  [(MKMigrator *)self migratorDidAppendDataSize:size];
  [(MKMigrator *)self migratorDidImportWithCount:history];
  delegate = [(MKMigrator *)self delegate];
  [delegate migratorDidExecuteOperation:self];

  v9 = *MEMORY[0x277D85DE8];
}

- (MKSIMLabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end