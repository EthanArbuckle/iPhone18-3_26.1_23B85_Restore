@interface IDSQRProtoTestRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRequestedMessageType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoTestRequest

- (void)setHasRequestedMessageType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoTestRequest;
  v4 = [(IDSQRProtoTestRequest *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoTestRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_testOptionFlags];
  [dictionary setObject:v4 forKey:@"test_option_flags"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_requestedMessageType];
    [dictionary setObject:v6 forKey:@"requested_message_type"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_requestedErrorCode];
    [dictionary setObject:v7 forKey:@"requested_error_code"];
  }

  subOperation = self->_subOperation;
  if (subOperation)
  {
    [dictionary setObject:subOperation forKey:@"sub_operation"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = toCopy;
  if (self->_subOperation)
  {
    PBDataWriterWriteStringField();
    v5 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[6] = self->_testOptionFlags;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_requestedMessageType;
    *(toCopy + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[2] = self->_requestedErrorCode;
    *(toCopy + 28) |= 1u;
  }

  if (self->_subOperation)
  {
    v6 = toCopy;
    [toCopy setSubOperation:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  *(v5 + 24) = self->_testOptionFlags;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 12) = self->_requestedMessageType;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_requestedErrorCode;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSString *)self->_subOperation copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_testOptionFlags != *(equalCopy + 6))
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_requestedMessageType != *(equalCopy + 3))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_requestedErrorCode != *(equalCopy + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_15;
  }

  subOperation = self->_subOperation;
  if (subOperation | *(equalCopy + 2))
  {
    v6 = [(NSString *)subOperation isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_16:

  return v6;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_requestedMessageType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761 * self->_requestedErrorCode;
LABEL_6:
  testOptionFlags = self->_testOptionFlags;
  return v7 ^ v8 ^ [(NSString *)self->_subOperation hash:v3]^ (2654435761 * testOptionFlags);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_testOptionFlags = fromCopy[6];
  v5 = *(fromCopy + 28);
  if ((v5 & 2) != 0)
  {
    self->_requestedMessageType = fromCopy[3];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 28);
  }

  if (v5)
  {
    self->_requestedErrorCode = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(IDSQRProtoTestRequest *)self setSubOperation:?];
    fromCopy = v6;
  }
}

@end