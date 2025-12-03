@interface IDSQRProtoGoAwayIndication
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoGoAwayIndication

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoGoAwayIndication;
  v4 = [(IDSQRProtoGoAwayIndication *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoGoAwayIndication *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_reasonCode];
  [dictionary setObject:v4 forKey:@"reason_code"];

  reasonString = self->_reasonString;
  if (reasonString)
  {
    [dictionary setObject:reasonString forKey:@"reason_string"];
  }

  serverBlob = self->_serverBlob;
  if (serverBlob)
  {
    [dictionary setObject:serverBlob forKey:@"server_blob"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_txnId];
    [dictionary setObject:v7 forKey:@"txn_id"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_reasonString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serverBlob)
  {
    PBDataWriterWriteDataField();
  }

  v4 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v4 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[4] = self->_reasonCode;
  v5 = toCopy;
  if (self->_reasonString)
  {
    [toCopy setReasonString:?];
    toCopy = v5;
  }

  if (self->_serverBlob)
  {
    [v5 setServerBlob:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_txnId;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_reasonCode;
  v6 = [(NSString *)self->_reasonString copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSData *)self->_serverBlob copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_txnId;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (self->_reasonCode != *(equalCopy + 4))
  {
    goto LABEL_11;
  }

  reasonString = self->_reasonString;
  if (reasonString | *(equalCopy + 3))
  {
    if (![(NSString *)reasonString isEqual:?])
    {
      goto LABEL_11;
    }
  }

  serverBlob = self->_serverBlob;
  if (serverBlob | *(equalCopy + 4))
  {
    if (![(NSData *)serverBlob isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v7 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_txnId == *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_reasonCode = *(fromCopy + 4);
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(IDSQRProtoGoAwayIndication *)self setReasonString:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(IDSQRProtoGoAwayIndication *)self setServerBlob:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 40))
  {
    self->_txnId = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end