@interface _MRGroupSessionInfoProtobuf
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

@implementation _MRGroupSessionInfoProtobuf

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
  v8.super_class = _MRGroupSessionInfoProtobuf;
  v4 = [(_MRGroupSessionInfoProtobuf *)&v8 description];
  v5 = [(_MRGroupSessionInfoProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_identifier)
  {
    [_MRGroupSessionInfoProtobuf writeTo:];
  }

  v8 = v4;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setIdentifier:self->_identifier];
  [v5 setHostDisplayName:self->_hostDisplayName];
  v4 = v5;
  *(v5 + 8) = self->_routeType;
  *(v5 + 36) = self->_hosted;
  if (self->_equivalentMediaIdentifier)
  {
    [v5 setEquivalentMediaIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[37] = self->_placeholder;
    v4[40] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_hostDisplayName copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  *(v5 + 32) = self->_routeType;
  *(v5 + 36) = self->_hosted;
  v10 = [(NSString *)self->_equivalentMediaIdentifier copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 37) = self->_placeholder;
    *(v5 + 40) |= 1u;
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

  identifier = self->_identifier;
  if (identifier | *(v4 + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  hostDisplayName = self->_hostDisplayName;
  if (hostDisplayName | *(v4 + 2))
  {
    if (![(NSString *)hostDisplayName isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (self->_routeType != *(v4 + 8))
  {
    goto LABEL_15;
  }

  v7 = *(v4 + 36);
  if (self->_hosted)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_15;
  }

  equivalentMediaIdentifier = self->_equivalentMediaIdentifier;
  if (equivalentMediaIdentifier | *(v4 + 1) && ![(NSString *)equivalentMediaIdentifier isEqual:?])
  {
    goto LABEL_15;
  }

  v9 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if (*(v4 + 40))
    {
      if (self->_placeholder)
      {
        if ((*(v4 + 37) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (*(v4 + 37))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(_MRGroupSessionInfoProtobuf *)self setIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(_MRGroupSessionInfoProtobuf *)self setHostDisplayName:?];
    v4 = v5;
  }

  self->_routeType = *(v4 + 8);
  self->_hosted = *(v4 + 36);
  if (*(v4 + 1))
  {
    [(_MRGroupSessionInfoProtobuf *)self setEquivalentMediaIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 40))
  {
    self->_placeholder = *(v4 + 37);
    *&self->_has |= 1u;
  }
}

@end