@interface BMPBAccessoryState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsValueType:(id)type;
- (int)valueType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasValueType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation BMPBAccessoryState

- (int)valueType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_valueType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasValueType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsValueType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Data"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"String"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Num"])
  {
    v4 = 2;
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
  v8.super_class = BMPBAccessoryState;
  v4 = [(BMPBAccessoryState *)&v8 description];
  dictionaryRepresentation = [(BMPBAccessoryState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  mediaPropertyType = self->_mediaPropertyType;
  if (mediaPropertyType)
  {
    [dictionary setObject:mediaPropertyType forKey:@"mediaPropertyType"];
  }

  if ((*&self->_has & 2) != 0)
  {
    valueType = self->_valueType;
    if (valueType >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_valueType];
    }

    else
    {
      v7 = off_1E6E53B70[valueType];
    }

    [v4 setObject:v7 forKey:@"valueType"];
  }

  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v4 setObject:dataValue forKey:@"dataValue"];
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v4 setObject:stringValue forKey:@"stringValue"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_numValue];
    [v4 setObject:v10 forKey:@"numValue"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_mediaPropertyType)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    valueType = self->_valueType;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    numValue = self->_numValue;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_mediaPropertyType)
  {
    [toCopy setMediaPropertyType:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 10) = self->_valueType;
    *(toCopy + 44) |= 2u;
  }

  if (self->_dataValue)
  {
    [v5 setDataValue:?];
    toCopy = v5;
  }

  if (self->_stringValue)
  {
    [v5 setStringValue:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_numValue;
    *(toCopy + 44) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_mediaPropertyType copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_valueType;
    *(v5 + 44) |= 2u;
  }

  v8 = [(NSData *)self->_dataValue copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_stringValue copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_numValue;
    *(v5 + 44) |= 1u;
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

  mediaPropertyType = self->_mediaPropertyType;
  if (mediaPropertyType | *(equalCopy + 3))
  {
    if (![(NSString *)mediaPropertyType isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v6 = *(equalCopy + 44);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_valueType != *(equalCopy + 10))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  dataValue = self->_dataValue;
  if (dataValue | *(equalCopy + 2) && ![(NSData *)dataValue isEqual:?])
  {
    goto LABEL_17;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(equalCopy + 4))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = (*(equalCopy + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_numValue != *(equalCopy + 1))
    {
      goto LABEL_17;
    }

    v9 = 1;
  }

LABEL_18:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_mediaPropertyType hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_valueType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSData *)self->_dataValue hash];
  v6 = [(NSString *)self->_stringValue hash];
  if (*&self->_has)
  {
    numValue = self->_numValue;
    if (numValue < 0.0)
    {
      numValue = -numValue;
    }

    *v7.i64 = floor(numValue + 0.5);
    v11 = (numValue - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(BMPBAccessoryState *)self setMediaPropertyType:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 44) & 2) != 0)
  {
    self->_valueType = *(fromCopy + 10);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    [(BMPBAccessoryState *)self setDataValue:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBAccessoryState *)self setStringValue:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 44))
  {
    self->_numValue = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end