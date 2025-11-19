@interface NPKProtoLongTermPrivacyKeyRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoLongTermPrivacyKeyRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoLongTermPrivacyKeyRequest;
  v4 = [(NPKProtoLongTermPrivacyKeyRequest *)&v8 description];
  v5 = [(NPKProtoLongTermPrivacyKeyRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  credentialGroupIdentifier = self->_credentialGroupIdentifier;
  if (credentialGroupIdentifier)
  {
    [v3 setObject:credentialGroupIdentifier forKey:@"credentialGroupIdentifier"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_reuseExisting];
    [v4 setObject:v6 forKey:@"reuseExisting"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_credentialGroupIdentifier)
  {
    [NPKProtoLongTermPrivacyKeyRequest writeTo:];
  }

  v6 = v4;
  PBDataWriterWriteStringField();
  if (*&self->_has)
  {
    reuseExisting = self->_reuseExisting;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setCredentialGroupIdentifier:self->_credentialGroupIdentifier];
  if (*&self->_has)
  {
    v4[16] = self->_reuseExisting;
    v4[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_credentialGroupIdentifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_reuseExisting;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  credentialGroupIdentifier = self->_credentialGroupIdentifier;
  if (credentialGroupIdentifier | *(v4 + 1))
  {
    if (![(NSString *)credentialGroupIdentifier isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_reuseExisting)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_credentialGroupIdentifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_reuseExisting;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(NPKProtoLongTermPrivacyKeyRequest *)self setCredentialGroupIdentifier:?];
    v4 = v5;
  }

  if (v4[20])
  {
    self->_reuseExisting = v4[16];
    *&self->_has |= 1u;
  }
}

@end