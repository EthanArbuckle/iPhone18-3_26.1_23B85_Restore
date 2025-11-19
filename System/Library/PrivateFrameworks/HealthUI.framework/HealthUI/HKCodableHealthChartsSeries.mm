@interface HKCodableHealthChartsSeries
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)shapeTypeAsString:(int)a3;
- (int)StringAsShapeType:(id)a3;
- (int)shapeType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (id)shapeTypeAsString:(int)a3
{
  if (a3 >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E81BADB0[a3];
  }

  return v4;
}

- (int)StringAsShapeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"datePoint"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"dateRange"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"dateSpan"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"dateMinMax"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"scalarPoint"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"scalarRange"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"empty"])
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
  v5 = [(HKCodableHealthChartsSeries *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"shapeType"];
  }

  seriesData = self->_seriesData;
  if (seriesData)
  {
    v7 = [(HKCodableHealthChartsSeriesData *)seriesData dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"seriesData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_seriesData)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_shapeType;
    *(v4 + 20) |= 1u;
  }

  if (self->_seriesData)
  {
    v5 = v4;
    [v4 setSeriesData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_shapeType;
    *(v5 + 20) |= 1u;
  }

  v7 = [(HKCodableHealthChartsSeriesData *)self->_seriesData copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_shapeType != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  seriesData = self->_seriesData;
  if (seriesData | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    self->_shapeType = v4[4];
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