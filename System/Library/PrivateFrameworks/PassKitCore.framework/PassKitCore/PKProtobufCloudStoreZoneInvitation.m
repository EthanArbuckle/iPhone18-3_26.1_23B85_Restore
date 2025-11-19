@interface PKProtobufCloudStoreZoneInvitation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufCloudStoreZoneInvitation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufCloudStoreZoneInvitation;
  v4 = [(PKProtobufCloudStoreZoneInvitation *)&v8 description];
  v5 = [(PKProtobufCloudStoreZoneInvitation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  shareURL = self->_shareURL;
  if (shareURL)
  {
    [v3 setObject:shareURL forKey:@"shareURL"];
  }

  shareInvitationToken = self->_shareInvitationToken;
  if (shareInvitationToken)
  {
    [v3 setObject:shareInvitationToken forKey:@"shareInvitationToken"];
  }

  containerIdentifier = self->_containerIdentifier;
  if (containerIdentifier)
  {
    [v3 setObject:containerIdentifier forKey:@"containerIdentifier"];
  }

  zoneName = self->_zoneName;
  if (zoneName)
  {
    [v3 setObject:zoneName forKey:@"zoneName"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateCreated];
    [v3 setObject:v9 forKey:@"dateCreated"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_shareURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shareInvitationToken)
  {
    PBDataWriterWriteDataField();
  }

  v4 = v5;
  if (self->_containerIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[10] = self->_version;
  v5 = v4;
  if (self->_shareURL)
  {
    [v4 setShareURL:?];
    v4 = v5;
  }

  if (self->_shareInvitationToken)
  {
    [v5 setShareInvitationToken:?];
    v4 = v5;
  }

  if (self->_containerIdentifier)
  {
    [v5 setContainerIdentifier:?];
    v4 = v5;
  }

  if (self->_zoneName)
  {
    [v5 setZoneName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_dateCreated;
    *(v4 + 56) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 40) = self->_version;
  v6 = [(NSString *)self->_shareURL copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_shareInvitationToken copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_containerIdentifier copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_zoneName copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_dateCreated;
    *(v5 + 56) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (self->_version != *(v4 + 10))
  {
    goto LABEL_15;
  }

  shareURL = self->_shareURL;
  if (shareURL | *(v4 + 4))
  {
    if (![(NSString *)shareURL isEqual:?])
    {
      goto LABEL_15;
    }
  }

  shareInvitationToken = self->_shareInvitationToken;
  if (shareInvitationToken | *(v4 + 3))
  {
    if (![(NSData *)shareInvitationToken isEqual:?])
    {
      goto LABEL_15;
    }
  }

  containerIdentifier = self->_containerIdentifier;
  if (containerIdentifier | *(v4 + 2))
  {
    if (![(NSString *)containerIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  zoneName = self->_zoneName;
  if (zoneName | *(v4 + 6))
  {
    if (![(NSString *)zoneName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v9 = (*(v4 + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) != 0 && self->_dateCreated == *(v4 + 1))
    {
      v9 = 1;
      goto LABEL_16;
    }

LABEL_15:
    v9 = 0;
  }

LABEL_16:

  return v9;
}

- (unint64_t)hash
{
  version = self->_version;
  v4 = [(NSString *)self->_shareURL hash];
  v5 = [(NSData *)self->_shareInvitationToken hash];
  v6 = [(NSString *)self->_containerIdentifier hash];
  v7 = [(NSString *)self->_zoneName hash];
  if (*&self->_has)
  {
    dateCreated = self->_dateCreated;
    if (dateCreated < 0.0)
    {
      dateCreated = -dateCreated;
    }

    *v8.i64 = floor(dateCreated + 0.5);
    v12 = (dateCreated - *v8.i64) * 1.84467441e19;
    *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v5 ^ v6 ^ v7 ^ (2654435761 * version) ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = *(v4 + 10);
  v5 = v4;
  if (*(v4 + 4))
  {
    [(PKProtobufCloudStoreZoneInvitation *)self setShareURL:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(PKProtobufCloudStoreZoneInvitation *)self setShareInvitationToken:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(PKProtobufCloudStoreZoneInvitation *)self setContainerIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(PKProtobufCloudStoreZoneInvitation *)self setZoneName:?];
    v4 = v5;
  }

  if (*(v4 + 56))
  {
    self->_dateCreated = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end