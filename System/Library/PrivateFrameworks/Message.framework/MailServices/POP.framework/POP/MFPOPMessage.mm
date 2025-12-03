@interface MFPOPMessage
- (BOOL)messageData:(id *)data messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary;
- (NSData)messageData;
- (id)headers;
- (id)messageDataHolder;
- (unint64_t)messageSize;
- (void)setAccountURL:(id)l;
- (void)setMessageData:(id)data isComplete:(BOOL)complete;
@end

@implementation MFPOPMessage

- (NSData)messageData
{
  if (self->_messageDataIsComplete)
  {
    messageData = self->_messageData;
  }

  else
  {
    v6 = 0;
    v5.receiver = self;
    v5.super_class = MFPOPMessage;
    [(MFPOPMessage *)&v5 messageData:&v6 messageSize:0 isComplete:0 downloadIfNecessary:1];
    messageData = v6;
  }

  v3 = messageData;

  return v3;
}

- (void)setMessageData:(id)data isComplete:(BOOL)complete
{
  dataCopy = data;
  if (self->_messageData != dataCopy)
  {
    v8 = dataCopy;
    objc_storeStrong(&self->_messageData, data);
    dataCopy = v8;
    self->_messageDataIsComplete = complete;
  }
}

- (id)messageDataHolder
{
  if (self->_messageDataIsComplete)
  {
    v2 = [MEMORY[0x277D24F08] dataHolderWithData:self->_messageData];
  }

  else
  {
    v5 = 0;
    v4.receiver = self;
    v4.super_class = MFPOPMessage;
    [(MFPOPMessage *)&v4 messageDataHolder:&v5 messageSize:0 isComplete:0 downloadIfNecessary:1];
    v2 = v5;
  }

  return v2;
}

- (unint64_t)messageSize
{
  size = self->_size;
  if (!size)
  {
    messageData = [(MFPOPMessage *)self messageData];
    size = [messageData length];
  }

  return size;
}

- (BOOL)messageData:(id *)data messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary
{
  if (data)
  {
    *data = self->_messageData;
  }

  if (size)
  {
    size = self->_size;
    if (size)
    {
      *size = size;
    }
  }

  if (complete)
  {
    messageData = self->_messageData;
    if (messageData)
    {
      LOBYTE(messageData) = self->_messageDataIsComplete;
    }

    *complete = messageData & 1;
  }

  return self->_messageData != 0;
}

- (id)headers
{
  v12 = -86;
  v3 = [(MFPOPMessage *)self messageDataIsComplete:&v12 downloadIfNecessary:1];
  v4 = v3;
  if (!v3 || (v5 = [v3 mf_rangeOfRFC822HeaderData], v7 = v6, v5 + v6 > objc_msgSend(v4, "length")) || (objc_msgSend(v4, "mf_subdataWithRange:", v5, v7), v8 = objc_claimAutoreleasedReturnValue(), headers = objc_msgSend(objc_alloc(MEMORY[0x277D24F40]), "initWithHeaderData:encoding:", v8, -[MFPOPMessage preferredEncoding](self, "preferredEncoding")), v8, !headers))
  {
    v11.receiver = self;
    v11.super_class = MFPOPMessage;
    headers = [(MFPOPMessage *)&v11 headers];
  }

  return headers;
}

- (void)setAccountURL:(id)l
{
  lCopy = l;
  v4 = [lCopy copy];
  accountURL = self->_accountURL;
  self->_accountURL = v4;
}

@end