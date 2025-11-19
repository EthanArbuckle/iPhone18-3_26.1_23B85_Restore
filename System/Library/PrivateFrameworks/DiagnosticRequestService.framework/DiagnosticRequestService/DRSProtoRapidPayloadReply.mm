@interface DRSProtoRapidPayloadReply
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DRSProtoRapidPayloadReply

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoRapidPayloadReply;
  v4 = [(DRSProtoRapidPayloadReply *)&v8 description];
  v5 = [(DRSProtoRapidPayloadReply *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [v3 setObject:v4 forKey:@"success"];
  }

  failureReason = self->_failureReason;
  if (failureReason)
  {
    [v3 setObject:failureReason forKey:@"failure_reason"];
  }

  replyPayload = self->_replyPayload;
  if (replyPayload)
  {
    [v3 setObject:replyPayload forKey:@"reply_payload"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_failureReason)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_replyPayload)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[24] = self->_success;
    v4[28] |= 1u;
  }

  v5 = v4;
  if (self->_failureReason)
  {
    [v4 setFailureReason:?];
    v4 = v5;
  }

  if (self->_replyPayload)
  {
    [v5 setReplyPayload:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_success;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_failureReason copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSData *)self->_replyPayload copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
    if (self->_success)
    {
      if (*(v4 + 24))
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
  if (failureReason | *(v4 + 1) && ![(NSString *)failureReason isEqual:?])
  {
    goto LABEL_9;
  }

  replyPayload = self->_replyPayload;
  if (replyPayload | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[28])
  {
    self->_success = v4[24];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(DRSProtoRapidPayloadReply *)self setFailureReason:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(DRSProtoRapidPayloadReply *)self setReplyPayload:?];
    v4 = v5;
  }
}

@end