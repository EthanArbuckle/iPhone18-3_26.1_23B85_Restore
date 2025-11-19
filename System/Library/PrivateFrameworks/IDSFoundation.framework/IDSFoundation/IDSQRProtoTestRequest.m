@interface IDSQRProtoTestRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRequestedMessageType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoTestRequest

- (void)setHasRequestedMessageType:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoTestRequest;
  v4 = [(IDSQRProtoTestRequest *)&v8 description];
  v5 = [(IDSQRProtoTestRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_testOptionFlags];
  [v3 setObject:v4 forKey:@"test_option_flags"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_requestedMessageType];
    [v3 setObject:v6 forKey:@"requested_message_type"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_requestedErrorCode];
    [v3 setObject:v7 forKey:@"requested_error_code"];
  }

  subOperation = self->_subOperation;
  if (subOperation)
  {
    [v3 setObject:subOperation forKey:@"sub_operation"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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

  v5 = v6;
  if (self->_subOperation)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[6] = self->_testOptionFlags;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_requestedMessageType;
    *(v4 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[2] = self->_requestedErrorCode;
    *(v4 + 28) |= 1u;
  }

  if (self->_subOperation)
  {
    v6 = v4;
    [v4 setSubOperation:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_subOperation copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_testOptionFlags != *(v4 + 6))
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_requestedMessageType != *(v4 + 3))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_requestedErrorCode != *(v4 + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_15;
  }

  subOperation = self->_subOperation;
  if (subOperation | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_testOptionFlags = v4[6];
  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_requestedMessageType = v4[3];
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
  }

  if (v5)
  {
    self->_requestedErrorCode = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v6 = v4;
    [(IDSQRProtoTestRequest *)self setSubOperation:?];
    v4 = v6;
  }
}

@end