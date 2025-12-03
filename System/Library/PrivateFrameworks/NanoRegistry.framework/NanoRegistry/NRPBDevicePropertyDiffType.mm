@interface NRPBDevicePropertyDiffType
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDiff:(uint64_t)diff;
- (void)writeTo:(id)to;
@end

@implementation NRPBDevicePropertyDiffType

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBDevicePropertyDiffType;
  v4 = [(NRPBDevicePropertyDiffType *)&v8 description];
  dictionaryRepresentation = [(NRPBDevicePropertyDiffType *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    changeType = self->_changeType;
    if (changeType >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_changeType];
    }

    else
    {
      v5 = off_1E86DCA40[changeType];
    }

    [dictionary setObject:v5 forKey:@"changeType"];
  }

  diff = self->_diff;
  if (diff)
  {
    dictionaryRepresentation = [(NRPBDevicePropertyDiff *)diff dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"diff"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    changeType = self->_changeType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_diff)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)setDiff:(uint64_t)diff
{
  if (diff)
  {
    objc_storeStrong((diff + 16), a2);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_changeType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NRPBDevicePropertyDiff *)self->_diff copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_changeType != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  diff = self->_diff;
  if (diff | *(equalCopy + 2))
  {
    v7 = [(NRPBDevicePropertyDiff *)diff isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_changeType;
  }

  else
  {
    v2 = 0;
  }

  return [(NRPBDevicePropertyDiff *)self->_diff hash]^ v2;
}

@end