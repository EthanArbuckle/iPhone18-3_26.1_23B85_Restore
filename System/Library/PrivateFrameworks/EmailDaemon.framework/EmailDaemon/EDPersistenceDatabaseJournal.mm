@interface EDPersistenceDatabaseJournal
- (EDPersistenceDatabaseJournal)initWithJournalManager:(id)a3 number:(unint64_t)a4;
- (NSString)path;
- (id)description;
- (unint64_t)referenceCount;
- (void)checkIn;
- (void)checkOut;
@end

@implementation EDPersistenceDatabaseJournal

- (EDPersistenceDatabaseJournal)initWithJournalManager:(id)a3 number:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = EDPersistenceDatabaseJournal;
  v8 = [(EDPersistenceDatabaseJournal *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_journalManager, a3);
    v9->_number = a4;
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
  v3 = [(EDPersistenceDatabaseJournal *)self journalManager];
  v4 = [v3 journalDirectoryPath];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EDPersistenceDatabaseJournal number](self, "number")}];
  v6 = [v5 stringValue];
  v7 = [v4 stringByAppendingPathComponent:v6];

  return v7;
}

- (void)checkOut
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = +[EDPersistenceDatabaseJournalManager log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
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
    v11 = self;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Checking in %@", &v10, 0xCu);
  }

  os_unfair_lock_lock(&self->_referenceCountLock);
  referenceCount = self->_referenceCount;
  if (!referenceCount)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"EDPersistenceDatabaseJournal.m" lineNumber:72 description:@"reference count should be non-zero"];

    referenceCount = self->_referenceCount;
  }

  v6 = referenceCount - 1;
  self->_referenceCount = referenceCount - 1;
  os_unfair_lock_unlock(&self->_referenceCountLock);
  if (!v6)
  {
    v7 = [(EDPersistenceDatabaseJournal *)self journalManager];
    [v7 _journalNoLongerReferenced:self];
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