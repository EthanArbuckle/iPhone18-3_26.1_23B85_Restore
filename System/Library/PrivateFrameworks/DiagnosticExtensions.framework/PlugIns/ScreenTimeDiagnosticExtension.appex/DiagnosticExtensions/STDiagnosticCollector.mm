@interface STDiagnosticCollector
- (BOOL)collectScreenTimeDatabaseAndReturnError:(id *)a3;
@end

@implementation STDiagnosticCollector

- (BOOL)collectScreenTimeDatabaseAndReturnError:(id *)a3
{
  v4 = self;
  STDiagnosticCollector.collectScreenTimeDatabase()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_100002FA4();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

@end