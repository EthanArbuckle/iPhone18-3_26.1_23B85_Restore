@interface PKProtobufRemoteRegistrationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRegisterPeerPayment:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufRemoteRegistrationRequest

- (void)setHasRegisterPeerPayment:(BOOL)a3
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
  v8.super_class = PKProtobufRemoteRegistrationRequest;
  v4 = [(PKProtobufRemoteRegistrationRequest *)&v8 description];
  v5 = [(PKProtobufRemoteRegistrationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  has = self->_has;
  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_registerBroker];
    [v3 setObject:v6 forKey:@"registerBroker"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_registerPeerPayment];
    [v3 setObject:v7 forKey:@"registerPeerPayment"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[2] = self->_version;
  has = self->_has;
  if (has)
  {
    *(v4 + 12) = self->_registerBroker;
    *(v4 + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 13) = self->_registerPeerPayment;
    *(v4 + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_version != *(v4 + 2))
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((*(v4 + 16) & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  if ((*(v4 + 16) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (self->_registerBroker)
  {
    if ((*(v4 + 12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 12))
  {
    goto LABEL_11;
  }

LABEL_5:
  v5 = (*(v4 + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) != 0)
    {
      if (self->_registerPeerPayment)
      {
        if (*(v4 + 13))
        {
          goto LABEL_19;
        }
      }

      else if (!*(v4 + 13))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = *(v4 + 2);
  v5 = *(v4 + 16);
  if (v5)
  {
    self->_registerBroker = *(v4 + 12);
    *&self->_has |= 1u;
    v5 = *(v4 + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_registerPeerPayment = *(v4 + 13);
    *&self->_has |= 2u;
  }
}

@end