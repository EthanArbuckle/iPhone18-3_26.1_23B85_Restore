@interface HKCodableSummaryAFibBurdenValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryAFibBurdenValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryAFibBurdenValue;
  v4 = [(HKCodableSummaryAFibBurdenValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryAFibBurdenValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  burdenValue = self->_burdenValue;
  if (burdenValue)
  {
    dictionaryRepresentation = [(HKCodableAFibBurdenValue *)burdenValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"burdenValue"];
  }

  lastAnalysisDayIndexRange = self->_lastAnalysisDayIndexRange;
  if (lastAnalysisDayIndexRange)
  {
    dictionaryRepresentation2 = [(HKCodableDayIndexRange *)lastAnalysisDayIndexRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"lastAnalysisDayIndexRange"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_burdenValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_lastAnalysisDayIndexRange)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_burdenValue)
  {
    [toCopy setBurdenValue:?];
    toCopy = v5;
  }

  if (self->_lastAnalysisDayIndexRange)
  {
    [v5 setLastAnalysisDayIndexRange:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableAFibBurdenValue *)self->_burdenValue copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(HKCodableDayIndexRange *)self->_lastAnalysisDayIndexRange copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((burdenValue = self->_burdenValue, !(burdenValue | equalCopy[1])) || -[HKCodableAFibBurdenValue isEqual:](burdenValue, "isEqual:")))
  {
    lastAnalysisDayIndexRange = self->_lastAnalysisDayIndexRange;
    if (lastAnalysisDayIndexRange | equalCopy[2])
    {
      v7 = [(HKCodableDayIndexRange *)lastAnalysisDayIndexRange isEqual:?];
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
  burdenValue = self->_burdenValue;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (burdenValue)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableAFibBurdenValue *)burdenValue mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableSummaryAFibBurdenValue *)self setBurdenValue:?];
  }

  fromCopy = v9;
LABEL_7:
  lastAnalysisDayIndexRange = self->_lastAnalysisDayIndexRange;
  v8 = fromCopy[2];
  if (lastAnalysisDayIndexRange)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    lastAnalysisDayIndexRange = [(HKCodableDayIndexRange *)lastAnalysisDayIndexRange mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    lastAnalysisDayIndexRange = [(HKCodableSummaryAFibBurdenValue *)self setLastAnalysisDayIndexRange:?];
  }

  fromCopy = v9;
LABEL_13:

  MEMORY[0x1EEE66BB8](lastAnalysisDayIndexRange, fromCopy);
}

@end