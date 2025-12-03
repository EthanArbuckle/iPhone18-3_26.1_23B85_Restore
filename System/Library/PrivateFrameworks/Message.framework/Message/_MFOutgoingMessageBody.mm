@interface _MFOutgoingMessageBody
- (_MFOutgoingMessageBody)init;
- (id)rawData;
- (int64_t)appendData:(id)data;
- (void)done;
@end

@implementation _MFOutgoingMessageBody

- (_MFOutgoingMessageBody)init
{
  v6.receiver = self;
  v6.super_class = _MFOutgoingMessageBody;
  v2 = [(_MFOutgoingMessageBody *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69AD698]);
    consumer = v2->_consumer;
    v2->_consumer = v3;
  }

  return v2;
}

- (id)rawData
{
  rawData = self->_rawData;
  if (rawData)
  {
    data = rawData;
  }

  else
  {
    data = [(MFBufferedDataConsumer *)self->_consumer data];
  }

  return data;
}

- (int64_t)appendData:(id)data
{
  dataCopy = data;
  v5 = [(MFBufferedDataConsumer *)self->_consumer appendData:dataCopy];
  if (v5 >= 1)
  {
    self->_lastNewLine = *([dataCopy bytes] + v5 - 1) == 10;
    self->_count += v5;
  }

  return v5;
}

- (void)done
{
  [(MFBufferedDataConsumer *)self->_consumer done];
  data = [(MFBufferedDataConsumer *)self->_consumer data];
  rawData = self->_rawData;
  self->_rawData = data;

  consumer = self->_consumer;
  self->_consumer = 0;
}

@end