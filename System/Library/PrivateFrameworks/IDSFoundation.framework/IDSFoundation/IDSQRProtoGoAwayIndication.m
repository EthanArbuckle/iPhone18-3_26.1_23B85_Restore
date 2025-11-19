@interface IDSQRProtoGoAwayIndication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoGoAwayIndication

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoGoAwayIndication;
  v4 = [(IDSQRProtoGoAwayIndication *)&v8 description];
  v5 = [(IDSQRProtoGoAwayIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_reasonCode];
  [v3 setObject:v4 forKey:@"reason_code"];

  reasonString = self->_reasonString;
  if (reasonString)
  {
    [v3 setObject:reasonString forKey:@"reason_string"];
  }

  serverBlob = self->_serverBlob;
  if (serverBlob)
  {
    [v3 setObject:serverBlob forKey:@"server_blob"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
    [v3 setObject:v7 forKey:@"txn_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_reasonString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serverBlob)
  {
    PBDataWriterWriteDataField();
  }

  v4 = v5;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[4] = self->_reasonCode;
  v5 = v4;
  if (self->_reasonString)
  {
    [v4 setReasonString:?];
    v4 = v5;
  }

  if (self->_serverBlob)
  {
    [v5 setServerBlob:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_txnId;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_reasonCode;
  v6 = [(NSString *)self->_reasonString copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSData *)self->_serverBlob copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_txnId;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (self->_reasonCode != *(v4 + 4))
  {
    goto LABEL_11;
  }

  reasonString = self->_reasonString;
  if (reasonString | *(v4 + 3))
  {
    if (![(NSString *)reasonString isEqual:?])
    {
      goto LABEL_11;
    }
  }

  serverBlob = self->_serverBlob;
  if (serverBlob | *(v4 + 4))
  {
    if (![(NSData *)serverBlob isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v7 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_txnId == *(v4 + 1))
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v7 = 0;
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  reasonCode = self->_reasonCode;
  v4 = [(NSString *)self->_reasonString hash];
  v5 = [(NSData *)self->_serverBlob hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_txnId;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v5 ^ v6 ^ (2654435761 * reasonCode);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_reasonCode = *(v4 + 4);
  v5 = v4;
  if (*(v4 + 3))
  {
    [(IDSQRProtoGoAwayIndication *)self setReasonString:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(IDSQRProtoGoAwayIndication *)self setServerBlob:?];
    v4 = v5;
  }

  if (*(v4 + 40))
  {
    self->_txnId = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end