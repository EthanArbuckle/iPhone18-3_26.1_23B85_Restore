@interface PKProtobufRemoteRegistrationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRegisterPeerPayment:(BOOL)payment;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufRemoteRegistrationRequest

- (void)setHasRegisterPeerPayment:(BOOL)payment
{
  if (payment)
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
  v8.super_class = PKProtobufRemoteRegistrationRequest;
  v4 = [(PKProtobufRemoteRegistrationRequest *)&v8 description];
  dictionaryRepresentation = [(PKProtobufRemoteRegistrationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  has = self->_has;
  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_registerBroker];
    [dictionary setObject:v6 forKey:@"registerBroker"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_registerPeerPayment];
    [dictionary setObject:v7 forKey:@"registerPeerPayment"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[2] = self->_version;
  has = self->_has;
  if (has)
  {
    *(toCopy + 12) = self->_registerBroker;
    *(toCopy + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 13) = self->_registerPeerPayment;
    *(toCopy + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_version;
  has = self->_has;
  if (has)
  {
    *(result + 12) = self->_registerBroker;
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 13) = self->_registerPeerPayment;
    *(result + 16) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_version != *(equalCopy + 2))
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((*(equalCopy + 16) & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  if ((*(equalCopy + 16) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (self->_registerBroker)
  {
    if ((*(equalCopy + 12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 12))
  {
    goto LABEL_11;
  }

LABEL_5:
  v5 = (*(equalCopy + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) != 0)
    {
      if (self->_registerPeerPayment)
      {
        if (*(equalCopy + 13))
        {
          goto LABEL_19;
        }
      }

      else if (!*(equalCopy + 13))
      {
LABEL_19:
        v5 = 1;
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_registerBroker;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v2 ^ v3 ^ (2654435761 * self->_version);
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_registerPeerPayment;
  return v2 ^ v3 ^ (2654435761 * self->_version);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = *(fromCopy + 2);
  v5 = *(fromCopy + 16);
  if (v5)
  {
    self->_registerBroker = *(fromCopy + 12);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_registerPeerPayment = *(fromCopy + 13);
    *&self->_has |= 2u;
  }
}

@end