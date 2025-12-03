@interface ML3DatabaseImportManager
- (void)collectDiagnostic:(id)diagnostic;
@end

@implementation ML3DatabaseImportManager

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  lastImportError = [(ML3DatabaseImportManager *)self lastImportError];
  [diagnosticCopy setLastImportError:lastImportError];

  _importOperations = [(ML3DatabaseImportManager *)self _importOperations];
  [diagnosticCopy setActiveImportOperations:_importOperations];

  _suspendedImportOperations = [(ML3DatabaseImportManager *)self _suspendedImportOperations];
  [diagnosticCopy setSuspendedImportOperations:_suspendedImportOperations];
}

@end