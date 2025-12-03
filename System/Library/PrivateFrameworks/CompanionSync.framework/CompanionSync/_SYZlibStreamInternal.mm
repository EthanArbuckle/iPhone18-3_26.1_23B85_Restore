@interface _SYZlibStreamInternal
- (_SYZlibStreamInternal)init;
- (int64_t)readOutputToBuffer:(void *)buffer length:(int64_t)length;
- (int64_t)readOutputToStream:(id)stream;
- (int64_t)writeInputFromBuffer:(const void *)buffer length:(int64_t)length;
- (int64_t)writeInputFromStream:(id)stream;
- (void)dealloc;
- (void)setInputSize:(int64_t)size;
- (void)setOutputSize:(int64_t)size;
- (void)setStatusForStream:(id)stream;
- (void)setZlibError:(int)error forStream:(id)stream;
- (void)synchronized:(id)synchronized;
@end

@implementation _SYZlibStreamInternal

- (_SYZlibStreamInternal)init
{
  v7.receiver = self;
  v7.super_class = _SYZlibStreamInternal;
  v2 = [(_SYZlibStreamInternal *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 24) = 1024;
    *(v2 + 23) = 1024;
    v4 = v2 + 72;
    *(v2 + 72) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 104) = 0u;
    *(v2 + 120) = 0u;
    *(v2 + 136) = 0u;
    *(v2 + 152) = 0u;
    *(v2 + 168) = 0u;
    *(v2 + 25) = malloc_type_malloc(*(v2 + 23), 0x9B44EE40uLL);
    v3[26] = malloc_type_malloc(v3[24], 0xCE8C2051uLL);
    *v4 = v3[25];
    *(v3 + 20) = 0;
    v5 = v3[26];
    v3[11] = 0;
    v3[12] = v5;
    *(v3 + 26) = v3[24];
    v3[14] = 0;
    v3[17] = 0;
    v3[18] = 0;
    *(v3 + 58) = 0;
  }

  return 0;
}

- (void)dealloc
{
  input = self->_input;
  if (input)
  {
    free(input);
  }

  output = self->_output;
  if (output)
  {
    free(output);
  }

  v5.receiver = self;
  v5.super_class = _SYZlibStreamInternal;
  [(_SYStreamGuts *)&v5 dealloc];
}

- (void)synchronized:(id)synchronized
{
  synchronizedCopy = synchronized;
  os_unfair_lock_lock(&self->_lock);
  synchronizedCopy[2](synchronizedCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setInputSize:(int64_t)size
{
  if (self->_inputSize != size)
  {
    next_in = self->_zStream.next_in;
    input = self->_input;
    v6 = next_in - input;
    self->_inputSize = size;
    v7 = malloc_type_realloc(input, size, 0x5629B3EFuLL);
    self->_input = v7;
    self->_zStream.next_in = &v7[v6];
  }
}

- (void)setOutputSize:(int64_t)size
{
  outputSize = self->_outputSize;
  if (size != outputSize)
  {
    p_zStream = &self->_zStream;
    next_out = self->_zStream.next_out;
    output = self->_output;
    v8 = next_out - output;
    v9 = size - outputSize;
    self->_outputSize = size;
    v10 = malloc_type_realloc(output, size, 0x23F9C880uLL);
    self->_output = v10;
    p_zStream->next_out = &v10[v8];
    p_zStream->avail_out += v9;
  }
}

- (void)setZlibError:(int)error forStream:(id)stream
{
  v15[1] = *MEMORY[0x1E69E9840];
  p_zStream = &self->_zStream;
  v7 = MEMORY[0x1E696AEC0];
  streamCopy = stream;
  v9 = [[v7 alloc] initWithUTF8String:p_zStream->msg];
  v14 = *MEMORY[0x1E696A578];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SYZlibErrorDomain" code:error userInfo:v10];

  error = self->super._error;
  self->super._error = v11;

  self->super._status = 7;
  [(_SYStreamGuts *)self postStreamEvent:8 forStream:streamCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setStatusForStream:(id)stream
{
  streamCopy = stream;
  v5 = streamCopy;
  if (self->_zStream.total_out)
  {
    self->super._status = 2;
  }

  else
  {
    v6 = streamCopy;
    streamCopy = [streamCopy streamStatus];
    v5 = v6;
    if (streamCopy == 5)
    {
      self->super._status = 5;
      streamCopy = [(_SYStreamGuts *)self postStreamEvent:16 forStream:v6];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](streamCopy, v5);
}

- (int64_t)writeInputFromBuffer:(const void *)buffer length:(int64_t)length
{
  os_unfair_lock_lock(&self->_lock);
  inputRoom = [(_SYZlibStreamInternal *)self inputRoom];
  if (inputRoom < length)
  {
    length = inputRoom;
  }

  memcpy([(_SYZlibStreamInternal *)self inputPtr], buffer, length);
  self->_zStream.avail_in += length;
  self->_writeOffset += length;
  os_unfair_lock_unlock(&self->_lock);
  return length;
}

- (int64_t)writeInputFromStream:(id)stream
{
  streamCopy = stream;
  os_unfair_lock_lock(&self->_lock);
  v5 = [streamCopy read:-[_SYZlibStreamInternal inputPtr](self maxLength:{"inputPtr"), -[_SYZlibStreamInternal inputRoom](self, "inputRoom")}];

  if ((v5 & 0x8000000000000000) == 0)
  {
    self->_zStream.avail_out += v5;
    self->_writeOffset += v5;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (int64_t)readOutputToBuffer:(void *)buffer length:(int64_t)length
{
  os_unfair_lock_lock(&self->_lock);
  outputAvailable = [(_SYZlibStreamInternal *)self outputAvailable];
  if (outputAvailable < length)
  {
    length = outputAvailable;
  }

  memcpy(buffer, [(_SYZlibStreamInternal *)self outputPtr], length);
  v8 = self->_readOffset + length;
  self->_readOffset = v8;
  if (v8 == self->_zStream.total_out)
  {
    self->_zStream.next_out = self->_output;
    self->_zStream.avail_out = self->_outputSize;
    self->_zStream.total_out = 0;
    self->_readOffset = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return length;
}

- (int64_t)readOutputToStream:(id)stream
{
  streamCopy = stream;
  os_unfair_lock_lock(&self->_lock);
  v5 = [streamCopy write:-[_SYZlibStreamInternal outputPtr](self maxLength:{"outputPtr"), -[_SYZlibStreamInternal outputAvailable](self, "outputAvailable")}];

  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = self->_readOffset + v5;
    self->_readOffset = v6;
    if (v6 == self->_zStream.total_out)
    {
      self->_zStream.next_out = self->_output;
      self->_zStream.avail_out = self->_outputSize;
      self->_zStream.total_out = 0;
      self->_readOffset = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

@end