@interface CRXFAppClipCodeTranscoder
+ (id)sharedInstance;
- (BOOL)encodeAppClipCode:(id)code toBytes:(char *)bytes length:(unint64_t)length error:(id *)error;
- (BOOL)encodeAppClipCode:(id)code toData:(id)data error:(id *)error;
- (BOOL)encodeAppClipCodeV1:(id)v1 toBuffer:(id)buffer error:(id *)error;
- (BOOL)encodeAppClipCodeV2:(id)v2 toBuffer:(id)buffer error:(id *)error;
- (BOOL)encodeAppClipCodeV3:(id)v3 toBuffer:(id)buffer error:(id *)error;
- (BOOL)encodeAppClipCodeV4:(id)v4 toBuffer:(id)buffer error:(id *)error;
- (BOOL)encodeAppClipCodeV5:(id)v5 toBuffer:(id)buffer error:(id *)error;
- (BOOL)encodeAppClipCodeV6:(id)v6 toBuffer:(id)buffer error:(id *)error;
- (BOOL)getIndexForQuarterDiopterValue:(float)value minValue:(float)minValue maxValue:(float)maxValue index:(unint64_t *)index;
- (BOOL)getQuarterDiopterValueForIndex:(unint64_t)index minValue:(float)value maxValue:(float)maxValue value:(float *)a6;
- (BOOL)isACCVersionSupported:(unint64_t)supported;
- (CRXFAppClipCodeTranscoder)init;
- (id)decodeAppClipCodeV1FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeV2FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeV3FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeV4FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeV5FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)decodeAppClipCodeV6FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error;
- (id)deriveCanonicalPayloadFromPayload:(id)payload;
- (id)derivePayloadWithLensTypeZeroed:(id)zeroed ifLensTypeIs:(unint64_t)is;
- (id)encodeAppClipCodeToHexString:(id)string error:(id *)error;
- (id)errorForStatus:(unint64_t)status leftLens:(BOOL)lens;
- (id)generateAppClipCodeWithVersion:(unint64_t)version lensType:(unint64_t)type haveLeftLens:(BOOL)lens leftSphere:(float)sphere leftCylinder:(float)cylinder leftAxis:(unint64_t)axis leftAddVR:(float)r haveRightLens:(BOOL)self0 rightSphere:(float)self1 rightCylinder:(float)self2 rightAxis:(unint64_t)self3 rightAddVR:(float)self4 identifyingColor:(unint64_t)self5 secret:(id)self6 error:(id *)self7;
- (id)generateAppClipCodeWithVersion:(unint64_t)version lensType:(unint64_t)type haveLeftLens:(BOOL)lens leftSphere:(float)sphere leftCylinder:(float)cylinder leftAxis:(unint64_t)axis leftAddVR:(float)r leftHorizPrismBaseDirection:(unint64_t)self0 leftHorizPrism:(float)self1 leftVertPrismBaseDirection:(unint64_t)self2 leftVertPrism:(float)self3 haveRightLens:(BOOL)self4 rightSphere:(float)self5 rightCylinder:(float)self6 rightAxis:(unint64_t)self7 rightAddVR:(float)self8 rightHorizPrismBaseDirection:(unint64_t)self9 rightHorizPrism:(float)horizPrism rightVertPrismBaseDirection:(unint64_t)vertPrismBaseDirection rightVertPrism:(float)rightVertPrism identifyingColor:(unint64_t)color secret:(id)secret error:(id *)error;
- (id)mergeLeftAppClipCode:(id)code withRightAppClipCode:(id)clipCode error:(id *)error;
- (unint64_t)decodeAppClipCodeVersionFromBuffer:(id)buffer error:(id *)error;
- (unint64_t)decodeCalibrationRXID:(unint64_t *)d calibrationSphere:(float *)sphere calibrationCylinder:(float *)cylinder calibrationAxis:(unint64_t *)axis addVR:(float *)r clampingStatus:(unint64_t *)status displaySphere:(float *)displaySphere displayCylinder:(float *)self0 displayAxis:(unint64_t *)self1 fromRXID:(unint64_t)self2 RXOffsetID:(unint64_t)self3 cylinderSignFlipped:(BOOL)self4 axisID:(unint64_t)self5 allowUnsupportedRX:(BOOL)self6;
- (unint64_t)encodeSphere:(float)sphere cylinder:(float)cylinder axis:(unint64_t)axis toRXID:(unint64_t *)d axisID:(unint64_t *)iD;
- (unint64_t)lookUpRXID:(unint64_t *)d forSphereValue:(float)value cylinderValue:(float)cylinderValue;
- (unint64_t)lookupBestValidRXID:(unint64_t *)d andSphere:(float *)sphere matchingCylinder:(float)cylinder nearSphere:(float)nearSphere;
- (unint64_t)payloadLengthForAppClipCodeVersion:(unint64_t)version;
@end

@implementation CRXFAppClipCodeTranscoder

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CRXFAppClipCodeTranscoder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (unint64_t)payloadLengthForAppClipCodeVersion:(unint64_t)version
{
  if (version <= 5)
  {
    return 16;
  }

  else
  {
    return 19;
  }
}

- (unint64_t)decodeAppClipCodeVersionFromBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  v10 = 0;
  if ([bufferCopy byteCount] != 16)
  {
    if ([bufferCopy byteCount] != 19)
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

    if (([bufferCopy skipBits:145] & 1) == 0)
    {
      v6 = 97;
      goto LABEL_6;
    }
  }

LABEL_7:
  if ([bufferCopy readUInteger:&v10 bitWidth:4])
  {
    v7 = 0;
    goto LABEL_13;
  }

  v7 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:107 userInfo:MEMORY[0x277CBEC10]];
LABEL_10:
  if (error && v7)
  {
    v7 = v7;
    *error = v7;
  }

LABEL_13:
  v8 = v10;

  return v8;
}

- (BOOL)isACCVersionSupported:(unint64_t)supported
{
  if (supported - 1 < 5)
  {
    return 1;
  }

  if (supported == 6)
  {
    return MEMORY[0x282203478]("SeaLevel", "SeaUrchin");
  }

  return 0;
}

