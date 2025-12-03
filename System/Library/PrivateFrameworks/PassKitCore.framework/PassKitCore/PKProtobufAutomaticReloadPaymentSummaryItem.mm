@interface PKProtobufAutomaticReloadPaymentSummaryItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufAutomaticReloadPaymentSummaryItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufAutomaticReloadPaymentSummaryItem;
  v4 = [(PKProtobufAutomaticReloadPaymentSummaryItem *)&v8 description];
  dictionaryRepresentation = [(PKProtobufAutomaticReloadPaymentSummaryItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  thresholdAmount = self->_thresholdAmount;
  if (thresholdAmount)
  {
    dictionaryRepresentation = [(PKProtobufCustomPrecisionAmount *)thresholdAmount dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"thresholdAmount"];
  }

  thresholdDecimalAmount = self->_thresholdDecimalAmount;
  if (thresholdDecimalAmount)
  {
    dictionaryRepresentation2 = [(PKProtobufNSDecimalNumber *)thresholdDecimalAmount dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"threshold_decimal_amount"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_thresholdAmount)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_thresholdDecimalAmount)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_thresholdAmount)
  {
    [toCopy setThresholdAmount:?];
    toCopy = v5;
  }

  if (self->_thresholdDecimalAmount)
  {
    [v5 setThresholdDecimalAmount:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PKProtobufCustomPrecisionAmount *)self->_thresholdAmount copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PKProtobufNSDecimalNumber *)self->_thresholdDecimalAmount copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((thresholdAmount = self->_thresholdAmount, !(thresholdAmount | equalCopy[1])) || -[PKProtobufCustomPrecisionAmount isEqual:](thresholdAmount, "isEqual:")))
  {
    thresholdDecimalAmount = self->_thresholdDecimalAmount;
    if (thresholdDecimalAmount | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  thresholdAmount = self->_thresholdAmount;
  v6 = fromCopy[1];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  thresholdDecimalAmount = self->_thresholdDecimalAmount;
  v8 = fromCopy[2];
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

  fromCopy = v9;
LABEL_13:
}

@end