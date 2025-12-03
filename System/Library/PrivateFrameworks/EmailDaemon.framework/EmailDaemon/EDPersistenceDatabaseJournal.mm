@interface EDPersistenceDatabaseJournal
- (EDPersistenceDatabaseJournal)initWithJournalManager:(id)manager number:(unint64_t)number;
- (NSString)path;
- (id)description;
- (unint64_t)referenceCount;
- (void)checkIn;
- (void)checkOut;
@end

@implementation EDPersistenceDatabaseJournal

- (EDPersistenceDatabaseJournal)initWithJournalManager:(id)manager number:(unint64_t)number
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = EDPersistenceDatabaseJournal;
  v8 = [(EDPersistenceDatabaseJournal *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_journalManager, manager);
    v9->_number = number;
    v9->_referenceCountLock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = EDPersistenceDatabaseJournal;
  v4 = [(EDPersistenceDatabaseJournal *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ number: %lu, referenceCount: %lu", v4, -[EDPersistenceDatabaseJournal number](self, "number"), -[EDPersistenceDatabaseJournal referenceCount](self, "referenceCount")];

  return v5;
}

- (NSString)path
{
  journalManager = [(EDPersistenceDatabaseJournal *)self journalManager];
  journalDirectoryPath = [journalManager journalDirectoryPath];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EDPersistenceDatabaseJournal number](self, "number")}];
  stringValue = [v5 stringValue];
  v7 = [journalDirectoryPath stringByAppendingPathComponent:stringValue];

  return v7;
}

- (void)checkOut
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = +[EDPersistenceDatabaseJournalManager log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "Checking out %@", &v5, 0xCu);
  }

  os_unfair_lock_lock(&self->_referenceCountLock);
  ++self->_referenceCount;
  os_unfair_lock_unlock(&self->_referenceCountLock);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)checkIn
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = +[EDPersistenceDatabaseJournalManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Checking in %@", &v10, 0xCu);
  }

  os_unfair_lock_lock(&self->_referenceCountLock);
  referenceCount = self->_referenceCount;
  if (!referenceCount)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabaseJournal.m" lineNumber:72 description:@"reference count should be non-zero"];

    referenceCount = self->_referenceCount;
  }

  v6 = referenceCount - 1;
  self->_referenceCount = referenceCount - 1;
  os_unfair_lock_unlock(&self->_referenceCountLock);
  if (!v6)
  {
    journalManager = [(EDPersistenceDatabaseJournal *)self journalManager];
    [journalManager _journalNoLongerReferenced:self];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)referenceCount
{
  os_unfair_lock_lock(&self->_referenceCountLock);
  referenceCount = self->_referenceCount;
  os_unfair_lock_unlock(&self->_referenceCountLock);
  return referenceCount;
}

@end