@interface HDCodableVisionSample
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLeftAxis:(BOOL)axis;
- (void)setHasLeftBaseCurve:(BOOL)curve;
- (void)setHasLeftContactDiameter:(BOOL)diameter;
- (void)setHasLeftCylinder:(BOOL)cylinder;
- (void)setHasLeftFarPupillaryDistance:(BOOL)distance;
- (void)setHasLeftNearPupillaryDistance:(BOOL)distance;
- (void)setHasLeftPrismAmount:(BOOL)amount;
- (void)setHasLeftPrismAngle:(BOOL)angle;
- (void)setHasLeftSphere:(BOOL)sphere;
- (void)setHasLeftVertexDistance:(BOOL)distance;
- (void)setHasPrescriptionType:(BOOL)type;
- (void)setHasRightAddPower:(BOOL)power;
- (void)setHasRightAxis:(BOOL)axis;
- (void)setHasRightBaseCurve:(BOOL)curve;
- (void)setHasRightContactDiameter:(BOOL)diameter;
- (void)setHasRightCylinder:(BOOL)cylinder;
- (void)setHasRightFarPupillaryDistance:(BOOL)distance;
- (void)setHasRightNearPupillaryDistance:(BOOL)distance;
- (void)setHasRightPrismAmount:(BOOL)amount;
- (void)setHasRightPrismAngle:(BOOL)angle;
- (void)setHasRightSphere:(BOOL)sphere;
- (void)setHasRightVertexDistance:(BOOL)distance;
- (void)writeTo:(id)to;
@end

@implementation HDCodableVisionSample

