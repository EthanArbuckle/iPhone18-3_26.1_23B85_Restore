@interface PKProtobufCloudStoreZoneInvitationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufCloudStoreZoneInvitationRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufCloudStoreZoneInvitationRequest;
  v4 = [(PKProtobufCloudStoreZoneInvitationRequest *)&v8 description];
  v5 = [(PKProtobufCloudStoreZoneInvitationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  invitation = self->_invitation;
  if (invitation)
  {
    v6 = [(PKProtobufCloudStoreZoneInvitation *)invitation dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"invitation"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v7 forKey:@"errorCode"];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v3 setObject:errorDomain forKey:@"errorDomain"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v3 setObject:errorDescription forKey:@"errorDescription"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_invitation)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v4 = v5;
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[10] = self->_version;
  v5 = v4;
  if (self->_invitation)
  {
    [v4 setInvitation:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[2] = self->_errorCode;
    *(v4 + 44) |= 1u;
  }

  if (self->_errorDomain)
  {
    [v5 setErrorDomain:?];
    v4 = v5;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 40) = self->_version;
  v6 = [(PKProtobufCloudStoreZoneInvitation *)self->_invitation copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_errorCode;
    *(v5 + 44) |= 1u;
  }

  v8 = [(NSString *)self->_errorDomain copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_errorDescription copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  if (self->_version != *(v4 + 10))
  {
    goto LABEL_14;
  }

  invitation = self->_invitation;
  if (invitation | *(v4 + 4))
  {
    if (![(PKProtobufCloudStoreZoneInvitation *)invitation isEqual:?])
    {
      goto LABEL_14;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_errorCode != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 44))
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(v4 + 3) && ![(NSString *)errorDomain isEqual:?])
  {
    goto LABEL_14;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(v4 + 2))
  {
    v8 = [(NSString *)errorDescription isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (unint64_t)hash
{
  version = self->_version;
  v4 = [(PKProtobufCloudStoreZoneInvitation *)self->_invitation hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_errorCode;
  }

  else
  {
    v5 = 0;
  }

  v6 = 2654435761 * version;
  v7 = v4 ^ v5 ^ [(NSString *)self->_errorDomain hash];
  return v7 ^ [(NSString *)self->_errorDescription hash]^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = v4[10];
  invitation = self->_invitation;
  v6 = *(v4 + 4);
  v7 = v4;
  if (invitation)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PKProtobufCloudStoreZoneInvitation *)invitation mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PKProtobufCloudStoreZoneInvitationRequest *)self setInvitation:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[11])
  {
    self->_errorCode = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(PKProtobufCloudStoreZoneInvitationRequest *)self setErrorDomain:?];
    v4 = v7;
  }

  if (*(v4 + 2))
  {
    [(PKProtobufCloudStoreZoneInvitationRequest *)self setErrorDescription:?];
    v4 = v7;
  }
}

@end