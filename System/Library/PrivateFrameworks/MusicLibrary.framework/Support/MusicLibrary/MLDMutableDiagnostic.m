@interface MLDMutableDiagnostic
- (void)setActiveClients:(id)a3;
- (void)setActiveImportOperations:(id)a3;
- (void)setActiveTransactions:(id)a3;
- (void)setActiveXPCTransactions:(id)a3;
- (void)setDatabaseFileDiagnostics:(id)a3;
- (void)setDate:(id)a3;
- (void)setEnqueuedConcurrentOperations:(id)a3;
- (void)setEnqueuedLimitedQueueOperations:(id)a3;
- (void)setEnqueuedSerialOperations:(id)a3;
- (void)setLastImportError:(id)a3;
- (void)setLibraryConnectionDiagnostics:(id)a3;
- (void)setLocked:(BOOL)a3;
- (void)setSuspendedImportOperations:(id)a3;
@end

@implementation MLDMutableDiagnostic

- (void)setLibraryConnectionDiagnostics:(id)a3
{
  if (self->super._libraryConnectionDiagnostics != a3)
  {
    v5 = [a3 copy];
    libraryConnectionDiagnostics = self->super._libraryConnectionDiagnostics;
    self->super._libraryConnectionDiagnostics = v5;

    _objc_release_x1();
  }
}

- (void)setSuspendedImportOperations:(id)a3
{
  if (self->super._suspendedImportOperations != a3)
  {
    v5 = [a3 copy];
    suspendedImportOperations = self->super._suspendedImportOperations;
    self->super._suspendedImportOperations = v5;

    _objc_release_x1();
  }
}

- (void)setActiveImportOperations:(id)a3
{
  if (self->super._activeImportOperations != a3)
  {
    v5 = [a3 copy];
    activeImportOperations = self->super._activeImportOperations;
    self->super._activeImportOperations = v5;

    _objc_release_x1();
  }
}

- (void)setLastImportError:(id)a3
{
  v5 = a3;
  lastImportError = self->super._lastImportError;
  p_lastImportError = &self->super._lastImportError;
  if (lastImportError != v5)
  {
    v8 = v5;
    objc_storeStrong(p_lastImportError, a3);
    v5 = v8;
  }
}

- (void)setEnqueuedLimitedQueueOperations:(id)a3
{
  if (self->super._enqueuedLimitedQueueOperations != a3)
  {
    v5 = [a3 copy];
    enqueuedLimitedQueueOperations = self->super._enqueuedLimitedQueueOperations;
    self->super._enqueuedLimitedQueueOperations = v5;

    _objc_release_x1();
  }
}

- (void)setEnqueuedSerialOperations:(id)a3
{
  if (self->super._enqueuedSerialOperations != a3)
  {
    v5 = [a3 copy];
    enqueuedSerialOperations = self->super._enqueuedSerialOperations;
    self->super._enqueuedSerialOperations = v5;

    _objc_release_x1();
  }
}

- (void)setEnqueuedConcurrentOperations:(id)a3
{
  if (self->super._enqueuedConcurrentOperations != a3)
  {
    v5 = [a3 copy];
    enqueuedConcurrentOperations = self->super._enqueuedConcurrentOperations;
    self->super._enqueuedConcurrentOperations = v5;

    _objc_release_x1();
  }
}

- (void)setActiveTransactions:(id)a3
{
  if (self->super._activeTransactions != a3)
  {
    v5 = [a3 copy];
    activeTransactions = self->super._activeTransactions;
    self->super._activeTransactions = v5;

    _objc_release_x1();
  }
}

- (void)setDatabaseFileDiagnostics:(id)a3
{
  if (self->super._databaseFileDiagnostics != a3)
  {
    v5 = [a3 copy];
    databaseFileDiagnostics = self->super._databaseFileDiagnostics;
    self->super._databaseFileDiagnostics = v5;

    _objc_release_x1();
  }
}

- (void)setActiveXPCTransactions:(id)a3
{
  if (self->super._activeXPCTransactions != a3)
  {
    v5 = [a3 copy];
    activeXPCTransactions = self->super._activeXPCTransactions;
    self->super._activeXPCTransactions = v5;

    _objc_release_x1();
  }
}

- (void)setActiveClients:(id)a3
{
  if (self->super._activeClients != a3)
  {
    v5 = [a3 copy];
    activeClients = self->super._activeClients;
    self->super._activeClients = v5;

    _objc_release_x1();
  }
}

- (void)setLocked:(BOOL)a3
{
  if (self->super._locked != a3)
  {
    self->super._locked = a3;
  }
}

- (void)setDate:(id)a3
{
  v5 = a3;
  date = self->super._date;
  p_date = &self->super._date;
  if (date != v5)
  {
    v8 = v5;
    objc_storeStrong(p_date, a3);
    v5 = v8;
  }
}

@end