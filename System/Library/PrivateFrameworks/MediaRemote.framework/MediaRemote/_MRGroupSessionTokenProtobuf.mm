@interface _MRGroupSessionTokenProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRouteType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGroupSessionTokenProtobuf

- (int)StringAsRouteType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GroupSessionRouteTypeUnknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"GroupSessionRouteTypeCarKit"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GroupSessionRouteTypeCarPlay"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GroupSessionRouteTypeSpeaker"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"GroupSessionRouteTypeHomePod"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"GroupSessionRouteTypeHomePodMini"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"GroupSessionRouteTypeAppleTV"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionTokenProtobuf;
  v4 = [(_MRGroupSessionTokenProtobuf *)&v8 description];
  v5 = [(_MRGroupSessionTokenProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  invitationData = self->_invitationData;
  if (invitationData)
  {
    [v3 setObject:invitationData forKey:@"invitationData"];
  }

  routeType = self->_routeType;
  if (routeType < 0xC && ((0xB27u >> routeType) & 1) != 0)
  {
    v7 = off_1E769FEC0[routeType];
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_routeType];
  }

  [v4 setObject:v7 forKey:@"routeType"];

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [v4 setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  sharedSecret = self->_sharedSecret;
  if (sharedSecret)
  {
    [v4 setObject:sharedSecret forKey:@"sharedSecret"];
  }

  equivalentMediaIdentifier = self->_equivalentMediaIdentifier;
  if (equivalentMediaIdentifier)
  {
    [v4 setObject:equivalentMediaIdentifier forKey:@"equivalentMediaIdentifier"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
    [v4 setObject:v12 forKey:@"version"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_invitationData)
  {
    [_MRGroupSessionTokenProtobuf writeTo:];
  }

  v8 = v4;
  PBDataWriterWriteDataField();
  routeType = self->_routeType;
  PBDataWriterWriteInt32Field();
  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v8;
  if (self->_sharedSecret)
  {
    PBDataWriterWriteStringField();
    v6 = v8;
  }

  if (self->_equivalentMediaIdentifier)
  {
    PBDataWriterWriteStringField();
    v6 = v8;
  }

  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v6 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setInvitationData:self->_invitationData];
  v4 = v5;
  v5[8] = self->_routeType;
  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    v4 = v5;
  }

  if (self->_sessionIdentifier)
  {
    [v5 setSessionIdentifier:?];
    v4 = v5;
  }

  if (self->_sharedSecret)
  {
    [v5 setSharedSecret:?];
    v4 = v5;
  }

  if (self->_equivalentMediaIdentifier)
  {
    [v5 setEquivalentMediaIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[14] = self->_version;
    *(v4 + 60) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_invitationData copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 32) = self->_routeType;
  v8 = [(NSString *)self->_displayName copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_sessionIdentifier copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_sharedSecret copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_equivalentMediaIdentifier copyWithZone:a3];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  if (*&self->_has)
  {
    *(v5 + 56) = self->_version;
    *(v5 + 60) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  invitationData = self->_invitationData;
  if (invitationData | *(v4 + 3))
  {
    if (![(NSData *)invitationData isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (self->_routeType != *(v4 + 8))
  {
    goto LABEL_17;
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 1))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_17;
    }
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier | *(v4 + 5))
  {
    if (![(NSString *)sessionIdentifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  sharedSecret = self->_sharedSecret;
  if (sharedSecret | *(v4 + 6))
  {
    if (![(NSString *)sharedSecret isEqual:?])
    {
      goto LABEL_17;
    }
  }

  equivalentMediaIdentifier = self->_equivalentMediaIdentifier;
  if (equivalentMediaIdentifier | *(v4 + 2))
  {
    if (![(NSString *)equivalentMediaIdentifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v10 = (*(v4 + 60) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) != 0 && self->_version == *(v4 + 14))
    {
      v10 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v10 = 0;
  }

LABEL_18:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_invitationData hash];
  routeType = self->_routeType;
  v5 = [(NSString *)self->_displayName hash];
  v6 = [(NSString *)self->_sessionIdentifier hash];
  v7 = [(NSString *)self->_sharedSecret hash];
  v8 = [(NSString *)self->_equivalentMediaIdentifier hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_version;
  }

  else
  {
    v9 = 0;
  }

  return (2654435761 * routeType) ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(_MRGroupSessionTokenProtobuf *)self setInvitationData:?];
    v4 = v5;
  }

  self->_routeType = *(v4 + 8);
  if (*(v4 + 1))
  {
    [(_MRGroupSessionTokenProtobuf *)self setDisplayName:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(_MRGroupSessionTokenProtobuf *)self setSessionIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(_MRGroupSessionTokenProtobuf *)self setSharedSecret:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(_MRGroupSessionTokenProtobuf *)self setEquivalentMediaIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 60))
  {
    self->_version = *(v4 + 14);
    *&self->_has |= 1u;
  }
}

@end