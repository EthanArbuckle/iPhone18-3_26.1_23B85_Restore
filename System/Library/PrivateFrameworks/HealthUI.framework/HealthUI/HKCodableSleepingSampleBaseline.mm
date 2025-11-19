@interface HKCodableSleepingSampleBaseline
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSleepingSampleBaseline

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSleepingSampleBaseline;
  v4 = [(HKCodableSleepingSampleBaseline *)&v8 description];
  v5 = [(HKCodableSleepingSampleBaseline *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  middle = self->_middle;
  if (middle)
  {
    v5 = [(HKCodableQuantity *)middle dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"middle"];
  }

  medialRangeMinimum = self->_medialRangeMinimum;
  if (medialRangeMinimum)
  {
    v7 = [(HKCodableQuantity *)medialRangeMinimum dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"medialRangeMinimum"];
  }

  medialRangeMaximum = self->_medialRangeMaximum;
  if (medialRangeMaximum)
  {
    v9 = [(HKCodableQuantity *)medialRangeMaximum dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"medialRangeMaximum"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_middle)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_medialRangeMinimum)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_medialRangeMaximum)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_middle)
  {
    [v4 setMiddle:?];
    v4 = v5;
  }

  if (self->_medialRangeMinimum)
  {
    [v5 setMedialRangeMinimum:?];
    v4 = v5;
  }

  if (self->_medialRangeMaximum)
  {
    [v5 setMedialRangeMaximum:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableQuantity *)self->_middle copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(HKCodableQuantity *)self->_medialRangeMinimum copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(HKCodableQuantity *)self->_medialRangeMaximum copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((middle = self->_middle, !(middle | v4[3])) || -[HKCodableQuantity isEqual:](middle, "isEqual:")) && ((medialRangeMinimum = self->_medialRangeMinimum, !(medialRangeMinimum | v4[2])) || -[HKCodableQuantity isEqual:](medialRangeMinimum, "isEqual:")))
  {
    medialRangeMaximum = self->_medialRangeMaximum;
    if (medialRangeMaximum | v4[1])
    {
      v8 = [(HKCodableQuantity *)medialRangeMaximum isEqual:?];
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
  v3 = [(HKCodableQuantity *)self->_middle hash];
  v4 = [(HKCodableQuantity *)self->_medialRangeMinimum hash]^ v3;
  return v4 ^ [(HKCodableQuantity *)self->_medialRangeMaximum hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  middle = self->_middle;
  v6 = v4[3];
  v11 = v4;
  if (middle)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableQuantity *)middle mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableSleepingSampleBaseline *)self setMiddle:?];
  }

  v4 = v11;
LABEL_7:
  medialRangeMinimum = self->_medialRangeMinimum;
  v8 = v4[2];
  if (medialRangeMinimum)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(HKCodableQuantity *)medialRangeMinimum mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(HKCodableSleepingSampleBaseline *)self setMedialRangeMinimum:?];
  }

  v4 = v11;
LABEL_13:
  medialRangeMaximum = self->_medialRangeMaximum;
  v10 = v4[1];
  if (medialRangeMaximum)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    medialRangeMaximum = [(HKCodableQuantity *)medialRangeMaximum mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    medialRangeMaximum = [(HKCodableSleepingSampleBaseline *)self setMedialRangeMaximum:?];
  }

  v4 = v11;
LABEL_19:

  MEMORY[0x1EEE66BB8](medialRangeMaximum, v4);
}

@end