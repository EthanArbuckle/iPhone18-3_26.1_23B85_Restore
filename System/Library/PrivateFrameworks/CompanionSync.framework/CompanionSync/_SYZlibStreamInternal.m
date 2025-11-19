@interface _SYZlibStreamInternal
- (_SYZlibStreamInternal)init;
- (int64_t)readOutputToBuffer:(void *)a3 length:(int64_t)a4;
- (int64_t)readOutputToStream:(id)a3;
- (int64_t)writeInputFromBuffer:(const void *)a3 length:(int64_t)a4;
- (int64_t)writeInputFromStream:(id)a3;
- (void)dealloc;
- (void)setInputSize:(int64_t)a3;
- (void)setOutputSize:(int64_t)a3;
- (void)setStatusForStream:(id)a3;
- (void)setZlibError:(int)a3 forStream:(id)a4;
- (void)synchronized:(id)a3;
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

- (void)synchronized:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setInputSize:(int64_t)a3
{
  if (self->_inputSize != a3)
  {
    next_in = self->_zStream.next_in;
    input = self->_input;
    v6 = next_in - input;
    self->_inputSize = a3;
    v7 = malloc_type_realloc(input, a3, 0x5629B3EFuLL);
    self->_input = v7;
    self->_zStream.next_in = &v7[v6];
  }
}

- (void)setOutputSize:(int64_t)a3
{
  outputSize = self->_outputSize;
  if (a3 != outputSize)
  {
    p_zStream = &self->_zStream;
    next_out = self->_zStream.next_out;
    output = self->_output;
    v8 = next_out - output;
    v9 = a3 - outputSize;
    self->_outputSize = a3;
    v10 = malloc_type_realloc(output, a3, 0x23F9C880uLL);
    self->_output = v10;
    p_zStream->next_out = &v10[v8];
    p_zStream->avail_out += v9;
  }
}

- (void)setZlibError:(int)a3 forStream:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  p_zStream = &self->_zStream;
  v7 = MEMORY[0x1E696AEC0];
  v8 = a4;
  v9 = [[v7 alloc] initWithUTF8String:p_zStream->msg];
  v14 = *MEMORY[0x1E696A578];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"SYZlibErrorDomain" code:a3 userInfo:v10];

  error = self->super._error;
  self->super._error = v11;

  self->super._status = 7;
  [(_SYStreamGuts *)self postStreamEvent:8 forStream:v8];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setStatusForStream:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_zStream.total_out)
  {
    self->super._status = 2;
  }

  else
  {
    v6 = v4;
    v4 = [v4 streamStatus];
    v5 = v6;
    if (v4 == 5)
    {
      self->super._status = 5;
      v4 = [(_SYStreamGuts *)self postStreamEvent:16 forStream:v6];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (int64_t)writeInputFromBuffer:(const void *)a3 length:(int64_t)a4
{
  os_unfair_lock_lock(&self->_lock);
  v7 = [(_SYZlibStreamInternal *)self inputRoom];
  if (v7 < a4)
  {
    a4 = v7;
  }

  memcpy([(_SYZlibStreamInternal *)self inputPtr], a3, a4);
  self->_zStream.avail_in += a4;
  self->_writeOffset += a4;
  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

- (int64_t)writeInputFromStream:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 read:-[_SYZlibStreamInternal inputPtr](self maxLength:{"inputPtr"), -[_SYZlibStreamInternal inputRoom](self, "inputRoom")}];

  if ((v5 & 0x8000000000000000) == 0)
  {
    self->_zStream.avail_out += v5;
    self->_writeOffset += v5;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (int64_t)readOutputToBuffer:(void *)a3 length:(int64_t)a4
{
  os_unfair_lock_lock(&self->_lock);
  v7 = [(_SYZlibStreamInternal *)self outputAvailable];
  if (v7 < a4)
  {
    a4 = v7;
  }

  memcpy(a3, [(_SYZlibStreamInternal *)self outputPtr], a4);
  v8 = self->_readOffset + a4;
  self->_readOffset = v8;
  if (v8 == self->_zStream.total_out)
  {
    self->_zStream.next_out = self->_output;
    self->_zStream.avail_out = self->_outputSize;
    self->_zStream.total_out = 0;
    self->_readOffset = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return a4;
}

- (int64_t)readOutputToStream:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 write:-[_SYZlibStreamInternal outputPtr](self maxLength:{"outputPtr"), -[_SYZlibStreamInternal outputAvailable](self, "outputAvailable")}];

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