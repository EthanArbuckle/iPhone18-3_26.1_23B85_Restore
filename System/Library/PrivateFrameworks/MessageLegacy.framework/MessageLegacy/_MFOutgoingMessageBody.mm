@interface _MFOutgoingMessageBody
- (_MFOutgoingMessageBody)init;
- (id)rawData;
- (int64_t)appendData:(id)a3;
- (void)dealloc;
- (void)done;
@end

@implementation _MFOutgoingMessageBody

- (_MFOutgoingMessageBody)init
{
  v4.receiver = self;
  v4.super_class = _MFOutgoingMessageBody;
  v2 = [(_MFOutgoingMessageBody *)&v4 init];
  if (v2)
  {
    v2->_consumer = objc_alloc_init(MEMORY[0x277D24EE8]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MFOutgoingMessageBody;
  [(_MFOutgoingMessageBody *)&v3 dealloc];
}

- (id)rawData
{
  rawData = self->_rawData;
  if (rawData)
  {
    v4 = rawData;

    return v4;
  }

  else
  {
    consumer = self->_consumer;

    return [(MFBufferedDataConsumer *)consumer data];
  }
}

- (int64_t)appendData:(id)a3
{
  v5 = [(MFBufferedDataConsumer *)self->_consumer appendData:?];
  if (v5 >= 1)
  {
    self->_lastNewLine = *([a3 bytes] + v5 - 1) == 10;
    self->_count += v5;
  }

  return v5;
}

- (void)done
{
  [(MFBufferedDataConsumer *)self->_consumer done];
  self->_rawData = [(MFBufferedDataConsumer *)self->_consumer data];

  self->_consumer = 0;
}

@end