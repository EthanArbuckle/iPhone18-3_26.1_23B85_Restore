@interface HKCodableIntentValueResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableIntentValueResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableIntentValueResponse;
  v4 = [(HKCodableIntentValueResponse *)&v8 description];
  dictionaryRepresentation = [(HKCodableIntentValueResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(HKCodableSummaryCurrentValue *)value dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"value"];
  }

  chart = self->_chart;
  if (chart)
  {
    dictionaryRepresentation2 = [(HKCodableChartSharableModel *)chart dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"chart"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_chart)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    toCopy = v5;
  }

  if (self->_chart)
  {
    [v5 setChart:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HKCodableSummaryCurrentValue *)self->_value copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(HKCodableChartSharableModel *)self->_chart copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | equalCopy[2])) || -[NSString isEqual:](identifier, "isEqual:")) && ((value = self->_value, !(value | equalCopy[3])) || -[HKCodableSummaryCurrentValue isEqual:](value, "isEqual:")))
  {
    chart = self->_chart;
    if (chart | equalCopy[1])
    {
      v8 = [(HKCodableChartSharableModel *)chart isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(HKCodableSummaryCurrentValue *)self->_value hash]^ v3;
  return v4 ^ [(HKCodableChartSharableModel *)self->_chart hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (fromCopy[2])
  {
    [(HKCodableIntentValueResponse *)self setIdentifier:?];
    fromCopy = v9;
  }

  value = self->_value;
  v6 = fromCopy[3];
  if (value)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(HKCodableSummaryCurrentValue *)value mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(HKCodableIntentValueResponse *)self setValue:?];
  }

  fromCopy = v9;
LABEL_9:
  chart = self->_chart;
  v8 = fromCopy[1];
  if (chart)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    chart = [(HKCodableChartSharableModel *)chart mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    chart = [(HKCodableIntentValueResponse *)self setChart:?];
  }

  fromCopy = v9;
LABEL_15:

  MEMORY[0x1EEE66BB8](chart, fromCopy);
}

@end