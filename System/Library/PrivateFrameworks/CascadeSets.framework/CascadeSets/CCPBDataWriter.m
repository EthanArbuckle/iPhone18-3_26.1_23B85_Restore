@interface CCPBDataWriter
- (BOOL)writeData:(id)a3;
- (CCPBDataWriter)init;
- (CCPBDataWriter)initWithInitialCapacity:(unint64_t)a3;
- (unint64_t)write:(const char *)a3 maxLength:(unint64_t)a4;
- (void)writeData:(id)a3 forTag:(unsigned int)a4;
- (void)writeSint64:(int64_t)a3 forTag:(unsigned int)a4;
@end

@implementation CCPBDataWriter

- (CCPBDataWriter)init
{
  v6.receiver = self;
  v6.super_class = CCPBDataWriter;
  v2 = [(CCPBDataWriter *)&v6 init];
  if (v2)
  {
    v3 = [[CCPBMutableData alloc] initWithCapacity:256];
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

- (CCPBDataWriter)initWithInitialCapacity:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = CCPBDataWriter;
  v4 = [(CCPBDataWriter *)&v10 init];
  if (v4)
  {
    v5 = [CCPBMutableData alloc];
    if (a3 <= 0x100)
    {
      v6 = 256;
    }

    else
    {
      v6 = a3;
    }

    v7 = [(CCPBMutableData *)v5 initWithCapacity:v6];
    data = v4->_data;
    v4->_data = v7;
  }

  return v4;
}

- (void)writeSint64:(int64_t)a3 forTag:(unsigned int)a4
{
  v7 = 2 * a3;
  data = self->_data;
  end = data->end;
  if (end < data->p + 16)
  {
    v18 = end - data->buffer;
    if (v18 <= 0x10)
    {
      v19 = 16;
    }

    else
    {
      v19 = v18;
    }

    [(CCPBMutableData *)data _pb_growCapacityBy:v19];
    data = self->_data;
  }

  v10 = v7 ^ (a3 >> 63);
  if (a4 != -1)
  {
    v11 = 8 * a4;
    p = data->p;
    if (v11 < 0x80)
    {
      LOBYTE(v13) = 8 * a4;
    }

    else
    {
      do
      {
        *p++ = v11 | 0x80;
        v13 = v11 >> 7;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
    }

    *p = v13;
    self->_data->p = p + 1;
    data = self->_data;
  }

  v15 = data->p;
  if (v10 < 0x80)
  {
    v16 = v7 ^ (a3 >> 63);
  }

  else
  {
    do
    {
      *v15++ = v10 | 0x80;
      v16 = v10 >> 7;
      v17 = v10 >> 14;
      v10 >>= 7;
    }

    while (v17);
  }

  *v15 = v16;
  self->_data->p = v15 + 1;
}

- (void)writeData:(id)a3 forTag:(unsigned int)a4
{
  if (a3)
  {
    CCPBDataWriterWriteDataField(self, a3, a4);
  }
}

- (unint64_t)write:(const char *)a3 maxLength:(unint64_t)a4
{
  data = self->_data;
  end = data->end;
  p = data->p;
  if (end < &p[a4])
  {
    if (end - data->buffer <= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = end - data->buffer;
    }

    [(CCPBMutableData *)data _pb_growCapacityBy:v11];
    p = self->_data->p;
  }

  memcpy(p, a3, a4);
  self->_data->p += a4;
  return a4;
}

- (BOOL)writeData:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  data = self->_data;
  end = data->end;
  p = data->p;
  if (end < &p[v5])
  {
    v10 = end - data->buffer;
    if (v10 <= v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = v10;
    }

    [(CCPBMutableData *)data _pb_growCapacityBy:v11];
    p = self->_data->p;
  }

  memcpy(p, [v4 bytes], v5);
  self->_data->p += v5;

  return 1;
}

@end