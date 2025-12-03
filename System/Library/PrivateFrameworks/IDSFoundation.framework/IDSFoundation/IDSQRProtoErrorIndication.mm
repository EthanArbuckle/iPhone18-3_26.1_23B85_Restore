@interface IDSQRProtoErrorIndication
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasChannelId:(BOOL)id;
- (void)setHasErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoErrorIndication

- (void)setHasChannelId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoErrorIndication;
  v4 = [(IDSQRProtoErrorIndication *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoErrorIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_channelId];
    [dictionary setObject:v5 forKey:@"channel_id"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_errorCode];
    [dictionary setObject:v6 forKey:@"error_code"];
  }

  errorReason = self->_errorReason;
  if (errorReason)
  {
    [dictionary setObject:errorReason forKey:@"error_reason"];
  }

  clientAddress = self->_clientAddress;
  if (clientAddress)
  {
    [dictionary setObject:clientAddress forKey:@"client_address"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
    [dictionary setObject:v9 forKey:@"txn_id"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_errorReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clientAddress)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[4] = self->_channelId;
    *(toCopy + 48) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[8] = self->_errorCode;
    *(toCopy + 48) |= 4u;
  }

  v6 = toCopy;
  if (self->_errorReason)
  {
    [toCopy setErrorReason:?];
    toCopy = v6;
  }

  if (self->_clientAddress)
  {
    [v6 setClientAddress:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_txnId;
    *(toCopy + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_channelId;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 32) = self->_errorCode;
    *(v5 + 48) |= 4u;
  }

  v8 = [(NSString *)self->_errorReason copyWithZone:zone];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  v10 = [(NSString *)self->_clientAddress copyWithZone:zone];
  v11 = *(v6 + 24);
  *(v6 + 24) = v10;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_txnId;
    *(v6 + 48) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_channelId != *(equalCopy + 4))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_errorCode != *(equalCopy + 8))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_20;
  }

  errorReason = self->_errorReason;
  if (errorReason | *(equalCopy + 5) && ![(NSString *)errorReason isEqual:?])
  {
    goto LABEL_20;
  }

  clientAddress = self->_clientAddress;
  if (clientAddress | *(equalCopy + 3))
  {
    if (![(NSString *)clientAddress isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v7 = (*(equalCopy + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_txnId != *(equalCopy + 1))
    {
      goto LABEL_20;
    }

    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_channelId;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_errorCode;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_errorReason hash];
  v6 = [(NSString *)self->_clientAddress hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_txnId;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if ((v5 & 2) != 0)
  {
    self->_channelId = *(fromCopy + 4);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 48);
  }

  if ((v5 & 4) != 0)
  {
    self->_errorCode = *(fromCopy + 8);
    *&self->_has |= 4u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(IDSQRProtoErrorIndication *)self setErrorReason:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(IDSQRProtoErrorIndication *)self setClientAddress:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 48))
  {
    self->_txnId = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end