- (BOOL)encodeAppClipCode:(id)code toBytes:(char *)bytes length:(unint64_t)length error:(id *)error
{
  v10 = MEMORY[0x277CBEB28];
  codeCopy = code;
  v12 = [[v10 alloc] initWithBytesNoCopy:bytes length:length freeWhenDone:0];
  LOBYTE(error) = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCode:codeCopy toData:v12 error:error];

  return error;
}

- (id)encodeAppClipCodeToHexString:(id)string error:(id *)error
{
  stringCopy = string;
  v7 = -[CRXFAppClipCodeTranscoder payloadLengthForAppClipCodeVersion:](self, "payloadLengthForAppClipCodeVersion:", [stringCopy version]);
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v7];
  LODWORD(error) = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCode:stringCopy toData:v8 error:error];

  if (error)
  {
    crxu_asHexString = [v8 crxu_asHexString];
  }

  else
  {
    crxu_asHexString = 0;
  }

  return crxu_asHexString;
}

- (BOOL)encodeAppClipCode:(id)code toData:(id)data error:(id *)error
{
  codeCopy = code;
  dataCopy = data;
  v10 = [[CRXUBitBuffer alloc] initWithMutableData:dataCopy];

  version = [codeCopy version];
  if (version > 3)
  {
    switch(version)
    {
      case 4:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV4:codeCopy toBuffer:v10 error:error];
        goto LABEL_16;
      case 5:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV5:codeCopy toBuffer:v10 error:error];
        goto LABEL_16;
      case 6:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV6:codeCopy toBuffer:v10 error:error];
        goto LABEL_16;
    }
  }

  else
  {
    switch(version)
    {
      case 1:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV1:codeCopy toBuffer:v10 error:error];
        goto LABEL_16;
      case 2:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV2:codeCopy toBuffer:v10 error:error];
        goto LABEL_16;
      case 3:
        v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCodeV3:codeCopy toBuffer:v10 error:error];
LABEL_16:
        v13 = v12;
        goto LABEL_17;
    }
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:2 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:301 userInfo:MEMORY[0x277CBEC10]];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_17:

  return v13;
}

- (id)generateAppClipCodeWithVersion:(unint64_t)version lensType:(unint64_t)type haveLeftLens:(BOOL)lens leftSphere:(float)sphere leftCylinder:(float)cylinder leftAxis:(unint64_t)axis leftAddVR:(float)r haveRightLens:(BOOL)self0 rightSphere:(float)self1 rightCylinder:(float)self2 rightAxis:(unint64_t)self3 rightAddVR:(float)self4 identifyingColor:(unint64_t)self5 secret:(id)self6 error:(id *)self7
{
  rightLensCopy = rightLens;
  lensCopy = lens;
  secretCopy = secret;
  sphereCopy = sphere;
  cylinderCopy = cylinder;
  axisCopy = axis;
  v29 = vrx_apply_eye_rx_cylinder_sign_flip(&sphereCopy);
  if (v29)
  {
    sphere = sphereCopy;
    cylinder = cylinderCopy;
    axis = axisCopy;
  }

  rightSphereCopy = rightSphere;
  rightCylinderCopy = rightCylinder;
  rightAxisCopy = rightAxis;
  v30 = vrx_apply_eye_rx_cylinder_sign_flip(&rightSphereCopy);
  if (v30)
  {
    HIDWORD(v32) = HIDWORD(rightCylinderCopy);
    rightSphere = rightSphereCopy;
    rightCylinder = rightCylinderCopy;
    HIDWORD(v31) = HIDWORD(rightAxisCopy);
    rightAxis = rightAxisCopy;
  }

  if (!secretCopy)
  {
    secretCopy = [MEMORY[0x277CBEA90] crxu_randomDataWithLength:10];
  }

  v52 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  if (!lensCopy)
  {
    v34 = 1;
    if (rightLensCopy)
    {
      goto LABEL_12;
    }

LABEL_16:
    v36 = 1;
    goto LABEL_17;
  }

  *&v31 = sphere;
  *&v32 = cylinder;
  v33 = [(CRXFAppClipCodeTranscoder *)self encodeSphere:axis cylinder:&v52 axis:&v50 toRXID:v31 axisID:v32];
  v34 = v33 == 0;
  if (error && v33)
  {
    [(CRXFAppClipCodeTranscoder *)self errorForStatus:v33 leftLens:1];
    *error = v34 = 0;
  }

  if (!rightLensCopy)
  {
    goto LABEL_16;
  }

LABEL_12:
  *&v31 = rightSphere;
  *&v32 = rightCylinder;
  v35 = [(CRXFAppClipCodeTranscoder *)self encodeSphere:rightAxis cylinder:&v51 axis:&v49 toRXID:v31 axisID:v32];
  v36 = v35 == 0;
  if (error && v35)
  {
    [(CRXFAppClipCodeTranscoder *)self errorForStatus:v35 leftLens:0];
    *error = v37 = 0;
    goto LABEL_20;
  }

LABEL_17:
  if (v34 && v36)
  {
    v38 = [CRXFAppClipCode alloc];
    LODWORD(v46) = 0;
    LODWORD(v45) = 0;
    *&v39 = cylinder;
    *&v40 = sphere;
    *&v41 = cylinder;
    *&v42 = r;
    *&v43 = rightSphere;
    v37 = [(CRXFAppClipCode *)v38 initWithVersion:version lensType:type cylLeftSignFlipped:v29 != 0 cylRightSignFlipped:v30 != 0 leftRXID:v52 leftCalibrationRXID:v52 leftDisplaySphere:COERCE_DOUBLE(LODWORD(sphere)) leftDisplayCylinder:v39 leftCalibrationSphere:v40 leftCalibrationCylinder:v41 leftAddVR:v42 leftAxisID:0.0 leftDisplayAxis:0.0 leftCalibrationAxis:v43 leftClamping:v50 leftHorizPrismBaseDirection:axis leftHorizPrism:axis leftVertPrismBaseDirection:0 leftVertPrism:0 rightRXID:0 rightCalibrationRXID:v51 rightDisplaySphere:v51 rightDisplayCylinder:__PAIR64__(LODWORD(rightSphere) rightCalibrationSphere:LODWORD(rightCylinder)) rightCalibrationCylinder:__PAIR64__(LODWORD(vR) rightAddVR:LODWORD(rightCylinder)) rightAxisID:v49 rightDisplayAxis:rightAxis rightCalibrationAxis:rightAxis rightClamping:0 rightHorizPrismBaseDirection:0 rightHorizPrism:v45 rightVertPrismBaseDirection:0 rightVertPrism:v46 identifyingColor:color secret:secretCopy randomBits:0];
  }

  else
  {
    v37 = 0;
  }

LABEL_20:

  return v37;
}

