@interface HDCodableCodedQuantity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableCodedQuantity

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableCodedQuantity;
  v4 = [(HDCodableCodedQuantity *)&v8 description];
  v5 = [(HDCodableCodedQuantity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  rawValue = self->_rawValue;
  if (rawValue)
  {
    [v3 setObject:rawValue forKey:@"rawValue"];
  }

  comparatorCoding = self->_comparatorCoding;
  if (comparatorCoding)
  {
    v7 = [(HDCodableMedicalCoding *)comparatorCoding dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"comparatorCoding"];
  }

  unitCoding = self->_unitCoding;
  if (unitCoding)
  {
    v9 = [(HDCodableMedicalCoding *)unitCoding dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"unitCoding"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_rawValue)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_comparatorCoding)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_unitCoding)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_rawValue)
  {
    [v4 setRawValue:?];
    v4 = v5;
  }

  if (self->_comparatorCoding)
  {
    [v5 setComparatorCoding:?];
    v4 = v5;
  }

  if (self->_unitCoding)
  {
    [v5 setUnitCoding:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_rawValue copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HDCodableMedicalCoding *)self->_comparatorCoding copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(HDCodableMedicalCoding *)self->_unitCoding copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((rawValue = self->_rawValue, !(rawValue | v4[2])) || -[NSString isEqual:](rawValue, "isEqual:")) && ((comparatorCoding = self->_comparatorCoding, !(comparatorCoding | v4[1])) || -[HDCodableMedicalCoding isEqual:](comparatorCoding, "isEqual:")))
  {
    unitCoding = self->_unitCoding;
    if (unitCoding | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4[2])
  {
    [(HDCodableCodedQuantity *)self setRawValue:?];
    v4 = v9;
  }

  comparatorCoding = self->_comparatorCoding;
  v6 = v4[1];
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

  v4 = v9;
LABEL_9:
  unitCoding = self->_unitCoding;
  v8 = v4[3];
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