@interface MXCancelRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsReason:(id)reason;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MXCancelRequest

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

- (int)StringAsReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"UNKNOWN_CANCELLATION"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"FALSE_VOICE_TRIGGER"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"USER_CANCELLED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXCancelRequest;
  v4 = [(MXCancelRequest *)&v8 description];
  dictionaryRepresentation = [(MXCancelRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestId = self->_requestId;
  if (requestId)
  {
    [dictionary setObject:requestId forKey:@"request_id"];
  }

  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason >= 3)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_reason];
    }

    else
    {
      v7 = off_27991BA28[reason];
    }

    [v4 setObject:v7 forKey:@"reason"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    reason = self->_reason;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestId)
  {
    v5 = toCopy;
    [toCopy setRequestId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_reason;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_reason;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  requestId = self->_requestId;
  if (requestId | *(equalCopy + 2))
  {
    if (![(NSString *)requestId isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_reason == *(equalCopy + 2))
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
  v3 = [(NSString *)self->_requestId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_reason;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(MXCancelRequest *)self setRequestId:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_reason = fromCopy[2];
    *&self->_has |= 1u;
  }
}

@end