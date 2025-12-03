@interface HKCodableSleepingSampleBaseline
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSleepingSampleBaseline

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSleepingSampleBaseline;
  v4 = [(HKCodableSleepingSampleBaseline *)&v8 description];
  dictionaryRepresentation = [(HKCodableSleepingSampleBaseline *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  middle = self->_middle;
  if (middle)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)middle dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"middle"];
  }

  medialRangeMinimum = self->_medialRangeMinimum;
  if (medialRangeMinimum)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)medialRangeMinimum dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"medialRangeMinimum"];
  }

  medialRangeMaximum = self->_medialRangeMaximum;
  if (medialRangeMaximum)
  {
    dictionaryRepresentation3 = [(HKCodableQuantity *)medialRangeMaximum dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"medialRangeMaximum"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_middle)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_medialRangeMinimum)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_medialRangeMaximum)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_middle)
  {
    [toCopy setMiddle:?];
    toCopy = v5;
  }

  if (self->_medialRangeMinimum)
  {
    [v5 setMedialRangeMinimum:?];
    toCopy = v5;
  }

  if (self->_medialRangeMaximum)
  {
    [v5 setMedialRangeMaximum:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableQuantity *)self->_middle copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(HKCodableQuantity *)self->_medialRangeMinimum copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(HKCodableQuantity *)self->_medialRangeMaximum copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((middle = self->_middle, !(middle | equalCopy[3])) || -[HKCodableQuantity isEqual:](middle, "isEqual:")) && ((medialRangeMinimum = self->_medialRangeMinimum, !(medialRangeMinimum | equalCopy[2])) || -[HKCodableQuantity isEqual:](medialRangeMinimum, "isEqual:")))
  {
    medialRangeMaximum = self->_medialRangeMaximum;
    if (medialRangeMaximum | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  middle = self->_middle;
  v6 = fromCopy[3];
  v11 = fromCopy;
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

  fromCopy = v11;
LABEL_7:
  medialRangeMinimum = self->_medialRangeMinimum;
  v8 = fromCopy[2];
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

  fromCopy = v11;
LABEL_13:
  medialRangeMaximum = self->_medialRangeMaximum;
  v10 = fromCopy[1];
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

  fromCopy = v11;
LABEL_19:

  MEMORY[0x1EEE66BB8](medialRangeMaximum, fromCopy);
}

@end