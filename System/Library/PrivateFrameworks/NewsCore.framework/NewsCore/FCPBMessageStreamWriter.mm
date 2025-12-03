@interface FCPBMessageStreamWriter
- (BOOL)_writeMessage:(id)message range:(_NSRange *)range error:(id *)error;
- (BOOL)close:(id *)close;
- (FCPBMessageStreamWriter)initWithURL:(id)l;
- (_NSRange)writeMessage:(id)message;
- (void)_open;
- (void)_openIfNeeded;
- (void)dealloc;
@end

@implementation FCPBMessageStreamWriter

- (FCPBMessageStreamWriter)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = FCPBMessageStreamWriter;
  v6 = [(FCPBMessageStreamWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
  }

  return v7;
}

- (void)dealloc
{
  varIntBuffer = self->_varIntBuffer;
  if (varIntBuffer)
  {
    free(varIntBuffer);
    self->_varIntBuffer = 0;
  }

  if ([(NSOutputStream *)self->_outputStream streamStatus]&& [(NSOutputStream *)self->_outputStream streamStatus]<= 5)
  {
    [(NSOutputStream *)self->_outputStream close];
  }

  v4.receiver = self;
  v4.super_class = FCPBMessageStreamWriter;
  [(FCPBMessageStreamWriter *)&v4 dealloc];
}

- (_NSRange)writeMessage:(id)message
{
  v5 = 0;
  v6 = 0;
  [(FCPBMessageStreamWriter *)self _writeMessage:message range:&v5 error:0];
  v3 = v5;
  v4 = v6;
  result.length = v4;
  result.location = v3;
  return result;
}

- (BOOL)close:(id *)close
{
  outputStream = [(FCPBMessageStreamWriter *)self outputStream];
  [outputStream close];

  error = [(FCPBMessageStreamWriter *)self error];

  if (!error)
  {
    outputStream2 = [(FCPBMessageStreamWriter *)self outputStream];
    streamError = [outputStream2 streamError];
    [(FCPBMessageStreamWriter *)self setError:streamError];
  }

  if (close)
  {
    *close = [(FCPBMessageStreamWriter *)self error];
  }

  error2 = [(FCPBMessageStreamWriter *)self error];
  v10 = error2 == 0;

  return v10;
}

- (void)_openIfNeeded
{
  outputStream = [(FCPBMessageStreamWriter *)self outputStream];
  if (outputStream)
  {
  }

  else
  {
    error = [(FCPBMessageStreamWriter *)self error];

    if (!error)
    {

      [(FCPBMessageStreamWriter *)self _open];
    }
  }
}

- (void)_open
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFC0];
  v4 = [(FCPBMessageStreamWriter *)self URL];
  v5 = [v3 outputStreamWithURL:v4 append:0];

  if (v5)
  {
    [v5 open];
    objc_storeStrong(&self->_outputStream, v5);
    v6 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    dataWriter = self->_dataWriter;
    self->_dataWriter = v6;

    self->_varIntBuffer = malloc_type_calloc(0xAuLL, 1uLL, 0x100004077774924uLL);
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v13 = @"URL";
    v9 = [(FCPBMessageStreamWriter *)self URL];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v8 fc_errorWithCode:16 description:@"Failed to create output stream" additionalUserInfo:v10];
    [(FCPBMessageStreamWriter *)self setError:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_writeMessage:(id)message range:(_NSRange *)range error:(id *)error
{
  messageCopy = message;
  [(FCPBMessageStreamWriter *)self _openIfNeeded];
  error = [(FCPBMessageStreamWriter *)self error];

  if (!error)
  {
    dataWriter = [(FCPBMessageStreamWriter *)self dataWriter];
    [messageCopy writeTo:dataWriter];

    dataWriter2 = [(FCPBMessageStreamWriter *)self dataWriter];
    data = [dataWriter2 data];

    v14 = [data length];
    if (v14)
    {
      v15 = v14;
      [(FCPBMessageStreamWriter *)self varIntBuffer];
      v16 = PBDataWriterWriteBareVarint();
      outputStream = [(FCPBMessageStreamWriter *)self outputStream];
      v18 = [outputStream write:-[FCPBMessageStreamWriter varIntBuffer](self maxLength:{"varIntBuffer"), v16}];

      if (v18 == v16)
      {
        outputStream2 = [(FCPBMessageStreamWriter *)self outputStream];
        v20 = [outputStream2 write:objc_msgSend(data maxLength:{"bytes"), v15}];

        if (v20 == v15)
        {
          dataWriter3 = [(FCPBMessageStreamWriter *)self dataWriter];
          data2 = [dataWriter3 data];
          [data2 setLength:0];

          currentOffset = [(FCPBMessageStreamWriter *)self currentOffset];
          [(FCPBMessageStreamWriter *)self setCurrentOffset:[(FCPBMessageStreamWriter *)self currentOffset]+ v16];
          [(FCPBMessageStreamWriter *)self setCurrentOffset:[(FCPBMessageStreamWriter *)self currentOffset]+ v15];
          if (range)
          {
            range->location = currentOffset + v16;
            range->length = v15;
          }

          v10 = 1;
          goto LABEL_13;
        }

        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __53__FCPBMessageStreamWriter__writeMessage_range_error___block_invoke_4;
        v25[3] = &unk_1E7C3A6D8;
        v25[4] = self;
        v25[5] = error;
        __53__FCPBMessageStreamWriter__writeMessage_range_error___block_invoke_4(v25);
      }

      else
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __53__FCPBMessageStreamWriter__writeMessage_range_error___block_invoke_3;
        v26[3] = &unk_1E7C3A6D8;
        v26[4] = self;
        v26[5] = error;
        __53__FCPBMessageStreamWriter__writeMessage_range_error___block_invoke_3(v26);
      }
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __53__FCPBMessageStreamWriter__writeMessage_range_error___block_invoke_2;
      v27[3] = &__block_descriptor_40_e5_B8__0l;
      v27[4] = error;
      __53__FCPBMessageStreamWriter__writeMessage_range_error___block_invoke_2(v27);
    }

    v10 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __53__FCPBMessageStreamWriter__writeMessage_range_error___block_invoke;
  v28[3] = &unk_1E7C3A6D8;
  v28[4] = self;
  v28[5] = error;
  __53__FCPBMessageStreamWriter__writeMessage_range_error___block_invoke(v28);
  v10 = 0;
LABEL_14:

  return v10;
}

uint64_t __53__FCPBMessageStreamWriter__writeMessage_range_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    **(a1 + 40) = [*(a1 + 32) error];
  }

  return 0;
}

uint64_t __53__FCPBMessageStreamWriter__writeMessage_range_error___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    **(a1 + 32) = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Failed to encode protobuf message"];
  }

  return 0;
}

uint64_t __53__FCPBMessageStreamWriter__writeMessage_range_error___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) outputStream];
  v3 = [v2 streamError];
  if (v3)
  {
    [*(a1 + 32) setError:v3];
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Failed to write protobuf message length to disk"];
    [*(a1 + 32) setError:v4];
  }

  if (*(a1 + 40))
  {
    **(a1 + 40) = [*(a1 + 32) error];
  }

  return 0;
}

uint64_t __53__FCPBMessageStreamWriter__writeMessage_range_error___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) outputStream];
  v3 = [v2 streamError];
  if (v3)
  {
    [*(a1 + 32) setError:v3];
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Failed to write protobuf message data to disk"];
    [*(a1 + 32) setError:v4];
  }

  if (*(a1 + 40))
  {
    **(a1 + 40) = [*(a1 + 32) error];
  }

  return 0;
}

@end