- (id)generateAppClipCodeWithVersion:(unint64_t)version lensType:(unint64_t)type haveLeftLens:(BOOL)lens leftSphere:(float)sphere leftCylinder:(float)cylinder leftAxis:(unint64_t)axis leftAddVR:(float)r leftHorizPrismBaseDirection:(unint64_t)self0 leftHorizPrism:(float)self1 leftVertPrismBaseDirection:(unint64_t)self2 leftVertPrism:(float)self3 haveRightLens:(BOOL)self4 rightSphere:(float)self5 rightCylinder:(float)self6 rightAxis:(unint64_t)self7 rightAddVR:(float)self8 rightHorizPrismBaseDirection:(unint64_t)self9 rightHorizPrism:(float)horizPrism rightVertPrismBaseDirection:(unint64_t)vertPrismBaseDirection rightVertPrism:(float)rightVertPrism identifyingColor:(unint64_t)color secret:(id)secret error:(id *)error
{
  lensCopy = lens;
  rightAxisCopy = rightAxis;
  secretCopy = secret;
  sphereCopy = sphere;
  cylinderCopy = cylinder;
  axisCopy = axis;
  v36 = vrx_apply_eye_rx_cylinder_sign_flip(&sphereCopy);
  if (v36)
  {
    sphere = sphereCopy;
    cylinder = cylinderCopy;
    axis = axisCopy;
  }

  rightSphereCopy = rightSphere;
  rightCylinderCopy = rightCylinder;
  rightAxisCopy2 = rightAxis;
  v37 = vrx_apply_eye_rx_cylinder_sign_flip(&rightSphereCopy);
  if (v37)
  {
    HIDWORD(v39) = HIDWORD(rightCylinderCopy);
    rightSphere = rightSphereCopy;
    rightCylinder = rightCylinderCopy;
    HIDWORD(v38) = HIDWORD(rightAxisCopy2);
    rightAxisCopy = rightAxisCopy2;
  }

  if (!secretCopy)
  {
    secretCopy = [MEMORY[0x277CBEA90] crxu_randomDataWithLength:10];
  }

  v65 = 0;
  v66 = 0;
  v64 = 0;
  v63 = 0;
  if (!lensCopy)
  {
    v41 = 1;
    if (rightLens)
    {
      goto LABEL_12;
    }

LABEL_16:
    v43 = 1;
    goto LABEL_17;
  }

  *&v38 = sphere;
  *&v39 = cylinder;
  v40 = [(CRXFAppClipCodeTranscoder *)self encodeSphere:axis cylinder:&v66 axis:&v64 toRXID:v38 axisID:v39];
  v41 = v40 == 0;
  if (error && v40)
  {
    [(CRXFAppClipCodeTranscoder *)self errorForStatus:v40 leftLens:1];
    *error = v41 = 0;
  }

  if (!rightLens)
  {
    goto LABEL_16;
  }

LABEL_12:
  *&v38 = rightSphere;
  *&v39 = rightCylinder;
  v42 = [(CRXFAppClipCodeTranscoder *)self encodeSphere:rightAxisCopy cylinder:&v65 axis:&v63 toRXID:v38 axisID:v39];
  v43 = v42 == 0;
  if (error && v42)
  {
    [(CRXFAppClipCodeTranscoder *)self errorForStatus:v42 leftLens:0];
    *error = v44 = 0;
    goto LABEL_20;
  }

LABEL_17:
  if (v41 && v43)
  {
    v45 = [CRXFAppClipCode alloc];
    *&v56 = rightVertPrism;
    *&v55 = horizPrism;
    *&v46 = sphere;
    *&v47 = cylinder;
    *&v48 = sphere;
    *&v49 = cylinder;
    *&v50 = r;
    *&v51 = prism;
    *&v52 = vertPrism;
    *&v53 = rightSphere;
    v44 = [(CRXFAppClipCode *)v45 initWithVersion:version lensType:type cylLeftSignFlipped:v36 != 0 cylRightSignFlipped:v37 != 0 leftRXID:v66 leftCalibrationRXID:v66 leftDisplaySphere:v46 leftDisplayCylinder:v47 leftCalibrationSphere:v48 leftCalibrationCylinder:v49 leftAddVR:v50 leftAxisID:v51 leftDisplayAxis:v52 leftCalibrationAxis:v53 leftClamping:v64 leftHorizPrismBaseDirection:axis leftHorizPrism:axis leftVertPrismBaseDirection:0 leftVertPrism:direction rightRXID:baseDirection rightCalibrationRXID:v65 rightDisplaySphere:v65 rightDisplayCylinder:__PAIR64__(LODWORD(rightSphere) rightCalibrationSphere:LODWORD(rightCylinder)) rightCalibrationCylinder:__PAIR64__(LODWORD(vR) rightAddVR:LODWORD(rightCylinder)) rightAxisID:v63 rightDisplayAxis:rightAxisCopy rightCalibrationAxis:rightAxisCopy rightClamping:0 rightHorizPrismBaseDirection:prismBaseDirection rightHorizPrism:v55 rightVertPrismBaseDirection:vertPrismBaseDirection rightVertPrism:v56 identifyingColor:color secret:secretCopy randomBits:0];
  }

  else
  {
    v44 = 0;
  }

LABEL_20:

  return v44;
}

