@interface CCPBDataWriter
- (BOOL)writeData:(id)data;
- (CCPBDataWriter)init;
- (CCPBDataWriter)initWithInitialCapacity:(unint64_t)capacity;
- (unint64_t)write:(const char *)write maxLength:(unint64_t)length;
- (void)writeData:(id)data forTag:(unsigned int)tag;
- (void)writeSint64:(int64_t)sint64 forTag:(unsigned int)tag;
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

- (CCPBDataWriter)initWithInitialCapacity:(unint64_t)capacity
{
  v10.receiver = self;
  v10.super_class = CCPBDataWriter;
  v4 = [(CCPBDataWriter *)&v10 init];
  if (v4)
  {
    v5 = [CCPBMutableData alloc];
    if (capacity <= 0x100)
    {
      capacityCopy = 256;
    }

    else
    {
      capacityCopy = capacity;
    }

    v7 = [(CCPBMutableData *)v5 initWithCapacity:capacityCopy];
    data = v4->_data;
    v4->_data = v7;
  }

  return v4;
}

- (void)writeSint64:(int64_t)sint64 forTag:(unsigned int)tag
{
  v7 = 2 * sint64;
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

  v10 = v7 ^ (sint64 >> 63);
  if (tag != -1)
  {
    v11 = 8 * tag;
    p = data->p;
    if (v11 < 0x80)
    {
      LOBYTE(v13) = 8 * tag;
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
    v16 = v7 ^ (sint64 >> 63);
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

- (void)writeData:(id)data forTag:(unsigned int)tag
{
  if (data)
  {
    CCPBDataWriterWriteDataField(self, data, tag);
  }
}

- (unint64_t)write:(const char *)write maxLength:(unint64_t)length
{
  data = self->_data;
  end = data->end;
  p = data->p;
  if (end < &p[length])
  {
    if (end - data->buffer <= length)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = end - data->buffer;
    }

    [(CCPBMutableData *)data _pb_growCapacityBy:lengthCopy];
    p = self->_data->p;
  }

  memcpy(p, write, length);
  self->_data->p += length;
  return length;
}

- (BOOL)writeData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
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

  memcpy(p, [dataCopy bytes], v5);
  self->_data->p += v5;

  return 1;
}

@end