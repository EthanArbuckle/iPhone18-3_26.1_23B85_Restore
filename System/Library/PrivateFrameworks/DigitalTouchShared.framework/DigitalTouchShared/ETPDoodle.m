@interface ETPDoodle
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ETPDoodle

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ETPDoodle;
  v4 = [(ETPDoodle *)&v8 description];
  v5 = [(ETPDoodle *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_doodleCount];
    [v3 setObject:v4 forKey:@"doodleCount"];
  }

  doodleData = self->_doodleData;
  if (doodleData)
  {
    [v3 setObject:doodleData forKey:@"doodleData"];
  }

  colorData = self->_colorData;
  if (colorData)
  {
    [v3 setObject:colorData forKey:@"colorData"];
  }

  pointTimeDeltaData = self->_pointTimeDeltaData;
  if (pointTimeDeltaData)
  {
    [v3 setObject:pointTimeDeltaData forKey:@"pointTimeDeltaData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
    v4 = v5;
  }

  if (self->_doodleData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_colorData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_pointTimeDeltaData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_doodleCount;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSData *)self->_doodleData copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSData *)self->_colorData copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSData *)self->_pointTimeDeltaData copyWithZone:a3];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_doodleCount != *(v4 + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  doodleData = self->_doodleData;
  if (doodleData | *(v4 + 3) && ![(NSData *)doodleData isEqual:?])
  {
    goto LABEL_13;
  }

  colorData = self->_colorData;
  if (colorData | *(v4 + 1))
  {
    if (![(NSData *)colorData isEqual:?])
    {
      goto LABEL_13;
    }
  }

  pointTimeDeltaData = self->_pointTimeDeltaData;
  if (pointTimeDeltaData | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[10])
  {
    self->_doodleCount = v4[4];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 3))
  {
    [(ETPDoodle *)self setDoodleData:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(ETPDoodle *)self setColorData:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(ETPDoodle *)self setPointTimeDeltaData:?];
    v4 = v5;
  }
}

@end