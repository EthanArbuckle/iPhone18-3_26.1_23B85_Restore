@interface HKCodableSummaryCorrelatedTrendValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryCorrelatedTrendValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryCorrelatedTrendValue;
  v4 = [(HKCodableSummaryCorrelatedTrendValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryCorrelatedTrendValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  objectTypeIdentifier = self->_objectTypeIdentifier;
  if (objectTypeIdentifier)
  {
    [dictionary setObject:objectTypeIdentifier forKey:@"objectTypeIdentifier"];
  }

  trendValue = self->_trendValue;
  if (trendValue)
  {
    dictionaryRepresentation = [(HKCodableSummaryTrendValue *)trendValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"trendValue"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_objectTypeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_trendValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_objectTypeIdentifier)
  {
    [toCopy setObjectTypeIdentifier:?];
    toCopy = v5;
  }

  if (self->_trendValue)
  {
    [v5 setTrendValue:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_objectTypeIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(HKCodableSummaryTrendValue *)self->_trendValue copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((objectTypeIdentifier = self->_objectTypeIdentifier, !(objectTypeIdentifier | equalCopy[1])) || -[NSString isEqual:](objectTypeIdentifier, "isEqual:")))
  {
    trendValue = self->_trendValue;
    if (trendValue | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(HKCodableSummaryCorrelatedTrendValue *)self setObjectTypeIdentifier:?];
    fromCopy = v7;
  }

  trendValue = self->_trendValue;
  v6 = fromCopy[2];
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

  fromCopy = v7;
LABEL_9:

  MEMORY[0x1EEE66BB8](trendValue, fromCopy);
}

@end