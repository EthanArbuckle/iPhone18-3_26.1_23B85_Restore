@interface _CATRemoteConnectionSendDataContext
- (_CATRemoteConnectionSendDataContext)initWithData:(id)a3 userInfo:(id)a4;
- (id)bufferedDataWithError:(id *)a3;
- (unint64_t)clientBytesWritten;
- (unint64_t)headerLength;
@end

@implementation _CATRemoteConnectionSendDataContext

- (_CATRemoteConnectionSendDataContext)initWithData:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [_CATRemoteConnectionSendDataContext initWithData:userInfo:];
  }

  v14.receiver = self;
  v14.super_class = _CATRemoteConnectionSendDataContext;
  v8 = [(_CATRemoteConnectionSendDataContext *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    data = v8->_data;
    v8->_data = v9;

    objc_storeStrong(&v8->_userInfo, a4);
    v11 = [CATHTTPMessageParser encodeRequestData:v8->_data];
    mEncodedData = v8->mEncodedData;
    v8->mEncodedData = v11;
  }

  return v8;
}

- (unint64_t)clientBytesWritten
{
  v3 = [(_CATRemoteConnectionSendDataContext *)self bytesWritten];
  if (v3 <= [(_CATRemoteConnectionSendDataContext *)self headerLength])
  {
    return 0;
  }

  v4 = [(_CATRemoteConnectionSendDataContext *)self bytesWritten];
  return v4 - [(_CATRemoteConnectionSendDataContext *)self headerLength];
}

- (unint64_t)headerLength
{
  v3 = [(NSData *)self->mEncodedData length];
  v4 = [(_CATRemoteConnectionSendDataContext *)self data];
  v5 = v3 - [v4 length];

  return v5;
}

- (id)bufferedDataWithError:(id *)a3
{
  mEncodedData = self->mEncodedData;
  v5 = [(_CATRemoteConnectionSendDataContext *)self bytesWritten];
  v6 = [(NSData *)self->mEncodedData length];
  v7 = v6 - [(_CATRemoteConnectionSendDataContext *)self bytesWritten];

  return [(NSData *)mEncodedData subdataWithRange:v5, v7];
}

- (void)initWithData:userInfo:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

@end