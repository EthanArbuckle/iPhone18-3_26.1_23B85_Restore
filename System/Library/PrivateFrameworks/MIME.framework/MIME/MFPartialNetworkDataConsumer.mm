@interface MFPartialNetworkDataConsumer
- (MFPartialNetworkDataConsumer)init;
- (id)copyDataWithUnixLineEndings;
- (id)data;
- (int64_t)appendData:(id)a3;
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

- (int64_t)appendData:(id)a3
{
  self->_strippedData = 0;
  if ((*(self + 32) & 1) == 0)
  {
    if (memchr([a3 bytes], 13, objc_msgSend(a3, "length")))
    {
      v5 = (*(self + 32) & 0xFE) + 1;
    }

    else
    {
      v5 = *(self + 32) & 0xFE;
    }

    *(self + 32) = v5;
  }

  result = [(MFGuaranteedCollectingDataConsumer *)self->_rawDataConsumer appendData:a3];
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
        v8 = [(MFBufferedDataConsumer *)v6 data];
        self->_strippedData = v8;

        strippedData = v8;
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