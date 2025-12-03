@interface MFDAStoreDraftConsumer
- (void)handleResponse:(id)response error:(id)error;
@end

@implementation MFDAStoreDraftConsumer

- (void)handleResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    objc_storeStrong(&self->_error, error);
  }

  v9 = responseCopy;
  v17 = v9;
  if (v9)
  {
    if (self->_error)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAStoreDraftConsumer.m" lineNumber:29 description:@"should not have error and response"];

      v9 = v17;
    }

    if ([v9 status] != 2)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"MFDAStoreDraftConsumer.m" lineNumber:32 description:{@"got non-successful status code %ld for response", objc_msgSend(v17, "status")}];
    }

    serverId = [v17 serverId];

    if (!serverId)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"MFDAStoreDraftConsumer.m" lineNumber:33 description:@"got a successful response with no server id"];
    }

    serverId2 = [v17 serverId];
    v12 = [serverId2 copy];
    serverId = self->_serverId;
    self->_serverId = v12;

    self->_success = 1;
    v9 = v17;
  }
}

@end