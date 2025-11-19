@interface CSUEspressoBuffer
+ (id)fromEspressoBuffer:(id *)a3;
- (CSUEspressoBuffer)initWithEspressoBuffer:(id *)a3;
- (void)accessDataUsingBlock:(id)a3;
@end

@implementation CSUEspressoBuffer

- (CSUEspressoBuffer)initWithEspressoBuffer:(id *)a3
{
  v16.receiver = self;
  v16.super_class = CSUEspressoBuffer;
  v4 = [(CSUEspressoBuffer *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&a3->var0;
    v7 = *a3->var2;
    *(v4 + 40) = *&a3->var2[2];
    *(v4 + 24) = v7;
    *(v4 + 8) = v6;
    v8 = *a3->var3;
    v9 = *&a3->var3[2];
    v10 = *&a3->var4;
    *(v4 + 104) = *&a3->var6;
    *(v4 + 88) = v10;
    *(v4 + 72) = v9;
    *(v4 + 56) = v8;
    v11 = *&a3->var8;
    v12 = *&a3->var10;
    v13 = *&a3->var12;
    *(v4 + 21) = *&a3->var14;
    *(v4 + 152) = v13;
    *(v4 + 136) = v12;
    *(v4 + 120) = v11;
    v14 = v4;
  }

  return v5;
}

+ (id)fromEspressoBuffer:(id *)a3
{
  v4 = [a1 alloc];
  v5 = *&a3->var12;
  v15[8] = *&a3->var10;
  v15[9] = v5;
  v16 = *&a3->var14;
  v6 = *&a3->var4;
  v15[4] = *&a3->var3[2];
  v15[5] = v6;
  v7 = *&a3->var8;
  v15[6] = *&a3->var6;
  v15[7] = v7;
  v8 = *a3->var2;
  v15[0] = *&a3->var0;
  v15[1] = v8;
  v9 = *a3->var3;
  v15[2] = *&a3->var2[2];
  v15[3] = v9;
  v13 = objc_msgSend_initWithEspressoBuffer_(v4, v10, v15, v11, v12);

  return v13;
}

- (void)accessDataUsingBlock:(id)a3
{
  v4 = a3;
  espresso_buffer_get_rank();
  v5 = vshlq_n_s64(*&self->_buffer.stride_channels, 2uLL);
  v6 = vshlq_n_s64(*&self->_buffer.stride_width, 2uLL);
  v4[2](v4, self->_buffer.data, 4 * self->_buffer.stride_sequence_length * self->_buffer.sequence_length);
}

@end