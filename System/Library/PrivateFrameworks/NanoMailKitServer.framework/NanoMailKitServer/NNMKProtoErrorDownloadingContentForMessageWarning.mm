@interface NNMKProtoErrorDownloadingContentForMessageWarning
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoErrorDownloadingContentForMessageWarning

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoErrorDownloadingContentForMessageWarning;
  v4 = [(NNMKProtoErrorDownloadingContentForMessageWarning *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoErrorDownloadingContentForMessageWarning *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  messageId = self->_messageId;
  if (messageId)
  {
    [dictionary setObject:messageId forKey:@"messageId"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [v4 setObject:mailboxId forKey:@"mailboxId"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_messageId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_messageId)
  {
    [toCopy setMessageId:?];
    toCopy = v5;
  }

  if (self->_mailboxId)
  {
    [v5 setMailboxId:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_messageId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_mailboxId copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((messageId = self->_messageId, !(messageId | equalCopy[2])) || -[NSString isEqual:](messageId, "isEqual:")))
  {
    mailboxId = self->_mailboxId;
    if (mailboxId | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NNMKProtoErrorDownloadingContentForMessageWarning *)self setMessageId:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NNMKProtoErrorDownloadingContentForMessageWarning *)self setMailboxId:?];
    fromCopy = v5;
  }
}

@end