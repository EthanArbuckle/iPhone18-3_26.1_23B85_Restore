@interface MFOutgoingMessage
- (BOOL)messageData:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6;
- (BOOL)messageDataHolder:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6;
- (id)messageData;
- (id)messageDataHolder;
- (id)mutableHeaders;
- (void)dealloc;
- (void)setMessageBody:(id)a3;
@end

@implementation MFOutgoingMessage

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFOutgoingMessage;
  [(MFMailMessage *)&v3 dealloc];
}

- (void)setMessageBody:(id)a3
{
  messageBody = self->_messageBody;
  if (messageBody != a3)
  {

    self->_messageBody = a3;
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
  v5 = [(MFMessageBody *)self->_messageBody rawData];
  v6 = [MEMORY[0x277D24F70] dataWithCapacity:{objc_msgSend(v5, "length") + objc_msgSend(v4, "length")}];
  [v6 appendData:v4];
  if (v5)
  {
    [v6 appendData:v5];
  }

  return v6;
}

- (BOOL)messageData:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6
{
  if (a5)
  {
    *a5 = 1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v9 = [-[MFOutgoingMessage headers](self "headers")];
  if (v9)
  {
    v10 = [(MFMessageBody *)self->_messageBody rawData];
    v11 = [v9 length];
    v12 = [v10 length] + v11;
    if (a4)
    {
      *a4 = v12;
    }

    if (a3)
    {
      v13 = [MEMORY[0x277D24F70] dataWithCapacity:v12];
      [v13 appendData:v9];
      if (v10)
      {
        [v13 appendData:v10];
      }

      [v13 mf_makeImmutable];
      *a3 = v13;
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
  v5 = [(MFMessageBody *)self->_messageBody rawData];
  v6 = [MEMORY[0x277D24F08] dataHolderWithData:v4];
  v7 = v6;
  if (v5)
  {
    [v6 addData:v5];
  }

  return v7;
}

- (BOOL)messageDataHolder:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6
{
  if (a5)
  {
    *a5 = 1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v9 = [-[MFOutgoingMessage headers](self "headers")];
  if (v9)
  {
    v10 = [(MFMessageBody *)self->_messageBody rawData];
    v11 = [v9 length];
    v12 = [v10 length];
    if (a4)
    {
      *a4 = v12 + v11;
    }

    if (a3)
    {
      v13 = [MEMORY[0x277D24F08] dataHolderWithData:v9];
      v14 = v13;
      if (v10)
      {
        [v13 addData:v10];
      }

      *a3 = v14;
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