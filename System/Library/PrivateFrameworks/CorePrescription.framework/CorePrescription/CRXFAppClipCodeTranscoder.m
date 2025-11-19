@interface CRXFAppClipCodeTranscoder
+ (id)sharedInstance;
- (BOOL)encodeAppClipCode:(id)a3 toBytes:(char *)a4 length:(unint64_t)a5 error:(id *)a6;
- (BOOL)encodeAppClipCode:(id)a3 toData:(id)a4 error:(id *)a5;
- (BOOL)encodeAppClipCodeV1:(id)a3 toBuffer:(id)a4 error:(id *)a5;
- (BOOL)encodeAppClipCodeV2:(id)a3 toBuffer:(id)a4 error:(id *)a5;
- (BOOL)encodeAppClipCodeV3:(id)a3 toBuffer:(id)a4 error:(id *)a5;
- (BOOL)encodeAppClipCodeV4:(id)a3 toBuffer:(id)a4 error:(id *)a5;
- (BOOL)encodeAppClipCodeV5:(id)a3 toBuffer:(id)a4 error:(id *)a5;
- (BOOL)encodeAppClipCodeV6:(id)a3 toBuffer:(id)a4 error:(id *)a5;
- (BOOL)getIndexForQuarterDiopterValue:(float)a3 minValue:(float)a4 maxValue:(float)a5 index:(unint64_t *)a6;
- (BOOL)getQuarterDiopterValueForIndex:(unint64_t)a3 minValue:(float)a4 maxValue:(float)a5 value:(float *)a6;
- (BOOL)isACCVersionSupported:(unint64_t)a3;
- (CRXFAppClipCodeTranscoder)init;
- (id)decodeAppClipCodeV1FromBuffer:(id)a3 allowUnsupportedRX:(BOOL)a4 error:(id *)a5;
- (id)decodeAppClipCodeV2FromBuffer:(id)a3 allowUnsupportedRX:(BOOL)a4 error:(id *)a5;
- (id)decodeAppClipCodeV3FromBuffer:(id)a3 allowUnsupportedRX:(BOOL)a4 error:(id *)a5;
- (id)decodeAppClipCodeV4FromBuffer:(id)a3 allowUnsupportedRX:(BOOL)a4 error:(id *)a5;
- (id)decodeAppClipCodeV5FromBuffer:(id)a3 allowUnsupportedRX:(BOOL)a4 error:(id *)a5;
- (id)decodeAppClipCodeV6FromBuffer:(id)a3 allowUnsupportedRX:(BOOL)a4 error:(id *)a5;
- (id)deriveCanonicalPayloadFromPayload:(id)a3;
- (id)derivePayloadWithLensTypeZeroed:(id)a3 ifLensTypeIs:(unint64_t)a4;
- (id)encodeAppClipCodeToHexString:(id)a3 error:(id *)a4;
- (id)errorForStatus:(unint64_t)a3 leftLens:(BOOL)a4;
- (id)generateAppClipCodeWithVersion:(unint64_t)a3 lensType:(unint64_t)a4 haveLeftLens:(BOOL)a5 leftSphere:(float)a6 leftCylinder:(float)a7 leftAxis:(unint64_t)a8 leftAddVR:(float)a9 haveRightLens:(BOOL)a10 rightSphere:(float)a11 rightCylinder:(float)a12 rightAxis:(unint64_t)a13 rightAddVR:(float)a14 identifyingColor:(unint64_t)a15 secret:(id)a16 error:(id *)a17;
- (id)generateAppClipCodeWithVersion:(unint64_t)a3 lensType:(unint64_t)a4 haveLeftLens:(BOOL)a5 leftSphere:(float)a6 leftCylinder:(float)a7 leftAxis:(unint64_t)a8 leftAddVR:(float)a9 leftHorizPrismBaseDirection:(unint64_t)a10 leftHorizPrism:(float)a11 leftVertPrismBaseDirection:(unint64_t)a12 leftVertPrism:(float)a13 haveRightLens:(BOOL)a14 rightSphere:(float)a15 rightCylinder:(float)a16 rightAxis:(unint64_t)a17 rightAddVR:(float)a18 rightHorizPrismBaseDirection:(unint64_t)a19 rightHorizPrism:(float)a20 rightVertPrismBaseDirection:(unint64_t)a21 rightVertPrism:(float)a22 identifyingColor:(unint64_t)a23 secret:(id)a24 error:(id *)a25;
- (id)mergeLeftAppClipCode:(id)a3 withRightAppClipCode:(id)a4 error:(id *)a5;
- (unint64_t)decodeAppClipCodeVersionFromBuffer:(id)a3 error:(id *)a4;
- (unint64_t)decodeCalibrationRXID:(unint64_t *)a3 calibrationSphere:(float *)a4 calibrationCylinder:(float *)a5 calibrationAxis:(unint64_t *)a6 addVR:(float *)a7 clampingStatus:(unint64_t *)a8 displaySphere:(float *)a9 displayCylinder:(float *)a10 displayAxis:(unint64_t *)a11 fromRXID:(unint64_t)a12 RXOffsetID:(unint64_t)a13 cylinderSignFlipped:(BOOL)a14 axisID:(unint64_t)a15 allowUnsupportedRX:(BOOL)a16;
- (unint64_t)encodeSphere:(float)a3 cylinder:(float)a4 axis:(unint64_t)a5 toRXID:(unint64_t *)a6 axisID:(unint64_t *)a7;
- (unint64_t)lookUpRXID:(unint64_t *)a3 forSphereValue:(float)a4 cylinderValue:(float)a5;
- (unint64_t)lookupBestValidRXID:(unint64_t *)a3 andSphere:(float *)a4 matchingCylinder:(float)a5 nearSphere:(float)a6;
- (unint64_t)payloadLengthForAppClipCodeVersion:(unint64_t)a3;
@end

@implementation CRXFAppClipCodeTranscoder

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CRXFAppClipCodeTranscoder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance___once__LINE__ != -1)
  {
    dispatch_once(&sharedInstance___once__LINE__, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __43__CRXFAppClipCodeTranscoder_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (CRXFAppClipCodeTranscoder)init
{
  v6.receiver = self;
  v6.super_class = CRXFAppClipCodeTranscoder;
  v2 = [(CRXFAppClipCodeTranscoder *)&v6 init];
  if (v2)
  {
    v3 = os_log_create(CRXFLoggingSubsystem, CRXFLoggingCategory[0]);
    log = v2->_log;
    v2->_log = v3;
  }

  return v2;
}

- (unint64_t)payloadLengthForAppClipCodeVersion:(unint64_t)a3
{
  if (a3 <= 5)
  {
    return 16;
  }

  else
  {
    return 19;
  }
}

- (unint64_t)decodeAppClipCodeVersionFromBuffer:(id)a3 error:(id *)a4
{
  v5 = a3;
  v10 = 0;
  if ([v5 byteCount] != 16)
  {
    if ([v5 byteCount] != 19)
    {
      v6 = 101;
LABEL_6:
      v7 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v6 userInfo:MEMORY[0x277CBEC10]];
      if (v7)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    if (([v5 skipBits:145] & 1) == 0)
    {
      v6 = 97;
      goto LABEL_6;
    }
  }

LABEL_7:
  if ([v5 readUInteger:&v10 bitWidth:4])
  {
    v7 = 0;
    goto LABEL_13;
  }

  v7 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:107 userInfo:MEMORY[0x277CBEC10]];
LABEL_10:
  if (a4 && v7)
  {
    v7 = v7;
    *a4 = v7;
  }

LABEL_13:
  v8 = v10;

  return v8;
}

- (BOOL)isACCVersionSupported:(unint64_t)a3
{
  if (a3 - 1 < 5)
  {
    return 1;
  }

  if (a3 == 6)
  {
    return MEMORY[0x282203478]("SeaLevel", "SeaUrchin");
  }

  return 0;
}

- (BOOL)encodeAppClipCode:(id)a3 toBytes:(char *)a4 length:(unint64_t)a5 error:(id *)a6
{
  v10 = MEMORY[0x277CBEB28];
  v11 = a3;
  v12 = [[v10 alloc] initWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
  LOBYTE(a6) = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCode:v11 toData:v12 error:a6];

  return a6;
}

- (id)encodeAppClipCodeToHexString:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = -[CRXFAppClipCodeTranscoder payloadLengthForAppClipCodeVersion:](self, "payloadLengthForAppClipCodeVersion:", [v6 version]);
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v7];
  LODWORD(a4) = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCode:v6 toData:v8 error:a4];

  if (a4)
  {
    v9 = [v8 crxu_asHexString];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)encodeAppClipCode:(id)a3 toData:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[CRXUBitBuffer alloc] initWithMutableData:v9];

  v11 = [v8 version];
  if (v11 > 3)
  {
    switch(v11)
    {
      case 4:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV4:v8 toBuffer:v10 error:a5];
        goto LABEL_16;
      case 5:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV5:v8 toBuffer:v10 error:a5];
        goto LABEL_16;
      case 6:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV6:v8 toBuffer:v10 error:a5];
        goto LABEL_16;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV1:v8 toBuffer:v10 error:a5];
        goto LABEL_16;
      case 2:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV2:v8 toBuffer:v10 error:a5];
        goto LABEL_16;
      case 3:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV3:v8 toBuffer:v10 error:a5];
LABEL_16:
        v13 = v12;
        goto LABEL_17;
    }
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:2 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:301 userInfo:MEMORY[0x277CBEC10]];
    *a5 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_17:

  return v13;
}

