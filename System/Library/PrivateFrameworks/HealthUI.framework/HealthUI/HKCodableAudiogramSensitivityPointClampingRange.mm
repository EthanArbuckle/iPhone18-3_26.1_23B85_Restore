@interface HKCodableAudiogramSensitivityPointClampingRange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableAudiogramSensitivityPointClampingRange

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableAudiogramSensitivityPointClampingRange;
  v4 = [(HKCodableAudiogramSensitivityPointClampingRange *)&v8 description];
  v5 = [(HKCodableAudiogramSensitivityPointClampingRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  lowerBound = self->_lowerBound;
  if (lowerBound)
  {
    v5 = [(HKCodableQuantity *)lowerBound dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"lowerBound"];
  }

  upperBound = self->_upperBound;
  if (upperBound)
  {
    v7 = [(HKCodableQuantity *)upperBound dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"upperBound"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_lowerBound)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_upperBound)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_lowerBound)
  {
    [v4 setLowerBound:?];
    v4 = v5;
  }

  if (self->_upperBound)
  {
    [v5 setUpperBound:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableQuantity *)self->_lowerBound copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(HKCodableQuantity *)self->_upperBound copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((lowerBound = self->_lowerBound, !(lowerBound | v4[1])) || -[HKCodableQuantity isEqual:](lowerBound, "isEqual:")))
  {
    upperBound = self->_upperBound;
    if (upperBound | v4[2])
    {
      v7 = [(HKCodableQuantity *)upperBound isEqual:?];
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
  lowerBound = self->_lowerBound;
  v6 = v4[1];
  v9 = v4;
  if (lowerBound)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableQuantity *)lowerBound mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableAudiogramSensitivityPointClampingRange *)self setLowerBound:?];
  }

  v4 = v9;
LABEL_7:
  upperBound = self->_upperBound;
  v8 = v4[2];
  if (upperBound)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    upperBound = [(HKCodableQuantity *)upperBound mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    upperBound = [(HKCodableAudiogramSensitivityPointClampingRange *)self setUpperBound:?];
  }

  v4 = v9;
LABEL_13:

  MEMORY[0x1EEE66BB8](upperBound, v4);
}

@end