@interface IDSQRProtoUnAllocBindRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)reasonAsString:(int)string;
- (int)StringAsReason:(id)reason;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoUnAllocBindRequest

- (int)reason
{
  if (*&self->_has)
  {
    return self->_reason;
  }

  else
  {
    return 0;
  }
}

- (id)reasonAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E77E21F0[string];
  }

  return v4;
}

- (int)StringAsReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"VOLUNTARY_LEAVE"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"CLIENT_LEAVING"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"GO_AWAY_INDICATION"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"CLIENT_REINITIATE"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoUnAllocBindRequest;
  v4 = [(IDSQRProtoUnAllocBindRequest *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoUnAllocBindRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_reason];
    }

    else
    {
      v5 = off_1E77E21F0[reason];
    }

    [dictionary setObject:v5 forKey:@"reason"];
  }

  clientContextBlob = self->_clientContextBlob;
  if (clientContextBlob)
  {
    dictionaryRepresentation = [(IDSQRProtoMaterial *)clientContextBlob dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"client_context_blob"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_clientContextBlob)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_reason;
    *(toCopy + 20) |= 1u;
  }

  if (self->_clientContextBlob)
  {
    v5 = toCopy;
    [toCopy setClientContextBlob:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_reason;
    *(v5 + 20) |= 1u;
  }

  v7 = [(IDSQRProtoMaterial *)self->_clientContextBlob copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_reason != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  clientContextBlob = self->_clientContextBlob;
  if (clientContextBlob | *(equalCopy + 1))
  {
    v6 = [(IDSQRProtoMaterial *)clientContextBlob isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_reason;
  }

  else
  {
    v2 = 0;
  }

  return [(IDSQRProtoMaterial *)self->_clientContextBlob hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 20))
  {
    self->_reason = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  clientContextBlob = self->_clientContextBlob;
  v7 = v5[1];
  if (clientContextBlob)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    [(IDSQRProtoMaterial *)clientContextBlob mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    [(IDSQRProtoUnAllocBindRequest *)self setClientContextBlob:?];
  }

  v5 = v8;
LABEL_9:
}

@end