- (id)generateAppClipCodeWithVersion:(unint64_t)a3 lensType:(unint64_t)a4 haveLeftLens:(BOOL)a5 leftSphere:(float)a6 leftCylinder:(float)a7 leftAxis:(unint64_t)a8 leftAddVR:(float)a9 haveRightLens:(BOOL)a10 rightSphere:(float)a11 rightCylinder:(float)a12 rightAxis:(unint64_t)a13 rightAddVR:(float)a14 identifyingColor:(unint64_t)a15 secret:(id)a16 error:(id *)a17
{
  v18 = a10;
  v20 = a5;
  v28 = a16;
  v56 = a6;
  v57 = a7;
  v58 = a8;
  v29 = vrx_apply_eye_rx_cylinder_sign_flip(&v56);
  if (v29)
  {
    a6 = v56;
    a7 = v57;
    a8 = v58;
  }

  v53 = a11;
  v54 = a12;
  v55 = a13;
  v30 = vrx_apply_eye_rx_cylinder_sign_flip(&v53);
  if (v30)
  {
    HIDWORD(v32) = HIDWORD(v54);
    a11 = v53;
    a12 = v54;
    HIDWORD(v31) = HIDWORD(v55);
    a13 = v55;
  }

  if (!v28)
  {
    v28 = [MEMORY[0x277CBEA90] crxu_randomDataWithLength:10];
  }

  v52 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  if (!v20)
  {
    v34 = 1;
    if (v18)
    {
      goto LABEL_12;
    }

LABEL_16:
    v36 = 1;
    goto LABEL_17;
  }

  *&v31 = a6;
  *&v32 = a7;
  v33 = [(CRXFAppClipCodeTranscoder *)self encodeSphere:a8 cylinder:&v52 axis:&v50 toRXID:v31 axisID:v32];
  v34 = v33 == 0;
  if (a17 && v33)
  {
    [(CRXFAppClipCodeTranscoder *)self errorForStatus:v33 leftLens:1];
    *a17 = v34 = 0;
  }

  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_12:
  *&v31 = a11;
  *&v32 = a12;
  v35 = [(CRXFAppClipCodeTranscoder *)self encodeSphere:a13 cylinder:&v51 axis:&v49 toRXID:v31 axisID:v32];
  v36 = v35 == 0;
  if (a17 && v35)
  {
    [(CRXFAppClipCodeTranscoder *)self errorForStatus:v35 leftLens:0];
    *a17 = v37 = 0;
    goto LABEL_20;
  }

LABEL_17:
  if (v34 && v36)
  {
    v38 = [CRXFAppClipCode alloc];
    LODWORD(v46) = 0;
    LODWORD(v45) = 0;
    *&v39 = a7;
    *&v40 = a6;
    *&v41 = a7;
    *&v42 = a9;
    *&v43 = a11;
    v37 = [(CRXFAppClipCode *)v38 initWithVersion:a3 lensType:a4 cylLeftSignFlipped:v29 != 0 cylRightSignFlipped:v30 != 0 leftRXID:v52 leftCalibrationRXID:v52 leftDisplaySphere:COERCE_DOUBLE(LODWORD(a6)) leftDisplayCylinder:v39 leftCalibrationSphere:v40 leftCalibrationCylinder:v41 leftAddVR:v42 leftAxisID:0.0 leftDisplayAxis:0.0 leftCalibrationAxis:v43 leftClamping:v50 leftHorizPrismBaseDirection:a8 leftHorizPrism:a8 leftVertPrismBaseDirection:0 leftVertPrism:0 rightRXID:0 rightCalibrationRXID:v51 rightDisplaySphere:v51 rightDisplayCylinder:__PAIR64__(LODWORD(a11) rightCalibrationSphere:LODWORD(a12)) rightCalibrationCylinder:__PAIR64__(LODWORD(a14) rightAddVR:LODWORD(a12)) rightAxisID:v49 rightDisplayAxis:a13 rightCalibrationAxis:a13 rightClamping:0 rightHorizPrismBaseDirection:0 rightHorizPrism:v45 rightVertPrismBaseDirection:0 rightVertPrism:v46 identifyingColor:a15 secret:v28 randomBits:0];
  }

  else
  {
    v37 = 0;
  }

LABEL_20:

  return v37;
}

- (id)generateAppClipCodeWithVersion:(unint64_t)a3 lensType:(unint64_t)a4 haveLeftLens:(BOOL)a5 leftSphere:(float)a6 leftCylinder:(float)a7 leftAxis:(unint64_t)a8 leftAddVR:(float)a9 leftHorizPrismBaseDirection:(unint64_t)a10 leftHorizPrism:(float)a11 leftVertPrismBaseDirection:(unint64_t)a12 leftVertPrism:(float)a13 haveRightLens:(BOOL)a14 rightSphere:(float)a15 rightCylinder:(float)a16 rightAxis:(unint64_t)a17 rightAddVR:(float)a18 rightHorizPrismBaseDirection:(unint64_t)a19 rightHorizPrism:(float)a20 rightVertPrismBaseDirection:(unint64_t)a21 rightVertPrism:(float)a22 identifyingColor:(unint64_t)a23 secret:(id)a24 error:(id *)a25
{
  v26 = a5;
  v34 = a17;
  v35 = a24;
  v70 = a6;
  v71 = a7;
  v72 = a8;
  v36 = vrx_apply_eye_rx_cylinder_sign_flip(&v70);
  if (v36)
  {
    a6 = v70;
    a7 = v71;
    a8 = v72;
  }

  v67 = a15;
  v68 = a16;
  v69 = a17;
  v37 = vrx_apply_eye_rx_cylinder_sign_flip(&v67);
  if (v37)
  {
    HIDWORD(v39) = HIDWORD(v68);
    a15 = v67;
    a16 = v68;
    HIDWORD(v38) = HIDWORD(v69);
    v34 = v69;
  }

  if (!v35)
  {
    v35 = [MEMORY[0x277CBEA90] crxu_randomDataWithLength:10];
  }

  v65 = 0;
  v66 = 0;
  v64 = 0;
  v63 = 0;
  if (!v26)
  {
    v41 = 1;
    if (a14)
    {
      goto LABEL_12;
    }

LABEL_16:
    v43 = 1;
    goto LABEL_17;
  }

  *&v38 = a6;
  *&v39 = a7;
  v40 = [(CRXFAppClipCodeTranscoder *)self encodeSphere:a8 cylinder:&v66 axis:&v64 toRXID:v38 axisID:v39];
  v41 = v40 == 0;
  if (a25 && v40)
  {
    [(CRXFAppClipCodeTranscoder *)self errorForStatus:v40 leftLens:1];
    *a25 = v41 = 0;
  }

  if (!a14)
  {
    goto LABEL_16;
  }

LABEL_12:
  *&v38 = a15;
  *&v39 = a16;
  v42 = [(CRXFAppClipCodeTranscoder *)self encodeSphere:v34 cylinder:&v65 axis:&v63 toRXID:v38 axisID:v39];
  v43 = v42 == 0;
  if (a25 && v42)
  {
    [(CRXFAppClipCodeTranscoder *)self errorForStatus:v42 leftLens:0];
    *a25 = v44 = 0;
    goto LABEL_20;
  }

LABEL_17:
  if (v41 && v43)
  {
    v45 = [CRXFAppClipCode alloc];
    *&v56 = a22;
    *&v55 = a20;
    *&v46 = a6;
    *&v47 = a7;
    *&v48 = a6;
    *&v49 = a7;
    *&v50 = a9;
    *&v51 = a11;
    *&v52 = a13;
    *&v53 = a15;
    v44 = [(CRXFAppClipCode *)v45 initWithVersion:a3 lensType:a4 cylLeftSignFlipped:v36 != 0 cylRightSignFlipped:v37 != 0 leftRXID:v66 leftCalibrationRXID:v66 leftDisplaySphere:v46 leftDisplayCylinder:v47 leftCalibrationSphere:v48 leftCalibrationCylinder:v49 leftAddVR:v50 leftAxisID:v51 leftDisplayAxis:v52 leftCalibrationAxis:v53 leftClamping:v64 leftHorizPrismBaseDirection:a8 leftHorizPrism:a8 leftVertPrismBaseDirection:0 leftVertPrism:a10 rightRXID:a12 rightCalibrationRXID:v65 rightDisplaySphere:v65 rightDisplayCylinder:__PAIR64__(LODWORD(a15) rightCalibrationSphere:LODWORD(a16)) rightCalibrationCylinder:__PAIR64__(LODWORD(a18) rightAddVR:LODWORD(a16)) rightAxisID:v63 rightDisplayAxis:v34 rightCalibrationAxis:v34 rightClamping:0 rightHorizPrismBaseDirection:a19 rightHorizPrism:v55 rightVertPrismBaseDirection:a21 rightVertPrism:v56 identifyingColor:a23 secret:v35 randomBits:0];
  }

  else
  {
    v44 = 0;
  }

LABEL_20:

  return v44;
}

