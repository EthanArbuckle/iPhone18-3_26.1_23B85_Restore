@interface CDSystemWatchdogStackshotReport
- (void)launchDiagnosticsReporter;
@end

@implementation CDSystemWatchdogStackshotReport

- (void)launchDiagnosticsReporter
{
  v2 = [(OSAReport *)self logfile];
  handleDiagnosticLog(3, v2);
}

@end