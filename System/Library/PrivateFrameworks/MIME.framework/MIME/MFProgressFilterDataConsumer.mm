@interface MFProgressFilterDataConsumer
- (MFProgressFilterDataConsumer)initWithConsumer:(id)consumer expectedSize:(unint64_t)size;
- (MFProgressFilterDataConsumer)initWithConsumers:(id)consumers expectedSize:(unint64_t)size;
- (int64_t)appendData:(id)data;
@end

@implementation MFProgressFilterDataConsumer

- (MFProgressFilterDataConsumer)initWithConsumer:(id)consumer expectedSize:(unint64_t)size
{
  v6.receiver = self;
  v6.super_class = MFProgressFilterDataConsumer;
  result = [(MFBaseFilterDataConsumer *)&v6 initWithConsumer:consumer];
  if (result)
  {
    result->_expectedSize = size;
    result->_currentBytes = 0;
  }

  return result;
}

- (MFProgressFilterDataConsumer)initWithConsumers:(id)consumers expectedSize:(unint64_t)size
{
  v6.receiver = self;
  v6.super_class = MFProgressFilterDataConsumer;
  result = [(MFBaseFilterDataConsumer *)&v6 initWithConsumers:consumers];
  if (result)
  {
    result->_expectedSize = size;
    result->_currentBytes = 0;
  }

  return result;
}

- (int64_t)appendData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = MFProgressFilterDataConsumer;
  v5 = [(MFBaseFilterDataConsumer *)&v10 appendData:dataCopy];
  v6 = v5;
  if ((v5 & 0x8000000000000000) == 0)
  {
    self->_currentBytes += v5;
    progressBlock = [(MFProgressFilterDataConsumer *)self progressBlock];

    if (progressBlock)
    {
      progressBlock2 = [(MFProgressFilterDataConsumer *)self progressBlock];
      progressBlock2[2](progressBlock2, self->_currentBytes, v6, self->_expectedSize);
    }
  }

  return v6;
}

@end