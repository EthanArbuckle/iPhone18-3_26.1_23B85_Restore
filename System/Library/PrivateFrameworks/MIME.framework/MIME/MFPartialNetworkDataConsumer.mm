@interface MFPartialNetworkDataConsumer
- (MFPartialNetworkDataConsumer)init;
- (id)copyDataWithUnixLineEndings;
- (id)data;
- (int64_t)appendData:(id)data;
- (void)dealloc;
- (void)done;
@end

@implementation MFPartialNetworkDataConsumer

- (MFPartialNetworkDataConsumer)init
{
  v4.receiver = self;
  v4.super_class = MFPartialNetworkDataConsumer;
  v2 = [(MFPartialNetworkDataConsumer *)&v4 init];
  if (v2)
  {
    v2->_rawDataConsumer = objc_alloc_init(MFBufferedDataConsumer);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFPartialNetworkDataConsumer;
  [(MFPartialNetworkDataConsumer *)&v3 dealloc];
}

- (int64_t)appendData:(id)data
{
  self->_strippedData = 0;
  if ((*(self + 32) & 1) == 0)
  {
    if (memchr([data bytes], 13, objc_msgSend(data, "length")))
    {
      v5 = (*(self + 32) & 0xFE) + 1;
    }

    else
    {
      v5 = *(self + 32) & 0xFE;
    }

    *(self + 32) = v5;
  }

  result = [(MFGuaranteedCollectingDataConsumer *)self->_rawDataConsumer appendData:data];
  if (result >= 1)
  {
    self->_length += result;
  }

  return result;
}

- (void)done
{
  [(MFGuaranteedCollectingDataConsumer *)self->_rawDataConsumer done];

  self->_strippedData = 0;
}

- (id)data
{
  if (self->_length)
  {
    return [(MFGuaranteedCollectingDataConsumer *)self->_rawDataConsumer data];
  }

  else
  {
    return 0;
  }
}

- (id)copyDataWithUnixLineEndings
{
  if (self->_length)
  {
    if (*(self + 32))
    {
      strippedData = self->_strippedData;
      if (!strippedData)
      {
        v6 = objc_alloc_init(MFBufferedDataConsumer);
        v7 = [(MFBaseFilterDataConsumer *)[MFLineEndingConverterFilter alloc] initWithConsumer:v6];
        [(MFLineEndingConverterFilter *)v7 appendData:[(MFGuaranteedCollectingDataConsumer *)self->_rawDataConsumer data]];
        [(MFLineEndingConverterFilter *)v7 done];
        [(MFBufferedDataConsumer *)v6 done];
        data = [(MFBufferedDataConsumer *)v6 data];
        self->_strippedData = data;

        strippedData = data;
      }
    }

    else
    {
      strippedData = [(MFGuaranteedCollectingDataConsumer *)self->_rawDataConsumer data];
    }
  }

  else
  {
    strippedData = 0;
  }

  return strippedData;
}

@end