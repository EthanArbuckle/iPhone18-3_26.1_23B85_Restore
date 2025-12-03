@interface CalDAVGetNotificationItemTask
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CalDAVGetNotificationItemTask

- (void)finishCoreDAVTaskWithError:(id)error
{
  errorCopy = error;
  responseHeaders = [(CalDAVGetNotificationItemTask *)self responseHeaders];
  v6 = [responseHeaders CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];

  responseBodyParser = [(CalDAVGetNotificationItemTask *)self responseBodyParser];
  octetStreamData = [responseBodyParser octetStreamData];

  v9 = [CalDAVNotificationItemData alloc];
  v10 = [(CalDAVGetNotificationItemTask *)self url];
  v11 = [(CoreDAVLeafDataPayload *)v9 initWithURL:v10 eTag:v6 dataPayload:octetStreamData inContainerWithURL:0 withAccountInfoProvider:0];

  v12 = [(CalDAVGetNotificationItemTask *)self url];
  [(CoreDAVLeafDataPayload *)v11 setServerID:v12];

  [(CoreDAVGetTask *)self setAppSpecificDataItemResult:v11];
  v13.receiver = self;
  v13.super_class = CalDAVGetNotificationItemTask;
  [(CoreDAVGetTask *)&v13 finishCoreDAVTaskWithError:errorCopy];
}

@end