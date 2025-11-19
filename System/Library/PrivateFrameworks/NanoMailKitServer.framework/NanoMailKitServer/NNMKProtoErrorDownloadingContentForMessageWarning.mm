@interface NNMKProtoErrorDownloadingContentForMessageWarning
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoErrorDownloadingContentForMessageWarning

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoErrorDownloadingContentForMessageWarning;
  v4 = [(NNMKProtoErrorDownloadingContentForMessageWarning *)&v8 description];
  v5 = [(NNMKProtoErrorDownloadingContentForMessageWarning *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  messageId = self->_messageId;
  if (messageId)
  {
    [v3 setObject:messageId forKey:@"messageId"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [v4 setObject:mailboxId forKey:@"mailboxId"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_messageId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_messageId)
  {
    [v4 setMessageId:?];
    v4 = v5;
  }

  if (self->_mailboxId)
  {
    [v5 setMailboxId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_messageId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_mailboxId copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((messageId = self->_messageId, !(messageId | v4[2])) || -[NSString isEqual:](messageId, "isEqual:")))
  {
    mailboxId = self->_mailboxId;
    if (mailboxId | v4[1])
    {
      v7 = [(NSString *)mailboxId isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NNMKProtoErrorDownloadingContentForMessageWarning *)self setMessageId:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NNMKProtoErrorDownloadingContentForMessageWarning *)self setMailboxId:?];
    v4 = v5;
  }
}

@end