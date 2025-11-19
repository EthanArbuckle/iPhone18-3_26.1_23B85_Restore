@interface CalDAVHTTPTrafficLog
+ (id)instance;
- (CalDAVHTTPTrafficLog)init;
- (void)logData:(id)a3;
- (void)logString:(id)a3;
- (void)logStringWithFormat:(id)a3;
@end

@implementation CalDAVHTTPTrafficLog

+ (id)instance
{
  v2 = CalDAVHTTPTrafficLogInstance;
  if (!CalDAVHTTPTrafficLogInstance)
  {
    v3 = objc_opt_new();
    v4 = CalDAVHTTPTrafficLogInstance;
    CalDAVHTTPTrafficLogInstance = v3;

    v2 = CalDAVHTTPTrafficLogInstance;
  }

  return v2;
}

- (CalDAVHTTPTrafficLog)init
{
  v6.receiver = self;
  v6.super_class = CalDAVHTTPTrafficLog;
  v2 = [(CalDAVHTTPTrafficLog *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D03980] filenameWithBasename:@"CalDAVHTTPTraffic"];
    v4 = [objc_alloc(MEMORY[0x277D03888]) initWithFilename:v3];
    [(CalDAVHTTPTrafficLog *)v2 setCurLogger:v4];
  }

  return v2;
}

- (void)logString:(id)a3
{
  v4 = a3;
  v6 = [(CalDAVHTTPTrafficLog *)self curLogger];
  v5 = [v4 dataUsingEncoding:4];

  [v6 logSnippet:v5];
}

- (void)logStringWithFormat:(id)a3
{
  v4 = a3;
  if ([(CalDAVHTTPTrafficLog *)self enabled])
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v4 arguments:&v6];
    [(CalDAVHTTPTrafficLog *)self logString:v5];
  }
}

- (void)logData:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVHTTPTrafficLog *)self curLogger];
  [v5 logSnippet:v4];
}

@end