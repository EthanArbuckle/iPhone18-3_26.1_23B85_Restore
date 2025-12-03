@interface MFOutgoingMessage
- (BOOL)messageData:(id *)data messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary;
- (BOOL)messageDataHolder:(id *)holder messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary;
- (id)messageData;
- (id)messageDataHolder;
- (id)mutableHeaders;
- (void)dealloc;
- (void)setMessageBody:(id)body;
@end

@implementation MFOutgoingMessage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFOutgoingMessage;
  [(MFMailMessage *)&v3 dealloc];
}

- (void)setMessageBody:(id)body
{
  messageBody = self->_messageBody;
  if (messageBody != body)
  {

    self->_messageBody = body;
  }
}

- (id)messageData
{
  v3 = [-[MFOutgoingMessage headers](self "headers")];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  rawData = [(MFMessageBody *)self->_messageBody rawData];
  v6 = [MEMORY[0x277D24F70] dataWithCapacity:{objc_msgSend(rawData, "length") + objc_msgSend(v4, "length")}];
  [v6 appendData:v4];
  if (rawData)
  {
    [v6 appendData:rawData];
  }

  return v6;
}

- (BOOL)messageData:(id *)data messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary
{
  if (complete)
  {
    *complete = 1;
  }

  if (data)
  {
    *data = 0;
  }

  if (size)
  {
    *size = 0;
  }

  v9 = [-[MFOutgoingMessage headers](self "headers")];
  if (v9)
  {
    rawData = [(MFMessageBody *)self->_messageBody rawData];
    v11 = [v9 length];
    v12 = [rawData length] + v11;
    if (size)
    {
      *size = v12;
    }

    if (data)
    {
      v13 = [MEMORY[0x277D24F70] dataWithCapacity:v12];
      [v13 appendData:v9];
      if (rawData)
      {
        [v13 appendData:rawData];
      }

      [v13 mf_makeImmutable];
      *data = v13;
    }
  }

  return v9 != 0;
}

- (id)messageDataHolder
{
  v3 = [-[MFOutgoingMessage headers](self "headers")];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  rawData = [(MFMessageBody *)self->_messageBody rawData];
  v6 = [MEMORY[0x277D24F08] dataHolderWithData:v4];
  v7 = v6;
  if (rawData)
  {
    [v6 addData:rawData];
  }

  return v7;
}

- (BOOL)messageDataHolder:(id *)holder messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary
{
  if (complete)
  {
    *complete = 1;
  }

  if (holder)
  {
    *holder = 0;
  }

  if (size)
  {
    *size = 0;
  }

  v9 = [-[MFOutgoingMessage headers](self "headers")];
  if (v9)
  {
    rawData = [(MFMessageBody *)self->_messageBody rawData];
    v11 = [v9 length];
    v12 = [rawData length];
    if (size)
    {
      *size = v12 + v11;
    }

    if (holder)
    {
      v13 = [MEMORY[0x277D24F08] dataHolderWithData:v9];
      v14 = v13;
      if (rawData)
      {
        [v13 addData:rawData];
      }

      *holder = v14;
    }
  }

  return v9 != 0;
}

- (id)mutableHeaders
{
  result = self->_messageHeaders;
  if (!result)
  {
    result = objc_alloc_init(MEMORY[0x277D24F80]);
    self->_messageHeaders = result;
  }

  return result;
}

@end