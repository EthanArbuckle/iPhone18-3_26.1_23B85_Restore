@interface CoreDAVPutStreamTask
- (id)requestBodyStream;
@end

@implementation CoreDAVPutStreamTask

- (id)requestBodyStream
{
  v2 = MEMORY[0x277CBEAE0];
  v3 = [(CoreDAVPostOrPutTask *)self requestDataPayload];
  v4 = [v2 inputStreamWithData:v3];

  return v4;
}

@end