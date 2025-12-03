@interface _MRGroupSessionTokenProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRouteType:(id)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGroupSessionTokenProtobuf

- (int)StringAsRouteType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"GroupSessionRouteTypeUnknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"GroupSessionRouteTypeCarKit"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"GroupSessionRouteTypeCarPlay"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"GroupSessionRouteTypeSpeaker"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"GroupSessionRouteTypeHomePod"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"GroupSessionRouteTypeHomePodMini"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"GroupSessionRouteTypeAppleTV"])
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
  dictionaryRepresentation = [(_MRGroupSessionTokenProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  invitationData = self->_invitationData;
  if (invitationData)
  {
    [dictionary setObject:invitationData forKey:@"invitationData"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_invitationData)
  {
    [_MRGroupSessionTokenProtobuf writeTo:];
  }

  v8 = toCopy;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setInvitationData:self->_invitationData];
  v4 = toCopy;
  toCopy[8] = self->_routeType;
  if (self->_displayName)
  {
    [toCopy setDisplayName:?];
    v4 = toCopy;
  }

  if (self->_sessionIdentifier)
  {
    [toCopy setSessionIdentifier:?];
    v4 = toCopy;
  }

  if (self->_sharedSecret)
  {
    [toCopy setSharedSecret:?];
    v4 = toCopy;
  }

  if (self->_equivalentMediaIdentifier)
  {
    [toCopy setEquivalentMediaIdentifier:?];
    v4 = toCopy;
  }

  if (*&self->_has)
  {
    v4[14] = self->_version;
    *(v4 + 60) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_invitationData copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 32) = self->_routeType;
  v8 = [(NSString *)self->_displayName copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_sharedSecret copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_equivalentMediaIdentifier copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  if (*&self->_has)
  {
    *(v5 + 56) = self->_version;
    *(v5 + 60) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  invitationData = self->_invitationData;
  if (invitationData | *(equalCopy + 3))
  {
    if (![(NSData *)invitationData isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (self->_routeType != *(equalCopy + 8))
  {
    goto LABEL_17;
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 1))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_17;
    }
  }

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)sessionIdentifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  sharedSecret = self->_sharedSecret;
  if (sharedSecret | *(equalCopy + 6))
  {
    if (![(NSString *)sharedSecret isEqual:?])
    {
      goto LABEL_17;
    }
  }

  equivalentMediaIdentifier = self->_equivalentMediaIdentifier;
  if (equivalentMediaIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)equivalentMediaIdentifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v10 = (*(equalCopy + 60) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) != 0 && self->_version == *(equalCopy + 14))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(_MRGroupSessionTokenProtobuf *)self setInvitationData:?];
    fromCopy = v5;
  }

  self->_routeType = *(fromCopy + 8);
  if (*(fromCopy + 1))
  {
    [(_MRGroupSessionTokenProtobuf *)self setDisplayName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(_MRGroupSessionTokenProtobuf *)self setSessionIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(_MRGroupSessionTokenProtobuf *)self setSharedSecret:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(_MRGroupSessionTokenProtobuf *)self setEquivalentMediaIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 60))
  {
    self->_version = *(fromCopy + 14);
    *&self->_has |= 1u;
  }
}

@end