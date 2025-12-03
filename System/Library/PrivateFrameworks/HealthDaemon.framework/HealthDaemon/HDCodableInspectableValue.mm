@interface HDCodableInspectableValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBooleanValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation HDCodableInspectableValue

- (void)setHasBooleanValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableInspectableValue;
  v4 = [(HDCodableInspectableValue *)&v8 description];
  dictionaryRepresentation = [(HDCodableInspectableValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [dictionary setObject:stringValue forKey:@"stringValue"];
  }

  ratioValue = self->_ratioValue;
  if (ratioValue)
  {
    dictionaryRepresentation = [(HDCodableRatioValue *)ratioValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"ratioValue"];
  }

  dateComponentsValue = self->_dateComponentsValue;
  if (dateComponentsValue)
  {
    dictionaryRepresentation2 = [(HDCodableDateComponents *)dateComponentsValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"dateComponentsValue"];
  }

  codedQuantityValue = self->_codedQuantityValue;
  if (codedQuantityValue)
  {
    dictionaryRepresentation3 = [(HDCodableCodedQuantity *)codedQuantityValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"codedQuantityValue"];
  }

  medicalCodingValue = self->_medicalCodingValue;
  if (medicalCodingValue)
  {
    dictionaryRepresentation4 = [(HDCodableMedicalCodingList *)medicalCodingValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"medicalCodingValue"];
  }

  codedValueCollection = self->_codedValueCollection;
  if (codedValueCollection)
  {
    dictionaryRepresentation5 = [(HDCodableCodedValueCollection *)codedValueCollection dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"codedValueCollection"];
  }

  medicalDateValue = self->_medicalDateValue;
  if (medicalDateValue)
  {
    dictionaryRepresentation6 = [(HDCodableMedicalDate *)medicalDateValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation6 forKey:@"medicalDateValue"];
  }

  medicalDateIntervalValue = self->_medicalDateIntervalValue;
  if (medicalDateIntervalValue)
  {
    dictionaryRepresentation7 = [(HDCodableMedicalDateInterval *)medicalDateIntervalValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation7 forKey:@"medicalDateIntervalValue"];
  }

  dataAbsentReasonCodingsValue = self->_dataAbsentReasonCodingsValue;
  if (dataAbsentReasonCodingsValue)
  {
    dictionaryRepresentation8 = [(HDCodableMedicalCodingList *)dataAbsentReasonCodingsValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation8 forKey:@"dataAbsentReasonCodingsValue"];
  }

  has = self->_has;
  if (has)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_inspectableIntegerValue];
    [v4 setObject:v23 forKey:@"inspectableIntegerValue"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_BOOLeanValue];
    [v4 setObject:v24 forKey:@"BOOLeanValue"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_ratioValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_dateComponentsValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_codedQuantityValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_medicalCodingValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_codedValueCollection)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_medicalDateValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_medicalDateIntervalValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_dataAbsentReasonCodingsValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    inspectableIntegerValue = self->_inspectableIntegerValue;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    BOOLeanValue = self->_BOOLeanValue;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_stringValue)
  {
    [toCopy setStringValue:?];
    toCopy = v6;
  }

  if (self->_ratioValue)
  {
    [v6 setRatioValue:?];
    toCopy = v6;
  }

  if (self->_dateComponentsValue)
  {
    [v6 setDateComponentsValue:?];
    toCopy = v6;
  }

  if (self->_codedQuantityValue)
  {
    [v6 setCodedQuantityValue:?];
    toCopy = v6;
  }

  if (self->_medicalCodingValue)
  {
    [v6 setMedicalCodingValue:?];
    toCopy = v6;
  }

  if (self->_codedValueCollection)
  {
    [v6 setCodedValueCollection:?];
    toCopy = v6;
  }

  if (self->_medicalDateValue)
  {
    [v6 setMedicalDateValue:?];
    toCopy = v6;
  }

  if (self->_medicalDateIntervalValue)
  {
    [v6 setMedicalDateIntervalValue:?];
    toCopy = v6;
  }

  if (self->_dataAbsentReasonCodingsValue)
  {
    [v6 setDataAbsentReasonCodingsValue:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_inspectableIntegerValue;
    *(toCopy + 92) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 88) = self->_BOOLeanValue;
    *(toCopy + 92) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_stringValue copyWithZone:zone];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(HDCodableRatioValue *)self->_ratioValue copyWithZone:zone];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  v10 = [(HDCodableDateComponents *)self->_dateComponentsValue copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(HDCodableCodedQuantity *)self->_codedQuantityValue copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(HDCodableMedicalCodingList *)self->_medicalCodingValue copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(HDCodableCodedValueCollection *)self->_codedValueCollection copyWithZone:zone];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  v18 = [(HDCodableMedicalDate *)self->_medicalDateValue copyWithZone:zone];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  v20 = [(HDCodableMedicalDateInterval *)self->_medicalDateIntervalValue copyWithZone:zone];
  v21 = *(v5 + 56);
  *(v5 + 56) = v20;

  v22 = [(HDCodableMedicalCodingList *)self->_dataAbsentReasonCodingsValue copyWithZone:zone];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_inspectableIntegerValue;
    *(v5 + 92) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 88) = self->_BOOLeanValue;
    *(v5 + 92) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(equalCopy + 10))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_27;
    }
  }

  ratioValue = self->_ratioValue;
  if (ratioValue | *(equalCopy + 9))
  {
    if (![(HDCodableRatioValue *)ratioValue isEqual:?])
    {
      goto LABEL_27;
    }
  }

  dateComponentsValue = self->_dateComponentsValue;
  if (dateComponentsValue | *(equalCopy + 5))
  {
    if (![(HDCodableDateComponents *)dateComponentsValue isEqual:?])
    {
      goto LABEL_27;
    }
  }

  codedQuantityValue = self->_codedQuantityValue;
  if (codedQuantityValue | *(equalCopy + 2))
  {
    if (![(HDCodableCodedQuantity *)codedQuantityValue isEqual:?])
    {
      goto LABEL_27;
    }
  }

  medicalCodingValue = self->_medicalCodingValue;
  if (medicalCodingValue | *(equalCopy + 6))
  {
    if (![(HDCodableMedicalCodingList *)medicalCodingValue isEqual:?])
    {
      goto LABEL_27;
    }
  }

  codedValueCollection = self->_codedValueCollection;
  if (codedValueCollection | *(equalCopy + 3))
  {
    if (![(HDCodableCodedValueCollection *)codedValueCollection isEqual:?])
    {
      goto LABEL_27;
    }
  }

  medicalDateValue = self->_medicalDateValue;
  if (medicalDateValue | *(equalCopy + 8))
  {
    if (![(HDCodableMedicalDate *)medicalDateValue isEqual:?])
    {
      goto LABEL_27;
    }
  }

  medicalDateIntervalValue = self->_medicalDateIntervalValue;
  if (medicalDateIntervalValue | *(equalCopy + 7))
  {
    if (![(HDCodableMedicalDateInterval *)medicalDateIntervalValue isEqual:?])
    {
      goto LABEL_27;
    }
  }

  dataAbsentReasonCodingsValue = self->_dataAbsentReasonCodingsValue;
  if (dataAbsentReasonCodingsValue | *(equalCopy + 4))
  {
    if (![(HDCodableMedicalCodingList *)dataAbsentReasonCodingsValue isEqual:?])
    {
      goto LABEL_27;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_inspectableIntegerValue != *(equalCopy + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 92))
  {
    goto LABEL_27;
  }

  v14 = (*(equalCopy + 92) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 92) & 2) == 0)
    {
LABEL_27:
      v14 = 0;
      goto LABEL_28;
    }

    if (self->_BOOLeanValue)
    {
      if ((*(equalCopy + 88) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (*(equalCopy + 88))
    {
      goto LABEL_27;
    }

    v14 = 1;
  }

LABEL_28:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stringValue hash];
  v4 = [(HDCodableRatioValue *)self->_ratioValue hash];
  v5 = [(HDCodableDateComponents *)self->_dateComponentsValue hash];
  v6 = [(HDCodableCodedQuantity *)self->_codedQuantityValue hash];
  v7 = [(HDCodableMedicalCodingList *)self->_medicalCodingValue hash];
  v8 = [(HDCodableCodedValueCollection *)self->_codedValueCollection hash];
  v9 = [(HDCodableMedicalDate *)self->_medicalDateValue hash];
  v10 = [(HDCodableMedicalDateInterval *)self->_medicalDateIntervalValue hash];
  v11 = [(HDCodableMedicalCodingList *)self->_dataAbsentReasonCodingsValue hash];
  if (*&self->_has)
  {
    v12 = 2654435761 * self->_inspectableIntegerValue;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

  v12 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = 2654435761 * self->_BOOLeanValue;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v22 = fromCopy;
  if (*(fromCopy + 10))
  {
    [(HDCodableInspectableValue *)self setStringValue:?];
    fromCopy = v22;
  }

  ratioValue = self->_ratioValue;
  v6 = *(fromCopy + 9);
  if (ratioValue)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(HDCodableRatioValue *)ratioValue mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(HDCodableInspectableValue *)self setRatioValue:?];
  }

  fromCopy = v22;
