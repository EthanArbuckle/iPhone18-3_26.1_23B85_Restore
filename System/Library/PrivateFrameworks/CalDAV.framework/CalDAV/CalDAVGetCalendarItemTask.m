@interface CalDAVGetCalendarItemTask
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CalDAVGetCalendarItemTask

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVGetCalendarItemTask *)self responseHeaders];
  v6 = [v5 CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];

  v7 = [(CalDAVGetCalendarItemTask *)self responseBodyParser];
  v8 = [v7 octetStreamData];

  v9 = [CalDAVCalendarItemData alloc];
  v10 = [(CalDAVGetCalendarItemTask *)self url];
  v11 = [(CoreDAVLeafDataPayload *)v9 initWithURL:v10 eTag:v6 dataPayload:v8 inContainerWithURL:0 withAccountInfoProvider:0];

  [(CoreDAVGetTask *)self setAppSpecificDataItemResult:v11];
  v12 = [(CalDAVGetCalendarItemTask *)self url];
  [(CoreDAVLeafDataPayload *)v11 setServerID:v12];

  v13 = [(CalDAVGetCalendarItemTask *)self responseHeaders];
  v14 = [v13 CDVObjectForKeyCaseInsensitive:@"Schedule-Tag"];
  [(CalDAVCalendarItemData *)v11 setScheduleTag:v14];

  v15.receiver = self;
  v15.super_class = CalDAVGetCalendarItemTask;
  [(CoreDAVGetTask *)&v15 finishCoreDAVTaskWithError:v4];
}

@end