- (id)mergeLeftAppClipCode:(id)code withRightAppClipCode:(id)clipCode error:(id *)error
{
  codeCopy = code;
  clipCodeCopy = clipCode;
  version = [codeCopy version];
  if (version == [clipCodeCopy version])
  {
    if ([codeCopy rightRXID] || objc_msgSend(clipCodeCopy, "leftRXID"))
    {
      if (error)
      {
        v10 = MEMORY[0x277CCA9B8];
        v11 = MEMORY[0x277CBEC10];
        v12 = 5;
        v13 = 561;
LABEL_8:
        [v10 crxf_errorWithCode:v12 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v13 userInfo:v11];
        *error = v14 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      lensType = [codeCopy lensType];
      if (lensType == [clipCodeCopy lensType])
      {
        v16 = [MEMORY[0x277CBEA90] crxu_randomDataWithLength:10];
        v73 = [CRXFAppClipCode alloc];
        version2 = [codeCopy version];
        lensType2 = [codeCopy lensType];
        cylLeftSignFlipped = [codeCopy cylLeftSignFlipped];
        cylRightSignFlipped = [codeCopy cylRightSignFlipped];
        leftRXID = [codeCopy leftRXID];
        leftCalibrationRXID = [codeCopy leftCalibrationRXID];
        [codeCopy leftDisplaySphere];
        v68 = v17;
        [codeCopy leftDisplayCylinder];
        v67 = v18;
        [codeCopy leftCalibrationSphere];
        v66 = v19;
        [codeCopy leftCalibrationCylinder];
        v65 = v20;
        [codeCopy leftAddVR];
        v64 = v21;
        leftAxisID = [codeCopy leftAxisID];
        leftDisplayAxis = [codeCopy leftDisplayAxis];
        leftCalibrationAxis = [codeCopy leftCalibrationAxis];
        leftClamping = [codeCopy leftClamping];
        leftHorizPrismBaseDirection = [codeCopy leftHorizPrismBaseDirection];
        [codeCopy leftHorizPrism];
        v23 = v22;
        leftVertPrismBaseDirection = [codeCopy leftVertPrismBaseDirection];
        [codeCopy leftVertPrism];
        v25 = v24;
        rightRXID = [clipCodeCopy rightRXID];
        rightCalibrationRXID = [clipCodeCopy rightCalibrationRXID];
        [clipCodeCopy rightDisplaySphere];
        v28 = v27;
        [clipCodeCopy rightDisplayCylinder];
        v30 = v29;
        [codeCopy rightCalibrationSphere];
        v32 = v31;
        [codeCopy rightCalibrationCylinder];
        v34 = v33;
        [clipCodeCopy rightAddVR];
        v36 = v35;
        rightAxisID = [clipCodeCopy rightAxisID];
        rightDisplayAxis = [clipCodeCopy rightDisplayAxis];
        rightCalibrationAxis = [clipCodeCopy rightCalibrationAxis];
        rightClamping = [clipCodeCopy rightClamping];
        rightHorizPrismBaseDirection = [codeCopy rightHorizPrismBaseDirection];
        [codeCopy rightHorizPrism];
        v43 = v42;
        rightVertPrismBaseDirection = [codeCopy rightVertPrismBaseDirection];
        [codeCopy rightVertPrism];
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
        v14 = [(CRXFAppClipCode *)v73 initWithVersion:version2 lensType:lensType2 cylLeftSignFlipped:cylLeftSignFlipped cylRightSignFlipped:cylRightSignFlipped leftRXID:leftRXID leftCalibrationRXID:leftCalibrationRXID leftDisplaySphere:v46 leftDisplayCylinder:v47 leftCalibrationSphere:v48 leftCalibrationCylinder:v49 leftAddVR:v50 leftAxisID:v51 leftDisplayAxis:v52 leftCalibrationAxis:v53 leftClamping:leftAxisID leftHorizPrismBaseDirection:leftDisplayAxis leftHorizPrism:leftCalibrationAxis leftVertPrismBaseDirection:leftClamping leftVertPrism:leftHorizPrismBaseDirection rightRXID:leftVertPrismBaseDirection rightCalibrationRXID:rightRXID rightDisplaySphere:rightCalibrationRXID rightDisplayCylinder:__PAIR64__(v32 rightCalibrationSphere:v30) rightCalibrationCylinder:__PAIR64__(v36 rightAddVR:v34) rightAxisID:rightAxisID rightDisplayAxis:rightDisplayAxis rightCalibrationAxis:rightCalibrationAxis rightClamping:rightClamping rightHorizPrismBaseDirection:rightHorizPrismBaseDirection rightHorizPrism:v55 rightVertPrismBaseDirection:rightVertPrismBaseDirection rightVertPrism:v56 identifyingColor:0 secret:v16 randomBits:0];

        goto LABEL_14;
      }

      if (error)
      {
        v10 = MEMORY[0x277CCA9B8];
        v11 = MEMORY[0x277CBEC10];
        v12 = 31;
        v13 = 568;
        goto LABEL_8;
      }
    }
  }

  else if (error)
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

- (unint64_t)decodeCalibrationRXID:(unint64_t *)d calibrationSphere:(float *)sphere calibrationCylinder:(float *)cylinder calibrationAxis:(unint64_t *)axis addVR:(float *)r clampingStatus:(unint64_t *)status displaySphere:(float *)displaySphere displayCylinder:(float *)self0 displayAxis:(unint64_t *)self1 fromRXID:(unint64_t)self2 RXOffsetID:(unint64_t)self3 cylinderSignFlipped:(BOOL)self4 axisID:(unint64_t)self5 allowUnsupportedRX:(BOOL)self6
{
  v50 = *MEMORY[0x277D85DE8];
  v47 = 0;
  iDCopy = iD;
  if (status)
  {
    *status = 0;
  }

  if (iD == 1023)
  {
    if (x)
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

    v24 = [(CRXFAppClipCodeTranscoder *)self lookUpSphereValue:&v47 + 4 cylinderValue:&v47 forRXID:iD];
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
  v29 = [(CRXFAppClipCodeTranscoder *)self lookUpAxisValue:&v46 forAxisID:axisID, v25];
  v32 = v46;
  if (v29)
  {
    v33 = v46;
  }

  else
  {
    v33 = 0;
  }

  v34 = vcvts_n_f32_u64(offsetID, 2uLL);
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
    if (flipped)
    {
      v44 = *buf;
      v45 = *&buf[16];
      vrx_unapply_eye_rx_cylinder_sign_flip(&v44);
      v27 = *&v44;
      v26 = *(&v44 + 1);
      v32 = v45;
    }

    if (offsetID)
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
  if ([(CRXFAppClipCodeTranscoder *)self lookupBestValidRXID:&iDCopy andSphere:&v47 + 4 matchingCylinder:v30 nearSphere:v31])
  {
    if (offsetID)
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

    rCopy4 = r;
    if (status)
    {
      v39 = 3;
      goto LABEL_45;
    }

    goto LABEL_52;
  }

  if (!offsetID)
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

      rCopy4 = r;
      if (status)
      {
        v39 = 1;
        goto LABEL_45;
      }

      goto LABEL_52;
    }

LABEL_51:
    rCopy4 = r;
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

  rCopy4 = r;
  if (status)
  {
    v39 = 2;
LABEL_45:
    *status = v39;
  }

LABEL_52:
  if (d)
  {
    *d = iDCopy;
  }

  if (sphere)
  {
    *sphere = *(&v47 + 1);
  }

  if (cylinder)
  {
    *cylinder = v47;
  }

  if (displaySphere)
  {
    *displaySphere = v27;
  }

  if (displayCylinder)
  {
    *displayCylinder = v26;
  }

  if (displayAxis)
  {
    *displayAxis = v32;
  }

  if (axis)
  {
    *axis = v46;
  }

  if (rCopy4)
  {
    *rCopy4 = v34;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v36;
}

- (unint64_t)encodeSphere:(float)sphere cylinder:(float)cylinder axis:(unint64_t)axis toRXID:(unint64_t *)d axisID:(unint64_t *)iD
{
  if (!d)
  {
    v11 = 0;
    if (!iD)
    {
      return v11;
    }

    goto LABEL_7;
  }

  v11 = [CRXFAppClipCodeTranscoder lookUpRXID:"lookUpRXID:forSphereValue:cylinderValue:" forSphereValue:d cylinderValue:?];
  if (v11)
  {
    *d = 0;
  }

  if (iD)
  {
LABEL_7:
    v12 = [(CRXFAppClipCodeTranscoder *)self lookUpAxisID:iD forAxisValue:axis];
    if (v12)
    {
      *iD = 0;
      v11 |= v12;
    }
  }

  return v11;
}

- (id)errorForStatus:(unint64_t)status leftLens:(BOOL)lens
{
  lensCopy = lens;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:status];
  v8 = kCRXFErrorKeyLeftLensDecodeStatus;
  if (!lensCopy)
  {
    v8 = kCRXFErrorKeyRightLensDecodeStatus;
  }

  [dictionary setObject:v7 forKeyedSubscript:*v8];

  v9 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:835 userInfo:dictionary];

  return v9;
}

- (unint64_t)lookUpRXID:(unint64_t *)d forSphereValue:(float)value cylinderValue:(float)cylinderValue
{
  result = [RXIDLookup sphere:"sphere:cylinder:toRXID:" cylinder:d toRXID:?];
  if (result >= 3)
  {
    return 1;
  }

  return result;
}

- (unint64_t)lookupBestValidRXID:(unint64_t *)d andSphere:(float *)sphere matchingCylinder:(float)cylinder nearSphere:(float)nearSphere
{
  v6 = [RXIDLookup bestValidRXID:"bestValidRXID:andSphere:matchingCylinder:nearSphere:" andSphere:d matchingCylinder:sphere nearSphere:?];
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

- (id)decodeAppClipCodeV1FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error
{
  v46[2] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if ([bufferCopy bitCount] == 128)
  {
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    if ([bufferCopy skipBits:4] && objc_msgSend(bufferCopy, "skipBits:", 12) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v44, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v42, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v43, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v41, 6) && (objc_msgSend(bufferCopy, "readData:bitWidth:", v9, 80) & 1) != 0)
    {
      v39 = 0;
      v40 = 0;
      v37 = 0;
      v38 = 0;
      v35 = 0;
      v36 = 0;
      if (v44)
      {
        LOBYTE(v20) = x;
        LOBYTE(v19) = 0;
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:0 calibrationSphere:0 calibrationCylinder:0 calibrationAxis:0 addVR:0 clampingStatus:&v40 displaySphere:&v38 + 4 displayCylinder:&v38 displayAxis:&v36 fromRXID:v44 RXOffsetID:0 cylinderSignFlipped:v19 axisID:v42 allowUnsupportedRX:v20];
      }

      else
      {
        v10 = 0;
      }

      if (v43)
      {
        LOBYTE(v20) = x;
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

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v45[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v46[0] = v14;
        v45[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v46[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
        *error = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:985 userInfo:v16];

        v11 = 0;
LABEL_29:

        goto LABEL_24;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:934 userInfo:MEMORY[0x277CBEC10]];
      *error = v11 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v11 = 0;
    goto LABEL_24;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:918 userInfo:MEMORY[0x277CBEC10]];
    *error = v11 = 0;
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

- (BOOL)encodeAppClipCodeV1:(id)v1 toBuffer:(id)buffer error:(id *)error
{
  v1Copy = v1;
  bufferCopy = buffer;
  if ([bufferCopy writeUInteger:objc_msgSend(v1Copy bitWidth:{"version"), 4}] && objc_msgSend(bufferCopy, "skipBits:", 12) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v1Copy, "leftRXID"), 10) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v1Copy, "leftAxisID"), 6) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v1Copy, "rightRXID"), 10) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v1Copy, "rightAxisID"), 6))
  {
    secret = [v1Copy secret];
    v10 = [bufferCopy writeData:secret bitWidth:80];
  }

  else
  {
    v10 = 0;
  }

  if (error && (v10 & 1) == 0)
  {
    *error = [MEMORY[0x277CCA9B8] crxf_errorWithCode:4 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1027 userInfo:MEMORY[0x277CBEC10]];
  }

  return v10;
}

