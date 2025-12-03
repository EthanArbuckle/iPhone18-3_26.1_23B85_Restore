@interface ETPDoodle
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ETPDoodle

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ETPDoodle;
  v4 = [(ETPDoodle *)&v8 description];
  dictionaryRepresentation = [(ETPDoodle *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_doodleCount];
    [dictionary setObject:v4 forKey:@"doodleCount"];
  }

  doodleData = self->_doodleData;
  if (doodleData)
  {
    [dictionary setObject:doodleData forKey:@"doodleData"];
  }

  colorData = self->_colorData;
  if (colorData)
  {
    [dictionary setObject:colorData forKey:@"colorData"];
  }

  pointTimeDeltaData = self->_pointTimeDeltaData;
  if (pointTimeDeltaData)
  {
    [dictionary setObject:pointTimeDeltaData forKey:@"pointTimeDeltaData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_doodleData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_colorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_pointTimeDeltaData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_doodleCount;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSData *)self->_doodleData copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSData *)self->_colorData copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSData *)self->_pointTimeDeltaData copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_doodleCount != *(equalCopy + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  doodleData = self->_doodleData;
  if (doodleData | *(equalCopy + 3) && ![(NSData *)doodleData isEqual:?])
  {
    goto LABEL_13;
  }

  colorData = self->_colorData;
  if (colorData | *(equalCopy + 1))
  {
    if (![(NSData *)colorData isEqual:?])
    {
      goto LABEL_13;
    }
  }

  pointTimeDeltaData = self->_pointTimeDeltaData;
  if (pointTimeDeltaData | *(equalCopy + 4))
  {
    v8 = [(NSData *)pointTimeDeltaData isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_doodleCount;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_doodleData hash]^ v3;
  v5 = [(NSData *)self->_colorData hash];
  return v4 ^ v5 ^ [(NSData *)self->_pointTimeDeltaData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[10])
  {
    self->_doodleCount = fromCopy[4];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(ETPDoodle *)self setDoodleData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(ETPDoodle *)self setColorData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(ETPDoodle *)self setPointTimeDeltaData:?];
    fromCopy = v5;
  }
}

@end