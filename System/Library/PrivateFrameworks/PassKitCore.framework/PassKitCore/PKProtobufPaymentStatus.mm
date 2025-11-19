@interface PKProtobufPaymentStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentStatus

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentStatus;
  v4 = [(PKProtobufPaymentStatus *)&v8 description];
  v5 = [(PKProtobufPaymentStatus *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_status];
    [v3 setObject:v4 forKey:@"status"];
  }

  remotePaymentRequestIdentifier = self->_remotePaymentRequestIdentifier;
  if (remotePaymentRequestIdentifier)
  {
    [v3 setObject:remotePaymentRequestIdentifier forKey:@"remotePaymentRequestIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
    v4 = v5;
  }

  if (self->_remotePaymentRequestIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_status;
    *(v4 + 20) |= 1u;
  }

  if (self->_remotePaymentRequestIdentifier)
  {
    v5 = v4;
    [v4 setRemotePaymentRequestIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_status;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSString *)self->_remotePaymentRequestIdentifier copyWithZone:a3];
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
    if ((*(v4 + 20) & 1) == 0 || self->_status != *(v4 + 4))
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

  remotePaymentRequestIdentifier = self->_remotePaymentRequestIdentifier;
  if (remotePaymentRequestIdentifier | *(v4 + 1))
  {
    v6 = [(NSString *)remotePaymentRequestIdentifier isEqual:?];
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
    v2 = 2654435761 * self->_status;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_remotePaymentRequestIdentifier hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    self->_status = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(PKProtobufPaymentStatus *)self setRemotePaymentRequestIdentifier:?];
    v4 = v5;
  }
}

@end