- (id)mergeLeftAppClipCode:(id)a3 withRightAppClipCode:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 version];
  if (v9 == [v8 version])
  {
    if ([v7 rightRXID] || objc_msgSend(v8, "leftRXID"))
    {
      if (a5)
      {
        v10 = MEMORY[0x277CCA9B8];
        v11 = MEMORY[0x277CBEC10];
        v12 = 5;
        v13 = 561;
LABEL_8:
        [v10 crxf_errorWithCode:v12 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v13 userInfo:v11];
        *a5 = v14 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v15 = [v7 lensType];
      if (v15 == [v8 lensType])
      {
        v16 = [MEMORY[0x277CBEA90] crxu_randomDataWithLength:10];
        v73 = [CRXFAppClipCode alloc];
        v71 = [v7 version];
        v75 = [v7 lensType];
        v74 = [v7 cylLeftSignFlipped];
        v72 = [v7 cylRightSignFlipped];
        v70 = [v7 leftRXID];
        v69 = [v7 leftCalibrationRXID];
        [v7 leftDisplaySphere];
        v68 = v17;
        [v7 leftDisplayCylinder];
        v67 = v18;
        [v7 leftCalibrationSphere];
        v66 = v19;
        [v7 leftCalibrationCylinder];
        v65 = v20;
        [v7 leftAddVR];
        v64 = v21;
        v63 = [v7 leftAxisID];
        v62 = [v7 leftDisplayAxis];
        v61 = [v7 leftCalibrationAxis];
        v60 = [v7 leftClamping];
        v59 = [v7 leftHorizPrismBaseDirection];
        [v7 leftHorizPrism];
        v23 = v22;
        v58 = [v7 leftVertPrismBaseDirection];
        [v7 leftVertPrism];
        v25 = v24;
        v57 = [v8 rightRXID];
        v26 = [v8 rightCalibrationRXID];
        [v8 rightDisplaySphere];
        v28 = v27;
        [v8 rightDisplayCylinder];
        v30 = v29;
        [v7 rightCalibrationSphere];
        v32 = v31;
        [v7 rightCalibrationCylinder];
        v34 = v33;
        [v8 rightAddVR];
        v36 = v35;
        v37 = [v8 rightAxisID];
        v38 = [v8 rightDisplayAxis];
        v39 = [v8 rightCalibrationAxis];
        v40 = [v8 rightClamping];
        v41 = [v7 rightHorizPrismBaseDirection];
        [v7 rightHorizPrism];
        v43 = v42;
        v44 = [v7 rightVertPrismBaseDirection];
        [v7 rightVertPrism];
        LODWORD(v56) = v45;
        LODWORD(v55) = v43;
        LODWORD(v47) = v67;
        LODWORD(v46) = v68;
        LODWORD(v49) = v65;
        LODWORD(v48) = v66;
        LODWORD(v50) = v64;
        LODWORD(v51) = v23;
        LODWORD(v52) = v25;
        LODWORD(v53) = v28;
        v14 = [(CRXFAppClipCode *)v73 initWithVersion:v71 lensType:v75 cylLeftSignFlipped:v74 cylRightSignFlipped:v72 leftRXID:v70 leftCalibrationRXID:v69 leftDisplaySphere:v46 leftDisplayCylinder:v47 leftCalibrationSphere:v48 leftCalibrationCylinder:v49 leftAddVR:v50 leftAxisID:v51 leftDisplayAxis:v52 leftCalibrationAxis:v53 leftClamping:v63 leftHorizPrismBaseDirection:v62 leftHorizPrism:v61 leftVertPrismBaseDirection:v60 leftVertPrism:v59 rightRXID:v58 rightCalibrationRXID:v57 rightDisplaySphere:v26 rightDisplayCylinder:__PAIR64__(v32 rightCalibrationSphere:v30) rightCalibrationCylinder:__PAIR64__(v36 rightAddVR:v34) rightAxisID:v37 rightDisplayAxis:v38 rightCalibrationAxis:v39 rightClamping:v40 rightHorizPrismBaseDirection:v41 rightHorizPrism:v55 rightVertPrismBaseDirection:v44 rightVertPrism:v56 identifyingColor:0 secret:v16 randomBits:0];

        goto LABEL_14;
      }

      if (a5)
      {
        v10 = MEMORY[0x277CCA9B8];
        v11 = MEMORY[0x277CBEC10];
        v12 = 31;
        v13 = 568;
        goto LABEL_8;
      }
    }
  }

  else if (a5)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = MEMORY[0x277CBEC10];
    v12 = 22;
    v13 = 554;
    goto LABEL_8;
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (unint64_t)decodeCalibrationRXID:(unint64_t *)a3 calibrationSphere:(float *)a4 calibrationCylinder:(float *)a5 calibrationAxis:(unint64_t *)a6 addVR:(float *)a7 clampingStatus:(unint64_t *)a8 displaySphere:(float *)a9 displayCylinder:(float *)a10 displayAxis:(unint64_t *)a11 fromRXID:(unint64_t)a12 RXOffsetID:(unint64_t)a13 cylinderSignFlipped:(BOOL)a14 axisID:(unint64_t)a15 allowUnsupportedRX:(BOOL)a16
{
  v50 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = a12;
  if (a8)
  {
    *a8 = 0;
  }

  if (a12 == 1023)
  {
    if (a16)
    {
      v22 = 0;
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:];
      }

      v22 = 8;
    }

    log = self->_log;
    v26 = 0.0;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:]";
      *&buf[12] = 1024;
      *&buf[14] = 649;
      _os_log_impl(&dword_24732C000, log, OS_LOG_TYPE_INFO, "%s @%d: rxID is out of range, allow unsupported RX", buf, 0x12u);
    }

    v27 = 0.0;
  }

  else
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:]";
      *&buf[12] = 1024;
      *&buf[14] = 651;
      _os_log_impl(&dword_24732C000, v23, OS_LOG_TYPE_INFO, "%s @%d: rxID is in range", buf, 0x12u);
    }

    v24 = [(CRXFAppClipCodeTranscoder *)self lookUpSphereValue:&v47 + 4 cylinderValue:&v47 forRXID:a12];
    v22 = v24;
    LODWORD(v25) = HIDWORD(v47);
    if (v24)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = *&v47;
    }

    if (v24)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = *(&v47 + 1);
    }
  }

  v46 = 0;
  v29 = [(CRXFAppClipCodeTranscoder *)self lookUpAxisValue:&v46 forAxisID:a15, v25];
  v32 = v46;
  if (v29)
  {
    v33 = v46;
  }

  else
  {
    v33 = 0;
  }

  v34 = vcvts_n_f32_u64(a13, 2uLL);
  v35 = *(&v47 + 1);
  LODWORD(v30) = v47;
  v36 = v29 | v22;
  if (v29 | v22)
  {
    v32 = v33;
  }

  else
  {
    *buf = *(&v47 + 1);
    *&buf[8] = *&v47;
    *&buf[16] = v46;
    if (a14)
    {
      v44 = *buf;
      v45 = *&buf[16];
      vrx_unapply_eye_rx_cylinder_sign_flip(&v44);
      v27 = *&v44;
      v26 = *(&v44 + 1);
      v32 = v45;
    }

    if (a13)
    {
      vrx_apply_eye_rx_vr_add(buf, v34, 15.0);
    }

    HIDWORD(v30) = *&buf[4];
    v35 = *buf;
    *&v30 = *&buf[8];
    v47 = __PAIR64__(LODWORD(v35), LODWORD(v30));
    HIDWORD(v31) = *&buf[20];
    v46 = *&buf[16];
  }

  *&v31 = v35;
  if ([(CRXFAppClipCodeTranscoder *)self lookupBestValidRXID:&v48 andSphere:&v47 + 4 matchingCylinder:v30 nearSphere:v31])
  {
    if (a13)
    {
      v36 |= 0x20uLL;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:];
      }
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:];
      }

      v36 |= 8uLL;
    }

    v38 = a7;
    if (a8)
    {
      v39 = 3;
      goto LABEL_45;
    }

    goto LABEL_52;
  }

  if (!a13)
  {
    if (v27 != *(&v47 + 1))
    {
      v40 = self->_log;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:]";
        *&buf[12] = 1024;
        *&buf[14] = 741;
        _os_log_impl(&dword_24732C000, v40, OS_LOG_TYPE_INFO, "%s @%d: RX clamped successfully!", buf, 0x12u);
      }

      v38 = a7;
      if (a8)
      {
        v39 = 1;
        goto LABEL_45;
      }

      goto LABEL_52;
    }

LABEL_51:
    v38 = a7;
    goto LABEL_52;
  }

  if (v35 == *(&v47 + 1))
  {
    goto LABEL_51;
  }

  v37 = self->_log;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[CRXFAppClipCodeTranscoder decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:]";
    *&buf[12] = 1024;
    *&buf[14] = 733;
    _os_log_impl(&dword_24732C000, v37, OS_LOG_TYPE_INFO, "%s @%d: AddVR clamped successfully!", buf, 0x12u);
  }

  v38 = a7;
  if (a8)
  {
    v39 = 2;
LABEL_45:
    *a8 = v39;
  }

LABEL_52:
  if (a3)
  {
    *a3 = v48;
  }

  if (a4)
  {
    *a4 = *(&v47 + 1);
  }

  if (a5)
  {
    *a5 = v47;
  }

  if (a9)
  {
    *a9 = v27;
  }

  if (a10)
  {
    *a10 = v26;
  }

  if (a11)
  {
    *a11 = v32;
  }

  if (a6)
  {
    *a6 = v46;
  }

  if (v38)
  {
    *v38 = v34;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v36;
}

- (unint64_t)encodeSphere:(float)a3 cylinder:(float)a4 axis:(unint64_t)a5 toRXID:(unint64_t *)a6 axisID:(unint64_t *)a7
{
  if (!a6)
  {
    v11 = 0;
    if (!a7)
    {
      return v11;
    }

    goto LABEL_7;
  }

  v11 = [CRXFAppClipCodeTranscoder lookUpRXID:"lookUpRXID:forSphereValue:cylinderValue:" forSphereValue:a6 cylinderValue:?];
  if (v11)
  {
    *a6 = 0;
  }

  if (a7)
  {
LABEL_7:
    v12 = [(CRXFAppClipCodeTranscoder *)self lookUpAxisID:a7 forAxisValue:a5];
    if (v12)
    {
      *a7 = 0;
      v11 |= v12;
    }
  }

  return v11;
}

- (id)errorForStatus:(unint64_t)a3 leftLens:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = kCRXFErrorKeyLeftLensDecodeStatus;
  if (!v4)
  {
    v8 = kCRXFErrorKeyRightLensDecodeStatus;
  }

  [v6 setObject:v7 forKeyedSubscript:*v8];

  v9 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:835 userInfo:v6];

  return v9;
}

- (unint64_t)lookUpRXID:(unint64_t *)a3 forSphereValue:(float)a4 cylinderValue:(float)a5
{
  result = [RXIDLookup sphere:"sphere:cylinder:toRXID:" cylinder:a3 toRXID:?];
  if (result >= 3)
  {
    return 1;
  }

  return result;
}

