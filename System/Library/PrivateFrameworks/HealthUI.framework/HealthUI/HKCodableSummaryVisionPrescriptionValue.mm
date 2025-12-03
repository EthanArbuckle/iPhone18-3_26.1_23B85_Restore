@interface HKCodableSummaryVisionPrescriptionValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasHasImage:(BOOL)image;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryVisionPrescriptionValue

- (void)setHasHasImage:(BOOL)image
{
  if (image)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryVisionPrescriptionValue;
  v4 = [(HKCodableSummaryVisionPrescriptionValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryVisionPrescriptionValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestampData];
    [dictionary setObject:v4 forKey:@"timestampData"];
  }

  prescriptionType = self->_prescriptionType;
  if (prescriptionType)
  {
    dictionaryRepresentation = [(HKCodablePrescriptionType *)prescriptionType dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"prescriptionType"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasImage];
    [dictionary setObject:v7 forKey:@"hasImage"];
  }

  leftEyeSphere = self->_leftEyeSphere;
  if (leftEyeSphere)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)leftEyeSphere dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"leftEyeSphere"];
  }

  rightEyeSphere = self->_rightEyeSphere;
  if (rightEyeSphere)
  {
    dictionaryRepresentation3 = [(HKCodableQuantity *)rightEyeSphere dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"rightEyeSphere"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_prescriptionType)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_leftEyeSphere)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_rightEyeSphere)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_timestampData;
    *(toCopy + 44) |= 1u;
  }

  v5 = toCopy;
  if (self->_prescriptionType)
  {
    [toCopy setPrescriptionType:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 40) = self->_hasImage;
    *(toCopy + 44) |= 2u;
  }

  if (self->_leftEyeSphere)
  {
    [v5 setLeftEyeSphere:?];
    toCopy = v5;
  }

  if (self->_rightEyeSphere)
  {
    [v5 setRightEyeSphere:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestampData;
    *(v5 + 44) |= 1u;
  }

  v7 = [(HKCodablePrescriptionType *)self->_prescriptionType copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 40) = self->_hasImage;
    *(v6 + 44) |= 2u;
  }

  v9 = [(HKCodableQuantity *)self->_leftEyeSphere copyWithZone:zone];
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  v11 = [(HKCodableQuantity *)self->_rightEyeSphere copyWithZone:zone];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  if (has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_timestampData != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_17;
  }

  prescriptionType = self->_prescriptionType;
  if (prescriptionType | *(equalCopy + 3))
  {
    if (![(HKCodablePrescriptionType *)prescriptionType isEqual:?])
    {
      goto LABEL_17;
    }

    has = self->_has;
  }

  if ((has & 2) == 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  if ((*(equalCopy + 44) & 2) == 0)
  {
    goto LABEL_17;
  }

  if (self->_hasImage)
  {
    if ((*(equalCopy + 40) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_17;
  }

LABEL_12:
  leftEyeSphere = self->_leftEyeSphere;
  if (leftEyeSphere | *(equalCopy + 2) && ![(HKCodableQuantity *)leftEyeSphere isEqual:?])
  {
    goto LABEL_17;
  }

  rightEyeSphere = self->_rightEyeSphere;
  if (rightEyeSphere | *(equalCopy + 4))
  {
    v9 = [(HKCodableQuantity *)rightEyeSphere isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_18:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    timestampData = self->_timestampData;
    if (timestampData < 0.0)
    {
      timestampData = -timestampData;
    }

    *v2.i64 = floor(timestampData + 0.5);
    v7 = (timestampData - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(HKCodablePrescriptionType *)self->_prescriptionType hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_hasImage;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9 ^ v5 ^ v10 ^ [(HKCodableQuantity *)self->_leftEyeSphere hash];
  return v11 ^ [(HKCodableQuantity *)self->_rightEyeSphere hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 44))
  {
    self->_timestampData = fromCopy[1];
    *&self->_has |= 1u;
  }

  prescriptionType = self->_prescriptionType;
  v7 = *(v5 + 3);
  v12 = v5;
  if (prescriptionType)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(HKCodablePrescriptionType *)prescriptionType mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(HKCodableSummaryVisionPrescriptionValue *)self setPrescriptionType:?];
  }

  v5 = v12;
LABEL_9:
  if ((*(v5 + 44) & 2) != 0)
  {
    self->_hasImage = *(v5 + 40);
    *&self->_has |= 2u;
  }

  leftEyeSphere = self->_leftEyeSphere;
  v9 = *(v5 + 2);
  if (leftEyeSphere)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    [(HKCodableQuantity *)leftEyeSphere mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    [(HKCodableSummaryVisionPrescriptionValue *)self setLeftEyeSphere:?];
  }

  v5 = v12;
LABEL_17:
  rightEyeSphere = self->_rightEyeSphere;
  v11 = *(v5 + 4);
  if (rightEyeSphere)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    rightEyeSphere = [(HKCodableQuantity *)rightEyeSphere mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    rightEyeSphere = [(HKCodableSummaryVisionPrescriptionValue *)self setRightEyeSphere:?];
  }

  v5 = v12;
LABEL_23:

  MEMORY[0x1EEE66BB8](rightEyeSphere, v5);
}

@end