@interface PKProtobufCloudStoreZoneInvitationResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufCloudStoreZoneInvitationResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufCloudStoreZoneInvitationResponse;
  v4 = [(PKProtobufCloudStoreZoneInvitationResponse *)&v8 description];
  dictionaryRepresentation = [(PKProtobufCloudStoreZoneInvitationResponse *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_status];
    [dictionary setObject:v7 forKey:@"status"];
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[5] = self->_version;
  if (self->_invitation)
  {
    v5 = toCopy;
    [toCopy setInvitation:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[4] = self->_status;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 20) = self->_version;
  v6 = [(PKProtobufCloudStoreZoneInvitation *)self->_invitation copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_status;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (self->_version != *(equalCopy + 5))
  {
    goto LABEL_9;
  }

  invitation = self->_invitation;
  if (invitation | *(equalCopy + 1))
  {
    if (![(PKProtobufCloudStoreZoneInvitation *)invitation isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_status == *(equalCopy + 4))
    {
      v6 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v6 = 0;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  version = self->_version;
  v4 = [(PKProtobufCloudStoreZoneInvitation *)self->_invitation hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_status;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v5 ^ (2654435761 * version);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = fromCopy[5];
  invitation = self->_invitation;
  v6 = *(fromCopy + 1);
  if (invitation)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(PKProtobufCloudStoreZoneInvitation *)invitation mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(PKProtobufCloudStoreZoneInvitationResponse *)self setInvitation:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[6])
  {
    self->_status = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end