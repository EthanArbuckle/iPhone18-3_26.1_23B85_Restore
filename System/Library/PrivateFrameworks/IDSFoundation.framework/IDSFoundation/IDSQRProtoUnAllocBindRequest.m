@interface IDSQRProtoUnAllocBindRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)reasonAsString:(int)a3;
- (int)StringAsReason:(id)a3;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (id)reasonAsString:(int)a3
{
  if (a3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E77E21F0[a3];
  }

  return v4;
}

- (int)StringAsReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"VOLUNTARY_LEAVE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CLIENT_LEAVING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GO_AWAY_INDICATION"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CLIENT_REINITIATE"])
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
  v5 = [(IDSQRProtoUnAllocBindRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"reason"];
  }

  clientContextBlob = self->_clientContextBlob;
  if (clientContextBlob)
  {
    v7 = [(IDSQRProtoMaterial *)clientContextBlob dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"client_context_blob"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_clientContextBlob)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_reason;
    *(v4 + 20) |= 1u;
  }

  if (self->_clientContextBlob)
  {
    v5 = v4;
    [v4 setClientContextBlob:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_reason;
    *(v5 + 20) |= 1u;
  }

  v7 = [(IDSQRProtoMaterial *)self->_clientContextBlob copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_reason != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  clientContextBlob = self->_clientContextBlob;
  if (clientContextBlob | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 20))
  {
    self->_reason = *(v4 + 4);
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