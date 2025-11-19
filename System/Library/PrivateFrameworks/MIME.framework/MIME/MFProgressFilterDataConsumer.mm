@interface MFProgressFilterDataConsumer
- (MFProgressFilterDataConsumer)initWithConsumer:(id)a3 expectedSize:(unint64_t)a4;
- (MFProgressFilterDataConsumer)initWithConsumers:(id)a3 expectedSize:(unint64_t)a4;
- (int64_t)appendData:(id)a3;
@end

@implementation MFProgressFilterDataConsumer

- (MFProgressFilterDataConsumer)initWithConsumer:(id)a3 expectedSize:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = MFProgressFilterDataConsumer;
  result = [(MFBaseFilterDataConsumer *)&v6 initWithConsumer:a3];
  if (result)
  {
    result->_expectedSize = a4;
    result->_currentBytes = 0;
  }

  return result;
}

- (MFProgressFilterDataConsumer)initWithConsumers:(id)a3 expectedSize:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = MFProgressFilterDataConsumer;
  result = [(MFBaseFilterDataConsumer *)&v6 initWithConsumers:a3];
  if (result)
  {
    result->_expectedSize = a4;
    result->_currentBytes = 0;
  }

  return result;
}

- (int64_t)appendData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFProgressFilterDataConsumer;
  v5 = [(MFBaseFilterDataConsumer *)&v10 appendData:v4];
  v6 = v5;
  if ((v5 & 0x8000000000000000) == 0)
  {
    self->_currentBytes += v5;
    v7 = [(MFProgressFilterDataConsumer *)self progressBlock];

    if (v7)
    {
      v8 = [(MFProgressFilterDataConsumer *)self progressBlock];
      v8[2](v8, self->_currentBytes, v6, self->_expectedSize);
    }
  }

  return v6;
}

@end