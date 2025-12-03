@interface STDiagnosticCollector
- (BOOL)collectScreenTimeDatabaseAndReturnError:(id *)error;
@end

@implementation STDiagnosticCollector

- (BOOL)collectScreenTimeDatabaseAndReturnError:(id *)error
{
  selfCopy = self;
  STDiagnosticCollector.collectScreenTimeDatabase()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_100002FA4();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

@end