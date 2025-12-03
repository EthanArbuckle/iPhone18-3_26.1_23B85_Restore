@interface _CATRemoteConnectionSendDataWithStreamContext
- (BOOL)hasBytesRemaining;
- (_CATRemoteConnectionSendDataWithStreamContext)initWithStream:(id)stream length:(unint64_t)length bufferSize:(unint64_t)size userInfo:(id)info;
- (id)bufferedDataWithError:(id *)error;
- (unint64_t)clientBytesWritten;
- (void)dealloc;
@end

@implementation _CATRemoteConnectionSendDataWithStreamContext

- (_CATRemoteConnectionSendDataWithStreamContext)initWithStream:(id)stream length:(unint64_t)length bufferSize:(unint64_t)size userInfo:(id)info
{
  streamCopy = stream;
  infoCopy = info;
  if (!streamCopy)
  {
    [_CATRemoteConnectionSendDataWithStreamContext initWithStream:length:bufferSize:userInfo:];
  }

  v18.receiver = self;
  v18.super_class = _CATRemoteConnectionSendDataWithStreamContext;
  v13 = [(_CATRemoteConnectionSendDataWithStreamContext *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_stream, stream);
    v14->_dataLength = length;
    v14->_bufferSize = size;
    objc_storeStrong(&v14->_userInfo, info);
    v15 = [CATHTTPMessageParser responseHeaderForContentWithLength:length];
    mHeaderData = v14->mHeaderData;
    v14->mHeaderData = v15;

    [streamCopy open];
  }

  return v14;
}

- (void)dealloc
{
  [(NSInputStream *)self->_stream close];
  v3.receiver = self;
  v3.super_class = _CATRemoteConnectionSendDataWithStreamContext;
  [(_CATRemoteConnectionSendDataWithStreamContext *)&v3 dealloc];
}

- (BOOL)hasBytesRemaining
{
  v3 = [(NSData *)self->mHeaderData length];
  v4 = [(_CATRemoteConnectionSendDataWithStreamContext *)self dataLength]+ v3;
  return v4 > [(_CATRemoteConnectionSendDataWithStreamContext *)self bytesWritten];
}

- (unint64_t)clientBytesWritten
{
  bytesWritten = [(_CATRemoteConnectionSendDataWithStreamContext *)self bytesWritten];
  if (bytesWritten <= [(NSData *)self->mHeaderData length])
  {
    return 0;
  }

  bytesWritten2 = [(_CATRemoteConnectionSendDataWithStreamContext *)self bytesWritten];
  return bytesWritten2 - [(NSData *)self->mHeaderData length];
}

- (id)bufferedDataWithError:(id *)error
{
  mBytesRead = self->mBytesRead;
  v6 = [(NSData *)self->mHeaderData length]+ mBytesRead;
  bytesWritten = [(_CATRemoteConnectionSendDataWithStreamContext *)self bytesWritten];
  v8 = v6 - bytesWritten;
  if (v6 - bytesWritten >= [(_CATRemoteConnectionSendDataWithStreamContext *)self bufferSize])
  {
    goto LABEL_19;
  }

  mBuffer = self->mBuffer;
  if (!mBuffer)
  {
    goto LABEL_7;
  }

  if (v8 >= [(NSMutableData *)mBuffer length])
  {
    goto LABEL_19;
  }

  v10 = self->mBuffer;
  if (v10)
  {
    if (v6 == bytesWritten)
    {
      goto LABEL_12;
    }

    v11 = [(NSMutableData *)v10 length]- v8;
    v12 = self->mBuffer;
    bytes = ([(NSMutableData *)v12 bytes]+ v11);
    v14 = v12;
    v15 = v8;
  }

  else
  {
LABEL_7:
    v16 = MEMORY[0x277CBEB28];
    bufferSize = [(_CATRemoteConnectionSendDataWithStreamContext *)self bufferSize];
    v18 = [(NSData *)self->mHeaderData length];
    dataLength = [(_CATRemoteConnectionSendDataWithStreamContext *)self dataLength];
    if (bufferSize >= dataLength + v18)
    {
      v20 = dataLength + v18;
    }

    else
    {
      v20 = bufferSize;
    }

    v21 = [v16 dataWithLength:v20];
    v22 = self->mBuffer;
    self->mBuffer = v21;

    v23 = self->mBuffer;
    v24 = [(NSData *)self->mHeaderData length];
    bytes = [(NSData *)self->mHeaderData bytes];
    v14 = v23;
    v15 = v24;
  }

  [(NSMutableData *)v14 replaceBytesInRange:0 withBytes:v15, bytes];
LABEL_12:
  v25 = self->mBytesRead;
  if (v25 >= [(_CATRemoteConnectionSendDataWithStreamContext *)self dataLength])
  {
LABEL_18:
    [(NSMutableData *)self->mBuffer setLength:v8];
    goto LABEL_19;
  }

  stream = [(_CATRemoteConnectionSendDataWithStreamContext *)self stream];
  mutableBytes = [(NSMutableData *)self->mBuffer mutableBytes];
  v28 = [(NSMutableData *)self->mBuffer length]- v8;
  dataLength2 = [(_CATRemoteConnectionSendDataWithStreamContext *)self dataLength];
  if (v28 >= dataLength2 - self->mBytesRead)
  {
    v30 = dataLength2 - self->mBytesRead;
  }

  else
  {
    v30 = v28;
  }

  v31 = [stream read:&mutableBytes[v8] maxLength:v30];

  if ((v31 & 0x8000000000000000) == 0)
  {
    self->mBytesRead += v31;
    v8 += v31;
    if (v8 < [(NSMutableData *)self->mBuffer length])
    {
      goto LABEL_18;
    }

LABEL_19:
    v32 = self->mBuffer;
    goto LABEL_20;
  }

  if (error)
  {
    stream2 = [(_CATRemoteConnectionSendDataWithStreamContext *)self stream];
    *error = [stream2 streamError];
  }

  v32 = 0;
LABEL_20:

  return v32;
}

- (void)initWithStream:length:bufferSize:userInfo:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"stream" object:? file:? lineNumber:? description:?];
}

@end