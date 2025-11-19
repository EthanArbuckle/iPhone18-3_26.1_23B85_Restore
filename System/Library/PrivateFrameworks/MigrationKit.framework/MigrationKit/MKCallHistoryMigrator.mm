@interface MKCallHistoryMigrator
- (MKCallHistoryMigrator)init;
- (MKSIMLabel)label;
- (void)didImportCallHistory:(unint64_t)a3 size:(unint64_t)a4;
- (void)import:(id)a3;
- (void)importCallHistory:(id)a3 size:(unint64_t)a4;
- (void)importDataEncodedInJSON:(id)a3;
- (void)importNumbers:(id)a3;
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

- (void)importDataEncodedInJSON:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_autoreleasePoolPush();
  [(MKCallHistoryMigrator *)v4 import:v6];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(v4);
}

- (void)import:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v8];
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
      -[MKCallHistoryMigrator importCallHistory:size:](self, "importCallHistory:size:", v5, [v4 length]);
    }
  }
}

- (void)importNumbers:(id)a3
{
  v4 = a3;
  v9 = [[MKCallHistoryNumbers alloc] initWithSerializedData:v4];

  v5 = MEMORY[0x277CBEB98];
  v6 = [(MKCallHistoryNumbers *)v9 numbersInUse];
  v7 = [v5 setWithArray:v6];

  WeakRetained = objc_loadWeakRetained(&self->_label);
  [WeakRetained createLabelsForNumbersInUse:v7];
}

- (void)importCallHistory:(id)a3 size:(unint64_t)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_label);
    v8 = [MKCallHistory calls:v6 label:WeakRetained];

    v9 = [v6 count];
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
      v15 = [(MKMigrator *)self delegate];
      [v15 migratorWillExecuteOperation:self];

      objc_initWeak(&location, self);
      callHistoryManager = self->_callHistoryManager;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __48__MKCallHistoryMigrator_importCallHistory_size___block_invoke;
      v21[3] = &unk_2798DCE10;
      objc_copyWeak(v22, &location);
      v22[1] = v11;
      v22[2] = a4;
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

- (void)didImportCallHistory:(unint64_t)a3 size:(unint64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "did import call history. count=%lu", &v10, 0xCu);
  }

  [(MKMigrator *)self migratorDidAppendDataSize:a4];
  [(MKMigrator *)self migratorDidImportWithCount:a3];
  v8 = [(MKMigrator *)self delegate];
  [v8 migratorDidExecuteOperation:self];

  v9 = *MEMORY[0x277D85DE8];
}

- (MKSIMLabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end