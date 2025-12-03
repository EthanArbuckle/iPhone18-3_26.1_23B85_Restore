@interface CoreDAVPutStreamTask
- (id)requestBodyStream;
@end

@implementation CoreDAVPutStreamTask

- (id)requestBodyStream
{
  v2 = MEMORY[0x277CBEAE0];
  requestDataPayload = [(CoreDAVPostOrPutTask *)self requestDataPayload];
  v4 = [v2 inputStreamWithData:requestDataPayload];

  return v4;
}

@end