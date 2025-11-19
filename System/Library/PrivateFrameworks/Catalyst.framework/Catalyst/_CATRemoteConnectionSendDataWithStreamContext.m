@interface _CATRemoteConnectionSendDataWithStreamContext
- (BOOL)hasBytesRemaining;
- (_CATRemoteConnectionSendDataWithStreamContext)initWithStream:(id)a3 length:(unint64_t)a4 bufferSize:(unint64_t)a5 userInfo:(id)a6;
- (id)bufferedDataWithError:(id *)a3;
- (unint64_t)clientBytesWritten;
- (void)dealloc;
@end

@implementation _CATRemoteConnectionSendDataWithStreamContext

- (_CATRemoteConnectionSendDataWithStreamContext)initWithStream:(id)a3 length:(unint64_t)a4 bufferSize:(unint64_t)a5 userInfo:(id)a6
{
  v11 = a3;
  v12 = a6;
  if (!v11)
  {
    [_CATRemoteConnectionSendDataWithStreamContext initWithStream:length:bufferSize:userInfo:];
  }

  v18.receiver = self;
  v18.super_class = _CATRemoteConnectionSendDataWithStreamContext;
  v13 = [(_CATRemoteConnectionSendDataWithStreamContext *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_stream, a3);
    v14->_dataLength = a4;
    v14->_bufferSize = a5;
    objc_storeStrong(&v14->_userInfo, a6);
    v15 = [CATHTTPMessageParser responseHeaderForContentWithLength:a4];
    mHeaderData = v14->mHeaderData;
    v14->mHeaderData = v15;

    [v11 open];
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
  v3 = [(_CATRemoteConnectionSendDataWithStreamContext *)self bytesWritten];
  if (v3 <= [(NSData *)self->mHeaderData length])
  {
    return 0;
  }

  v4 = [(_CATRemoteConnectionSendDataWithStreamContext *)self bytesWritten];
  return v4 - [(NSData *)self->mHeaderData length];
}

- (id)bufferedDataWithError:(id *)a3
{
  mBytesRead = self->mBytesRead;
  v6 = [(NSData *)self->mHeaderData length]+ mBytesRead;
  v7 = [(_CATRemoteConnectionSendDataWithStreamContext *)self bytesWritten];
  v8 = v6 - v7;
  if (v6 - v7 >= [(_CATRemoteConnectionSendDataWithStreamContext *)self bufferSize])
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
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    v11 = [(NSMutableData *)v10 length]- v8;
    v12 = self->mBuffer;
    v13 = ([(NSMutableData *)v12 bytes]+ v11);
    v14 = v12;
    v15 = v8;
  }

  else
  {
LABEL_7:
    v16 = MEMORY[0x277CBEB28];
    v17 = [(_CATRemoteConnectionSendDataWithStreamContext *)self bufferSize];
    v18 = [(NSData *)self->mHeaderData length];
    v19 = [(_CATRemoteConnectionSendDataWithStreamContext *)self dataLength];
    if (v17 >= v19 + v18)
    {
      v20 = v19 + v18;
    }

    else
    {
      v20 = v17;
    }

    v21 = [v16 dataWithLength:v20];
    v22 = self->mBuffer;
    self->mBuffer = v21;

    v23 = self->mBuffer;
    v24 = [(NSData *)self->mHeaderData length];
    v13 = [(NSData *)self->mHeaderData bytes];
    v14 = v23;
    v15 = v24;
  }

  [(NSMutableData *)v14 replaceBytesInRange:0 withBytes:v15, v13];
LABEL_12:
  v25 = self->mBytesRead;
  if (v25 >= [(_CATRemoteConnectionSendDataWithStreamContext *)self dataLength])
  {
LABEL_18:
    [(NSMutableData *)self->mBuffer setLength:v8];
    goto LABEL_19;
  }

  v26 = [(_CATRemoteConnectionSendDataWithStreamContext *)self stream];
  v27 = [(NSMutableData *)self->mBuffer mutableBytes];
  v28 = [(NSMutableData *)self->mBuffer length]- v8;
  v29 = [(_CATRemoteConnectionSendDataWithStreamContext *)self dataLength];
  if (v28 >= v29 - self->mBytesRead)
  {
    v30 = v29 - self->mBytesRead;
  }

  else
  {
    v30 = v28;
  }

  v31 = [v26 read:&v27[v8] maxLength:v30];

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

  if (a3)
  {
    v34 = [(_CATRemoteConnectionSendDataWithStreamContext *)self stream];
    *a3 = [v34 streamError];
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