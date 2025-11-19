@interface HKCodableSummaryCorrelatedTrendValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryCorrelatedTrendValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryCorrelatedTrendValue;
  v4 = [(HKCodableSummaryCorrelatedTrendValue *)&v8 description];
  v5 = [(HKCodableSummaryCorrelatedTrendValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  objectTypeIdentifier = self->_objectTypeIdentifier;
  if (objectTypeIdentifier)
  {
    [v3 setObject:objectTypeIdentifier forKey:@"objectTypeIdentifier"];
  }

  trendValue = self->_trendValue;
  if (trendValue)
  {
    v7 = [(HKCodableSummaryTrendValue *)trendValue dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"trendValue"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_objectTypeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_trendValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_objectTypeIdentifier)
  {
    [v4 setObjectTypeIdentifier:?];
    v4 = v5;
  }

  if (self->_trendValue)
  {
    [v5 setTrendValue:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_objectTypeIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(HKCodableSummaryTrendValue *)self->_trendValue copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((objectTypeIdentifier = self->_objectTypeIdentifier, !(objectTypeIdentifier | v4[1])) || -[NSString isEqual:](objectTypeIdentifier, "isEqual:")))
  {
    trendValue = self->_trendValue;
    if (trendValue | v4[2])
    {
      v7 = [(HKCodableSummaryTrendValue *)trendValue isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[1])
  {
    [(HKCodableSummaryCorrelatedTrendValue *)self setObjectTypeIdentifier:?];
    v4 = v7;
  }

  trendValue = self->_trendValue;
  v6 = v4[2];
  if (trendValue)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    trendValue = [(HKCodableSummaryTrendValue *)trendValue mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    trendValue = [(HKCodableSummaryCorrelatedTrendValue *)self setTrendValue:?];
  }

  v4 = v7;
LABEL_9:

  MEMORY[0x1EEE66BB8](trendValue, v4);
}

@end