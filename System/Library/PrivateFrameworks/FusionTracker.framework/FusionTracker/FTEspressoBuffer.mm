@interface FTEspressoBuffer
+ (id)bufferWithEspressoBuffer:(id *)buffer;
- ($FD4688982923A924290ECB669CAF1EC2)buffer;
@end

@implementation FTEspressoBuffer

+ (id)bufferWithEspressoBuffer:(id *)buffer
{
  v4 = objc_alloc_init(FTEspressoBuffer);
  v6 = *buffer->var2;
  v5 = *&buffer->var2[2];
  *&v4->_buffer.data = *&buffer->var0;
  *v4->_buffer.dim = v6;
  *&v4->_buffer.dim[2] = v5;
  v7 = *&buffer->var4;
  v8 = *&buffer->var6;
  v9 = *&buffer->var3[2];
  *v4->_buffer.stride = *buffer->var3;
  *&v4->_buffer.channels = v8;
  *&v4->_buffer.width = v7;
  *&v4->_buffer.stride[2] = v9;
  v11 = *&buffer->var10;
  v10 = *&buffer->var12;
  v12 = *&buffer->var14;
  *&v4->_buffer.sequence_length = *&buffer->var8;
  *&v4->_buffer.storage_type = v12;
  *&v4->_buffer.stride_batch_number = v10;
  *&v4->_buffer.stride_height = v11;

  return v4;
}

- ($FD4688982923A924290ECB669CAF1EC2)buffer
{
  v3 = *&self->var9;
  v4 = *&self->var13;
  *&retstr->var10 = *&self->var11;
  *&retstr->var12 = v4;
  *&retstr->var14 = self[1].var0;
  v5 = *&self->var3[1];
  v6 = *&self->var5;
  *&retstr->var3[2] = *&self->var3[3];
  *&retstr->var4 = v6;
  *&retstr->var6 = *&self->var7;
  *&retstr->var8 = v3;
  v7 = *&self->var2[1];
  *&retstr->var0 = *&self->var1;
  *retstr->var2 = v7;
  *&retstr->var2[2] = *&self->var2[3];
  *retstr->var3 = v5;
  return self;
}

@end