- (id)decodeAppClipCodeV2FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error
{
  v53[2] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if ([bufferCopy bitCount] == 128)
  {
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v9 = [MEMORY[0x277CBEB28] dataWithLength:10];
    if ([bufferCopy skipBits:4] && objc_msgSend(bufferCopy, "skipBits:", 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v47, 4) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v46, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v51, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v49, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v50, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v48, 6) && (objc_msgSend(bufferCopy, "readData:bitWidth:", v9, 80) & 1) != 0)
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
        LOBYTE(v20) = x;
        LOBYTE(v19) = 0;
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v45 calibrationSphere:0 calibrationCylinder:0 calibrationAxis:0 addVR:0 clampingStatus:&v43 displaySphere:&v41 + 4 displayCylinder:&v41 displayAxis:&v38 fromRXID:v51 RXOffsetID:0 cylinderSignFlipped:v19 axisID:v49 allowUnsupportedRX:v20];
      }

      else
      {
        v10 = 0;
      }

      if (v50)
      {
        LOBYTE(v20) = x;
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

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v52[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v53[0] = v14;
        v52[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v53[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
        *error = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1131 userInfo:v16];

        v11 = 0;
LABEL_31:

        goto LABEL_26;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1079 userInfo:MEMORY[0x277CBEC10]];
      *error = v11 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v11 = 0;
    goto LABEL_26;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1059 userInfo:MEMORY[0x277CBEC10]];
    *error = v11 = 0;
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

- (BOOL)encodeAppClipCodeV2:(id)v2 toBuffer:(id)buffer error:(id *)error
{
  v2Copy = v2;
  bufferCopy = buffer;
  if ([bufferCopy writeUInteger:objc_msgSend(v2Copy bitWidth:{"version"), 4}] && objc_msgSend(bufferCopy, "skipBits:", 2) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v2Copy, "identifyingColor"), 4) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v2Copy, "randomBits"), 6) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v2Copy, "leftRXID"), 10) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v2Copy, "leftAxisID"), 6) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v2Copy, "rightRXID"), 10) && objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v2Copy, "rightAxisID"), 6))
  {
    secret = [v2Copy secret];
    v10 = [bufferCopy writeData:secret bitWidth:80];
  }

  else
  {
    v10 = 0;
  }

  if (error && (v10 & 1) == 0)
  {
    *error = [MEMORY[0x277CCA9B8] crxf_errorWithCode:4 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1177 userInfo:MEMORY[0x277CBEC10]];
  }

  return v10;
}

