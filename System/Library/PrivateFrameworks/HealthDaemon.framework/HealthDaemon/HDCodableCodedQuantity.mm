@interface HDCodableCodedQuantity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableCodedQuantity

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableCodedQuantity;
  v4 = [(HDCodableCodedQuantity *)&v8 description];
  dictionaryRepresentation = [(HDCodableCodedQuantity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  rawValue = self->_rawValue;
  if (rawValue)
  {
    [dictionary setObject:rawValue forKey:@"rawValue"];
  }

  comparatorCoding = self->_comparatorCoding;
  if (comparatorCoding)
  {
    dictionaryRepresentation = [(HDCodableMedicalCoding *)comparatorCoding dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"comparatorCoding"];
  }

  unitCoding = self->_unitCoding;
  if (unitCoding)
  {
    dictionaryRepresentation2 = [(HDCodableMedicalCoding *)unitCoding dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"unitCoding"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_rawValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_comparatorCoding)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_unitCoding)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_rawValue)
  {
    [toCopy setRawValue:?];
    toCopy = v5;
  }

  if (self->_comparatorCoding)
  {
    [v5 setComparatorCoding:?];
    toCopy = v5;
  }

  if (self->_unitCoding)
  {
    [v5 setUnitCoding:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_rawValue copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HDCodableMedicalCoding *)self->_comparatorCoding copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(HDCodableMedicalCoding *)self->_unitCoding copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((rawValue = self->_rawValue, !(rawValue | equalCopy[2])) || -[NSString isEqual:](rawValue, "isEqual:")) && ((comparatorCoding = self->_comparatorCoding, !(comparatorCoding | equalCopy[1])) || -[HDCodableMedicalCoding isEqual:](comparatorCoding, "isEqual:")))
  {
    unitCoding = self->_unitCoding;
    if (unitCoding | equalCopy[3])
    {
      v8 = [(HDCodableMedicalCoding *)unitCoding isEqual:?];
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
  v3 = [(NSString *)self->_rawValue hash];
  v4 = [(HDCodableMedicalCoding *)self->_comparatorCoding hash]^ v3;
  return v4 ^ [(HDCodableMedicalCoding *)self->_unitCoding hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (fromCopy[2])
  {
    [(HDCodableCodedQuantity *)self setRawValue:?];
    fromCopy = v9;
  }

  comparatorCoding = self->_comparatorCoding;
  v6 = fromCopy[1];
  if (comparatorCoding)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(HDCodableMedicalCoding *)comparatorCoding mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(HDCodableCodedQuantity *)self setComparatorCoding:?];
  }

  fromCopy = v9;
LABEL_9:
  unitCoding = self->_unitCoding;
  v8 = fromCopy[3];
  if (unitCoding)
  {
    if (v8)
    {
      [(HDCodableMedicalCoding *)unitCoding mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HDCodableCodedQuantity *)self setUnitCoding:?];
  }

  MEMORY[0x2821F96F8]();
}

@end