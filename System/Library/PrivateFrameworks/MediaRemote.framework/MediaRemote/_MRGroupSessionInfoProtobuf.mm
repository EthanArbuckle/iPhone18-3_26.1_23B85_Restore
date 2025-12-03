@interface _MRGroupSessionInfoProtobuf
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

@implementation _MRGroupSessionInfoProtobuf

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
  v8.super_class = _MRGroupSessionInfoProtobuf;
  v4 = [(_MRGroupSessionInfoProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGroupSessionInfoProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  hostDisplayName = self->_hostDisplayName;
  if (hostDisplayName)
  {
    [v4 setObject:hostDisplayName forKey:@"hostDisplayName"];
  }

  routeType = self->_routeType;
  if (routeType < 0xC && ((0xB27u >> routeType) & 1) != 0)
  {
    v8 = off_1E76A37C8[routeType];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_routeType];
  }

  [v4 setObject:v8 forKey:@"routeType"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_hosted];
  [v4 setObject:v9 forKey:@"hosted"];

  equivalentMediaIdentifier = self->_equivalentMediaIdentifier;
  if (equivalentMediaIdentifier)
  {
    [v4 setObject:equivalentMediaIdentifier forKey:@"equivalentMediaIdentifier"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_placeholder];
    [v4 setObject:v11 forKey:@"placeholder"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_identifier)
  {
    [_MRGroupSessionInfoProtobuf writeTo:];
  }

  v8 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_hostDisplayName)
  {
    [_MRGroupSessionInfoProtobuf writeTo:];
  }

  PBDataWriterWriteStringField();
  routeType = self->_routeType;
  PBDataWriterWriteInt32Field();
  hosted = self->_hosted;
  PBDataWriterWriteBOOLField();
  if (self->_equivalentMediaIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    placeholder = self->_placeholder;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setIdentifier:self->_identifier];
  [toCopy setHostDisplayName:self->_hostDisplayName];
  v4 = toCopy;
  *(toCopy + 8) = self->_routeType;
  *(toCopy + 36) = self->_hosted;
  if (self->_equivalentMediaIdentifier)
  {
    [toCopy setEquivalentMediaIdentifier:?];
    v4 = toCopy;
  }

  if (*&self->_has)
  {
    v4[37] = self->_placeholder;
    v4[40] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_hostDisplayName copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  *(v5 + 32) = self->_routeType;
  *(v5 + 36) = self->_hosted;
  v10 = [(NSString *)self->_equivalentMediaIdentifier copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 37) = self->_placeholder;
    *(v5 + 40) |= 1u;
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

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  hostDisplayName = self->_hostDisplayName;
  if (hostDisplayName | *(equalCopy + 2))
  {
    if (![(NSString *)hostDisplayName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (self->_routeType != *(equalCopy + 8))
  {
    goto LABEL_15;
  }

  v7 = *(equalCopy + 36);
  if (self->_hosted)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_15;
  }

  equivalentMediaIdentifier = self->_equivalentMediaIdentifier;
  if (equivalentMediaIdentifier | *(equalCopy + 1) && ![(NSString *)equivalentMediaIdentifier isEqual:?])
  {
    goto LABEL_15;
  }

  v9 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if (*(equalCopy + 40))
    {
      if (self->_placeholder)
      {
        if ((*(equalCopy + 37) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (*(equalCopy + 37))
      {
        goto LABEL_15;
      }

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
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_hostDisplayName hash];
  routeType = self->_routeType;
  hosted = self->_hosted;
  v7 = [(NSString *)self->_equivalentMediaIdentifier hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_placeholder;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ (2654435761 * hosted) ^ (2654435761 * routeType) ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(_MRGroupSessionInfoProtobuf *)self setIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(_MRGroupSessionInfoProtobuf *)self setHostDisplayName:?];
    fromCopy = v5;
  }

  self->_routeType = *(fromCopy + 8);
  self->_hosted = *(fromCopy + 36);
  if (*(fromCopy + 1))
  {
    [(_MRGroupSessionInfoProtobuf *)self setEquivalentMediaIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 40))
  {
    self->_placeholder = *(fromCopy + 37);
    *&self->_has |= 1u;
  }
}

@end