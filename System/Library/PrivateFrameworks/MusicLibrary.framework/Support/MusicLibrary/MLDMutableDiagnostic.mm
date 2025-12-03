@interface MLDMutableDiagnostic
- (void)setActiveClients:(id)clients;
- (void)setActiveImportOperations:(id)operations;
- (void)setActiveTransactions:(id)transactions;
- (void)setActiveXPCTransactions:(id)transactions;
- (void)setDatabaseFileDiagnostics:(id)diagnostics;
- (void)setDate:(id)date;
- (void)setEnqueuedConcurrentOperations:(id)operations;
- (void)setEnqueuedLimitedQueueOperations:(id)operations;
- (void)setEnqueuedSerialOperations:(id)operations;
- (void)setLastImportError:(id)error;
- (void)setLibraryConnectionDiagnostics:(id)diagnostics;
- (void)setLocked:(BOOL)locked;
- (void)setSuspendedImportOperations:(id)operations;
@end

@implementation MLDMutableDiagnostic

- (void)setLibraryConnectionDiagnostics:(id)diagnostics
{
  if (self->super._libraryConnectionDiagnostics != diagnostics)
  {
    v5 = [diagnostics copy];
    libraryConnectionDiagnostics = self->super._libraryConnectionDiagnostics;
    self->super._libraryConnectionDiagnostics = v5;

    _objc_release_x1();
  }
}

- (void)setSuspendedImportOperations:(id)operations
{
  if (self->super._suspendedImportOperations != operations)
  {
    v5 = [operations copy];
    suspendedImportOperations = self->super._suspendedImportOperations;
    self->super._suspendedImportOperations = v5;

    _objc_release_x1();
  }
}

- (void)setActiveImportOperations:(id)operations
{
  if (self->super._activeImportOperations != operations)
  {
    v5 = [operations copy];
    activeImportOperations = self->super._activeImportOperations;
    self->super._activeImportOperations = v5;

    _objc_release_x1();
  }
}

- (void)setLastImportError:(id)error
{
  errorCopy = error;
  lastImportError = self->super._lastImportError;
  p_lastImportError = &self->super._lastImportError;
  if (lastImportError != errorCopy)
  {
    v8 = errorCopy;
    objc_storeStrong(p_lastImportError, error);
    errorCopy = v8;
  }
}

- (void)setEnqueuedLimitedQueueOperations:(id)operations
{
  if (self->super._enqueuedLimitedQueueOperations != operations)
  {
    v5 = [operations copy];
    enqueuedLimitedQueueOperations = self->super._enqueuedLimitedQueueOperations;
    self->super._enqueuedLimitedQueueOperations = v5;

    _objc_release_x1();
  }
}

- (void)setEnqueuedSerialOperations:(id)operations
{
  if (self->super._enqueuedSerialOperations != operations)
  {
    v5 = [operations copy];
    enqueuedSerialOperations = self->super._enqueuedSerialOperations;
    self->super._enqueuedSerialOperations = v5;

    _objc_release_x1();
  }
}

- (void)setEnqueuedConcurrentOperations:(id)operations
{
  if (self->super._enqueuedConcurrentOperations != operations)
  {
    v5 = [operations copy];
    enqueuedConcurrentOperations = self->super._enqueuedConcurrentOperations;
    self->super._enqueuedConcurrentOperations = v5;

    _objc_release_x1();
  }
}

- (void)setActiveTransactions:(id)transactions
{
  if (self->super._activeTransactions != transactions)
  {
    v5 = [transactions copy];
    activeTransactions = self->super._activeTransactions;
    self->super._activeTransactions = v5;

    _objc_release_x1();
  }
}

- (void)setDatabaseFileDiagnostics:(id)diagnostics
{
  if (self->super._databaseFileDiagnostics != diagnostics)
  {
    v5 = [diagnostics copy];
    databaseFileDiagnostics = self->super._databaseFileDiagnostics;
    self->super._databaseFileDiagnostics = v5;

    _objc_release_x1();
  }
}

- (void)setActiveXPCTransactions:(id)transactions
{
  if (self->super._activeXPCTransactions != transactions)
  {
    v5 = [transactions copy];
    activeXPCTransactions = self->super._activeXPCTransactions;
    self->super._activeXPCTransactions = v5;

    _objc_release_x1();
  }
}

- (void)setActiveClients:(id)clients
{
  if (self->super._activeClients != clients)
  {
    v5 = [clients copy];
    activeClients = self->super._activeClients;
    self->super._activeClients = v5;

    _objc_release_x1();
  }
}

- (void)setLocked:(BOOL)locked
{
  if (self->super._locked != locked)
  {
    self->super._locked = locked;
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  date = self->super._date;
  p_date = &self->super._date;
  if (date != dateCopy)
  {
    v8 = dateCopy;
    objc_storeStrong(p_date, date);
    dateCopy = v8;
  }
}

@end