- (void)setHasPrescriptionType:(BOOL)type
{
  if (type)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasLeftSphere:(BOOL)sphere
{
  if (sphere)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasRightSphere:(BOOL)sphere
{
  if (sphere)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasLeftCylinder:(BOOL)cylinder
{
  if (cylinder)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasRightCylinder:(BOOL)cylinder
{
  if (cylinder)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasLeftAxis:(BOOL)axis
{
  if (axis)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasRightAxis:(BOOL)axis
{
  if (axis)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasRightAddPower:(BOOL)power
{
  if (power)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasLeftVertexDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasRightVertexDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasLeftPrismAmount:(BOOL)amount
{
  if (amount)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasRightPrismAmount:(BOOL)amount
{
  if (amount)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasLeftPrismAngle:(BOOL)angle
{
  if (angle)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasRightPrismAngle:(BOOL)angle
{
  if (angle)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasLeftFarPupillaryDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasRightFarPupillaryDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasLeftNearPupillaryDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasRightNearPupillaryDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasLeftBaseCurve:(BOOL)curve
{
  if (curve)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasRightBaseCurve:(BOOL)curve
{
  if (curve)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasLeftContactDiameter:(BOOL)diameter
{
  if (diameter)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasRightContactDiameter:(BOOL)diameter
{
  if (diameter)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableVisionSample;
  v4 = [(HDCodableVisionSample *)&v8 description];
  dictionaryRepresentation = [(HDCodableVisionSample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(HDCodableSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
  }

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_prescriptionType];
    [dictionary setObject:v15 forKey:@"prescriptionType"];

    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_5:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_39;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftSphere];
  [dictionary setObject:v16 forKey:@"leftSphere"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightSphere];
  [dictionary setObject:v17 forKey:@"rightSphere"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftCylinder];
  [dictionary setObject:v18 forKey:@"leftCylinder"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightCylinder];
  [dictionary setObject:v19 forKey:@"rightCylinder"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftAxis];
  [dictionary setObject:v20 forKey:@"leftAxis"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightAxis];
  [dictionary setObject:v21 forKey:@"rightAxis"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftAddPower];
  [dictionary setObject:v22 forKey:@"leftAddPower"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightAddPower];
  [dictionary setObject:v23 forKey:@"rightAddPower"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftVertexDistance];
  [dictionary setObject:v24 forKey:@"leftVertexDistance"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightVertexDistance];
  [dictionary setObject:v25 forKey:@"rightVertexDistance"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftPrismAmount];
  [dictionary setObject:v26 forKey:@"leftPrismAmount"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightPrismAmount];
  [dictionary setObject:v27 forKey:@"rightPrismAmount"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_17:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftPrismAngle];
  [dictionary setObject:v28 forKey:@"leftPrismAngle"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightPrismAngle];
  [dictionary setObject:v29 forKey:@"rightPrismAngle"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftFarPupillaryDistance];
  [dictionary setObject:v30 forKey:@"leftFarPupillaryDistance"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  v31 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightFarPupillaryDistance];
  [dictionary setObject:v31 forKey:@"rightFarPupillaryDistance"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_21:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_54:
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftNearPupillaryDistance];
  [dictionary setObject:v32 forKey:@"leftNearPupillaryDistance"];

  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_22:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightNearPupillaryDistance];
    [dictionary setObject:v7 forKey:@"rightNearPupillaryDistance"];
  }

LABEL_23:
  glassesDescription = self->_glassesDescription;
  if (glassesDescription)
  {
    [dictionary setObject:glassesDescription forKey:@"glassesDescription"];
  }

  v9 = self->_has;
  if ((*&v9 & 4) != 0)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftBaseCurve];
    [dictionary setObject:v33 forKey:@"leftBaseCurve"];

    v9 = self->_has;
    if ((*&v9 & 0x4000) == 0)
    {
LABEL_27:
      if ((*&v9 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v9 & 0x4000) == 0)
  {
    goto LABEL_27;
  }

  v34 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightBaseCurve];
  [dictionary setObject:v34 forKey:@"rightBaseCurve"];

  v9 = self->_has;
  if ((*&v9 & 8) == 0)
  {
LABEL_28:
    if ((*&v9 & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_58:
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:self->_leftContactDiameter];
  [dictionary setObject:v35 forKey:@"leftContactDiameter"];

  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_29:
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_rightContactDiameter];
    [dictionary setObject:v10 forKey:@"rightContactDiameter"];
  }

LABEL_30:
  brand = self->_brand;
  if (brand)
  {
    [dictionary setObject:brand forKey:@"brand"];
  }

  verifiableData = self->_verifiableData;
  if (verifiableData)
  {
    dictionaryRepresentation2 = [(HDCodableVerifiableData *)verifiableData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"verifiableData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v30 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v30;
  }

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    prescriptionType = self->_prescriptionType;
    PBDataWriterWriteInt64Field();
    toCopy = v30;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_5:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_39;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  leftSphere = self->_leftSphere;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  rightSphere = self->_rightSphere;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  leftCylinder = self->_leftCylinder;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  rightCylinder = self->_rightCylinder;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  leftAxis = self->_leftAxis;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  rightAxis = self->_rightAxis;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  leftAddPower = self->_leftAddPower;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  rightAddPower = self->_rightAddPower;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  leftVertexDistance = self->_leftVertexDistance;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  rightVertexDistance = self->_rightVertexDistance;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  leftPrismAmount = self->_leftPrismAmount;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  rightPrismAmount = self->_rightPrismAmount;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_17:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  leftPrismAngle = self->_leftPrismAngle;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  rightPrismAngle = self->_rightPrismAngle;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  leftFarPupillaryDistance = self->_leftFarPupillaryDistance;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  rightFarPupillaryDistance = self->_rightFarPupillaryDistance;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_21:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_54:
  leftNearPupillaryDistance = self->_leftNearPupillaryDistance;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_22:
    rightNearPupillaryDistance = self->_rightNearPupillaryDistance;
    PBDataWriterWriteDoubleField();
    toCopy = v30;
  }

LABEL_23:
  if (self->_glassesDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v30;
  }

  v7 = self->_has;
  if ((*&v7 & 4) != 0)
  {
    leftBaseCurve = self->_leftBaseCurve;
    PBDataWriterWriteDoubleField();
    toCopy = v30;
    v7 = self->_has;
    if ((*&v7 & 0x4000) == 0)
    {
LABEL_27:
      if ((*&v7 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v7 & 0x4000) == 0)
  {
    goto LABEL_27;
  }

  rightBaseCurve = self->_rightBaseCurve;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  v7 = self->_has;
  if ((*&v7 & 8) == 0)
  {
LABEL_28:
    if ((*&v7 & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_58:
  leftContactDiameter = self->_leftContactDiameter;
  PBDataWriterWriteDoubleField();
  toCopy = v30;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_29:
    rightContactDiameter = self->_rightContactDiameter;
    PBDataWriterWriteDoubleField();
    toCopy = v30;
  }

LABEL_30:
  if (self->_brand)
  {
    PBDataWriterWriteStringField();
    toCopy = v30;
  }

  if (self->_verifiableData)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v30;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    *(toCopy + 12) = self->_prescriptionType;
    *(toCopy + 56) |= 0x800u;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_5:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_39;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 10) = *&self->_leftSphere;
  *(toCopy + 56) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_6:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 22) = *&self->_rightSphere;
  *(toCopy + 56) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_7:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 5) = *&self->_leftCylinder;
  *(toCopy + 56) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 17) = *&self->_rightCylinder;
  *(toCopy + 56) |= 0x10000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 2) = *&self->_leftAxis;
  *(toCopy + 56) |= 2u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 14) = *&self->_rightAxis;
  *(toCopy + 56) |= 0x2000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 1) = *&self->_leftAddPower;
  *(toCopy + 56) |= 1u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 13) = *&self->_rightAddPower;
  *(toCopy + 56) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 11) = *&self->_leftVertexDistance;
  *(toCopy + 56) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 23) = *&self->_rightVertexDistance;
  *(toCopy + 56) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(toCopy + 8) = *&self->_leftPrismAmount;
  *(toCopy + 56) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_16:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(toCopy + 20) = *&self->_rightPrismAmount;
  *(toCopy + 56) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_17:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(toCopy + 9) = *&self->_leftPrismAngle;
  *(toCopy + 56) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_18:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(toCopy + 21) = *&self->_rightPrismAngle;
  *(toCopy + 56) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(toCopy + 6) = *&self->_leftFarPupillaryDistance;
  *(toCopy + 56) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(toCopy + 18) = *&self->_rightFarPupillaryDistance;
  *(toCopy + 56) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_21:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_54:
  *(toCopy + 7) = *&self->_leftNearPupillaryDistance;
  *(toCopy + 56) |= 0x40u;
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_22:
    *(toCopy + 19) = *&self->_rightNearPupillaryDistance;
    *(toCopy + 56) |= 0x40000u;
  }

LABEL_23:
  if (self->_glassesDescription)
  {
    [v7 setGlassesDescription:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 4) != 0)
  {
    *(toCopy + 3) = *&self->_leftBaseCurve;
    *(toCopy + 56) |= 4u;
    v6 = self->_has;
    if ((*&v6 & 0x4000) == 0)
    {
LABEL_27:
      if ((*&v6 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v6 & 0x4000) == 0)
  {
    goto LABEL_27;
  }

  *(toCopy + 15) = *&self->_rightBaseCurve;
  *(toCopy + 56) |= 0x4000u;
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_58:
  *(toCopy + 4) = *&self->_leftContactDiameter;
  *(toCopy + 56) |= 8u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_29:
    *(toCopy + 16) = *&self->_rightContactDiameter;
    *(toCopy + 56) |= 0x8000u;
  }

LABEL_30:
  if (self->_brand)
  {
    [v7 setBrand:?];
    toCopy = v7;
  }

  if (self->_verifiableData)
  {
    [v7 setVerifiableData:?];
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 208);
  *(v5 + 208) = v6;

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    *(v5 + 96) = self->_prescriptionType;
    *(v5 + 224) |= 0x800u;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 80) = self->_leftSphere;
  *(v5 + 224) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 176) = self->_rightSphere;
  *(v5 + 224) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 40) = self->_leftCylinder;
  *(v5 + 224) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_6:
    if ((*&has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 136) = self->_rightCylinder;
  *(v5 + 224) |= 0x10000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 16) = self->_leftAxis;
  *(v5 + 224) |= 2u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_8:
    if ((*&has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 112) = self->_rightAxis;
  *(v5 + 224) |= 0x2000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 8) = self->_leftAddPower;
  *(v5 + 224) |= 1u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_10:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 104) = self->_rightAddPower;
  *(v5 + 224) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_11:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 88) = self->_leftVertexDistance;
  *(v5 + 224) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_12:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 184) = self->_rightVertexDistance;
  *(v5 + 224) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 64) = self->_leftPrismAmount;
  *(v5 + 224) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 160) = self->_rightPrismAmount;
  *(v5 + 224) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 72) = self->_leftPrismAngle;
  *(v5 + 224) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 168) = self->_rightPrismAngle;
  *(v5 + 224) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_17:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 48) = self->_leftFarPupillaryDistance;
  *(v5 + 224) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_18:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 144) = self->_rightFarPupillaryDistance;
  *(v5 + 224) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_44:
  *(v5 + 56) = self->_leftNearPupillaryDistance;
  *(v5 + 224) |= 0x40u;
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_20:
    *(v5 + 152) = self->_rightNearPupillaryDistance;
    *(v5 + 224) |= 0x40000u;
  }