- (id)decodeAppClipCodeV3FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error
{
  v72[2] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if ([bufferCopy bitCount] == 128)
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
    if ([bufferCopy skipBits:4] && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v65, 4) && objc_msgSend(bufferCopy, "readBool:", &v70 + 1) && objc_msgSend(bufferCopy, "readBool:", &v70) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v64, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v63, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v62, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v69, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v67, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v68, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v66, 6) && (objc_msgSend(bufferCopy, "readData:bitWidth:", v9, 80) & 1) != 0)
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
        LOBYTE(v20) = x;
        LOBYTE(v19) = HIBYTE(v70);
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v50 calibrationSphere:&v57 + 4 calibrationCylinder:&v57 calibrationAxis:&v52 addVR:&v55 + 4 clampingStatus:&v61 displaySphere:&v59 + 4 displayCylinder:&v59 displayAxis:&v54 fromRXID:v69 RXOffsetID:v64 cylinderSignFlipped:v19 axisID:v67 allowUnsupportedRX:v20];
      }

      else
      {
        v10 = 0;
      }

      if (v68)
      {
        LOBYTE(v20) = x;
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

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v71[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v72[0] = v14;
        v71[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v72[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
        *error = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1289 userInfo:v16];

        v11 = 0;
LABEL_34:

        goto LABEL_29;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1233 userInfo:MEMORY[0x277CBEC10]];
      *error = v11 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v11 = 0;
    goto LABEL_29;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1208 userInfo:MEMORY[0x277CBEC10]];
    *error = v11 = 0;
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

- (BOOL)encodeAppClipCodeV3:(id)v3 toBuffer:(id)buffer error:(id *)error
{
  v3Copy = v3;
  bufferCopy = buffer;
  v18 = 0;
  v19 = 0;
  [v3Copy leftAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v19 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1336;
LABEL_22:
    [v13 crxf_errorWithCode:v15 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v16 userInfo:v14];
    *error = v12 = 0;
    goto LABEL_24;
  }

  [v3Copy rightAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v18 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1346;
    goto LABEL_22;
  }

  if (![bufferCopy writeUInteger:objc_msgSend(v3Copy bitWidth:{"version"), 4}] || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v3Copy, "identifyingColor"), 4) || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v3Copy, "cylLeftSignFlipped")) || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v3Copy, "cylRightSignFlipped")) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v19, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v18, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v3Copy, "randomBits"), 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v3Copy, "leftRXID"), 10) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v3Copy, "leftAxisID"), 6) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v3Copy, "rightRXID"), 10) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v3Copy, "rightAxisID"), 6) || (objc_msgSend(v3Copy, "secret"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(bufferCopy, "writeData:bitWidth:", v10, 80), v10, (v11 & 1) == 0))
  {
    if (error)
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

- (id)decodeAppClipCodeV4FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error
{
  v72[2] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if ([bufferCopy bitCount] == 128)
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
    if ([bufferCopy skipBits:4] && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v65, 4) && objc_msgSend(bufferCopy, "readBool:", &v70 + 1) && objc_msgSend(bufferCopy, "readBool:", &v70) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v64, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v63, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v62, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v69, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v67, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v68, 10) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v66, 6) && (objc_msgSend(bufferCopy, "readData:bitWidth:", v9, 80) & 1) != 0)
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
        LOBYTE(v20) = x;
        LOBYTE(v19) = HIBYTE(v70);
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v50 calibrationSphere:&v57 + 4 calibrationCylinder:&v57 calibrationAxis:&v52 addVR:&v55 + 4 clampingStatus:&v61 displaySphere:&v59 + 4 displayCylinder:&v59 displayAxis:&v54 fromRXID:v69 RXOffsetID:v64 cylinderSignFlipped:v19 axisID:v67 allowUnsupportedRX:v20];
      }

      else
      {
        v10 = 0;
      }

      if (v68)
      {
        LOBYTE(v20) = x;
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

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v71[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v72[0] = v14;
        v71[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v72[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
        *error = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1460 userInfo:v16];

        v11 = 0;
LABEL_34:

        goto LABEL_29;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1404 userInfo:MEMORY[0x277CBEC10]];
      *error = v11 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v11 = 0;
    goto LABEL_29;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1379 userInfo:MEMORY[0x277CBEC10]];
    *error = v11 = 0;
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

- (BOOL)encodeAppClipCodeV4:(id)v4 toBuffer:(id)buffer error:(id *)error
{
  v4Copy = v4;
  bufferCopy = buffer;
  v18 = 0;
  v19 = 0;
  [v4Copy leftAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v19 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1507;
LABEL_22:
    [v13 crxf_errorWithCode:v15 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v16 userInfo:v14];
    *error = v12 = 0;
    goto LABEL_24;
  }

  [v4Copy rightAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v18 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1517;
    goto LABEL_22;
  }

  if (![bufferCopy writeUInteger:objc_msgSend(v4Copy bitWidth:{"version"), 4}] || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v4Copy, "identifyingColor"), 4) || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v4Copy, "cylLeftSignFlipped")) || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v4Copy, "cylRightSignFlipped")) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v19, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v18, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v4Copy, "lensType"), 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v4Copy, "leftRXID"), 10) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v4Copy, "leftAxisID"), 6) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v4Copy, "rightRXID"), 10) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v4Copy, "rightAxisID"), 6) || (objc_msgSend(v4Copy, "secret"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(bufferCopy, "writeData:bitWidth:", v10, 80), v10, (v11 & 1) == 0))
  {
    if (error)
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

- (id)decodeAppClipCodeV5FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error
{
  v72[2] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if ([bufferCopy bitCount] == 128)
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
    if ([bufferCopy skipBits:4] && objc_msgSend(bufferCopy, "readBool:", &v70 + 1) && objc_msgSend(bufferCopy, "readBool:", &v70) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v65, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v64, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v62, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v69, 11) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v67, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v68, 11) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v66, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v63, 2) && (objc_msgSend(bufferCopy, "readData:bitWidth:", v9, 80) & 1) != 0)
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
        LOBYTE(v20) = x;
        LOBYTE(v19) = HIBYTE(v70);
        v10 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v50 calibrationSphere:&v57 + 4 calibrationCylinder:&v57 calibrationAxis:&v52 addVR:&v55 + 4 clampingStatus:&v61 displaySphere:&v59 + 4 displayCylinder:&v59 displayAxis:&v54 fromRXID:v69 RXOffsetID:v65 cylinderSignFlipped:v19 axisID:v67 allowUnsupportedRX:v20];
      }

      else
      {
        v10 = 0;
      }

      if (v68)
      {
        LOBYTE(v20) = x;
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

      if (error)
      {
        v13 = MEMORY[0x277CCA9B8];
        v71[0] = @"leftLensDecodeStatus";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v72[0] = v14;
        v71[1] = @"rightLensDecodeStatus";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v72[1] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
        *error = [v13 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1650 userInfo:v16];

        v11 = 0;
LABEL_34:

        goto LABEL_29;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1594 userInfo:MEMORY[0x277CBEC10]];
      *error = v11 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v11 = 0;
    goto LABEL_29;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1568 userInfo:MEMORY[0x277CBEC10]];
    *error = v11 = 0;
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

