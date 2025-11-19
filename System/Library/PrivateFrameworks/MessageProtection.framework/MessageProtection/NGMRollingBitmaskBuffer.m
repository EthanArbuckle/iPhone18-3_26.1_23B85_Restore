@interface NGMRollingBitmaskBuffer
- (BOOL)processIncomingCounter:(unsigned int)a3;
- (NGMRollingBitmaskBuffer)init;
- (NGMRollingBitmaskBuffer)initWithData:(id)a3 upperBufferIndex:(unsigned int)a4;
- (id)bufferData;
- (void)dealloc;
@end

@implementation NGMRollingBitmaskBuffer

- (NGMRollingBitmaskBuffer)init
{
  v6.receiver = self;
  v6.super_class = NGMRollingBitmaskBuffer;
  v2 = [(NGMRollingBitmaskBuffer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_upper_buffer_index = 0x100000001;
    v2->_valid_values_buffer = malloc_type_malloc(1uLL, 0x68CBAE0CuLL);
    valid_values_buffer_size = v3->_valid_values_buffer_size;
    __memset_chk();
  }

  return v3;
}

- (NGMRollingBitmaskBuffer)initWithData:(id)a3 upperBufferIndex:(unsigned int)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = NGMRollingBitmaskBuffer;
  v7 = [(NGMRollingBitmaskBuffer *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_upper_buffer_index = a4;
    v9 = [v6 length];
    v8->_valid_values_buffer_size = v9;
    v10 = malloc_type_malloc(v9, 0x2373B4C4uLL);
    v8->_valid_values_buffer = v10;
    memcpy(v10, [v6 bytes], v8->_valid_values_buffer_size);
  }

  return v8;
}

- (BOOL)processIncomingCounter:(unsigned int)a3
{
  upper_buffer_index = self->_upper_buffer_index;
  valid_values_buffer_size = self->_valid_values_buffer_size;
  if (a3 < 8 * (upper_buffer_index - valid_values_buffer_size))
  {
    return 0;
  }

  v6 = a3;
  v8 = a3 >> 3;
  if (8 * upper_buffer_index - 1 < a3)
  {
    v9 = v8 + 1;
    v10 = v8 + 1 - upper_buffer_index;
    if (valid_values_buffer_size + v10 >= 0x30D4)
    {
      v11 = 12500;
    }

    else
    {
      v11 = valid_values_buffer_size + v10;
    }

    v12 = 12500 - v10;
    if (valid_values_buffer_size < 12500 - v10)
    {
      v12 = self->_valid_values_buffer_size;
    }

    v13 = v10 >> 2;
    if (v13 >= 0xC35)
    {
      v14 = valid_values_buffer_size;
    }

    else
    {
      v14 = v12;
    }

    if (v13 >= 0xC35)
    {
      v15 = 0;
    }

    else
    {
      v15 = valid_values_buffer_size - v12;
    }

    v16 = malloc_type_malloc(v11, 0x5F96BBA6uLL);
    memset(v16, 255, v11);
    memcpy(v16, &self->_valid_values_buffer[v15], v14);
    free(self->_valid_values_buffer);
    self->_valid_values_buffer = v16;
    self->_upper_buffer_index = v9;
    self->_valid_values_buffer_size = v11;
    v17 = &v16[(v11 - 1)];
    LOBYTE(v18) = *v17;
    v19 = v6 & 7;
    goto LABEL_17;
  }

  v17 = &self->_valid_values_buffer[v8 - (upper_buffer_index - valid_values_buffer_size)];
  v18 = *v17;
  v19 = a3 & 7;
  if ((v18 >> (a3 & 7)))
  {
LABEL_17:
    result = 1;
    *v17 = v18 & ~(1 << v19);
    return result;
  }

  return 0;
}

- (id)bufferData
{
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:-[NGMRollingBitmaskBuffer valid_values_buffer](self length:{"valid_values_buffer"), -[NGMRollingBitmaskBuffer valid_values_buffer_size](self, "valid_values_buffer_size")}];

  return v2;
}

- (void)dealloc
{
  free([(NGMRollingBitmaskBuffer *)self valid_values_buffer]);
  v3.receiver = self;
  v3.super_class = NGMRollingBitmaskBuffer;
  [(NGMRollingBitmaskBuffer *)&v3 dealloc];
}

@end