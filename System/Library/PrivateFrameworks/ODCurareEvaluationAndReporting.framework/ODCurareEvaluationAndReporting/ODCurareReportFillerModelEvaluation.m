@interface ODCurareReportFillerModelEvaluation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODCurareReportFillerModelEvaluation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerModelEvaluation;
  v4 = [(ODCurareReportFillerModelEvaluation *)&v8 description];
  v5 = [(ODCurareReportFillerModelEvaluation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  metricName = self->_metricName;
  if (metricName)
  {
    [v3 setObject:metricName forKey:@"metricName"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_metricValue];
  [v4 setObject:v6 forKey:@"metricValue"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfSamples];
  [v4 setObject:v7 forKey:@"numberOfSamples"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfPositiveSamples];
  [v4 setObject:v8 forKey:@"numberOfPositiveSamples"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_metricName)
  {
    [ODCurareReportFillerModelEvaluation writeTo:];
  }

  v8 = v4;
  PBDataWriterWriteStringField();
  metricValue = self->_metricValue;
  PBDataWriterWriteDoubleField();
  numberOfSamples = self->_numberOfSamples;
  PBDataWriterWriteUint32Field();
  numberOfPositiveSamples = self->_numberOfPositiveSamples;
  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  metricName = self->_metricName;
  v5 = a3;
  [v5 setMetricName:metricName];
  *(v5 + 1) = *&self->_metricValue;
  *(v5 + 7) = self->_numberOfSamples;
  *(v5 + 6) = self->_numberOfPositiveSamples;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_metricName copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_metricValue;
  *(v5 + 28) = self->_numberOfSamples;
  *(v5 + 24) = self->_numberOfPositiveSamples;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((metricName = self->_metricName, !(metricName | *(v4 + 2))) || -[NSString isEqual:](metricName, "isEqual:")) && self->_metricValue == *(v4 + 1) && self->_numberOfSamples == *(v4 + 7) && self->_numberOfPositiveSamples == *(v4 + 6);

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_metricName hash];
  metricValue = self->_metricValue;
  if (metricValue < 0.0)
  {
    metricValue = -metricValue;
  }

  *v4.i64 = floor(metricValue + 0.5);
  v7 = (metricValue - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v4.i64[0] = vbslq_s8(vnegq_f64(v8), v5, v4).i64[0];
  v9 = 2654435761u * *v4.i64;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v4.i64;
  }

  v11 = v9 - fabs(v7);
  if (v7 >= 0.0)
  {
    v11 = v10;
  }

  return v11 ^ v3 ^ (2654435761 * self->_numberOfSamples) ^ (2654435761 * self->_numberOfPositiveSamples);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v5 = v4;
    [(ODCurareReportFillerModelEvaluation *)self setMetricName:?];
    v4 = v5;
  }

  self->_metricValue = *(v4 + 1);
  self->_numberOfSamples = *(v4 + 7);
  self->_numberOfPositiveSamples = *(v4 + 6);
}

@end