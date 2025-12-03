@interface CDSystemWatchdogStackshotReport
- (void)launchDiagnosticsReporter;
@end

@implementation CDSystemWatchdogStackshotReport

- (void)launchDiagnosticsReporter
{
  logfile = [(OSAReport *)self logfile];
  handleDiagnosticLog(3, logfile);
}

@end