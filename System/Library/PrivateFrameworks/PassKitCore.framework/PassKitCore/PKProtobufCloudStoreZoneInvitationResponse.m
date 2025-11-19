@interface PKProtobufCloudStoreZoneInvitationResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufCloudStoreZoneInvitationResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufCloudStoreZoneInvitationResponse;
  v4 = [(PKProtobufCloudStoreZoneInvitationResponse *)&v8 description];
  v5 = [(PKProtobufCloudStoreZoneInvitationResponse *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_status];
    [v3 setObject:v7 forKey:@"status"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[5] = self->_version;
  if (self->_invitation)
  {
    v5 = v4;
    [v4 setInvitation:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[4] = self->_status;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 20) = self->_version;
  v6 = [(PKProtobufCloudStoreZoneInvitation *)self->_invitation copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_status;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (self->_version != *(v4 + 5))
  {
    goto LABEL_9;
  }

  invitation = self->_invitation;
  if (invitation | *(v4 + 1))
  {
    if (![(PKProtobufCloudStoreZoneInvitation *)invitation isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_status == *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = v4[5];
  invitation = self->_invitation;
  v6 = *(v4 + 1);
  if (invitation)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(PKProtobufCloudStoreZoneInvitation *)invitation mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(PKProtobufCloudStoreZoneInvitationResponse *)self setInvitation:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[6])
  {
    self->_status = v4[4];
    *&self->_has |= 1u;
  }
}

@end