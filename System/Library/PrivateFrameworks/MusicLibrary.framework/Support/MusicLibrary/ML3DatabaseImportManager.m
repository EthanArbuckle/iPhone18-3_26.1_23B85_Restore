@interface ML3DatabaseImportManager
- (void)collectDiagnostic:(id)a3;
@end

@implementation ML3DatabaseImportManager

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  v5 = [(ML3DatabaseImportManager *)self lastImportError];
  [v4 setLastImportError:v5];

  v6 = [(ML3DatabaseImportManager *)self _importOperations];
  [v4 setActiveImportOperations:v6];

  v7 = [(ML3DatabaseImportManager *)self _suspendedImportOperations];
  [v4 setSuspendedImportOperations:v7];
}

@end