LABEL_9:
  dateComponentsValue = self->_dateComponentsValue;
  v8 = *(fromCopy + 5);
  if (dateComponentsValue)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(HDCodableDateComponents *)dateComponentsValue mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(HDCodableInspectableValue *)self setDateComponentsValue:?];
  }

  fromCopy = v22;
LABEL_15:
  codedQuantityValue = self->_codedQuantityValue;
  v10 = *(fromCopy + 2);
  if (codedQuantityValue)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    [(HDCodableCodedQuantity *)codedQuantityValue mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    [(HDCodableInspectableValue *)self setCodedQuantityValue:?];
  }

  fromCopy = v22;
LABEL_21:
  medicalCodingValue = self->_medicalCodingValue;
  v12 = *(fromCopy + 6);
  if (medicalCodingValue)
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    [(HDCodableMedicalCodingList *)medicalCodingValue mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    [(HDCodableInspectableValue *)self setMedicalCodingValue:?];
  }

  fromCopy = v22;
LABEL_27:
  codedValueCollection = self->_codedValueCollection;
  v14 = *(fromCopy + 3);
  if (codedValueCollection)
  {
    if (!v14)
    {
      goto LABEL_33;
    }

    [(HDCodableCodedValueCollection *)codedValueCollection mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_33;
    }

    [(HDCodableInspectableValue *)self setCodedValueCollection:?];
  }

  fromCopy = v22;
