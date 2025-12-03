@interface HKVisionPrescription(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableVisionSample)codableRepresentationForSync;
@end

@implementation HKVisionPrescription(HDCodingSupport)

- (HDCodableVisionSample)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableVisionSample);
  v113.receiver = self;
  v113.super_class = &off_283D45840;
  v3 = objc_msgSendSuper2(&v113, sel_codableRepresentationForSync);
  [(HDCodableVisionSample *)v2 setSample:v3];

  -[HDCodableVisionSample setPrescriptionType:](v2, "setPrescriptionType:", [self prescriptionType]);
  leftSphere = [self leftSphere];
  if (leftSphere)
  {
  }

  else
  {
    rightSphere = [self rightSphere];

    if (!rightSphere)
    {
      goto LABEL_56;
    }
  }

  leftSphere2 = [self leftSphere];

  if (leftSphere2)
  {
    leftSphere3 = [self leftSphere];
    diopterUnit = [MEMORY[0x277CCDAB0] diopterUnit];
    [leftSphere3 doubleValueForUnit:diopterUnit];
    [(HDCodableVisionSample *)v2 setLeftSphere:?];
  }

  rightSphere2 = [self rightSphere];

  if (rightSphere2)
  {
    rightSphere3 = [self rightSphere];
    diopterUnit2 = [MEMORY[0x277CCDAB0] diopterUnit];
    [rightSphere3 doubleValueForUnit:diopterUnit2];
    [(HDCodableVisionSample *)v2 setRightSphere:?];
  }

  leftCylinder = [self leftCylinder];

  if (leftCylinder)
  {
    leftCylinder2 = [self leftCylinder];
    diopterUnit3 = [MEMORY[0x277CCDAB0] diopterUnit];
    [leftCylinder2 doubleValueForUnit:diopterUnit3];
    [(HDCodableVisionSample *)v2 setLeftCylinder:?];
  }

  rightCylinder = [self rightCylinder];

  if (rightCylinder)
  {
    rightCylinder2 = [self rightCylinder];
    diopterUnit4 = [MEMORY[0x277CCDAB0] diopterUnit];
    [rightCylinder2 doubleValueForUnit:diopterUnit4];
    [(HDCodableVisionSample *)v2 setRightCylinder:?];
  }

  leftAxis = [self leftAxis];

  if (leftAxis)
  {
    leftAxis2 = [self leftAxis];
    radianAngleUnit = [MEMORY[0x277CCDAB0] radianAngleUnit];
    [leftAxis2 doubleValueForUnit:radianAngleUnit];
    [(HDCodableVisionSample *)v2 setLeftAxis:?];
  }

  rightAxis = [self rightAxis];

  if (rightAxis)
  {
    rightAxis2 = [self rightAxis];
    radianAngleUnit2 = [MEMORY[0x277CCDAB0] radianAngleUnit];
    [rightAxis2 doubleValueForUnit:radianAngleUnit2];
    [(HDCodableVisionSample *)v2 setRightAxis:?];
  }

  leftAddPower = [self leftAddPower];

  if (leftAddPower)
  {
    leftAddPower2 = [self leftAddPower];
    diopterUnit5 = [MEMORY[0x277CCDAB0] diopterUnit];
    [leftAddPower2 doubleValueForUnit:diopterUnit5];
    [(HDCodableVisionSample *)v2 setLeftAddPower:?];
  }

  rightAddPower = [self rightAddPower];

  if (rightAddPower)
  {
    rightAddPower2 = [self rightAddPower];
    diopterUnit6 = [MEMORY[0x277CCDAB0] diopterUnit];
    [rightAddPower2 doubleValueForUnit:diopterUnit6];
    [(HDCodableVisionSample *)v2 setRightAddPower:?];
  }

  prescriptionType = [(HDCodableVisionSample *)v2 prescriptionType];
  if (prescriptionType == 2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_56;
    }

    selfCopy = self;
    leftEye = [selfCopy leftEye];
    baseCurve = [leftEye baseCurve];

    if (baseCurve)
    {
      leftEye2 = [selfCopy leftEye];
      baseCurve2 = [leftEye2 baseCurve];
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      [baseCurve2 doubleValueForUnit:meterUnit];
      [(HDCodableVisionSample *)v2 setLeftBaseCurve:?];
    }

    rightEye = [selfCopy rightEye];
    baseCurve3 = [rightEye baseCurve];

    if (baseCurve3)
    {
      rightEye2 = [selfCopy rightEye];
      baseCurve4 = [rightEye2 baseCurve];
      meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
      [baseCurve4 doubleValueForUnit:meterUnit2];
      [(HDCodableVisionSample *)v2 setRightBaseCurve:?];
    }

    leftEye3 = [selfCopy leftEye];
    diameter = [leftEye3 diameter];

    if (diameter)
    {
      leftEye4 = [selfCopy leftEye];
      diameter2 = [leftEye4 diameter];
      meterUnit3 = [MEMORY[0x277CCDAB0] meterUnit];
      [diameter2 doubleValueForUnit:meterUnit3];
      [(HDCodableVisionSample *)v2 setLeftContactDiameter:?];
    }

    rightEye3 = [selfCopy rightEye];
    diameter3 = [rightEye3 diameter];

    if (diameter3)
    {
      rightEye4 = [selfCopy rightEye];
      diameter4 = [rightEye4 diameter];
      meterUnit4 = [MEMORY[0x277CCDAB0] meterUnit];
      [diameter4 doubleValueForUnit:meterUnit4];
      [(HDCodableVisionSample *)v2 setRightContactDiameter:?];
    }

    brand = [selfCopy brand];

    if (!brand)
    {
      goto LABEL_55;
    }

    brand2 = [selfCopy brand];
    [(HDCodableVisionSample *)v2 setBrand:brand2];
    goto LABEL_54;
  }

  if (prescriptionType == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy2 = self;
      leftEye5 = [selfCopy2 leftEye];
      vertexDistance = [leftEye5 vertexDistance];

      if (vertexDistance)
      {
        leftEye6 = [selfCopy2 leftEye];
        vertexDistance2 = [leftEye6 vertexDistance];
        meterUnit5 = [MEMORY[0x277CCDAB0] meterUnit];
        [vertexDistance2 doubleValueForUnit:meterUnit5];
        [(HDCodableVisionSample *)v2 setLeftVertexDistance:?];
      }

      rightEye5 = [selfCopy2 rightEye];
      vertexDistance3 = [rightEye5 vertexDistance];

      if (vertexDistance3)
      {
        rightEye6 = [selfCopy2 rightEye];
        vertexDistance4 = [rightEye6 vertexDistance];
        meterUnit6 = [MEMORY[0x277CCDAB0] meterUnit];
        [vertexDistance4 doubleValueForUnit:meterUnit6];
        [(HDCodableVisionSample *)v2 setRightVertexDistance:?];
      }

      leftEye7 = [selfCopy2 leftEye];
      prism = [leftEye7 prism];
      amount = [prism amount];

      if (amount)
      {
        leftEye8 = [selfCopy2 leftEye];
        prism2 = [leftEye8 prism];
        amount2 = [prism2 amount];
        prismDiopterUnit = [MEMORY[0x277CCDAB0] prismDiopterUnit];
        [amount2 doubleValueForUnit:prismDiopterUnit];
        [(HDCodableVisionSample *)v2 setLeftPrismAmount:?];
      }

      rightEye7 = [selfCopy2 rightEye];
      prism3 = [rightEye7 prism];
      amount3 = [prism3 amount];

      if (amount3)
      {
        rightEye8 = [selfCopy2 rightEye];
        prism4 = [rightEye8 prism];
        amount4 = [prism4 amount];
        prismDiopterUnit2 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
        [amount4 doubleValueForUnit:prismDiopterUnit2];
        [(HDCodableVisionSample *)v2 setRightPrismAmount:?];
      }

      leftEye9 = [selfCopy2 leftEye];
      prism5 = [leftEye9 prism];
      angle = [prism5 angle];

      if (angle)
      {
        leftEye10 = [selfCopy2 leftEye];
        prism6 = [leftEye10 prism];
        angle2 = [prism6 angle];
        radianAngleUnit3 = [MEMORY[0x277CCDAB0] radianAngleUnit];
        [angle2 doubleValueForUnit:radianAngleUnit3];
        [(HDCodableVisionSample *)v2 setLeftPrismAngle:?];
      }

      rightEye9 = [selfCopy2 rightEye];
      prism7 = [rightEye9 prism];
      angle3 = [prism7 angle];

      if (angle3)
      {
        rightEye10 = [selfCopy2 rightEye];
        prism8 = [rightEye10 prism];
        angle4 = [prism8 angle];
        radianAngleUnit4 = [MEMORY[0x277CCDAB0] radianAngleUnit];
        [angle4 doubleValueForUnit:radianAngleUnit4];
        [(HDCodableVisionSample *)v2 setRightPrismAngle:?];
      }

      leftEye11 = [selfCopy2 leftEye];
      farPupillaryDistance = [leftEye11 farPupillaryDistance];

      if (farPupillaryDistance)
      {
        leftEye12 = [selfCopy2 leftEye];
        farPupillaryDistance2 = [leftEye12 farPupillaryDistance];
        meterUnit7 = [MEMORY[0x277CCDAB0] meterUnit];
        [farPupillaryDistance2 doubleValueForUnit:meterUnit7];
        [(HDCodableVisionSample *)v2 setLeftFarPupillaryDistance:?];
      }

      rightEye11 = [selfCopy2 rightEye];
      farPupillaryDistance3 = [rightEye11 farPupillaryDistance];

      if (farPupillaryDistance3)
      {
        rightEye12 = [selfCopy2 rightEye];
        farPupillaryDistance4 = [rightEye12 farPupillaryDistance];
        meterUnit8 = [MEMORY[0x277CCDAB0] meterUnit];
        [farPupillaryDistance4 doubleValueForUnit:meterUnit8];
        [(HDCodableVisionSample *)v2 setRightFarPupillaryDistance:?];
      }

      leftEye13 = [selfCopy2 leftEye];
      nearPupillaryDistance = [leftEye13 nearPupillaryDistance];

      if (nearPupillaryDistance)
      {
        leftEye14 = [selfCopy2 leftEye];
        nearPupillaryDistance2 = [leftEye14 nearPupillaryDistance];
        meterUnit9 = [MEMORY[0x277CCDAB0] meterUnit];
        [nearPupillaryDistance2 doubleValueForUnit:meterUnit9];
        [(HDCodableVisionSample *)v2 setLeftNearPupillaryDistance:?];
      }

      rightEye13 = [selfCopy2 rightEye];
      nearPupillaryDistance3 = [rightEye13 nearPupillaryDistance];

      if (!nearPupillaryDistance3)
      {
        goto LABEL_55;
      }

      brand2 = [selfCopy2 rightEye];
      nearPupillaryDistance4 = [brand2 nearPupillaryDistance];
      meterUnit10 = [MEMORY[0x277CCDAB0] meterUnit];
      [nearPupillaryDistance4 doubleValueForUnit:meterUnit10];
      [(HDCodableVisionSample *)v2 setRightNearPupillaryDistance:?];

LABEL_54:
LABEL_55:
    }
  }

LABEL_56:

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addVisionSamples:codableRepresentationForSync];
  }

  return codableRepresentationForSync != 0;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = 0;
    goto LABEL_18;
  }

  v6 = v5;
  v7 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
  v9 = v8;
  if (([v6 hasLeftSphere] & 1) == 0 && (objc_msgSend(v6, "hasRightSphere") & 1) == 0)
  {
    selfCopy = self;
LABEL_11:
    _init = [[selfCopy alloc] _init];
    if ([v6 applyToObject:_init])
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  prescriptionType = [v6 prescriptionType];
  if (prescriptionType == 2)
  {
    _init = [objc_alloc(MEMORY[0x277CCD218]) _init];
    if ([v6 applyToObject:_init])
    {
LABEL_12:
      v13 = [_init _validateWithConfiguration:{v7, v9}];
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = _init;
      }

      v3 = v14;

      goto LABEL_16;
    }

LABEL_9:
    v3 = 0;
LABEL_16:

    goto LABEL_17;
  }

  if (prescriptionType == 1)
  {
    selfCopy = MEMORY[0x277CCD488];
    goto LABEL_11;
  }

LABEL_17:

LABEL_18:

  return v3;
}

@end