- (unint64_t)lookupBestValidRXID:(unint64_t *)a3 andSphere:(float *)a4 matchingCylinder:(float)a5 nearSphere:(float)a6
{
  v6 = [RXIDLookup bestValidRXID:"bestValidRXID:andSphere:matchingCylinder:nearSphere:" andSphere:a3 matchingCylinder:a4 nearSphere:?];
  v7 = 1;
  if (v6 != 1)
  {
    v7 = 2;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (id)decodeAppClipCodeV1FromBuffer:(id)a3 allowUnsupportedRX:(BOOL)a4 error:(id *)a5
{
  v46[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 bitCount] == 128)
  {
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    if ([v8 skipBits:4] && objc_msgSend(v8, "skipBits:", 12) && objc_msgSend(v8, "readUInteger:bitWidth:", &v44, 10) && objc_msgSend(v8, "readUInteger:bitWidth:", &v42, 6) && objc_msgSend(v8, "readUInteger:bitWidth:", &v43, 10) && objc_msgSend(v8, "readUInteger:bitWidth:", &v41, 6) && (objc_msgSend(v8, "readData:bitWidth:", v9, 80) & 1) != 0)
    {
      v39 = 0;
      v40 = 0;
      v37 = 0;
      v38 = 0;
      v35 = 0;
      v36 = 0;
      if (v44)
      {
        LOBYTE(v20) = a4;
        LOBYTE(v19) = 0;
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:0 calibrationSphere:0 calibrationCylinder:0 calibrationAxis:0 addVR:0 clampingStatus:&v40 displaySphere:&v38 + 4 displayCylinder:&v38 displayAxis:&v36 fromRXID:v44 RXOffsetID:0 cylinderSignFlipped:v19 axisID:v42 allowUnsupportedRX:v20];
      }

      else
      {
        v10 = 0;
      }

      if (v43)
      {
        LOBYTE(v20) = a4;
        LOBYTE(v19) = 0;
        v12 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:0 calibrationSphere:0 calibrationCylinder:0 calibrationAxis:0 addVR:0 clampingStatus:&v39 displaySphere:&v37 + 4 displayCylinder:&v37 displayAxis:&v35 fromRXID:v43 RXOffsetID:0 cylinderSignFlipped:v19 axisID:v41 allowUnsupportedRX:v20];
      }

      else
      {
        v12 = 0;
      }

      if (!(v10 | v12))
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV1FromBuffer_allowUnsupportedRX_error___block_invoke;
        v21[3] = &unk_278E9FC18;
        v31 = HIDWORD(v38);
        v32 = v38;
        v23 = v44;
        v24 = v42;
        v25 = v36;
        v26 = v40;
        v33 = HIDWORD(v37);
        v34 = v37;
        v27 = v43;
        v28 = v41;
        v29 = v35;
        v30 = v39;
        v22 = v9;
        v11 = [CRXFAppClipCode appClipCodeWithBlock:v21];
        v14 = v22;
        goto LABEL_29;
      }

      if (a5)
      {
        v13 = MEMORY[0x277CCA9B8];
        v45[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v46[0] = v14;
        v45[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v46[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
        *a5 = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:985 userInfo:v16];

        v11 = 0;
LABEL_29:

        goto LABEL_24;
      }
    }

    else if (a5)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:934 userInfo:MEMORY[0x277CBEC10]];
      *a5 = v11 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v11 = 0;
    goto LABEL_24;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:918 userInfo:MEMORY[0x277CBEC10]];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_25:

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

void __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV1FromBuffer_allowUnsupportedRX_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  [v11 setVersion:1];
  [v11 setLeftRXID:*(a1 + 40)];
  [v11 setLeftCalibrationRXID:*(a1 + 40)];
  LODWORD(v3) = *(a1 + 104);
  [v11 setLeftDisplaySphere:v3];
  LODWORD(v4) = *(a1 + 108);
  [v11 setLeftDisplayCylinder:v4];
  LODWORD(v5) = *(a1 + 104);
  [v11 setLeftCalibrationSphere:v5];
  LODWORD(v6) = *(a1 + 108);
  [v11 setLeftCalibrationCylinder:v6];
  [v11 setLeftAxisID:*(a1 + 48)];
  [v11 setLeftDisplayAxis:*(a1 + 56)];
  [v11 setLeftCalibrationAxis:*(a1 + 56)];
  [v11 setLeftClamping:*(a1 + 64)];
  [v11 setRightRXID:*(a1 + 72)];
  [v11 setRightCalibrationRXID:*(a1 + 72)];
  LODWORD(v7) = *(a1 + 112);
  [v11 setRightDisplaySphere:v7];
  LODWORD(v8) = *(a1 + 116);
  [v11 setRightDisplayCylinder:v8];
  LODWORD(v9) = *(a1 + 112);
  [v11 setRightCalibrationSphere:v9];
  LODWORD(v10) = *(a1 + 116);
  [v11 setRightCalibrationCylinder:v10];
  [v11 setRightAxisID:*(a1 + 80)];
  [v11 setRightDisplayAxis:*(a1 + 88)];
  [v11 setRightCalibrationAxis:*(a1 + 88)];
  [v11 setRightClamping:*(a1 + 96)];
  [v11 setSecret:*(a1 + 32)];
}

- (BOOL)encodeAppClipCodeV1:(id)a3 toBuffer:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 writeUInteger:objc_msgSend(v7 bitWidth:{"version"), 4}] && objc_msgSend(v8, "skipBits:", 12) && objc_msgSend(v8, "writeUInteger:bitWidth:", objc_msgSend(v7, "leftRXID"), 10) && objc_msgSend(v8, "writeUInteger:bitWidth:", objc_msgSend(v7, "leftAxisID"), 6) && objc_msgSend(v8, "writeUInteger:bitWidth:", objc_msgSend(v7, "rightRXID"), 10) && objc_msgSend(v8, "writeUInteger:bitWidth:", objc_msgSend(v7, "rightAxisID"), 6))
  {
    v9 = [v7 secret];
    v10 = [v8 writeData:v9 bitWidth:80];
  }

  else
  {
    v10 = 0;
  }

  if (a5 && (v10 & 1) == 0)
  {
    *a5 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:4 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1027 userInfo:MEMORY[0x277CBEC10]];
  }

  return v10;
}

- (id)decodeAppClipCodeV2FromBuffer:(id)a3 allowUnsupportedRX:(BOOL)a4 error:(id *)a5
{
  v53[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 bitCount] == 128)
  {
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    if ([v8 skipBits:4] && objc_msgSend(v8, "skipBits:", 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v47, 4) && objc_msgSend(v8, "readUInteger:bitWidth:", &v46, 6) && objc_msgSend(v8, "readUInteger:bitWidth:", &v51, 10) && objc_msgSend(v8, "readUInteger:bitWidth:", &v49, 6) && objc_msgSend(v8, "readUInteger:bitWidth:", &v50, 10) && objc_msgSend(v8, "readUInteger:bitWidth:", &v48, 6) && (objc_msgSend(v8, "readData:bitWidth:", v9, 80) & 1) != 0)
    {
      v44 = 0;
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      v40 = 0;
      v39 = 0;
      v37 = 0;
      v38 = 0;
      if (v51)
      {
        LOBYTE(v20) = a4;
        LOBYTE(v19) = 0;
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v45 calibrationSphere:0 calibrationCylinder:0 calibrationAxis:0 addVR:0 clampingStatus:&v43 displaySphere:&v41 + 4 displayCylinder:&v41 displayAxis:&v38 fromRXID:v51 RXOffsetID:0 cylinderSignFlipped:v19 axisID:v49 allowUnsupportedRX:v20];
      }

      else
      {
        v10 = 0;
      }

      if (v50)
      {
        LOBYTE(v20) = a4;
        LOBYTE(v19) = 0;
        v12 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v44 calibrationSphere:0 calibrationCylinder:0 calibrationAxis:0 addVR:0 clampingStatus:&v42 displaySphere:&v40 displayCylinder:&v39 displayAxis:&v37 fromRXID:v50 RXOffsetID:0 cylinderSignFlipped:v19 axisID:v48 allowUnsupportedRX:v20];
      }

      else
      {
        v12 = 0;
      }

      if (!(v10 | v12))
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV2FromBuffer_allowUnsupportedRX_error___block_invoke;
        v21[3] = &unk_278E9FC40;
        v33 = HIDWORD(v41);
        v34 = v41;
        v23 = v51;
        v24 = v49;
        v25 = v38;
        v26 = v43;
        v35 = v40;
        v36 = v39;
        v27 = v50;
        v28 = v48;
        v29 = v37;
        v30 = v42;
        v31 = v47;
        v22 = v9;
        v32 = v46;
        v11 = [CRXFAppClipCode appClipCodeWithBlock:v21];
        v14 = v22;
        goto LABEL_31;
      }

      if (a5)
      {
        v13 = MEMORY[0x277CCA9B8];
        v52[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v53[0] = v14;
        v52[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v53[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
        *a5 = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1131 userInfo:v16];

        v11 = 0;
LABEL_31:

        goto LABEL_26;
      }
    }

    else if (a5)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1079 userInfo:MEMORY[0x277CBEC10]];
      *a5 = v11 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v11 = 0;
    goto LABEL_26;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1059 userInfo:MEMORY[0x277CBEC10]];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_27:

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

void __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV2FromBuffer_allowUnsupportedRX_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  [v11 setVersion:2];
  [v11 setLeftRXID:*(a1 + 40)];
  [v11 setLeftCalibrationRXID:*(a1 + 40)];
  LODWORD(v3) = *(a1 + 120);
  [v11 setLeftDisplaySphere:v3];
  LODWORD(v4) = *(a1 + 124);
  [v11 setLeftDisplayCylinder:v4];
  LODWORD(v5) = *(a1 + 120);
  [v11 setLeftCalibrationSphere:v5];
  LODWORD(v6) = *(a1 + 124);
  [v11 setLeftCalibrationCylinder:v6];
  [v11 setLeftAxisID:*(a1 + 48)];
  [v11 setLeftDisplayAxis:*(a1 + 56)];
  [v11 setLeftCalibrationAxis:*(a1 + 56)];
  [v11 setLeftClamping:*(a1 + 64)];
  [v11 setRightRXID:*(a1 + 72)];
  [v11 setRightCalibrationRXID:*(a1 + 72)];
  LODWORD(v7) = *(a1 + 128);
  [v11 setRightDisplaySphere:v7];
  LODWORD(v8) = *(a1 + 132);
  [v11 setRightDisplayCylinder:v8];
  LODWORD(v9) = *(a1 + 128);
  [v11 setRightCalibrationSphere:v9];
  LODWORD(v10) = *(a1 + 132);
  [v11 setRightCalibrationCylinder:v10];
  [v11 setRightAxisID:*(a1 + 80)];
  [v11 setRightDisplayAxis:*(a1 + 88)];
  [v11 setRightCalibrationAxis:*(a1 + 88)];
  [v11 setRightClamping:*(a1 + 96)];
  [v11 setIdentifyingColor:*(a1 + 104)];
  [v11 setSecret:*(a1 + 32)];
  [v11 setRandomBits:*(a1 + 112)];
}

