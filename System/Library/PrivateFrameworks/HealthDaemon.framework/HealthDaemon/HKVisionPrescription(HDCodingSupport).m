@interface HKVisionPrescription(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableVisionSample)codableRepresentationForSync;
@end

@implementation HKVisionPrescription(HDCodingSupport)

- (HDCodableVisionSample)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableVisionSample);
  v113.receiver = a1;
  v113.super_class = &off_283D45840;
  v3 = objc_msgSendSuper2(&v113, sel_codableRepresentationForSync);
  [(HDCodableVisionSample *)v2 setSample:v3];

  -[HDCodableVisionSample setPrescriptionType:](v2, "setPrescriptionType:", [a1 prescriptionType]);
  v4 = [a1 leftSphere];
  if (v4)
  {
  }

  else
  {
    v5 = [a1 rightSphere];

    if (!v5)
    {
      goto LABEL_56;
    }
  }

  v6 = [a1 leftSphere];

  if (v6)
  {
    v7 = [a1 leftSphere];
    v8 = [MEMORY[0x277CCDAB0] diopterUnit];
    [v7 doubleValueForUnit:v8];
    [(HDCodableVisionSample *)v2 setLeftSphere:?];
  }

  v9 = [a1 rightSphere];

  if (v9)
  {
    v10 = [a1 rightSphere];
    v11 = [MEMORY[0x277CCDAB0] diopterUnit];
    [v10 doubleValueForUnit:v11];
    [(HDCodableVisionSample *)v2 setRightSphere:?];
  }

  v12 = [a1 leftCylinder];

  if (v12)
  {
    v13 = [a1 leftCylinder];
    v14 = [MEMORY[0x277CCDAB0] diopterUnit];
    [v13 doubleValueForUnit:v14];
    [(HDCodableVisionSample *)v2 setLeftCylinder:?];
  }

  v15 = [a1 rightCylinder];

  if (v15)
  {
    v16 = [a1 rightCylinder];
    v17 = [MEMORY[0x277CCDAB0] diopterUnit];
    [v16 doubleValueForUnit:v17];
    [(HDCodableVisionSample *)v2 setRightCylinder:?];
  }

  v18 = [a1 leftAxis];

  if (v18)
  {
    v19 = [a1 leftAxis];
    v20 = [MEMORY[0x277CCDAB0] radianAngleUnit];
    [v19 doubleValueForUnit:v20];
    [(HDCodableVisionSample *)v2 setLeftAxis:?];
  }

  v21 = [a1 rightAxis];

  if (v21)
  {
    v22 = [a1 rightAxis];
    v23 = [MEMORY[0x277CCDAB0] radianAngleUnit];
    [v22 doubleValueForUnit:v23];
    [(HDCodableVisionSample *)v2 setRightAxis:?];
  }

  v24 = [a1 leftAddPower];

  if (v24)
  {
    v25 = [a1 leftAddPower];
    v26 = [MEMORY[0x277CCDAB0] diopterUnit];
    [v25 doubleValueForUnit:v26];
    [(HDCodableVisionSample *)v2 setLeftAddPower:?];
  }

  v27 = [a1 rightAddPower];

  if (v27)
  {
    v28 = [a1 rightAddPower];
    v29 = [MEMORY[0x277CCDAB0] diopterUnit];
    [v28 doubleValueForUnit:v29];
    [(HDCodableVisionSample *)v2 setRightAddPower:?];
  }

  v30 = [(HDCodableVisionSample *)v2 prescriptionType];
  if (v30 == 2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_56;
    }

    v90 = a1;
    v91 = [v90 leftEye];
    v92 = [v91 baseCurve];

    if (v92)
    {
      v93 = [v90 leftEye];
      v94 = [v93 baseCurve];
      v95 = [MEMORY[0x277CCDAB0] meterUnit];
      [v94 doubleValueForUnit:v95];
      [(HDCodableVisionSample *)v2 setLeftBaseCurve:?];
    }

    v96 = [v90 rightEye];
    v97 = [v96 baseCurve];

    if (v97)
    {
      v98 = [v90 rightEye];
      v99 = [v98 baseCurve];
      v100 = [MEMORY[0x277CCDAB0] meterUnit];
      [v99 doubleValueForUnit:v100];
      [(HDCodableVisionSample *)v2 setRightBaseCurve:?];
    }

    v101 = [v90 leftEye];
    v102 = [v101 diameter];

    if (v102)
    {
      v103 = [v90 leftEye];
      v104 = [v103 diameter];
      v105 = [MEMORY[0x277CCDAB0] meterUnit];
      [v104 doubleValueForUnit:v105];
      [(HDCodableVisionSample *)v2 setLeftContactDiameter:?];
    }

    v106 = [v90 rightEye];
    v107 = [v106 diameter];

    if (v107)
    {
      v108 = [v90 rightEye];
      v109 = [v108 diameter];
      v110 = [MEMORY[0x277CCDAB0] meterUnit];
      [v109 doubleValueForUnit:v110];
      [(HDCodableVisionSample *)v2 setRightContactDiameter:?];
    }

    v111 = [v90 brand];

    if (!v111)
    {
      goto LABEL_55;
    }

    v87 = [v90 brand];
    [(HDCodableVisionSample *)v2 setBrand:v87];
    goto LABEL_54;
  }

  if (v30 == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = a1;
      v32 = [v31 leftEye];
      v33 = [v32 vertexDistance];

      if (v33)
      {
        v34 = [v31 leftEye];
        v35 = [v34 vertexDistance];
        v36 = [MEMORY[0x277CCDAB0] meterUnit];
        [v35 doubleValueForUnit:v36];
        [(HDCodableVisionSample *)v2 setLeftVertexDistance:?];
      }

      v37 = [v31 rightEye];
      v38 = [v37 vertexDistance];

      if (v38)
      {
        v39 = [v31 rightEye];
        v40 = [v39 vertexDistance];
        v41 = [MEMORY[0x277CCDAB0] meterUnit];
        [v40 doubleValueForUnit:v41];
        [(HDCodableVisionSample *)v2 setRightVertexDistance:?];
      }

      v42 = [v31 leftEye];
      v43 = [v42 prism];
      v44 = [v43 amount];

      if (v44)
      {
        v45 = [v31 leftEye];
        v46 = [v45 prism];
        v47 = [v46 amount];
        v48 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
        [v47 doubleValueForUnit:v48];
        [(HDCodableVisionSample *)v2 setLeftPrismAmount:?];
      }

      v49 = [v31 rightEye];
      v50 = [v49 prism];
      v51 = [v50 amount];

      if (v51)
      {
        v52 = [v31 rightEye];
        v53 = [v52 prism];
        v54 = [v53 amount];
        v55 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
        [v54 doubleValueForUnit:v55];
        [(HDCodableVisionSample *)v2 setRightPrismAmount:?];
      }

      v56 = [v31 leftEye];
      v57 = [v56 prism];
      v58 = [v57 angle];

      if (v58)
      {
        v59 = [v31 leftEye];
        v60 = [v59 prism];
        v61 = [v60 angle];
        v62 = [MEMORY[0x277CCDAB0] radianAngleUnit];
        [v61 doubleValueForUnit:v62];
        [(HDCodableVisionSample *)v2 setLeftPrismAngle:?];
      }

      v63 = [v31 rightEye];
      v64 = [v63 prism];
      v65 = [v64 angle];

      if (v65)
      {
        v66 = [v31 rightEye];
        v67 = [v66 prism];
        v68 = [v67 angle];
        v69 = [MEMORY[0x277CCDAB0] radianAngleUnit];
        [v68 doubleValueForUnit:v69];
        [(HDCodableVisionSample *)v2 setRightPrismAngle:?];
      }

      v70 = [v31 leftEye];
      v71 = [v70 farPupillaryDistance];

      if (v71)
      {
        v72 = [v31 leftEye];
        v73 = [v72 farPupillaryDistance];
        v74 = [MEMORY[0x277CCDAB0] meterUnit];
        [v73 doubleValueForUnit:v74];
        [(HDCodableVisionSample *)v2 setLeftFarPupillaryDistance:?];
      }

      v75 = [v31 rightEye];
      v76 = [v75 farPupillaryDistance];

      if (v76)
      {
        v77 = [v31 rightEye];
        v78 = [v77 farPupillaryDistance];
        v79 = [MEMORY[0x277CCDAB0] meterUnit];
        [v78 doubleValueForUnit:v79];
        [(HDCodableVisionSample *)v2 setRightFarPupillaryDistance:?];
      }

      v80 = [v31 leftEye];
      v81 = [v80 nearPupillaryDistance];

      if (v81)
      {
        v82 = [v31 leftEye];
        v83 = [v82 nearPupillaryDistance];
        v84 = [MEMORY[0x277CCDAB0] meterUnit];
        [v83 doubleValueForUnit:v84];
        [(HDCodableVisionSample *)v2 setLeftNearPupillaryDistance:?];
      }

      v85 = [v31 rightEye];
      v86 = [v85 nearPupillaryDistance];

      if (!v86)
      {
        goto LABEL_55;
      }

      v87 = [v31 rightEye];
      v88 = [v87 nearPupillaryDistance];
      v89 = [MEMORY[0x277CCDAB0] meterUnit];
      [v88 doubleValueForUnit:v89];
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
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addVisionSamples:v5];
  }

  return v5 != 0;
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
    v11 = a1;
LABEL_11:
    v12 = [[v11 alloc] _init];
    if ([v6 applyToObject:v12])
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v10 = [v6 prescriptionType];
  if (v10 == 2)
  {
    v12 = [objc_alloc(MEMORY[0x277CCD218]) _init];
    if ([v6 applyToObject:v12])
    {
LABEL_12:
      v13 = [v12 _validateWithConfiguration:{v7, v9}];
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v12;
      }

      v3 = v14;

      goto LABEL_16;
    }

LABEL_9:
    v3 = 0;
LABEL_16:

    goto LABEL_17;
  }

  if (v10 == 1)
  {
    v11 = MEMORY[0x277CCD488];
    goto LABEL_11;
  }

LABEL_17:

LABEL_18:

  return v3;
}

@end