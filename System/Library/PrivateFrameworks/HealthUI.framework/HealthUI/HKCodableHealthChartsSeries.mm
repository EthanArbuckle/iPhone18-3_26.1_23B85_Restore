@interface HKCodableHealthChartsSeries
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)shapeTypeAsString:(int)string;
- (int)StringAsShapeType:(id)type;
- (int)shapeType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableHealthChartsSeries

- (int)shapeType
{
  if (*&self->_has)
  {
    return self->_shapeType;
  }

  else
  {
    return 0;
  }
}

- (id)shapeTypeAsString:(int)string
{
  if (string >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E81BADB0[string];
  }

  return v4;
}

- (int)StringAsShapeType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"datePoint"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"dateRange"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"dateSpan"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"dateMinMax"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"scalarPoint"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"scalarRange"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"empty"])
  {
    v4 = 6;
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
  v8.super_class = HKCodableHealthChartsSeries;
  v4 = [(HKCodableHealthChartsSeries *)&v8 description];
  dictionaryRepresentation = [(HKCodableHealthChartsSeries *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    shapeType = self->_shapeType;
    if (shapeType >= 7)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_shapeType];
    }

    else
    {
      v5 = off_1E81BADB0[shapeType];
    }

    [dictionary setObject:v5 forKey:@"shapeType"];
  }

  seriesData = self->_seriesData;
  if (seriesData)
  {
    dictionaryRepresentation = [(HKCodableHealthChartsSeriesData *)seriesData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"seriesData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_seriesData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_shapeType;
    *(toCopy + 20) |= 1u;
  }

  if (self->_seriesData)
  {
    v5 = toCopy;
    [toCopy setSeriesData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_shapeType;
    *(v5 + 20) |= 1u;
  }

  v7 = [(HKCodableHealthChartsSeriesData *)self->_seriesData copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_shapeType != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  seriesData = self->_seriesData;
  if (seriesData | *(equalCopy + 1))
  {
    v6 = [(HKCodableHealthChartsSeriesData *)seriesData isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_shapeType;
  }

  else
  {
    v2 = 0;
  }

  return [(HKCodableHealthChartsSeriesData *)self->_seriesData hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    self->_shapeType = fromCopy[4];
    *&self->_has |= 1u;
  }

  seriesData = self->_seriesData;
  v7 = *(v5 + 1);
  if (seriesData)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    seriesData = [(HKCodableHealthChartsSeriesData *)seriesData mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    seriesData = [(HKCodableHealthChartsSeries *)self setSeriesData:?];
  }

  v5 = v8;
LABEL_9:

  MEMORY[0x1EEE66BB8](seriesData, v5);
}

@end