- (BOOL)encodeAppClipCodeV2:(id)a3 toBuffer:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 writeUInteger:objc_msgSend(v7 bitWidth:{"version"), 4}] && objc_msgSend(v8, "skipBits:", 2) && objc_msgSend(v8, "writeUInteger:bitWidth:", objc_msgSend(v7, "identifyingColor"), 4) && objc_msgSend(v8, "writeUInteger:bitWidth:", objc_msgSend(v7, "randomBits"), 6) && objc_msgSend(v8, "writeUInteger:bitWidth:", objc_msgSend(v7, "leftRXID"), 10) && objc_msgSend(v8, "writeUInteger:bitWidth:", objc_msgSend(v7, "leftAxisID"), 6) && objc_msgSend(v8, "writeUInteger:bitWidth:", objc_msgSend(v7, "rightRXID"), 10) && objc_msgSend(v8, "writeUInteger:bitWidth:", objc_msgSend(v7, "rightAxisID"), 6))
  {
    v9 = [v7 secret];
    v10 = [v8 writeData:v9 bitWidth:80];
  }

  else
  {
    v10 = 0;
  }

  if (a5 && (v10 & 1) == 0)
  {
    *a5 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:4 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1177 userInfo:MEMORY[0x277CBEC10]];
  }

  return v10;
}

- (id)decodeAppClipCodeV3FromBuffer:(id)a3 allowUnsupportedRX:(BOOL)a4 error:(id *)a5
{
  v72[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 bitCount] == 128)
  {
    v70 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    if ([v8 skipBits:4] && objc_msgSend(v8, "readUInteger:bitWidth:", &v65, 4) && objc_msgSend(v8, "readBool:", &v70 + 1) && objc_msgSend(v8, "readBool:", &v70) && objc_msgSend(v8, "readUInteger:bitWidth:", &v64, 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v63, 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v62, 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v69, 10) && objc_msgSend(v8, "readUInteger:bitWidth:", &v67, 6) && objc_msgSend(v8, "readUInteger:bitWidth:", &v68, 10) && objc_msgSend(v8, "readUInteger:bitWidth:", &v66, 6) && (objc_msgSend(v8, "readData:bitWidth:", v9, 80) & 1) != 0)
    {
      v60 = 0;
      v61 = 0;
      v58 = 0;
      v59 = 0;
      v56 = 0;
      v57 = 0;
      v54 = 0;
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      if (v69)
      {
        LOBYTE(v20) = a4;
        LOBYTE(v19) = HIBYTE(v70);
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v50 calibrationSphere:&v57 + 4 calibrationCylinder:&v57 calibrationAxis:&v52 addVR:&v55 + 4 clampingStatus:&v61 displaySphere:&v59 + 4 displayCylinder:&v59 displayAxis:&v54 fromRXID:v69 RXOffsetID:v64 cylinderSignFlipped:v19 axisID:v67 allowUnsupportedRX:v20];
      }

      else
      {
        v10 = 0;
      }

      if (v68)
      {
        LOBYTE(v20) = a4;
        LOBYTE(v19) = v70;
        v12 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v49 calibrationSphere:&v56 + 4 calibrationCylinder:&v56 calibrationAxis:&v51 addVR:&v55 clampingStatus:&v60 displaySphere:&v58 + 4 displayCylinder:&v58 displayAxis:&v53 fromRXID:v68 RXOffsetID:v63 cylinderSignFlipped:v19 axisID:v66 allowUnsupportedRX:v20];
      }

      else
      {
        v12 = 0;
      }

      if (!(v10 | v12))
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV3FromBuffer_allowUnsupportedRX_error___block_invoke;
        v21[3] = &unk_278E9FC68;
        v47 = HIBYTE(v70);
        v48 = v70;
        v23 = v69;
        v24 = v50;
        v37 = HIDWORD(v59);
        v38 = v59;
        v39 = HIDWORD(v57);
        v40 = v57;
        v25 = v67;
        v26 = v54;
        v27 = v52;
        v28 = v61;
        v29 = v68;
        v30 = v49;
        v41 = HIDWORD(v55);
        v42 = HIDWORD(v58);
        v43 = v58;
        v44 = HIDWORD(v56);
        v45 = v56;
        v46 = v55;
        v31 = v66;
        v32 = v53;
        v33 = v51;
        v34 = v60;
        v35 = v65;
        v22 = v9;
        v36 = v62;
        v11 = [CRXFAppClipCode appClipCodeWithBlock:v21];
        v14 = v22;
        goto LABEL_34;
      }

      if (a5)
      {
        v13 = MEMORY[0x277CCA9B8];
        v71[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v72[0] = v14;
        v71[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v72[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
        *a5 = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1289 userInfo:v16];

        v11 = 0;
LABEL_34:

        goto LABEL_29;
      }
    }

    else if (a5)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1233 userInfo:MEMORY[0x277CBEC10]];
      *a5 = v11 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v11 = 0;
    goto LABEL_29;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1208 userInfo:MEMORY[0x277CBEC10]];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_30:

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

void __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV3FromBuffer_allowUnsupportedRX_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  [v13 setVersion:3];
  [v13 setCylLeftSignFlipped:*(a1 + 192)];
  [v13 setCylRightSignFlipped:*(a1 + 193)];
  [v13 setLeftRXID:*(a1 + 40)];
  [v13 setLeftCalibrationRXID:*(a1 + 48)];
  LODWORD(v3) = *(a1 + 152);
  [v13 setLeftDisplaySphere:v3];
  LODWORD(v4) = *(a1 + 156);
  [v13 setLeftDisplayCylinder:v4];
  LODWORD(v5) = *(a1 + 160);
  [v13 setLeftCalibrationSphere:v5];
  LODWORD(v6) = *(a1 + 164);
  [v13 setLeftCalibrationCylinder:v6];
  LODWORD(v7) = *(a1 + 168);
  [v13 setLeftAddVR:v7];
  [v13 setLeftAxisID:*(a1 + 56)];
  [v13 setLeftDisplayAxis:*(a1 + 64)];
  [v13 setLeftCalibrationAxis:*(a1 + 72)];
  [v13 setLeftClamping:*(a1 + 80)];
  [v13 setRightRXID:*(a1 + 88)];
  [v13 setRightCalibrationRXID:*(a1 + 96)];
  LODWORD(v8) = *(a1 + 172);
  [v13 setRightDisplaySphere:v8];
  LODWORD(v9) = *(a1 + 176);
  [v13 setRightDisplayCylinder:v9];
  LODWORD(v10) = *(a1 + 180);
  [v13 setRightCalibrationSphere:v10];
  LODWORD(v11) = *(a1 + 184);
  [v13 setRightCalibrationCylinder:v11];
  LODWORD(v12) = *(a1 + 188);
  [v13 setRightAddVR:v12];
  [v13 setRightAxisID:*(a1 + 104)];
  [v13 setRightDisplayAxis:*(a1 + 112)];
  [v13 setRightCalibrationAxis:*(a1 + 120)];
  [v13 setRightClamping:*(a1 + 128)];
  [v13 setIdentifyingColor:*(a1 + 136)];
  [v13 setSecret:*(a1 + 32)];
  [v13 setRandomBits:*(a1 + 144)];
}

