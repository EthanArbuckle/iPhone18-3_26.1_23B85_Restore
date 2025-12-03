@interface SYLogDeviceState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)state;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYLogDeviceState

- (unsigned)state
{
  if (*&self->_has)
  {
    return self->_state;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYLogDeviceState;
  v4 = [(SYLogDeviceState *)&v8 description];
  dictionaryRepresentation = [(SYLogDeviceState *)self dictionaryRepresentation];
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

  deviceClass = self->_deviceClass;
  if (deviceClass)
  {
    [v4 setObject:deviceClass forKey:@"deviceClass"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v4 setObject:buildVersion forKey:@"buildVersion"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_state];
    [v4 setObject:v8 forKey:@"state"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_deviceClass)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    state = self->_state;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_deviceClass)
  {
    [v5 setDeviceClass:?];
    toCopy = v5;
  }

  if (self->_buildVersion)
  {
    [v5 setBuildVersion:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_state;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_deviceClass copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_buildVersion copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_state;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  deviceClass = self->_deviceClass;
  if (deviceClass | *(equalCopy + 2))
  {
    if (![(NSString *)deviceClass isEqual:?])
    {
      goto LABEL_12;
    }
  }

  buildVersion = self->_buildVersion;
  if (buildVersion | *(equalCopy + 1))
  {
    if (![(NSString *)buildVersion isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_state == *(equalCopy + 8))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_deviceClass hash];
  v5 = [(NSString *)self->_buildVersion hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_state;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(SYLogDeviceState *)self setIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(SYLogDeviceState *)self setDeviceClass:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(SYLogDeviceState *)self setBuildVersion:?];
    fromCopy = v5;
  }

  if (fromCopy[9])
  {
    self->_state = fromCopy[8];
    *&self->_has |= 1u;
  }
}

@end