LABEL_33:
  medicalDateValue = self->_medicalDateValue;
  v16 = *(fromCopy + 8);
  if (medicalDateValue)
  {
    if (!v16)
    {
      goto LABEL_39;
    }

    [(HDCodableMedicalDate *)medicalDateValue mergeFrom:?];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_39;
    }

    [(HDCodableInspectableValue *)self setMedicalDateValue:?];
  }

  fromCopy = v22;
LABEL_39:
  medicalDateIntervalValue = self->_medicalDateIntervalValue;
  v18 = *(fromCopy + 7);
  if (medicalDateIntervalValue)
  {
    if (!v18)
    {
      goto LABEL_45;
    }

    [(HDCodableMedicalDateInterval *)medicalDateIntervalValue mergeFrom:?];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_45;
    }

    [(HDCodableInspectableValue *)self setMedicalDateIntervalValue:?];
  }

  fromCopy = v22;
LABEL_45:
  dataAbsentReasonCodingsValue = self->_dataAbsentReasonCodingsValue;
  v20 = *(fromCopy + 4);
  if (dataAbsentReasonCodingsValue)
  {
    if (!v20)
    {
      goto LABEL_51;
    }

    [(HDCodableMedicalCodingList *)dataAbsentReasonCodingsValue mergeFrom:?];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_51;
    }

    [(HDCodableInspectableValue *)self setDataAbsentReasonCodingsValue:?];
  }

  fromCopy = v22;
LABEL_51:
  v21 = *(fromCopy + 92);
  if (v21)
  {
    self->_inspectableIntegerValue = *(fromCopy + 1);
    *&self->_has |= 1u;
    v21 = *(fromCopy + 92);
  }

  if ((v21 & 2) != 0)
  {
    self->_BOOLeanValue = *(fromCopy + 88);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end