- (BOOL)encodeAppClipCodeV3:(id)a3 toBuffer:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = 0;
  [v8 leftAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v19 maxValue:? index:?])
  {
    if (!a5)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1336;
LABEL_22:
    [v13 crxf_errorWithCode:v15 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v16 userInfo:v14];
    *a5 = v12 = 0;
    goto LABEL_24;
  }

  [v8 rightAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v18 maxValue:? index:?])
  {
    if (!a5)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1346;
    goto LABEL_22;
  }

  if (![v9 writeUInteger:objc_msgSend(v8 bitWidth:{"version"), 4}] || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "identifyingColor"), 4) || !objc_msgSend(v9, "writeBool:", objc_msgSend(v8, "cylLeftSignFlipped")) || !objc_msgSend(v9, "writeBool:", objc_msgSend(v8, "cylRightSignFlipped")) || !objc_msgSend(v9, "writeUInteger:bitWidth:", v19, 2) || !objc_msgSend(v9, "writeUInteger:bitWidth:", v18, 2) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "randomBits"), 2) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "leftRXID"), 10) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "leftAxisID"), 6) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "rightRXID"), 10) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "rightAxisID"), 6) || (objc_msgSend(v8, "secret"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "writeData:bitWidth:", v10, 80), v10, (v11 & 1) == 0))
  {
    if (a5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = MEMORY[0x277CBEC10];
      v15 = 4;
      v16 = 1364;
      goto LABEL_22;
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v12 = 1;
LABEL_24:

  return v12;
}

- (id)decodeAppClipCodeV4FromBuffer:(id)a3 allowUnsupportedRX:(BOOL)a4 error:(id *)a5
{
  v72[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 bitCount] == 128)
  {
    v70 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    v62 = 0;
    if ([v8 skipBits:4] && objc_msgSend(v8, "readUInteger:bitWidth:", &v65, 4) && objc_msgSend(v8, "readBool:", &v70 + 1) && objc_msgSend(v8, "readBool:", &v70) && objc_msgSend(v8, "readUInteger:bitWidth:", &v64, 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v63, 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v62, 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v69, 10) && objc_msgSend(v8, "readUInteger:bitWidth:", &v67, 6) && objc_msgSend(v8, "readUInteger:bitWidth:", &v68, 10) && objc_msgSend(v8, "readUInteger:bitWidth:", &v66, 6) && (objc_msgSend(v8, "readData:bitWidth:", v9, 80) & 1) != 0)
    {
      v60 = 0;
      v61 = 0;
      v58 = 0;
      v59 = 0;
      v56 = 0;
      v57 = 0;
      v54 = 0;
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      if (v69)
      {
        LOBYTE(v20) = a4;
        LOBYTE(v19) = HIBYTE(v70);
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v50 calibrationSphere:&v57 + 4 calibrationCylinder:&v57 calibrationAxis:&v52 addVR:&v55 + 4 clampingStatus:&v61 displaySphere:&v59 + 4 displayCylinder:&v59 displayAxis:&v54 fromRXID:v69 RXOffsetID:v64 cylinderSignFlipped:v19 axisID:v67 allowUnsupportedRX:v20];
      }

      else
      {
        v10 = 0;
      }

      if (v68)
      {
        LOBYTE(v20) = a4;
        LOBYTE(v19) = v70;
        v12 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v49 calibrationSphere:&v56 + 4 calibrationCylinder:&v56 calibrationAxis:&v51 addVR:&v55 clampingStatus:&v60 displaySphere:&v58 + 4 displayCylinder:&v58 displayAxis:&v53 fromRXID:v68 RXOffsetID:v63 cylinderSignFlipped:v19 axisID:v66 allowUnsupportedRX:v20];
      }

      else
      {
        v12 = 0;
      }

      if (!(v10 | v12))
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV4FromBuffer_allowUnsupportedRX_error___block_invoke;
        v21[3] = &unk_278E9FC68;
        v47 = HIBYTE(v70);
        v48 = v70;
        v23 = v62;
        v24 = v69;
        v37 = HIDWORD(v59);
        v38 = v59;
        v39 = HIDWORD(v57);
        v40 = v57;
        v25 = v50;
        v26 = v67;
        v27 = v54;
        v28 = v52;
        v29 = v61;
        v30 = v68;
        v41 = HIDWORD(v55);
        v42 = HIDWORD(v58);
        v43 = v58;
        v44 = HIDWORD(v56);
        v45 = v56;
        v46 = v55;
        v31 = v49;
        v32 = v66;
        v33 = v53;
        v34 = v51;
        v35 = v60;
        v36 = v65;
        v22 = v9;
        v11 = [CRXFAppClipCode appClipCodeWithBlock:v21];
        v14 = v22;
        goto LABEL_34;
      }

      if (a5)
      {
        v13 = MEMORY[0x277CCA9B8];
        v71[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v72[0] = v14;
        v71[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v72[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
        *a5 = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1460 userInfo:v16];

        v11 = 0;
LABEL_34:

        goto LABEL_29;
      }
    }

    else if (a5)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1404 userInfo:MEMORY[0x277CBEC10]];
      *a5 = v11 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v11 = 0;
    goto LABEL_29;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1379 userInfo:MEMORY[0x277CBEC10]];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_30:

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

void __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV4FromBuffer_allowUnsupportedRX_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  [v13 setVersion:4];
  [v13 setLensType:*(a1 + 40)];
  [v13 setCylLeftSignFlipped:*(a1 + 192)];
  [v13 setCylRightSignFlipped:*(a1 + 193)];
  [v13 setLeftRXID:*(a1 + 48)];
  [v13 setLeftCalibrationRXID:*(a1 + 56)];
  LODWORD(v3) = *(a1 + 152);
  [v13 setLeftDisplaySphere:v3];
  LODWORD(v4) = *(a1 + 156);
  [v13 setLeftDisplayCylinder:v4];
  LODWORD(v5) = *(a1 + 160);
  [v13 setLeftCalibrationSphere:v5];
  LODWORD(v6) = *(a1 + 164);
  [v13 setLeftCalibrationCylinder:v6];
  LODWORD(v7) = *(a1 + 168);
  [v13 setLeftAddVR:v7];
  [v13 setLeftAxisID:*(a1 + 64)];
  [v13 setLeftDisplayAxis:*(a1 + 72)];
  [v13 setLeftCalibrationAxis:*(a1 + 80)];
  [v13 setLeftClamping:*(a1 + 88)];
  [v13 setRightRXID:*(a1 + 96)];
  [v13 setRightCalibrationRXID:*(a1 + 104)];
  LODWORD(v8) = *(a1 + 172);
  [v13 setRightDisplaySphere:v8];
  LODWORD(v9) = *(a1 + 176);
  [v13 setRightDisplayCylinder:v9];
  LODWORD(v10) = *(a1 + 180);
  [v13 setRightCalibrationSphere:v10];
  LODWORD(v11) = *(a1 + 184);
  [v13 setRightCalibrationCylinder:v11];
  LODWORD(v12) = *(a1 + 188);
  [v13 setRightAddVR:v12];
  [v13 setRightAxisID:*(a1 + 112)];
  [v13 setRightDisplayAxis:*(a1 + 120)];
  [v13 setRightCalibrationAxis:*(a1 + 128)];
  [v13 setRightClamping:*(a1 + 136)];
  [v13 setIdentifyingColor:*(a1 + 144)];
  [v13 setSecret:*(a1 + 32)];
}

- (BOOL)encodeAppClipCodeV4:(id)a3 toBuffer:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = 0;
  [v8 leftAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v19 maxValue:? index:?])
  {
    if (!a5)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1507;
LABEL_22:
    [v13 crxf_errorWithCode:v15 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v16 userInfo:v14];
    *a5 = v12 = 0;
    goto LABEL_24;
  }

  [v8 rightAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v18 maxValue:? index:?])
  {
    if (!a5)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1517;
    goto LABEL_22;
  }

  if (![v9 writeUInteger:objc_msgSend(v8 bitWidth:{"version"), 4}] || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "identifyingColor"), 4) || !objc_msgSend(v9, "writeBool:", objc_msgSend(v8, "cylLeftSignFlipped")) || !objc_msgSend(v9, "writeBool:", objc_msgSend(v8, "cylRightSignFlipped")) || !objc_msgSend(v9, "writeUInteger:bitWidth:", v19, 2) || !objc_msgSend(v9, "writeUInteger:bitWidth:", v18, 2) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "lensType"), 2) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "leftRXID"), 10) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "leftAxisID"), 6) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "rightRXID"), 10) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "rightAxisID"), 6) || (objc_msgSend(v8, "secret"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "writeData:bitWidth:", v10, 80), v10, (v11 & 1) == 0))
  {
    if (a5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = MEMORY[0x277CBEC10];
      v15 = 4;
      v16 = 1535;
      goto LABEL_22;
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v12 = 1;
LABEL_24:

  return v12;
}

- (id)decodeAppClipCodeV5FromBuffer:(id)a3 allowUnsupportedRX:(BOOL)a4 error:(id *)a5
{
  v72[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 bitCount] == 128)
  {
    v70 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    v62 = 0;
    if ([v8 skipBits:4] && objc_msgSend(v8, "readBool:", &v70 + 1) && objc_msgSend(v8, "readBool:", &v70) && objc_msgSend(v8, "readUInteger:bitWidth:", &v65, 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v64, 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v62, 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v69, 11) && objc_msgSend(v8, "readUInteger:bitWidth:", &v67, 6) && objc_msgSend(v8, "readUInteger:bitWidth:", &v68, 11) && objc_msgSend(v8, "readUInteger:bitWidth:", &v66, 6) && objc_msgSend(v8, "readUInteger:bitWidth:", &v63, 2) && (objc_msgSend(v8, "readData:bitWidth:", v9, 80) & 1) != 0)
    {
      v60 = 0;
      v61 = 0;
      v58 = 0;
      v59 = 0;
      v56 = 0;
      v57 = 0;
      v54 = 0;
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      if (v69)
      {
        LOBYTE(v20) = a4;
        LOBYTE(v19) = HIBYTE(v70);
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v50 calibrationSphere:&v57 + 4 calibrationCylinder:&v57 calibrationAxis:&v52 addVR:&v55 + 4 clampingStatus:&v61 displaySphere:&v59 + 4 displayCylinder:&v59 displayAxis:&v54 fromRXID:v69 RXOffsetID:v65 cylinderSignFlipped:v19 axisID:v67 allowUnsupportedRX:v20];
      }

      else
      {
        v10 = 0;
      }

      if (v68)
      {
        LOBYTE(v20) = a4;
        LOBYTE(v19) = v70;
        v12 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v49 calibrationSphere:&v56 + 4 calibrationCylinder:&v56 calibrationAxis:&v51 addVR:&v55 clampingStatus:&v60 displaySphere:&v58 + 4 displayCylinder:&v58 displayAxis:&v53 fromRXID:v68 RXOffsetID:v64 cylinderSignFlipped:v19 axisID:v66 allowUnsupportedRX:v20];
      }

      else
      {
        v12 = 0;
      }

      if (!(v10 | v12))
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV5FromBuffer_allowUnsupportedRX_error___block_invoke;
        v21[3] = &unk_278E9FC68;
        v47 = HIBYTE(v70);
        v48 = v70;
        v23 = v62;
        v24 = v69;
        v37 = HIDWORD(v59);
        v38 = v59;
        v39 = HIDWORD(v57);
        v40 = v57;
        v25 = v50;
        v26 = v67;
        v27 = v54;
        v28 = v52;
        v29 = v61;
        v30 = v68;
        v41 = HIDWORD(v55);
        v42 = HIDWORD(v58);
        v43 = v58;
        v44 = HIDWORD(v56);
        v45 = v56;
        v46 = v55;
        v31 = v49;
        v32 = v66;
        v33 = v53;
        v34 = v51;
        v35 = v60;
        v22 = v9;
        v36 = v63;
        v11 = [CRXFAppClipCode appClipCodeWithBlock:v21];
        v14 = v22;
        goto LABEL_34;
      }

      if (a5)
      {
        v13 = MEMORY[0x277CCA9B8];
        v71[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v72[0] = v14;
        v71[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v72[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
        *a5 = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1650 userInfo:v16];

        v11 = 0;
LABEL_34:

        goto LABEL_29;
      }
    }

    else if (a5)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1594 userInfo:MEMORY[0x277CBEC10]];
      *a5 = v11 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v11 = 0;
    goto LABEL_29;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1568 userInfo:MEMORY[0x277CBEC10]];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_30:

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

