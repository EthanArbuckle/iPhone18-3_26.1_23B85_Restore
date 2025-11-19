@interface PKProtobufAutomaticReloadPaymentSummaryItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufAutomaticReloadPaymentSummaryItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufAutomaticReloadPaymentSummaryItem;
  v4 = [(PKProtobufAutomaticReloadPaymentSummaryItem *)&v8 description];
  v5 = [(PKProtobufAutomaticReloadPaymentSummaryItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  thresholdAmount = self->_thresholdAmount;
  if (thresholdAmount)
  {
    v5 = [(PKProtobufCustomPrecisionAmount *)thresholdAmount dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"thresholdAmount"];
  }

  thresholdDecimalAmount = self->_thresholdDecimalAmount;
  if (thresholdDecimalAmount)
  {
    v7 = [(PKProtobufNSDecimalNumber *)thresholdDecimalAmount dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"threshold_decimal_amount"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_thresholdAmount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_thresholdDecimalAmount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_thresholdAmount)
  {
    [v4 setThresholdAmount:?];
    v4 = v5;
  }

  if (self->_thresholdDecimalAmount)
  {
    [v5 setThresholdDecimalAmount:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PKProtobufCustomPrecisionAmount *)self->_thresholdAmount copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PKProtobufNSDecimalNumber *)self->_thresholdDecimalAmount copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((thresholdAmount = self->_thresholdAmount, !(thresholdAmount | v4[1])) || -[PKProtobufCustomPrecisionAmount isEqual:](thresholdAmount, "isEqual:")))
  {
    thresholdDecimalAmount = self->_thresholdDecimalAmount;
    if (thresholdDecimalAmount | v4[2])
    {
      v7 = [(PKProtobufNSDecimalNumber *)thresholdDecimalAmount isEqual:?];
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
  thresholdAmount = self->_thresholdAmount;
  v6 = v4[1];
  v9 = v4;
  if (thresholdAmount)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PKProtobufCustomPrecisionAmount *)thresholdAmount mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PKProtobufAutomaticReloadPaymentSummaryItem *)self setThresholdAmount:?];
  }

  v4 = v9;
LABEL_7:
  thresholdDecimalAmount = self->_thresholdDecimalAmount;
  v8 = v4[2];
  if (thresholdDecimalAmount)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PKProtobufNSDecimalNumber *)thresholdDecimalAmount mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PKProtobufAutomaticReloadPaymentSummaryItem *)self setThresholdDecimalAmount:?];
  }

  v4 = v9;
LABEL_13:
}

@end