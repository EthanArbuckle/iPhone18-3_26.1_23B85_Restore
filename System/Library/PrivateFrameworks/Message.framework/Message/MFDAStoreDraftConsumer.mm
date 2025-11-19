@interface MFDAStoreDraftConsumer
- (void)handleResponse:(id)a3 error:(id)a4;
@end

@implementation MFDAStoreDraftConsumer

- (void)handleResponse:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    objc_storeStrong(&self->_error, a4);
  }

  v9 = v7;
  v17 = v9;
  if (v9)
  {
    if (self->_error)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"MFDAStoreDraftConsumer.m" lineNumber:29 description:@"should not have error and response"];

      v9 = v17;
    }

    if ([v9 status] != 2)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"MFDAStoreDraftConsumer.m" lineNumber:32 description:{@"got non-successful status code %ld for response", objc_msgSend(v17, "status")}];
    }

    v10 = [v17 serverId];

    if (!v10)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"MFDAStoreDraftConsumer.m" lineNumber:33 description:@"got a successful response with no server id"];
    }

    v11 = [v17 serverId];
    v12 = [v11 copy];
    serverId = self->_serverId;
    self->_serverId = v12;

    self->_success = 1;
    v9 = v17;
  }
}

@end