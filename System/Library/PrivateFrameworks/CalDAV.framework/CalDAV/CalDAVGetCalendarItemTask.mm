@interface CalDAVGetCalendarItemTask
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CalDAVGetCalendarItemTask

- (void)finishCoreDAVTaskWithError:(id)error
{
  errorCopy = error;
  responseHeaders = [(CalDAVGetCalendarItemTask *)self responseHeaders];
  v6 = [responseHeaders CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];

  responseBodyParser = [(CalDAVGetCalendarItemTask *)self responseBodyParser];
  octetStreamData = [responseBodyParser octetStreamData];

  v9 = [CalDAVCalendarItemData alloc];
  v10 = [(CalDAVGetCalendarItemTask *)self url];
  v11 = [(CoreDAVLeafDataPayload *)v9 initWithURL:v10 eTag:v6 dataPayload:octetStreamData inContainerWithURL:0 withAccountInfoProvider:0];

  [(CoreDAVGetTask *)self setAppSpecificDataItemResult:v11];
  v12 = [(CalDAVGetCalendarItemTask *)self url];
  [(CoreDAVLeafDataPayload *)v11 setServerID:v12];

  responseHeaders2 = [(CalDAVGetCalendarItemTask *)self responseHeaders];
  v14 = [responseHeaders2 CDVObjectForKeyCaseInsensitive:@"Schedule-Tag"];
  [(CalDAVCalendarItemData *)v11 setScheduleTag:v14];

  v15.receiver = self;
  v15.super_class = CalDAVGetCalendarItemTask;
  [(CoreDAVGetTask *)&v15 finishCoreDAVTaskWithError:errorCopy];
}

@end