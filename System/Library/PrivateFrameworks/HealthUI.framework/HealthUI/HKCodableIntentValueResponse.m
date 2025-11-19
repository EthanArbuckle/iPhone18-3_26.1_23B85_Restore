@interface HKCodableIntentValueResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableIntentValueResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableIntentValueResponse;
  v4 = [(HKCodableIntentValueResponse *)&v8 description];
  v5 = [(HKCodableIntentValueResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  value = self->_value;
  if (value)
  {
    v7 = [(HKCodableSummaryCurrentValue *)value dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"value"];
  }

  chart = self->_chart;
  if (chart)
  {
    v9 = [(HKCodableChartSharableModel *)chart dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"chart"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_chart)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    v4 = v5;
  }

  if (self->_chart)
  {
    [v5 setChart:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HKCodableSummaryCurrentValue *)self->_value copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(HKCodableChartSharableModel *)self->_chart copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((identifier = self->_identifier, !(identifier | v4[2])) || -[NSString isEqual:](identifier, "isEqual:")) && ((value = self->_value, !(value | v4[3])) || -[HKCodableSummaryCurrentValue isEqual:](value, "isEqual:")))
  {
    chart = self->_chart;
    if (chart | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4[2])
  {
    [(HKCodableIntentValueResponse *)self setIdentifier:?];
    v4 = v9;
  }

  value = self->_value;
  v6 = v4[3];
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

  v4 = v9;
LABEL_9:
  chart = self->_chart;
  v8 = v4[1];
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

  v4 = v9;
LABEL_15:

  MEMORY[0x1EEE66BB8](chart, v4);
}

@end