LABEL_21:
  v9 = [(NSString *)self->_glassesDescription copyWithZone:zone];
  v10 = *(v5 + 200);
  *(v5 + 200) = v9;

  v11 = self->_has;
  if ((*&v11 & 4) != 0)
  {
    *(v5 + 24) = self->_leftBaseCurve;
    *(v5 + 224) |= 4u;
    v11 = self->_has;
    if ((*&v11 & 0x4000) == 0)
    {
LABEL_23:
      if ((*&v11 & 8) == 0)
      {
        goto LABEL_24;
      }

LABEL_48:
      *(v5 + 32) = self->_leftContactDiameter;
      *(v5 + 224) |= 8u;
      if ((*&self->_has & 0x8000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((*&v11 & 0x4000) == 0)
  {
    goto LABEL_23;
  }

  *(v5 + 120) = self->_rightBaseCurve;
  *(v5 + 224) |= 0x4000u;
  v11 = self->_has;
  if ((*&v11 & 8) != 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  if ((*&v11 & 0x8000) != 0)
  {
LABEL_25:
    *(v5 + 128) = self->_rightContactDiameter;
    *(v5 + 224) |= 0x8000u;
  }

LABEL_26:
  v12 = [(NSString *)self->_brand copyWithZone:zone];
  v13 = *(v5 + 192);
  *(v5 + 192) = v12;

  v14 = [(HDCodableVerifiableData *)self->_verifiableData copyWithZone:zone];
  v15 = *(v5 + 216);
  *(v5 + 216) = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_126;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 26))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_126;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 56);
  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_prescriptionType != *(equalCopy + 12))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_leftSphere != *(equalCopy + 10))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_rightSphere != *(equalCopy + 22))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_leftCylinder != *(equalCopy + 5))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_rightCylinder != *(equalCopy + 17))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_leftAxis != *(equalCopy + 2))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_rightAxis != *(equalCopy + 14))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_126;
  }

  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_leftAddPower != *(equalCopy + 1))
    {
      goto LABEL_126;
    }
  }

  else if (v7)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_rightAddPower != *(equalCopy + 13))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_leftVertexDistance != *(equalCopy + 11))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_rightVertexDistance != *(equalCopy + 23))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_leftPrismAmount != *(equalCopy + 8))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_rightPrismAmount != *(equalCopy + 20))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_leftPrismAngle != *(equalCopy + 9))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_rightPrismAngle != *(equalCopy + 21))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_leftFarPupillaryDistance != *(equalCopy + 6))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_rightFarPupillaryDistance != *(equalCopy + 18))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_leftNearPupillaryDistance != *(equalCopy + 7))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_rightNearPupillaryDistance != *(equalCopy + 19))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_126;
  }

  glassesDescription = self->_glassesDescription;
  if (glassesDescription | *(equalCopy + 25))
  {
    if (![(NSString *)glassesDescription isEqual:?])
    {
LABEL_126:
      v11 = 0;
      goto LABEL_127;
    }

    has = self->_has;
    v7 = *(equalCopy + 56);
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_leftBaseCurve != *(equalCopy + 3))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_rightBaseCurve != *(equalCopy + 15))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_leftContactDiameter != *(equalCopy + 4))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_126;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_rightContactDiameter != *(equalCopy + 16))
    {
      goto LABEL_126;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_126;
  }

  brand = self->_brand;
  if (brand | *(equalCopy + 24) && ![(NSString *)brand isEqual:?])
  {
    goto LABEL_126;
  }

  verifiableData = self->_verifiableData;
  if (verifiableData | *(equalCopy + 27))
  {
    v11 = [(HDCodableVerifiableData *)verifiableData isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_127:

  return v11;
}

- (unint64_t)hash
{
  v115 = [(HDCodableSample *)self->_sample hash];
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v114 = 2654435761 * self->_prescriptionType;
  }

  else
  {
    v114 = 0;
  }

  if ((*&has & 0x200) != 0)
  {
    leftSphere = self->_leftSphere;
    if (leftSphere < 0.0)
    {
      leftSphere = -leftSphere;
    }

    *v4.i64 = floor(leftSphere + 0.5);
    v9 = (leftSphere - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
    v7 = 2654435761u * *v4.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&has & 0x200000) != 0)
  {
    rightSphere = self->_rightSphere;
    if (rightSphere < 0.0)
    {
      rightSphere = -rightSphere;
    }

    *v4.i64 = floor(rightSphere + 0.5);
    v13 = (rightSphere - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v14), v5, v4);
    v11 = 2654435761u * *v4.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&has & 0x10) != 0)
  {
    leftCylinder = self->_leftCylinder;
    if (leftCylinder < 0.0)
    {
      leftCylinder = -leftCylinder;
    }

    *v4.i64 = floor(leftCylinder + 0.5);
    v17 = (leftCylinder - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v18), v5, v4);
    v15 = 2654435761u * *v4.i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*&has & 0x10000) != 0)
  {
    rightCylinder = self->_rightCylinder;
    if (rightCylinder < 0.0)
    {
      rightCylinder = -rightCylinder;
    }

    *v4.i64 = floor(rightCylinder + 0.5);
    v21 = (rightCylinder - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v22), v5, v4);
    v19 = 2654435761u * *v4.i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabs(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  if ((*&has & 2) != 0)
  {
    leftAxis = self->_leftAxis;
    if (leftAxis < 0.0)
    {
      leftAxis = -leftAxis;
    }

    *v4.i64 = floor(leftAxis + 0.5);
    v25 = (leftAxis - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v26), v5, v4);
    v23 = 2654435761u * *v4.i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v23 += v25;
      }
    }

    else
    {
      v23 -= fabs(v25);
    }
  }

  else
  {
    v23 = 0;
  }

  if ((*&has & 0x2000) != 0)
  {
    rightAxis = self->_rightAxis;
    if (rightAxis < 0.0)
    {
      rightAxis = -rightAxis;
    }

    *v4.i64 = floor(rightAxis + 0.5);
    v29 = (rightAxis - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v30), v5, v4);
    v27 = 2654435761u * *v4.i64;
    if (v29 >= 0.0)
    {
      if (v29 > 0.0)
      {
        v27 += v29;
      }
    }

    else
    {
      v27 -= fabs(v29);
    }
  }

  else
  {
    v27 = 0;
  }

  if (*&has)
  {
    leftAddPower = self->_leftAddPower;
    if (leftAddPower < 0.0)
    {
      leftAddPower = -leftAddPower;
    }

    *v4.i64 = floor(leftAddPower + 0.5);
    v33 = (leftAddPower - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v34), v5, v4);
    v31 = 2654435761u * *v4.i64;
    if (v33 >= 0.0)
    {
      if (v33 > 0.0)
      {
        v31 += v33;
      }
    }

    else
    {
      v31 -= fabs(v33);
    }
  }

  else
  {
    v31 = 0;
  }

  if ((*&has & 0x1000) != 0)
  {
    rightAddPower = self->_rightAddPower;
    if (rightAddPower < 0.0)
    {
      rightAddPower = -rightAddPower;
    }

    *v4.i64 = floor(rightAddPower + 0.5);
    v37 = (rightAddPower - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v38.f64[0] = NAN;
    v38.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v38), v5, v4);
    v35 = 2654435761u * *v4.i64;
    if (v37 >= 0.0)
    {
      if (v37 > 0.0)
      {
        v35 += v37;
      }
    }

    else
    {
      v35 -= fabs(v37);
    }
  }

  else
  {
    v35 = 0;
  }

  if ((*&has & 0x400) != 0)
  {
    leftVertexDistance = self->_leftVertexDistance;
    if (leftVertexDistance < 0.0)
    {
      leftVertexDistance = -leftVertexDistance;
    }

    *v4.i64 = floor(leftVertexDistance + 0.5);
    v41 = (leftVertexDistance - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v42.f64[0] = NAN;
    v42.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v42), v5, v4);
    v39 = 2654435761u * *v4.i64;
    if (v41 >= 0.0)
    {
      if (v41 > 0.0)
      {
        v39 += v41;
      }
    }

    else
    {
      v39 -= fabs(v41);
    }
  }

  else
  {
    v39 = 0;
  }

  if ((*&has & 0x400000) != 0)
  {
    rightVertexDistance = self->_rightVertexDistance;
    if (rightVertexDistance < 0.0)
    {
      rightVertexDistance = -rightVertexDistance;
    }

    *v4.i64 = floor(rightVertexDistance + 0.5);
    v45 = (rightVertexDistance - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v46.f64[0] = NAN;
    v46.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v46), v5, v4);
    v43 = 2654435761u * *v4.i64;
    if (v45 >= 0.0)
    {
      if (v45 > 0.0)
      {
        v43 += v45;
      }
    }

    else
    {
      v43 -= fabs(v45);
    }
  }

  else
  {
    v43 = 0;
  }

  if ((*&has & 0x80) != 0)
  {
    leftPrismAmount = self->_leftPrismAmount;
    if (leftPrismAmount < 0.0)
    {
      leftPrismAmount = -leftPrismAmount;
    }

    *v4.i64 = floor(leftPrismAmount + 0.5);
    v49 = (leftPrismAmount - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v50.f64[0] = NAN;
    v50.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v50), v5, v4);
    v47 = 2654435761u * *v4.i64;
    if (v49 >= 0.0)
    {
      if (v49 > 0.0)
      {
        v47 += v49;
      }
    }

    else
    {
      v47 -= fabs(v49);
    }
  }

  else
  {
    v47 = 0;
  }

  if ((*&has & 0x80000) != 0)
  {
    rightPrismAmount = self->_rightPrismAmount;
    if (rightPrismAmount < 0.0)
    {
      rightPrismAmount = -rightPrismAmount;
    }

    *v4.i64 = floor(rightPrismAmount + 0.5);
    v53 = (rightPrismAmount - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v54.f64[0] = NAN;
    v54.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v54), v5, v4);
    v51 = 2654435761u * *v4.i64;
    if (v53 >= 0.0)
    {
      if (v53 > 0.0)
      {
        v51 += v53;
      }
    }

    else
    {
      v51 -= fabs(v53);
    }
  }

  else
  {
    v51 = 0;
  }

  if ((*&has & 0x100) != 0)
  {
    leftPrismAngle = self->_leftPrismAngle;
    if (leftPrismAngle < 0.0)
    {
      leftPrismAngle = -leftPrismAngle;
    }

    *v4.i64 = floor(leftPrismAngle + 0.5);
    v57 = (leftPrismAngle - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v58.f64[0] = NAN;
    v58.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v58), v5, v4);
    v55 = 2654435761u * *v4.i64;
    if (v57 >= 0.0)
    {
      if (v57 > 0.0)
      {
        v55 += v57;
      }
    }

    else
    {
      v55 -= fabs(v57);
    }
  }

  else
  {
    v55 = 0;
  }

  if ((*&has & 0x100000) != 0)
  {
    rightPrismAngle = self->_rightPrismAngle;
    if (rightPrismAngle < 0.0)
    {
      rightPrismAngle = -rightPrismAngle;
    }

    *v4.i64 = floor(rightPrismAngle + 0.5);
    v61 = (rightPrismAngle - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v62.f64[0] = NAN;
    v62.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v62), v5, v4);
    v59 = 2654435761u * *v4.i64;
    if (v61 >= 0.0)
    {
      if (v61 > 0.0)
      {
        v59 += v61;
      }
    }

    else
    {
      v59 -= fabs(v61);
    }
  }

  else
  {
    v59 = 0;
  }

  if ((*&has & 0x20) != 0)
  {
    leftFarPupillaryDistance = self->_leftFarPupillaryDistance;
    if (leftFarPupillaryDistance < 0.0)
    {
      leftFarPupillaryDistance = -leftFarPupillaryDistance;
    }

    *v4.i64 = floor(leftFarPupillaryDistance + 0.5);
    v65 = (leftFarPupillaryDistance - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v66.f64[0] = NAN;
    v66.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v66), v5, v4);
    v63 = 2654435761u * *v4.i64;
    if (v65 >= 0.0)
    {
      if (v65 > 0.0)
      {
        v63 += v65;
      }
    }

    else
    {
      v63 -= fabs(v65);
    }
  }

  else
  {
    v63 = 0;
  }

  if ((*&has & 0x20000) != 0)
  {
    rightFarPupillaryDistance = self->_rightFarPupillaryDistance;
    if (rightFarPupillaryDistance < 0.0)
    {
      rightFarPupillaryDistance = -rightFarPupillaryDistance;
    }

    *v4.i64 = floor(rightFarPupillaryDistance + 0.5);
    v69 = (rightFarPupillaryDistance - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v70.f64[0] = NAN;
    v70.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v70), v5, v4);
    v67 = 2654435761u * *v4.i64;
    if (v69 >= 0.0)
    {
      if (v69 > 0.0)
      {
        v67 += v69;
      }
    }

    else
    {
      v67 -= fabs(v69);
    }
  }

  else
  {
    v67 = 0;
  }

  if ((*&has & 0x40) != 0)
  {
    leftNearPupillaryDistance = self->_leftNearPupillaryDistance;
    if (leftNearPupillaryDistance < 0.0)
    {
      leftNearPupillaryDistance = -leftNearPupillaryDistance;
    }

    *v4.i64 = floor(leftNearPupillaryDistance + 0.5);
    v73 = (leftNearPupillaryDistance - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v74.f64[0] = NAN;
    v74.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v74), v5, v4);
    v71 = 2654435761u * *v4.i64;
    if (v73 >= 0.0)
    {
      if (v73 > 0.0)
      {
        v71 += v73;
      }
    }

    else
    {
      v71 -= fabs(v73);
    }
  }

  else
  {
    v71 = 0;
  }

  v112 = v19;
  v113 = v35;
  v110 = v11;
  v111 = v15;
  v108 = v63;
  v109 = v7;
  v107 = v71;
  if ((*&has & 0x40000) != 0)
  {
    rightNearPupillaryDistance = self->_rightNearPupillaryDistance;
    if (rightNearPupillaryDistance < 0.0)
    {
      rightNearPupillaryDistance = -rightNearPupillaryDistance;
    }

    *v4.i64 = floor(rightNearPupillaryDistance + 0.5);
    v78 = (rightNearPupillaryDistance - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v79.f64[0] = NAN;
    v79.f64[1] = NAN;
    v76 = 2654435761u * *vbslq_s8(vnegq_f64(v79), v5, v4).i64;
    v75 = v23;
    if (v78 >= 0.0)
    {
      if (v78 > 0.0)
      {
        v76 += v78;
      }
    }

    else
    {
      v76 -= fabs(v78);
    }
  }

  else
  {
    v75 = v23;
    v76 = 0;
  }

  v80 = [(NSString *)self->_glassesDescription hash];
  v83 = self->_has;
  if ((*&v83 & 4) == 0)
  {
    v84 = 0;
    v85 = v75;
LABEL_154:
    v89 = v108;
    v90 = v107;
    goto LABEL_155;
  }

  leftBaseCurve = self->_leftBaseCurve;
  if (leftBaseCurve < 0.0)
  {
    leftBaseCurve = -leftBaseCurve;
  }

  *v81.i64 = floor(leftBaseCurve + 0.5);
  v87 = (leftBaseCurve - *v81.i64) * 1.84467441e19;
  *v82.i64 = *v81.i64 - trunc(*v81.i64 * 5.42101086e-20) * 1.84467441e19;
  v88.f64[0] = NAN;
  v88.f64[1] = NAN;
  v81 = vbslq_s8(vnegq_f64(v88), v82, v81);
  v84 = 2654435761u * *v81.i64;
  v85 = v75;
  if (v87 < 0.0)
  {
    v84 -= fabs(v87);
    goto LABEL_154;
  }

  v89 = v108;
  v90 = v107;
  if (v87 > 0.0)
  {
    v84 += v87;
  }

LABEL_155:
  if ((*&v83 & 0x4000) != 0)
  {
    rightBaseCurve = self->_rightBaseCurve;
    if (rightBaseCurve < 0.0)
    {
      rightBaseCurve = -rightBaseCurve;
    }

    *v81.i64 = floor(rightBaseCurve + 0.5);
    v93 = (rightBaseCurve - *v81.i64) * 1.84467441e19;
    *v82.i64 = *v81.i64 - trunc(*v81.i64 * 5.42101086e-20) * 1.84467441e19;
    v94.f64[0] = NAN;
    v94.f64[1] = NAN;
    v81 = vbslq_s8(vnegq_f64(v94), v82, v81);
    v91 = 2654435761u * *v81.i64;
    if (v93 >= 0.0)
    {
      if (v93 > 0.0)
      {
        v91 += v93;
      }
    }

    else
    {
      v91 -= fabs(v93);
    }
  }

  else
  {
    v91 = 0;
  }

  if ((*&v83 & 8) != 0)
  {
    leftContactDiameter = self->_leftContactDiameter;
    if (leftContactDiameter < 0.0)
    {
      leftContactDiameter = -leftContactDiameter;
    }

    *v81.i64 = floor(leftContactDiameter + 0.5);
    v97 = (leftContactDiameter - *v81.i64) * 1.84467441e19;
    *v82.i64 = *v81.i64 - trunc(*v81.i64 * 5.42101086e-20) * 1.84467441e19;
    v98.f64[0] = NAN;
    v98.f64[1] = NAN;
    v81 = vbslq_s8(vnegq_f64(v98), v82, v81);
    v95 = 2654435761u * *v81.i64;
    if (v97 >= 0.0)
    {
      if (v97 > 0.0)
      {
        v95 += v97;
      }
    }

    else
    {
      v95 -= fabs(v97);
    }
  }

  else
  {
    v95 = 0;
  }

  if ((*&v83 & 0x8000) != 0)
  {
    rightContactDiameter = self->_rightContactDiameter;
    if (rightContactDiameter < 0.0)
    {
      rightContactDiameter = -rightContactDiameter;
    }

    *v81.i64 = floor(rightContactDiameter + 0.5);
    v101 = (rightContactDiameter - *v81.i64) * 1.84467441e19;
    *v82.i64 = *v81.i64 - trunc(*v81.i64 * 5.42101086e-20) * 1.84467441e19;
    v102.f64[0] = NAN;
    v102.f64[1] = NAN;
    v99 = 2654435761u * *vbslq_s8(vnegq_f64(v102), v82, v81).i64;
    if (v101 >= 0.0)
    {
      if (v101 > 0.0)
      {
        v99 += v101;
      }
    }

    else
    {
      v99 -= fabs(v101);
    }
  }

  else
  {
    v99 = 0;
  }

  v103 = v114 ^ v115 ^ v109 ^ v110 ^ v111 ^ v112 ^ v85 ^ v27 ^ v31 ^ v113 ^ v39 ^ v43 ^ v47 ^ v51 ^ v55 ^ v59 ^ v89 ^ v67 ^ v90 ^ v106 ^ v80 ^ v84;
  v104 = v91 ^ v95 ^ v99 ^ [(NSString *)self->_brand hash];
  return v103 ^ v104 ^ [(HDCodableVerifiableData *)self->_verifiableData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 26);
  v11 = fromCopy;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableVisionSample *)self setSample:?];
  }

  fromCopy = v11;