void __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV5FromBuffer_allowUnsupportedRX_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  [v13 setVersion:5];
  [v13 setLensType:*(a1 + 40)];
  [v13 setCylLeftSignFlipped:*(a1 + 192)];
  [v13 setCylRightSignFlipped:*(a1 + 193)];
  [v13 setLeftRXID:*(a1 + 48)];
  [v13 setLeftCalibrationRXID:*(a1 + 56)];
  LODWORD(v3) = *(a1 + 152);
  [v13 setLeftDisplaySphere:v3];
  LODWORD(v4) = *(a1 + 156);
  [v13 setLeftDisplayCylinder:v4];
  LODWORD(v5) = *(a1 + 160);
  [v13 setLeftCalibrationSphere:v5];
  LODWORD(v6) = *(a1 + 164);
  [v13 setLeftCalibrationCylinder:v6];
  LODWORD(v7) = *(a1 + 168);
  [v13 setLeftAddVR:v7];
  [v13 setLeftAxisID:*(a1 + 64)];
  [v13 setLeftDisplayAxis:*(a1 + 72)];
  [v13 setLeftCalibrationAxis:*(a1 + 80)];
  [v13 setLeftClamping:*(a1 + 88)];
  [v13 setRightRXID:*(a1 + 96)];
  [v13 setRightCalibrationRXID:*(a1 + 104)];
  LODWORD(v8) = *(a1 + 172);
  [v13 setRightDisplaySphere:v8];
  LODWORD(v9) = *(a1 + 176);
  [v13 setRightDisplayCylinder:v9];
  LODWORD(v10) = *(a1 + 180);
  [v13 setRightCalibrationSphere:v10];
  LODWORD(v11) = *(a1 + 184);
  [v13 setRightCalibrationCylinder:v11];
  LODWORD(v12) = *(a1 + 188);
  [v13 setRightAddVR:v12];
  [v13 setRightAxisID:*(a1 + 112)];
  [v13 setRightDisplayAxis:*(a1 + 120)];
  [v13 setRightCalibrationAxis:*(a1 + 128)];
  [v13 setRightClamping:*(a1 + 136)];
  [v13 setIdentifyingColor:0];
  [v13 setSecret:*(a1 + 32)];
  [v13 setRandomBits:*(a1 + 144)];
}

- (BOOL)encodeAppClipCodeV5:(id)a3 toBuffer:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = 0;
  [v8 leftAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v19 maxValue:? index:?])
  {
    if (!a5)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1699;
LABEL_22:
    [v13 crxf_errorWithCode:v15 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v16 userInfo:v14];
    *a5 = v12 = 0;
    goto LABEL_24;
  }

  [v8 rightAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v18 maxValue:? index:?])
  {
    if (!a5)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1709;
    goto LABEL_22;
  }

  if (![v9 writeUInteger:objc_msgSend(v8 bitWidth:{"version"), 4}] || !objc_msgSend(v9, "writeBool:", objc_msgSend(v8, "cylLeftSignFlipped")) || !objc_msgSend(v9, "writeBool:", objc_msgSend(v8, "cylRightSignFlipped")) || !objc_msgSend(v9, "writeUInteger:bitWidth:", v19, 2) || !objc_msgSend(v9, "writeUInteger:bitWidth:", v18, 2) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "lensType"), 2) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "leftRXID"), 11) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "leftAxisID"), 6) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "rightRXID"), 11) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "rightAxisID"), 6) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "randomBits"), 2) || (objc_msgSend(v8, "secret"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "writeData:bitWidth:", v10, 80), v10, (v11 & 1) == 0))
  {
    if (a5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = MEMORY[0x277CBEC10];
      v15 = 4;
      v16 = 1727;
      goto LABEL_22;
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v12 = 1;
LABEL_24:

  return v12;
}

- (id)decodeAppClipCodeV6FromBuffer:(id)a3 allowUnsupportedRX:(BOOL)a4 error:(id *)a5
{
  v94[6] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 bitCount] == 152)
  {
    v92 = 0;
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    v86 = 0;
    v87 = 0;
    v85 = 0;
    v83 = 0;
    v84 = 0;
    v82 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    v80 = 2;
    v81 = 0;
    v78 = 2;
    v79 = 2;
    v77 = 2;
    if ([v8 readData:v9 bitWidth:80] && objc_msgSend(v8, "readBool:", &v92) && objc_msgSend(v8, "readUInteger:bitWidth:", &v87, 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v86, 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v81, 2) && objc_msgSend(v8, "readUInteger:bitWidth:", &v91, 11) && objc_msgSend(v8, "readUInteger:bitWidth:", &v89, 6) && objc_msgSend(v8, "readUInteger:bitWidth:", &v90, 11) && objc_msgSend(v8, "readUInteger:bitWidth:", &v88, 6) && objc_msgSend(v8, "readUInteger:bitWidth:", &v85, 5) && objc_msgSend(v8, "readUInteger:bitWidth:", &v84, 5) && objc_msgSend(v8, "readUInteger:bitWidth:", &v78, 1) && objc_msgSend(v8, "readUInteger:bitWidth:", &v77, 1) && objc_msgSend(v8, "readUInteger:bitWidth:", &v83, 5) && objc_msgSend(v8, "readUInteger:bitWidth:", &v82, 5) && objc_msgSend(v8, "readUInteger:bitWidth:", &v80, 1) && objc_msgSend(v8, "readUInteger:bitWidth:", &v79, 1) && objc_msgSend(v8, "skipBits:", 4) && (objc_msgSend(v8, "skipBits:", 3) & 1) != 0)
    {
      v75 = 0;
      v76 = 0;
      v73 = 0;
      v74 = 0;
      v71 = 0;
      v72 = 0;
      v69 = 0;
      v70 = 0;
      v67 = 0;
      v68 = 0;
      v65 = 0;
      v66 = 0;
      v63 = 0;
      v64 = 0;
      v62 = 0;
      if (v91)
      {
        LOBYTE(v26) = a4;
        LOBYTE(v25) = v92;
        v11 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v63 calibrationSphere:&v72 + 4 calibrationCylinder:&v72 calibrationAxis:&v65 addVR:&v68 + 4 clampingStatus:&v76 displaySphere:&v74 + 4 displayCylinder:&v74 displayAxis:&v67 fromRXID:v91 RXOffsetID:v87 cylinderSignFlipped:v25 axisID:v89 allowUnsupportedRX:v26];
      }

      else
      {
        v11 = 0;
      }

      if (v90)
      {
        LOBYTE(v26) = a4;
        LOBYTE(v25) = v92;
        v13 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v62 calibrationSphere:&v71 + 4 calibrationCylinder:&v71 calibrationAxis:&v64 addVR:&v68 clampingStatus:&v75 displaySphere:&v73 + 4 displayCylinder:&v73 displayAxis:&v66 fromRXID:v90 RXOffsetID:v86 cylinderSignFlipped:v25 axisID:v88 allowUnsupportedRX:v26];
      }

      else
      {
        v13 = 0;
      }

      LODWORD(v10) = 7.75;
      if (![(CRXFAppClipCodeTranscoder *)self getQuarterDiopterValueForIndex:v85 minValue:&v70 + 4 maxValue:0.0 value:v10]|| (LODWORD(v14) = 7.75, ![(CRXFAppClipCodeTranscoder *)self getQuarterDiopterValueForIndex:v83 minValue:&v70 maxValue:0.0 value:v14]))
      {
        v11 |= 0x40uLL;
      }

      LODWORD(v14) = 7.75;
      if ([(CRXFAppClipCodeTranscoder *)self getQuarterDiopterValueForIndex:v84 minValue:&v69 + 4 maxValue:0.0 value:v14]&& (LODWORD(v15) = 7.75, [(CRXFAppClipCodeTranscoder *)self getQuarterDiopterValueForIndex:v82 minValue:&v69 maxValue:0.0 value:v15]))
      {
        if (!(v11 | v13))
        {
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV6FromBuffer_allowUnsupportedRX_error___block_invoke;
          v28[3] = &unk_278E9FC90;
          v61 = v92;
          v30 = v81;
          v31 = v91;
          v47 = HIDWORD(v74);
          v48 = v74;
          v49 = HIDWORD(v72);
          v50 = v72;
          v32 = v63;
          v33 = v89;
          v34 = v67;
          v35 = v65;
          v51 = HIDWORD(v68);
          v52 = HIDWORD(v70);
          v36 = v78;
          v37 = v80;
          v38 = v76;
          v39 = v90;
          v53 = v70;
          v54 = HIDWORD(v73);
          v55 = v73;
          v56 = HIDWORD(v71);
          v57 = v71;
          v58 = v68;
          v40 = v62;
          v41 = v88;
          v42 = v66;
          v43 = v64;
          v44 = v77;
          v45 = v79;
          v59 = HIDWORD(v69);
          v60 = v69;
          v46 = v75;
          v29 = v9;
          v12 = [CRXFAppClipCode appClipCodeWithBlock:v28];
          v16 = v29;
LABEL_42:

          goto LABEL_44;
        }
      }

      else
      {
        v13 |= 0x40uLL;
      }

      if (a5)
      {
        v27 = MEMORY[0x277CCA9B8];
        v93[0] = @"leftLensDecodeStatus";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
        v94[0] = v16;
        v93[1] = @"leftLensRXID";
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v91];
        v94[1] = v17;
        v93[2] = @"leftLensAxisID";
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v89];
        v94[2] = v18;
        v93[3] = @"rightLensDecodeStatus";
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
        v94[3] = v19;
        v93[4] = @"rightLensRXID";
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v90];
        v94[4] = v20;
        v93[5] = @"rightLensAxisID";
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v88];
        v94[5] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:6];
        *a5 = [v27 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1863 userInfo:v22];

        v12 = 0;
        goto LABEL_42;
      }
    }

    else if (a5)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1780 userInfo:MEMORY[0x277CBEC10]];
      *a5 = v12 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v12 = 0;
    goto LABEL_44;
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1743 userInfo:MEMORY[0x277CBEC10]];
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_45:

  v23 = *MEMORY[0x277D85DE8];

  return v12;
}

