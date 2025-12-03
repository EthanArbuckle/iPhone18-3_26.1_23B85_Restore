@interface CardDAVFolderGetTask
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CardDAVFolderGetTask

- (void)finishCoreDAVTaskWithError:(id)error
{
  errorCopy = error;
  responseHeaders = [(CoreDAVTask *)self responseHeaders];
  v6 = [responseHeaders CDVObjectForKeyCaseInsensitive:@"ETag"];

  responseBodyParser = [(CoreDAVTask *)self responseBodyParser];
  octetStreamData = [responseBodyParser octetStreamData];

  v9 = [CoreDAVLeafDataPayload alloc];
  v10 = [(CoreDAVTask *)self url];
  accountInfoProvider = [(CoreDAVTask *)self accountInfoProvider];
  v12 = [(CoreDAVLeafDataPayload *)v9 initWithURL:v10 eTag:v6 dataPayload:octetStreamData inContainerWithURL:0 withAccountInfoProvider:accountInfoProvider];

  [(CoreDAVGetTask *)self setAppSpecificDataItemResult:v12];
  v13.receiver = self;
  v13.super_class = CardDAVFolderGetTask;
  [(CoreDAVGetTask *)&v13 finishCoreDAVTaskWithError:errorCopy];
}

@end