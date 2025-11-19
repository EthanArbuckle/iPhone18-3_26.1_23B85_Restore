@interface CardDAVFolderGetTask
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CardDAVFolderGetTask

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVTask *)self responseHeaders];
  v6 = [v5 CDVObjectForKeyCaseInsensitive:@"ETag"];

  v7 = [(CoreDAVTask *)self responseBodyParser];
  v8 = [v7 octetStreamData];

  v9 = [CoreDAVLeafDataPayload alloc];
  v10 = [(CoreDAVTask *)self url];
  v11 = [(CoreDAVTask *)self accountInfoProvider];
  v12 = [(CoreDAVLeafDataPayload *)v9 initWithURL:v10 eTag:v6 dataPayload:v8 inContainerWithURL:0 withAccountInfoProvider:v11];

  [(CoreDAVGetTask *)self setAppSpecificDataItemResult:v12];
  v13.receiver = self;
  v13.super_class = CardDAVFolderGetTask;
  [(CoreDAVGetTask *)&v13 finishCoreDAVTaskWithError:v4];
}

@end