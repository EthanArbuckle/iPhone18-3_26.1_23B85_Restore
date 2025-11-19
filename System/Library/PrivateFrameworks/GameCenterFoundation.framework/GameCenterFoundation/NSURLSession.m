@interface NSURLSession
@end

@implementation NSURLSession

void __48__NSURLSession_GKAdditions___gkForClientProcess__block_invoke()
{
  v0 = [GKMetricsReportingSessionDelegate alloc];
  v1 = +[GKAPIReporter reporter];
  v6 = [(GKMetricsReportingSessionDelegate *)v0 initWithReporter:v1];

  v2 = MEMORY[0x277CCAD30];
  v3 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v4 = [v2 sessionWithConfiguration:v3 delegate:v6 delegateQueue:0];
  v5 = _gkForClientProcess_session;
  _gkForClientProcess_session = v4;
}

@end