- (BOOL)encodeAppClipCodeV5:(id)v5 toBuffer:(id)buffer error:(id *)error
{
  v5Copy = v5;
  bufferCopy = buffer;
  v18 = 0;
  v19 = 0;
  [v5Copy leftAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v19 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1699;
LABEL_22:
    [v13 crxf_errorWithCode:v15 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v16 userInfo:v14];
    *error = v12 = 0;
    goto LABEL_24;
  }

  [v5Copy rightAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v18 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_23;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1709;
    goto LABEL_22;
  }

  if (![bufferCopy writeUInteger:objc_msgSend(v5Copy bitWidth:{"version"), 4}] || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v5Copy, "cylLeftSignFlipped")) || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v5Copy, "cylRightSignFlipped")) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v19, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v18, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v5Copy, "lensType"), 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v5Copy, "leftRXID"), 11) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v5Copy, "leftAxisID"), 6) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v5Copy, "rightRXID"), 11) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v5Copy, "rightAxisID"), 6) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v5Copy, "randomBits"), 2) || (objc_msgSend(v5Copy, "secret"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(bufferCopy, "writeData:bitWidth:", v10, 80), v10, (v11 & 1) == 0))
  {
    if (error)
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

- (id)decodeAppClipCodeV6FromBuffer:(id)buffer allowUnsupportedRX:(BOOL)x error:(id *)error
{
  v94[6] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if ([bufferCopy bitCount] == 152)
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
    if ([bufferCopy readData:v9 bitWidth:80] && objc_msgSend(bufferCopy, "readBool:", &v92) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v87, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v86, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v81, 2) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v91, 11) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v89, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v90, 11) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v88, 6) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v85, 5) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v84, 5) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v78, 1) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v77, 1) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v83, 5) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v82, 5) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v80, 1) && objc_msgSend(bufferCopy, "readUInteger:bitWidth:", &v79, 1) && objc_msgSend(bufferCopy, "skipBits:", 4) && (objc_msgSend(bufferCopy, "skipBits:", 3) & 1) != 0)
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
        LOBYTE(v26) = x;
        LOBYTE(v25) = v92;
        v11 = [(CRXFAppClipCodeTranscoder *)self decodeCalibrationRXID:&v63 calibrationSphere:&v72 + 4 calibrationCylinder:&v72 calibrationAxis:&v65 addVR:&v68 + 4 clampingStatus:&v76 displaySphere:&v74 + 4 displayCylinder:&v74 displayAxis:&v67 fromRXID:v91 RXOffsetID:v87 cylinderSignFlipped:v25 axisID:v89 allowUnsupportedRX:v26];
      }

      else
      {
        v11 = 0;
      }

      if (v90)
      {
        LOBYTE(v26) = x;
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

      if (error)
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
        *error = [v27 crxf_errorWithCode:5 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1863 userInfo:v22];

        v12 = 0;
        goto LABEL_42;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1780 userInfo:MEMORY[0x277CBEC10]];
      *error = v12 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v12 = 0;
    goto LABEL_44;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] crxf_errorWithCode:3 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:1743 userInfo:MEMORY[0x277CBEC10]];
    *error = v12 = 0;
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

