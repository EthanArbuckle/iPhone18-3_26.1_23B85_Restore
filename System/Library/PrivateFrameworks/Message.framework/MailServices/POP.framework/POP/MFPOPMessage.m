@interface MFPOPMessage
- (BOOL)messageData:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6;
- (NSData)messageData;
- (id)headers;
- (id)messageDataHolder;
- (unint64_t)messageSize;
- (void)setAccountURL:(id)a3;
- (void)setMessageData:(id)a3 isComplete:(BOOL)a4;
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

- (void)setMessageData:(id)a3 isComplete:(BOOL)a4
{
  v7 = a3;
  if (self->_messageData != v7)
  {
    v8 = v7;
    objc_storeStrong(&self->_messageData, a3);
    v7 = v8;
    self->_messageDataIsComplete = a4;
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
    v3 = [(MFPOPMessage *)self messageData];
    size = [v3 length];
  }

  return size;
}

- (BOOL)messageData:(id *)a3 messageSize:(unint64_t *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6
{
  if (a3)
  {
    *a3 = self->_messageData;
  }

  if (a4)
  {
    size = self->_size;
    if (size)
    {
      *a4 = size;
    }
  }

  if (a5)
  {
    messageData = self->_messageData;
    if (messageData)
    {
      LOBYTE(messageData) = self->_messageDataIsComplete;
    }

    *a5 = messageData & 1;
  }

  return self->_messageData != 0;
}

- (id)headers
{
  v12 = -86;
  v3 = [(MFPOPMessage *)self messageDataIsComplete:&v12 downloadIfNecessary:1];
  v4 = v3;
  if (!v3 || (v5 = [v3 mf_rangeOfRFC822HeaderData], v7 = v6, v5 + v6 > objc_msgSend(v4, "length")) || (objc_msgSend(v4, "mf_subdataWithRange:", v5, v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(objc_alloc(MEMORY[0x277D24F40]), "initWithHeaderData:encoding:", v8, -[MFPOPMessage preferredEncoding](self, "preferredEncoding")), v8, !v9))
  {
    v11.receiver = self;
    v11.super_class = MFPOPMessage;
    v9 = [(MFPOPMessage *)&v11 headers];
  }

  return v9;
}

- (void)setAccountURL:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  accountURL = self->_accountURL;
  self->_accountURL = v4;
}

@end