@interface PKProtobufCloudStoreZoneInvitation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufCloudStoreZoneInvitation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufCloudStoreZoneInvitation;
  v4 = [(PKProtobufCloudStoreZoneInvitation *)&v8 description];
  dictionaryRepresentation = [(PKProtobufCloudStoreZoneInvitation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  shareURL = self->_shareURL;
  if (shareURL)
  {
    [dictionary setObject:shareURL forKey:@"shareURL"];
  }

  shareInvitationToken = self->_shareInvitationToken;
  if (shareInvitationToken)
  {
    [dictionary setObject:shareInvitationToken forKey:@"shareInvitationToken"];
  }

  containerIdentifier = self->_containerIdentifier;
  if (containerIdentifier)
  {
    [dictionary setObject:containerIdentifier forKey:@"containerIdentifier"];
  }

  zoneName = self->_zoneName;
  if (zoneName)
  {
    [dictionary setObject:zoneName forKey:@"zoneName"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateCreated];
    [dictionary setObject:v9 forKey:@"dateCreated"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_shareURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shareInvitationToken)
  {
    PBDataWriterWriteDataField();
  }

  v4 = toCopy;
  if (self->_containerIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    v4 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[10] = self->_version;
  v5 = toCopy;
  if (self->_shareURL)
  {
    [toCopy setShareURL:?];
    toCopy = v5;
  }

  if (self->_shareInvitationToken)
  {
    [v5 setShareInvitationToken:?];
    toCopy = v5;
  }

  if (self->_containerIdentifier)
  {
    [v5 setContainerIdentifier:?];
    toCopy = v5;
  }

  if (self->_zoneName)
  {
    [v5 setZoneName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_dateCreated;
    *(toCopy + 56) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 40) = self->_version;
  v6 = [(NSString *)self->_shareURL copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_shareInvitationToken copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_containerIdentifier copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSString *)self->_zoneName copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_dateCreated;
    *(v5 + 56) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (self->_version != *(equalCopy + 10))
  {
    goto LABEL_15;
  }

  shareURL = self->_shareURL;
  if (shareURL | *(equalCopy + 4))
  {
    if (![(NSString *)shareURL isEqual:?])
    {
      goto LABEL_15;
    }
  }

  shareInvitationToken = self->_shareInvitationToken;
  if (shareInvitationToken | *(equalCopy + 3))
  {
    if (![(NSData *)shareInvitationToken isEqual:?])
    {
      goto LABEL_15;
    }
  }

  containerIdentifier = self->_containerIdentifier;
  if (containerIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)containerIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  zoneName = self->_zoneName;
  if (zoneName | *(equalCopy + 6))
  {
    if (![(NSString *)zoneName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v9 = (*(equalCopy + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) != 0 && self->_dateCreated == *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = *(fromCopy + 10);
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(PKProtobufCloudStoreZoneInvitation *)self setShareURL:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(PKProtobufCloudStoreZoneInvitation *)self setShareInvitationToken:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(PKProtobufCloudStoreZoneInvitation *)self setContainerIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(PKProtobufCloudStoreZoneInvitation *)self setZoneName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 56))
  {
    self->_dateCreated = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end