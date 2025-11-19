@interface HKCodableSummaryAFibBurdenValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryAFibBurdenValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryAFibBurdenValue;
  v4 = [(HKCodableSummaryAFibBurdenValue *)&v8 description];
  v5 = [(HKCodableSummaryAFibBurdenValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  burdenValue = self->_burdenValue;
  if (burdenValue)
  {
    v5 = [(HKCodableAFibBurdenValue *)burdenValue dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"burdenValue"];
  }

  lastAnalysisDayIndexRange = self->_lastAnalysisDayIndexRange;
  if (lastAnalysisDayIndexRange)
  {
    v7 = [(HKCodableDayIndexRange *)lastAnalysisDayIndexRange dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"lastAnalysisDayIndexRange"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_burdenValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_lastAnalysisDayIndexRange)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_burdenValue)
  {
    [v4 setBurdenValue:?];
    v4 = v5;
  }

  if (self->_lastAnalysisDayIndexRange)
  {
    [v5 setLastAnalysisDayIndexRange:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableAFibBurdenValue *)self->_burdenValue copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(HKCodableDayIndexRange *)self->_lastAnalysisDayIndexRange copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((burdenValue = self->_burdenValue, !(burdenValue | v4[1])) || -[HKCodableAFibBurdenValue isEqual:](burdenValue, "isEqual:")))
  {
    lastAnalysisDayIndexRange = self->_lastAnalysisDayIndexRange;
    if (lastAnalysisDayIndexRange | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  burdenValue = self->_burdenValue;
  v6 = v4[1];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  lastAnalysisDayIndexRange = self->_lastAnalysisDayIndexRange;
  v8 = v4[2];
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

  v4 = v9;
LABEL_13:

  MEMORY[0x1EEE66BB8](lastAnalysisDayIndexRange, v4);
}

@end