LABEL_7:
  v7 = *(fromCopy + 56);
  if ((v7 & 0x800) != 0)
  {
    self->_prescriptionType = *(fromCopy + 12);
    *&self->_has |= 0x800u;
    v7 = *(fromCopy + 56);
    if ((v7 & 0x200) == 0)
    {
LABEL_9:
      if ((v7 & 0x200000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_41;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_9;
  }

  self->_leftSphere = *(fromCopy + 10);
  *&self->_has |= 0x200u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x200000) == 0)
  {
LABEL_10:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_rightSphere = *(fromCopy + 22);
  *&self->_has |= 0x200000u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x10) == 0)
  {
LABEL_11:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_leftCylinder = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x10000) == 0)
  {
LABEL_12:
    if ((v7 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_rightCylinder = *(fromCopy + 17);
  *&self->_has |= 0x10000u;
  v7 = *(fromCopy + 56);
  if ((v7 & 2) == 0)
  {
LABEL_13:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_leftAxis = *(fromCopy + 2);
  *&self->_has |= 2u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x2000) == 0)
  {
LABEL_14:
    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_rightAxis = *(fromCopy + 14);
  *&self->_has |= 0x2000u;
  v7 = *(fromCopy + 56);
  if ((v7 & 1) == 0)
  {
LABEL_15:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_leftAddPower = *(fromCopy + 1);
  *&self->_has |= 1u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x1000) == 0)
  {
LABEL_16:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_rightAddPower = *(fromCopy + 13);
  *&self->_has |= 0x1000u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x400) == 0)
  {
LABEL_17:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_leftVertexDistance = *(fromCopy + 11);
  *&self->_has |= 0x400u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x400000) == 0)
  {
LABEL_18:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_rightVertexDistance = *(fromCopy + 23);
  *&self->_has |= 0x400000u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x80) == 0)
  {
LABEL_19:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_leftPrismAmount = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x80000) == 0)
  {
LABEL_20:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_rightPrismAmount = *(fromCopy + 20);
  *&self->_has |= 0x80000u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x100) == 0)
  {
LABEL_21:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_leftPrismAngle = *(fromCopy + 9);
  *&self->_has |= 0x100u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x100000) == 0)
  {
LABEL_22:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_rightPrismAngle = *(fromCopy + 21);
  *&self->_has |= 0x100000u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x20) == 0)
  {
LABEL_23:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_leftFarPupillaryDistance = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x20000) == 0)
  {
LABEL_24:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_rightFarPupillaryDistance = *(fromCopy + 18);
  *&self->_has |= 0x20000u;
  v7 = *(fromCopy + 56);
  if ((v7 & 0x40) == 0)
  {
LABEL_25:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_56:
  self->_leftNearPupillaryDistance = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 56) & 0x40000) != 0)
  {
LABEL_26:
    self->_rightNearPupillaryDistance = *(fromCopy + 19);
    *&self->_has |= 0x40000u;
  }