void __84__CRXFAppClipCodeTranscoder_decodeAppClipCodeV6FromBuffer_allowUnsupportedRX_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  [v17 setVersion:6];
  [v17 setLensType:*(a1 + 40)];
  [v17 setCylLeftSignFlipped:*(a1 + 232)];
  [v17 setCylRightSignFlipped:*(a1 + 232)];
  [v17 setLeftRXID:*(a1 + 48)];
  [v17 setLeftCalibrationRXID:*(a1 + 56)];
  LODWORD(v3) = *(a1 + 176);
  [v17 setLeftDisplaySphere:v3];
  LODWORD(v4) = *(a1 + 180);
  [v17 setLeftDisplayCylinder:v4];
  LODWORD(v5) = *(a1 + 184);
  [v17 setLeftCalibrationSphere:v5];
  LODWORD(v6) = *(a1 + 188);
  [v17 setLeftCalibrationCylinder:v6];
  LODWORD(v7) = *(a1 + 192);
  [v17 setLeftAddVR:v7];
  [v17 setLeftAxisID:*(a1 + 64)];
  [v17 setLeftDisplayAxis:*(a1 + 72)];
  [v17 setLeftCalibrationAxis:*(a1 + 80)];
  [v17 setLeftHorizPrismBaseDirection:*(a1 + 88)];
  LODWORD(v8) = *(a1 + 196);
  [v17 setLeftHorizPrism:v8];
  [v17 setLeftVertPrismBaseDirection:*(a1 + 96)];
  LODWORD(v9) = *(a1 + 200);
  [v17 setLeftVertPrism:v9];
  [v17 setLeftClamping:*(a1 + 104)];
  [v17 setRightRXID:*(a1 + 112)];
  [v17 setRightCalibrationRXID:*(a1 + 120)];
  LODWORD(v10) = *(a1 + 204);
  [v17 setRightDisplaySphere:v10];
  LODWORD(v11) = *(a1 + 208);
  [v17 setRightDisplayCylinder:v11];
  LODWORD(v12) = *(a1 + 212);
  [v17 setRightCalibrationSphere:v12];
  LODWORD(v13) = *(a1 + 216);
  [v17 setRightCalibrationCylinder:v13];
  LODWORD(v14) = *(a1 + 220);
  [v17 setRightAddVR:v14];
  [v17 setRightAxisID:*(a1 + 128)];
  [v17 setRightDisplayAxis:*(a1 + 136)];
  [v17 setRightCalibrationAxis:*(a1 + 144)];
  [v17 setRightHorizPrismBaseDirection:*(a1 + 152)];
  LODWORD(v15) = *(a1 + 224);
  [v17 setRightHorizPrism:v15];
  [v17 setRightVertPrismBaseDirection:*(a1 + 160)];
  LODWORD(v16) = *(a1 + 228);
  [v17 setRightVertPrism:v16];
  [v17 setRightClamping:*(a1 + 168)];
  [v17 setIdentifyingColor:0];
  [v17 setSecret:*(a1 + 32)];
}

- (BOOL)encodeAppClipCodeV6:(id)a3 toBuffer:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = 0;
  [v8 leftAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v23 maxValue:? index:?])
  {
    if (!a5)
    {
      goto LABEL_39;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1919;
LABEL_33:
    [v13 crxf_errorWithCode:v15 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v16 userInfo:v14];
    *a5 = v12 = 0;
    goto LABEL_40;
  }

  [v8 rightAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v22 maxValue:? index:?])
  {
    if (!a5)
    {
      goto LABEL_39;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1929;
    goto LABEL_33;
  }

  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  [v8 leftHorizPrism];
  if (!-[CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:minValue:maxValue:index:](self, "getIndexForQuarterDiopterValue:minValue:maxValue:index:", &v21) || ([v8 leftVertPrism], !-[CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:minValue:maxValue:index:](self, "getIndexForQuarterDiopterValue:minValue:maxValue:index:", &v19)))
  {
    if (!a5)
    {
      goto LABEL_39;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1946;
    goto LABEL_33;
  }

  [v8 rightHorizPrism];
  if (!-[CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:minValue:maxValue:index:](self, "getIndexForQuarterDiopterValue:minValue:maxValue:index:", &v20) || ([v8 rightVertPrism], !-[CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:minValue:maxValue:index:](self, "getIndexForQuarterDiopterValue:minValue:maxValue:index:", &v18)))
  {
    if (!a5)
    {
      goto LABEL_39;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1960;
    goto LABEL_33;
  }

  v10 = [v8 secret];
  if (![v9 writeData:v10 bitWidth:80] || !objc_msgSend(v9, "writeBool:", objc_msgSend(v8, "cylRightSignFlipped")) || !objc_msgSend(v9, "writeUInteger:bitWidth:", v23, 2) || !objc_msgSend(v9, "writeUInteger:bitWidth:", v22, 2) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "lensType"), 2) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "leftRXID"), 11) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "leftAxisID"), 6) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "rightRXID"), 11) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "rightAxisID"), 6) || !objc_msgSend(v9, "writeUInteger:bitWidth:", v21, 5) || !objc_msgSend(v9, "writeUInteger:bitWidth:", v20, 5) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "leftHorizPrismBaseDirection"), 1) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "rightHorizPrismBaseDirection"), 1) || !objc_msgSend(v9, "writeUInteger:bitWidth:", v19, 5) || !objc_msgSend(v9, "writeUInteger:bitWidth:", v18, 5) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "leftVertPrismBaseDirection"), 1) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "rightVertPrismBaseDirection"), 1) || !objc_msgSend(v9, "writeUInteger:bitWidth:", objc_msgSend(v8, "version"), 4))
  {

LABEL_37:
    if (a5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = MEMORY[0x277CBEC10];
      v15 = 4;
      v16 = 1985;
      goto LABEL_33;
    }

LABEL_39:
    v12 = 0;
    goto LABEL_40;
  }

  v11 = [v9 skipBits:3];

  if ((v11 & 1) == 0)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_40:

  return v12;
}

- (BOOL)getQuarterDiopterValueForIndex:(unint64_t)a3 minValue:(float)a4 maxValue:(float)a5 value:(float *)a6
{
  v6 = a4 + (a3 * 0.25);
  if (v6 <= a5)
  {
    *a6 = v6;
  }

  return v6 <= a5;
}

- (BOOL)getIndexForQuarterDiopterValue:(float)a3 minValue:(float)a4 maxValue:(float)a5 index:(unint64_t *)a6
{
  v6 = a3 <= a5 && a3 >= a4;
  if (v6)
  {
    *a6 = (((a3 - a4) * 100.0) + 24) / 0x19;
  }

  return v6;
}

- (id)deriveCanonicalPayloadFromPayload:(id)a3
{
  v4 = a3;
  v17 = 0;
  v5 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeFromData:v4 allowUnsupportedRX:0 error:&v17];
  v6 = v17;
  if (!v5)
  {
    v14 = 0;
    goto LABEL_10;
  }

  if ([v5 version] < 5)
  {
    v8 = v5;
    v12 = v6;
  }

  else
  {
    v7 = [[CRXFAppClipCodeBuilder alloc] initWithAppClipCode:v5];
    [(CRXFAppClipCodeBuilder *)v7 setVersion:5];
    v8 = [(CRXFAppClipCodeBuilder *)v7 build];

    v9 = -[CRXFAppClipCodeTranscoder payloadLengthForAppClipCodeVersion:](self, "payloadLengthForAppClipCodeVersion:", [v8 version]);
    v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v9];
    v16 = v6;
    v11 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCode:v8 toData:v10 error:&v16];
    v12 = v16;

    if (!v11)
    {

      v14 = 0;
      goto LABEL_9;
    }

    v13 = [MEMORY[0x277CBEA90] dataWithData:v10];

    v4 = v13;
  }

  v4 = v4;
  v14 = v4;
LABEL_9:

  v6 = v12;
LABEL_10:

  return v14;
}

- (id)derivePayloadWithLensTypeZeroed:(id)a3 ifLensTypeIs:(unint64_t)a4
{
  v17 = 0;
  v6 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeFromData:a3 allowUnsupportedRX:0 error:&v17];
  v7 = v17;
  if (v6 && [v6 lensType] == a4)
  {
    v8 = [[CRXFAppClipCodeBuilder alloc] initWithAppClipCode:v6];
    [(CRXFAppClipCodeBuilder *)v8 setLensType:0];
    v9 = [(CRXFAppClipCodeBuilder *)v8 build];

    v10 = -[CRXFAppClipCodeTranscoder payloadLengthForAppClipCodeVersion:](self, "payloadLengthForAppClipCodeVersion:", [v9 version]);
    v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v10];
    v16 = v7;
    v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCode:v9 toData:v11 error:&v16];
    v13 = v16;

    v14 = 0;
    if (v12)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithData:v11];
    }

    v6 = v9;
    v7 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24732C000, v0, v1, "%s @%d: rxID is out of range", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24732C000, v0, v1, "%s @%d: Failed to find any valid VRx", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)decodeCalibrationRXID:calibrationSphere:calibrationCylinder:calibrationAxis:addVR:clampingStatus:displaySphere:displayCylinder:displayAxis:fromRXID:RXOffsetID:cylinderSignFlipped:axisID:allowUnsupportedRX:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24732C000, v0, v1, "%s @%d: Failed to find any valid Rx without VRX", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end