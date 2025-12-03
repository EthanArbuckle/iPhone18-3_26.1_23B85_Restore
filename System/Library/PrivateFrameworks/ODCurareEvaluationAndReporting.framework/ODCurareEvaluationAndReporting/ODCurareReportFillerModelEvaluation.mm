@interface ODCurareReportFillerModelEvaluation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ODCurareReportFillerModelEvaluation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerModelEvaluation;
  v4 = [(ODCurareReportFillerModelEvaluation *)&v8 description];
  dictionaryRepresentation = [(ODCurareReportFillerModelEvaluation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  metricName = self->_metricName;
  if (metricName)
  {
    [dictionary setObject:metricName forKey:@"metricName"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_metricValue];
  [v4 setObject:v6 forKey:@"metricValue"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfSamples];
  [v4 setObject:v7 forKey:@"numberOfSamples"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfPositiveSamples];
  [v4 setObject:v8 forKey:@"numberOfPositiveSamples"];

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_metricName)
  {
    [ODCurareReportFillerModelEvaluation writeTo:];
  }

  v8 = toCopy;
  PBDataWriterWriteStringField();
  metricValue = self->_metricValue;
  PBDataWriterWriteDoubleField();
  numberOfSamples = self->_numberOfSamples;
  PBDataWriterWriteUint32Field();
  numberOfPositiveSamples = self->_numberOfPositiveSamples;
  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  metricName = self->_metricName;
  toCopy = to;
  [toCopy setMetricName:metricName];
  *(toCopy + 1) = *&self->_metricValue;
  *(toCopy + 7) = self->_numberOfSamples;
  *(toCopy + 6) = self->_numberOfPositiveSamples;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_metricName copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_metricValue;
  *(v5 + 28) = self->_numberOfSamples;
  *(v5 + 24) = self->_numberOfPositiveSamples;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((metricName = self->_metricName, !(metricName | *(equalCopy + 2))) || -[NSString isEqual:](metricName, "isEqual:")) && self->_metricValue == *(equalCopy + 1) && self->_numberOfSamples == *(equalCopy + 7) && self->_numberOfPositiveSamples == *(equalCopy + 6);

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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(ODCurareReportFillerModelEvaluation *)self setMetricName:?];
    fromCopy = v5;
  }

  self->_metricValue = *(fromCopy + 1);
  self->_numberOfSamples = *(fromCopy + 7);
  self->_numberOfPositiveSamples = *(fromCopy + 6);
}

@end