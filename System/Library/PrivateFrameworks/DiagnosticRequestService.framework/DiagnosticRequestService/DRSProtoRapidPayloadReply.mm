@interface DRSProtoRapidPayloadReply
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoRapidPayloadReply

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoRapidPayloadReply;
  v4 = [(DRSProtoRapidPayloadReply *)&v8 description];
  dictionaryRepresentation = [(DRSProtoRapidPayloadReply *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [dictionary setObject:v4 forKey:@"success"];
  }

  failureReason = self->_failureReason;
  if (failureReason)
  {
    [dictionary setObject:failureReason forKey:@"failure_reason"];
  }

  replyPayload = self->_replyPayload;
  if (replyPayload)
  {
    [dictionary setObject:replyPayload forKey:@"reply_payload"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_failureReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_replyPayload)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[24] = self->_success;
    toCopy[28] |= 1u;
  }

  v5 = toCopy;
  if (self->_failureReason)
  {
    [toCopy setFailureReason:?];
    toCopy = v5;
  }

  if (self->_replyPayload)
  {
    [v5 setReplyPayload:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_success;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_failureReason copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSData *)self->_replyPayload copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(equalCopy + 24);
    if (self->_success)
    {
      if (*(equalCopy + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  failureReason = self->_failureReason;
  if (failureReason | *(equalCopy + 1) && ![(NSString *)failureReason isEqual:?])
  {
    goto LABEL_9;
  }

  replyPayload = self->_replyPayload;
  if (replyPayload | *(equalCopy + 2))
  {
    v8 = [(NSData *)replyPayload isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_success;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_failureReason hash]^ v3;
  return v4 ^ [(NSData *)self->_replyPayload hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[28])
  {
    self->_success = fromCopy[24];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(DRSProtoRapidPayloadReply *)self setFailureReason:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(DRSProtoRapidPayloadReply *)self setReplyPayload:?];
    fromCopy = v5;
  }
}

@end