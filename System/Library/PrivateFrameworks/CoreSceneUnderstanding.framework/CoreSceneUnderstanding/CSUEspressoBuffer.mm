@interface CSUEspressoBuffer
+ (id)fromEspressoBuffer:(id *)buffer;
- (CSUEspressoBuffer)initWithEspressoBuffer:(id *)buffer;
- (void)accessDataUsingBlock:(id)block;
@end

@implementation CSUEspressoBuffer

- (CSUEspressoBuffer)initWithEspressoBuffer:(id *)buffer
{
  v16.receiver = self;
  v16.super_class = CSUEspressoBuffer;
  v4 = [(CSUEspressoBuffer *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&buffer->var0;
    v7 = *buffer->var2;
    *(v4 + 40) = *&buffer->var2[2];
    *(v4 + 24) = v7;
    *(v4 + 8) = v6;
    v8 = *buffer->var3;
    v9 = *&buffer->var3[2];
    v10 = *&buffer->var4;
    *(v4 + 104) = *&buffer->var6;
    *(v4 + 88) = v10;
    *(v4 + 72) = v9;
    *(v4 + 56) = v8;
    v11 = *&buffer->var8;
    v12 = *&buffer->var10;
    v13 = *&buffer->var12;
    *(v4 + 21) = *&buffer->var14;
    *(v4 + 152) = v13;
    *(v4 + 136) = v12;
    *(v4 + 120) = v11;
    v14 = v4;
  }

  return v5;
}

+ (id)fromEspressoBuffer:(id *)buffer
{
  v4 = [self alloc];
  v5 = *&buffer->var12;
  v15[8] = *&buffer->var10;
  v15[9] = v5;
  v16 = *&buffer->var14;
  v6 = *&buffer->var4;
  v15[4] = *&buffer->var3[2];
  v15[5] = v6;
  v7 = *&buffer->var8;
  v15[6] = *&buffer->var6;
  v15[7] = v7;
  v8 = *buffer->var2;
  v15[0] = *&buffer->var0;
  v15[1] = v8;
  v9 = *buffer->var3;
  v15[2] = *&buffer->var2[2];
  v15[3] = v9;
  v13 = objc_msgSend_initWithEspressoBuffer_(v4, v10, v15, v11, v12);

  return v13;
}

- (void)accessDataUsingBlock:(id)block
{
  blockCopy = block;
  espresso_buffer_get_rank();
  v5 = vshlq_n_s64(*&self->_buffer.stride_channels, 2uLL);
  v6 = vshlq_n_s64(*&self->_buffer.stride_width, 2uLL);
  blockCopy[2](blockCopy, self->_buffer.data, 4 * self->_buffer.stride_sequence_length * self->_buffer.sequence_length);
}

@end