@interface NNMKProtoComposedMessageSendingProgressReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoComposedMessageSendingProgressReport

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoComposedMessageSendingProgressReport;
  v4 = [(NNMKProtoComposedMessageSendingProgressReport *)&v8 description];
  v5 = [(NNMKProtoComposedMessageSendingProgressReport *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  composedMessageId = self->_composedMessageId;
  if (composedMessageId)
  {
    [v3 setObject:composedMessageId forKey:@"composedMessageId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_progress];
    [v4 setObject:v6 forKey:@"progress"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_composedMessageId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    progress = self->_progress;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_composedMessageId)
  {
    v5 = v4;
    [v4 setComposedMessageId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_progress;
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_composedMessageId copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_progress;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  composedMessageId = self->_composedMessageId;
  if (composedMessageId | *(v4 + 1))
  {
    if (![(NSString *)composedMessageId isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_progress == *(v4 + 4))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_composedMessageId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_progress;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(NNMKProtoComposedMessageSendingProgressReport *)self setComposedMessageId:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_progress = v4[4];
    *&self->_has |= 1u;
  }
}

@end