LABEL_27:
  if (*(fromCopy + 25))
  {
    [(HDCodableVisionSample *)self setGlassesDescription:?];
    fromCopy = v11;
  }

  v8 = *(fromCopy + 56);
  if ((v8 & 4) != 0)
  {
    self->_leftBaseCurve = *(fromCopy + 3);
    *&self->_has |= 4u;
    v8 = *(fromCopy + 56);
    if ((v8 & 0x4000) == 0)
    {
LABEL_31:
      if ((v8 & 8) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_60;
    }
  }

  else if ((v8 & 0x4000) == 0)
  {
    goto LABEL_31;
  }

  self->_rightBaseCurve = *(fromCopy + 15);
  *&self->_has |= 0x4000u;
  v8 = *(fromCopy + 56);
  if ((v8 & 8) == 0)
  {
LABEL_32:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_60:
  self->_leftContactDiameter = *(fromCopy + 4);
  *&self->_has |= 8u;
  if ((*(fromCopy + 56) & 0x8000) != 0)
  {
LABEL_33:
    self->_rightContactDiameter = *(fromCopy + 16);
    *&self->_has |= 0x8000u;
  }

LABEL_34:
  if (*(fromCopy + 24))
  {
    [(HDCodableVisionSample *)self setBrand:?];
    fromCopy = v11;
  }

  verifiableData = self->_verifiableData;
  v10 = *(fromCopy + 27);
  if (verifiableData)
  {
    if (v10)
    {
      [(HDCodableVerifiableData *)verifiableData mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(HDCodableVisionSample *)self setVerifiableData:?];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sample = [(HDCodableVisionSample *)self sample];
    v6 = [sample applyToObject:objectCopy];

    if (v6)
    {
      prescriptionType = [(HDCodableVisionSample *)self prescriptionType];
      [objectCopy _setPrescriptionType:prescriptionType];
      if ([(HDCodableVisionSample *)self hasLeftSphere])
      {
        v8 = MEMORY[0x277CCD7E8];
        diopterUnit = [MEMORY[0x277CCDAB0] diopterUnit];
        [(HDCodableVisionSample *)self leftSphere];
        v10 = [v8 quantityWithUnit:diopterUnit doubleValue:?];
      }

      else
      {
        v10 = 0;
      }

      if ([(HDCodableVisionSample *)self hasRightSphere])
      {
        v12 = MEMORY[0x277CCD7E8];
        diopterUnit2 = [MEMORY[0x277CCDAB0] diopterUnit];
        [(HDCodableVisionSample *)self rightSphere];
        v14 = [v12 quantityWithUnit:diopterUnit2 doubleValue:?];
      }

      else
      {
        v14 = 0;
      }

      if ([(HDCodableVisionSample *)self hasLeftCylinder])
      {
        v15 = MEMORY[0x277CCD7E8];
        diopterUnit3 = [MEMORY[0x277CCDAB0] diopterUnit];
        [(HDCodableVisionSample *)self leftCylinder];
        v90 = [v15 quantityWithUnit:diopterUnit3 doubleValue:?];
      }

      else
      {
        v90 = 0;
      }

      if ([(HDCodableVisionSample *)self hasRightCylinder])
      {
        v17 = MEMORY[0x277CCD7E8];
        diopterUnit4 = [MEMORY[0x277CCDAB0] diopterUnit];
        [(HDCodableVisionSample *)self rightCylinder];
        v89 = [v17 quantityWithUnit:diopterUnit4 doubleValue:?];
      }

      else
      {
        v89 = 0;
      }

      if ([(HDCodableVisionSample *)self hasLeftAxis])
      {
        v19 = MEMORY[0x277CCD7E8];
        radianAngleUnit = [MEMORY[0x277CCDAB0] radianAngleUnit];
        [(HDCodableVisionSample *)self leftAxis];
        v88 = [v19 quantityWithUnit:radianAngleUnit doubleValue:?];
      }

      else
      {
        v88 = 0;
      }

      if ([(HDCodableVisionSample *)self hasRightAxis])
      {
        v21 = MEMORY[0x277CCD7E8];
        radianAngleUnit2 = [MEMORY[0x277CCDAB0] radianAngleUnit];
        [(HDCodableVisionSample *)self rightAxis];
        v23 = [v21 quantityWithUnit:radianAngleUnit2 doubleValue:?];
      }

      else
      {
        v23 = 0;
      }

      if ([(HDCodableVisionSample *)self hasLeftAddPower])
      {
        v24 = MEMORY[0x277CCD7E8];
        diopterUnit5 = [MEMORY[0x277CCDAB0] diopterUnit];
        [(HDCodableVisionSample *)self leftAddPower];
        v26 = [v24 quantityWithUnit:diopterUnit5 doubleValue:?];
      }

      else
      {
        v26 = 0;
      }

      if ([(HDCodableVisionSample *)self hasRightAddPower])
      {
        v27 = MEMORY[0x277CCD7E8];
        diopterUnit6 = [MEMORY[0x277CCDAB0] diopterUnit];
        [(HDCodableVisionSample *)self rightAddPower];
        v29 = [v27 quantityWithUnit:diopterUnit6 doubleValue:?];
      }

      else
      {
        v29 = 0;
      }

      if (!(v10 | v14))
      {
        goto LABEL_88;
      }

      if (prescriptionType == 2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = objectCopy;
          if ([(HDCodableVisionSample *)self hasLeftBaseCurve])
          {
            v34 = MEMORY[0x277CCD7E8];
            meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
            [(HDCodableVisionSample *)self leftBaseCurve];
            v83 = [v34 quantityWithUnit:meterUnit doubleValue:?];
          }

          else
          {
            v83 = 0;
          }

          if ([(HDCodableVisionSample *)self hasRightBaseCurve])
          {
            v62 = MEMORY[0x277CCD7E8];
            meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
            [(HDCodableVisionSample *)self rightBaseCurve];
            v87 = [v62 quantityWithUnit:meterUnit2 doubleValue:?];
          }

          else
          {
            v87 = 0;
          }

          if ([(HDCodableVisionSample *)self hasLeftContactDiameter])
          {
            v64 = MEMORY[0x277CCD7E8];
            meterUnit3 = [MEMORY[0x277CCDAB0] meterUnit];
            [(HDCodableVisionSample *)self leftContactDiameter];
            v86 = [v64 quantityWithUnit:meterUnit3 doubleValue:?];
          }

          else
          {
            v86 = 0;
          }

          if ([(HDCodableVisionSample *)self hasRightContactDiameter])
          {
            v66 = MEMORY[0x277CCD7E8];
            meterUnit4 = [MEMORY[0x277CCDAB0] meterUnit];
            [(HDCodableVisionSample *)self rightContactDiameter];
            v85 = [v66 quantityWithUnit:meterUnit4 doubleValue:?];
          }

          else
          {
            v85 = 0;
          }

          if (v10)
          {
            v68 = [objc_alloc(MEMORY[0x277CCD210]) initWithSphere:v10 cylinder:v90 axis:v88 addPower:v26 baseCurve:v83 diameter:v86];
            [v33 _setLeftEyeSpecification:v68];
          }

          if (v14)
          {
            v69 = [objc_alloc(MEMORY[0x277CCD210]) initWithSphere:v14 cylinder:v89 axis:v23 addPower:v29 baseCurve:v87 diameter:v85];
            [v33 _setRightEyeSpecification:v69];
          }

          brand = [(HDCodableVisionSample *)self brand];
          [v33 _setBrand:brand];
          v32 = v83;
          goto LABEL_87;
        }
      }

      else
      {
        if (prescriptionType != 1)
        {
LABEL_88:
          v11 = 1;
          goto LABEL_89;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v82 = objectCopy;
          if ([(HDCodableVisionSample *)self hasLeftVertexDistance])
          {
            v30 = MEMORY[0x277CCD7E8];
            meterUnit5 = [MEMORY[0x277CCDAB0] meterUnit];
            [(HDCodableVisionSample *)self leftVertexDistance];
            v32 = [v30 quantityWithUnit:meterUnit5 doubleValue:?];
          }

          else
          {
            v32 = 0;
          }

          if ([(HDCodableVisionSample *)self hasRightVertexDistance])
          {
            v36 = MEMORY[0x277CCD7E8];
            meterUnit6 = [MEMORY[0x277CCDAB0] meterUnit];
            [(HDCodableVisionSample *)self rightVertexDistance];
            v87 = [v36 quantityWithUnit:meterUnit6 doubleValue:?];
          }

          else
          {
            v87 = 0;
          }

          if ([(HDCodableVisionSample *)self hasLeftFarPupillaryDistance])
          {
            v38 = MEMORY[0x277CCD7E8];
            meterUnit7 = [MEMORY[0x277CCDAB0] meterUnit];
            [(HDCodableVisionSample *)self leftFarPupillaryDistance];
            v86 = [v38 quantityWithUnit:meterUnit7 doubleValue:?];
          }

          else
          {
            v86 = 0;
          }

          if ([(HDCodableVisionSample *)self hasRightFarPupillaryDistance])
          {
            v40 = MEMORY[0x277CCD7E8];
            meterUnit8 = [MEMORY[0x277CCDAB0] meterUnit];
            [(HDCodableVisionSample *)self rightFarPupillaryDistance];
            v85 = [v40 quantityWithUnit:meterUnit8 doubleValue:?];
          }

          else
          {
            v85 = 0;
          }

          if ([(HDCodableVisionSample *)self hasLeftNearPupillaryDistance])
          {
            v42 = MEMORY[0x277CCD7E8];
            meterUnit9 = [MEMORY[0x277CCDAB0] meterUnit];
            [(HDCodableVisionSample *)self leftNearPupillaryDistance];
            v81 = [v42 quantityWithUnit:meterUnit9 doubleValue:?];
          }

          else
          {
            v81 = 0;
          }

          if ([(HDCodableVisionSample *)self hasRightNearPupillaryDistance])
          {
            v44 = MEMORY[0x277CCD7E8];
            meterUnit10 = [MEMORY[0x277CCDAB0] meterUnit];
            [(HDCodableVisionSample *)self rightNearPupillaryDistance];
            v80 = [v44 quantityWithUnit:meterUnit10 doubleValue:?];
          }

          else
          {
            v80 = 0;
          }

          v84 = v32;
          if ([(HDCodableVisionSample *)self hasLeftPrismAmount]&& [(HDCodableVisionSample *)self hasLeftPrismAngle])
          {
            v78 = objc_alloc(MEMORY[0x277CCDBD0]);
            v46 = MEMORY[0x277CCD7E8];
            prismDiopterUnit = [MEMORY[0x277CCDAB0] prismDiopterUnit];
            [(HDCodableVisionSample *)self leftPrismAmount];
            v47 = [v46 quantityWithUnit:prismDiopterUnit doubleValue:?];
            v48 = MEMORY[0x277CCD7E8];
            radianAngleUnit3 = [MEMORY[0x277CCDAB0] radianAngleUnit];
            [(HDCodableVisionSample *)self leftPrismAngle];
            v50 = [v48 quantityWithUnit:radianAngleUnit3 doubleValue:?];
            v79 = [v78 initWithAmount:v47 angle:v50 eye:1];

            v32 = v84;
          }

          else
          {
            v79 = 0;
          }

          if ([(HDCodableVisionSample *)self hasRightPrismAmount]&& [(HDCodableVisionSample *)self hasRightPrismAngle])
          {
            v76 = objc_alloc(MEMORY[0x277CCDBD0]);
            v51 = MEMORY[0x277CCD7E8];
            prismDiopterUnit2 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
            [(HDCodableVisionSample *)self rightPrismAmount];
            v52 = [v51 quantityWithUnit:prismDiopterUnit2 doubleValue:?];
            v53 = MEMORY[0x277CCD7E8];
            radianAngleUnit4 = [MEMORY[0x277CCDAB0] radianAngleUnit];
            [(HDCodableVisionSample *)self rightPrismAngle];
            v55 = [v53 quantityWithUnit:radianAngleUnit4 doubleValue:?];
            v77 = [v76 initWithAmount:v52 angle:v55 eye:2];

            v32 = v84;
          }

          else
          {
            v77 = 0;
          }

          if (v10)
          {
            v56 = [objc_alloc(MEMORY[0x277CCD480]) initWithSphere:v10 cylinder:v90 axis:v88 addPower:v26 vertexDistance:v32 prism:v79 farPupillaryDistance:v86 nearPupillaryDistance:v81];
            [v82 _setLeftEyeSpecification:v56];
          }

          if (v14)
          {
            v57 = [objc_alloc(MEMORY[0x277CCD480]) initWithSphere:v14 cylinder:v89 axis:v23 addPower:v29 vertexDistance:v87 prism:v77 farPupillaryDistance:v85 nearPupillaryDistance:v80];
            [v82 _setRightEyeSpecification:v57];
          }

          if ([(HDCodableVisionSample *)self hasGlassesDescription])
          {
            metadata = [v82 metadata];
            v59 = [metadata mutableCopy];
            v60 = v59;
            if (v59)
            {
              v61 = v59;
            }

            else
            {
              v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
            }

            v71 = v61;

            glassesDescription = [(HDCodableVisionSample *)self glassesDescription];
            [v71 setObject:glassesDescription forKeyedSubscript:*MEMORY[0x277CCC4A8]];

            [v82 _setMetadata:v71];
            v32 = v84;
          }

          brand = v81;
LABEL_87:

          goto LABEL_88;
        }
      }

      v11 = 0;
LABEL_89:

      goto LABEL_90;
    }
  }

  v11 = 0;
LABEL_90:

  return v11;
}

@end