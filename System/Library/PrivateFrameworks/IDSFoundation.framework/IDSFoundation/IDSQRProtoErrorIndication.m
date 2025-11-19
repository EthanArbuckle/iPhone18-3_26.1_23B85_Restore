@interface IDSQRProtoErrorIndication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasChannelId:(BOOL)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoErrorIndication

- (void)setHasChannelId:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasErrorCode:(BOOL)a3
{
  if (a3)
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
  v5 = [(IDSQRProtoErrorIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_channelId];
    [v3 setObject:v5 forKey:@"channel_id"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v6 forKey:@"error_code"];
  }

  errorReason = self->_errorReason;
  if (errorReason)
  {
    [v3 setObject:errorReason forKey:@"error_reason"];
  }

  clientAddress = self->_clientAddress;
  if (clientAddress)
  {
    [v3 setObject:clientAddress forKey:@"client_address"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
    [v3 setObject:v9 forKey:@"txn_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[4] = self->_channelId;
    *(v4 + 48) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[8] = self->_errorCode;
    *(v4 + 48) |= 4u;
  }

  v6 = v4;
  if (self->_errorReason)
  {
    [v4 setErrorReason:?];
    v4 = v6;
  }

  if (self->_clientAddress)
  {
    [v6 setClientAddress:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_txnId;
    *(v4 + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_errorReason copyWithZone:a3];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  v10 = [(NSString *)self->_clientAddress copyWithZone:a3];
  v11 = *(v6 + 24);
  *(v6 + 24) = v10;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_txnId;
    *(v6 + 48) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_channelId != *(v4 + 4))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_errorCode != *(v4 + 8))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_20;
  }

  errorReason = self->_errorReason;
  if (errorReason | *(v4 + 5) && ![(NSString *)errorReason isEqual:?])
  {
    goto LABEL_20;
  }

  clientAddress = self->_clientAddress;
  if (clientAddress | *(v4 + 3))
  {
    if (![(NSString *)clientAddress isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v7 = (*(v4 + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_txnId != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if ((v5 & 2) != 0)
  {
    self->_channelId = *(v4 + 4);
    *&self->_has |= 2u;
    v5 = *(v4 + 48);
  }

  if ((v5 & 4) != 0)
  {
    self->_errorCode = *(v4 + 8);
    *&self->_has |= 4u;
  }

  v6 = v4;
  if (*(v4 + 5))
  {
    [(IDSQRProtoErrorIndication *)self setErrorReason:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(IDSQRProtoErrorIndication *)self setClientAddress:?];
    v4 = v6;
  }

  if (*(v4 + 48))
  {
    self->_txnId = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end