- (BOOL)encodeAppClipCodeV6:(id)v6 toBuffer:(id)buffer error:(id *)error
{
  v6Copy = v6;
  bufferCopy = buffer;
  v22 = 0;
  v23 = 0;
  [v6Copy leftAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v23 maxValue:? index:?])
  {
    if (!error)
    {
      goto LABEL_39;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1919;
LABEL_33:
    [v13 crxf_errorWithCode:v15 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/ACC/CRXFAppClipCodeTranscoder.m" line:v16 userInfo:v14];
    *error = v12 = 0;
    goto LABEL_40;
  }

  [v6Copy rightAddVR];
  if (![CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:"getIndexForQuarterDiopterValue:minValue:maxValue:index:" minValue:&v22 maxValue:? index:?])
  {
    if (!error)
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
  [v6Copy leftHorizPrism];
  if (!-[CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:minValue:maxValue:index:](self, "getIndexForQuarterDiopterValue:minValue:maxValue:index:", &v21) || ([v6Copy leftVertPrism], !-[CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:minValue:maxValue:index:](self, "getIndexForQuarterDiopterValue:minValue:maxValue:index:", &v19)))
  {
    if (!error)
    {
      goto LABEL_39;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 15;
    v16 = 1946;
    goto LABEL_33;
  }

  [v6Copy rightHorizPrism];
  if (!-[CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:minValue:maxValue:index:](self, "getIndexForQuarterDiopterValue:minValue:maxValue:index:", &v20) || ([v6Copy rightVertPrism], !-[CRXFAppClipCodeTranscoder getIndexForQuarterDiopterValue:minValue:maxValue:index:](self, "getIndexForQuarterDiopterValue:minValue:maxValue:index:", &v18)))
  {
    if (!error)
    {
      goto LABEL_39;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = MEMORY[0x277CBEC10];
    v15 = 16;
    v16 = 1960;
    goto LABEL_33;
  }

  secret = [v6Copy secret];
  if (![bufferCopy writeData:secret bitWidth:80] || !objc_msgSend(bufferCopy, "writeBool:", objc_msgSend(v6Copy, "cylRightSignFlipped")) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v23, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v22, 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "lensType"), 2) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "leftRXID"), 11) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "leftAxisID"), 6) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "rightRXID"), 11) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "rightAxisID"), 6) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v21, 5) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v20, 5) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "leftHorizPrismBaseDirection"), 1) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "rightHorizPrismBaseDirection"), 1) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v19, 5) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", v18, 5) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "leftVertPrismBaseDirection"), 1) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "rightVertPrismBaseDirection"), 1) || !objc_msgSend(bufferCopy, "writeUInteger:bitWidth:", objc_msgSend(v6Copy, "version"), 4))
  {

LABEL_37:
    if (error)
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

  v11 = [bufferCopy skipBits:3];

  if ((v11 & 1) == 0)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_40:

  return v12;
}

- (BOOL)getQuarterDiopterValueForIndex:(unint64_t)index minValue:(float)value maxValue:(float)maxValue value:(float *)a6
{
  v6 = value + (index * 0.25);
  if (v6 <= maxValue)
  {
    *a6 = v6;
  }

  return v6 <= maxValue;
}

- (BOOL)getIndexForQuarterDiopterValue:(float)value minValue:(float)minValue maxValue:(float)maxValue index:(unint64_t *)index
{
  v6 = value <= maxValue && value >= minValue;
  if (v6)
  {
    *index = (((value - minValue) * 100.0) + 24) / 0x19;
  }

  return v6;
}

- (id)deriveCanonicalPayloadFromPayload:(id)payload
{
  payloadCopy = payload;
  v17 = 0;
  v5 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeFromData:payloadCopy allowUnsupportedRX:0 error:&v17];
  v6 = v17;
  if (!v5)
  {
    v14 = 0;
    goto LABEL_10;
  }

  if ([v5 version] < 5)
  {
    build = v5;
    v12 = v6;
  }

  else
  {
    v7 = [[CRXFAppClipCodeBuilder alloc] initWithAppClipCode:v5];
    [(CRXFAppClipCodeBuilder *)v7 setVersion:5];
    build = [(CRXFAppClipCodeBuilder *)v7 build];

    v9 = -[CRXFAppClipCodeTranscoder payloadLengthForAppClipCodeVersion:](self, "payloadLengthForAppClipCodeVersion:", [build version]);
    v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v9];
    v16 = v6;
    v11 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCode:build toData:v10 error:&v16];
    v12 = v16;

    if (!v11)
    {

      v14 = 0;
      goto LABEL_9;
    }

    v13 = [MEMORY[0x277CBEA90] dataWithData:v10];

    payloadCopy = v13;
  }

  payloadCopy = payloadCopy;
  v14 = payloadCopy;
LABEL_9:

  v6 = v12;
LABEL_10:

  return v14;
}

- (id)derivePayloadWithLensTypeZeroed:(id)zeroed ifLensTypeIs:(unint64_t)is
{
  v17 = 0;
  v6 = [(CRXFAppClipCodeTranscoder *)self decodeAppClipCodeFromData:zeroed allowUnsupportedRX:0 error:&v17];
  v7 = v17;
  if (v6 && [v6 lensType] == is)
  {
    v8 = [[CRXFAppClipCodeBuilder alloc] initWithAppClipCode:v6];
    [(CRXFAppClipCodeBuilder *)v8 setLensType:0];
    build = [(CRXFAppClipCodeBuilder *)v8 build];

    v10 = -[CRXFAppClipCodeTranscoder payloadLengthForAppClipCodeVersion:](self, "payloadLengthForAppClipCodeVersion:", [build version]);
    v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v10];
    v16 = v7;
    v12 = [(CRXFAppClipCodeTranscoder *)self encodeAppClipCode:build toData:v11 error:&v16];
    v13 = v16;

    v14 = 0;
    if (v12)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithData:v11];
    }

    v6 = build;
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