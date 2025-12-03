@interface _MFDAMessageBodyFetchConsumer
- (BOOL)succeeded;
- (NSData)data;
- (void)handleResponse:(id)response error:(id)error;
@end

@implementation _MFDAMessageBodyFetchConsumer

- (void)handleResponse:(id)response error:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    objc_storeStrong(&self->_error, error);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  self->_succeeded = v9;
  v10 = responseCopy;
  if (v10)
  {
    if (self->_error)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:1939 description:@"should not have error and response"];
    }

    if ([v10 streaming])
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:1941 description:@"should not get streaming responses"];
    }

    data = [v10 data];
    [(_MFDAMessageBodyFetchConsumer *)self setData:data];
  }

  [(_MFDAMessageBodyFetchConsumer *)self setHasLocalCopyOfData:v10 != 0];

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)succeeded
{
  if (self->_succeeded)
  {
    return 1;
  }

  streamConsumer = [(_MFDAMessageBodyFetchConsumer *)self streamConsumer];
  succeeded = [streamConsumer succeeded];

  return succeeded;
}

- (NSData)data
{
  streamConsumer = [(_MFDAMessageBodyFetchConsumer *)self streamConsumer];
  data = [streamConsumer data];

  if (!data)
  {
    data = self->_data;
  }

  return data;
}

@end