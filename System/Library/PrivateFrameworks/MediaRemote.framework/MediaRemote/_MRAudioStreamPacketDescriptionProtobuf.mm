@interface _MRAudioStreamPacketDescriptionProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDataByteSize:(BOOL)a3;
- (void)setHasVariableFramesInPacket:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRAudioStreamPacketDescriptionProtobuf

- (void)setHasVariableFramesInPacket:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDataByteSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAudioStreamPacketDescriptionProtobuf;
  v4 = [(_MRAudioStreamPacketDescriptionProtobuf *)&v8 description];
  v5 = [(_MRAudioStreamPacketDescriptionProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_startOffset];
    [v3 setObject:v7 forKey:@"startOffset"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_variableFramesInPacket];
  [v3 setObject:v8 forKey:@"variableFramesInPacket"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dataByteSize];
    [v3 setObject:v5 forKey:@"dataByteSize"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    startOffset = self->_startOffset;
    PBDataWriterWriteInt64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  variableFramesInPacket = self->_variableFramesInPacket;
  PBDataWriterWriteUint32Field();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    dataByteSize = self->_dataByteSize;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_startOffset;
    *(v4 + 24) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 5) = self->_variableFramesInPacket;
  *(v4 + 24) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v4 + 4) = self->_dataByteSize;
    *(v4 + 24) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_startOffset;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_variableFramesInPacket;
  *(result + 24) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 4) = self->_dataByteSize;
  *(result + 24) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_startOffset != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_variableFramesInPacket != *(v4 + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_dataByteSize != *(v4 + 4))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_startOffset;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_variableFramesInPacket;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_dataByteSize;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_startOffset = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_variableFramesInPacket = *(v4 + 5);
  *&self->_has |= 4u;
  if ((*(v4 + 24) & 2) != 0)
  {
LABEL_4:
    self->_dataByteSize = *(v4 + 4);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end