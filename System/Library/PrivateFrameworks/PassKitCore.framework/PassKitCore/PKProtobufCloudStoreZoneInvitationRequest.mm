@interface PKProtobufCloudStoreZoneInvitationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufCloudStoreZoneInvitationRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufCloudStoreZoneInvitationRequest;
  v4 = [(PKProtobufCloudStoreZoneInvitationRequest *)&v8 description];
  dictionaryRepresentation = [(PKProtobufCloudStoreZoneInvitationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  invitation = self->_invitation;
  if (invitation)
  {
    dictionaryRepresentation = [(PKProtobufCloudStoreZoneInvitation *)invitation dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"invitation"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_errorCode];
    [dictionary setObject:v7 forKey:@"errorCode"];
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [dictionary setObject:errorDomain forKey:@"errorDomain"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [dictionary setObject:errorDescription forKey:@"errorDescription"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_invitation)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v4 = toCopy;
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[10] = self->_version;
  v5 = toCopy;
  if (self->_invitation)
  {
    [toCopy setInvitation:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[2] = self->_errorCode;
    *(toCopy + 44) |= 1u;
  }

  if (self->_errorDomain)
  {
    [v5 setErrorDomain:?];
    toCopy = v5;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 40) = self->_version;
  v6 = [(PKProtobufCloudStoreZoneInvitation *)self->_invitation copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_errorCode;
    *(v5 + 44) |= 1u;
  }

  v8 = [(NSString *)self->_errorDomain copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  if (self->_version != *(equalCopy + 10))
  {
    goto LABEL_14;
  }

  invitation = self->_invitation;
  if (invitation | *(equalCopy + 4))
  {
    if (![(PKProtobufCloudStoreZoneInvitation *)invitation isEqual:?])
    {
      goto LABEL_14;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_errorCode != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 44))
  {
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(equalCopy + 3) && ![(NSString *)errorDomain isEqual:?])
  {
    goto LABEL_14;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = fromCopy[10];
  invitation = self->_invitation;
  v6 = *(fromCopy + 4);
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (fromCopy[11])
  {
    self->_errorCode = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(PKProtobufCloudStoreZoneInvitationRequest *)self setErrorDomain:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 2))
  {
    [(PKProtobufCloudStoreZoneInvitationRequest *)self setErrorDescription:?];
    fromCopy = v7;
  }
}

@end