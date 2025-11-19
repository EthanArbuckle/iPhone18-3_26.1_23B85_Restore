@interface _MFDAMessageBodyFetchConsumer
- (BOOL)succeeded;
- (NSData)data;
- (void)handleResponse:(id)a3 error:(id)a4;
@end

@implementation _MFDAMessageBodyFetchConsumer

- (void)handleResponse:(id)a3 error:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    objc_storeStrong(&self->_error, a4);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  self->_succeeded = v9;
  v10 = v7;
  if (v10)
  {
    if (self->_error)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:1939 description:@"should not have error and response"];
    }

    if ([v10 streaming])
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"MFDAMessageStore.m" lineNumber:1941 description:@"should not get streaming responses"];
    }

    v12 = [v10 data];
    [(_MFDAMessageBodyFetchConsumer *)self setData:v12];
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

  v3 = [(_MFDAMessageBodyFetchConsumer *)self streamConsumer];
  v2 = [v3 succeeded];

  return v2;
}

- (NSData)data
{
  v3 = [(_MFDAMessageBodyFetchConsumer *)self streamConsumer];
  v4 = [v3 data];

  if (!v4)
  {
    v4 = self->_data;
  }

  return v4;
}

@end