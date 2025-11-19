@interface CRXFAppClipCode
+ (id)appClipCodeWithBlock:(id)a3;
- (BOOL)hasLeftAndRightRX;
- (BOOL)hasLeftRX;
- (BOOL)hasOnlyLeftRX;
- (BOOL)hasOnlyRightRX;
- (BOOL)hasRightRX;
- (BOOL)hasSingleLensRX;
- (CRXFAppClipCode)initWithVersion:(unint64_t)a3 lensType:(unint64_t)a4 cylLeftSignFlipped:(BOOL)a5 cylRightSignFlipped:(BOOL)a6 leftRXID:(unint64_t)a7 leftCalibrationRXID:(unint64_t)a8 leftDisplaySphere:(float)a9 leftDisplayCylinder:(float)a10 leftCalibrationSphere:(float)a11 leftCalibrationCylinder:(float)a12 leftAddVR:(float)a13 leftAxisID:(unint64_t)a14 leftDisplayAxis:(unint64_t)a15 leftCalibrationAxis:(unint64_t)a16 leftClamping:(unint64_t)a17 leftHorizPrismBaseDirection:(unint64_t)a18 leftHorizPrism:(float)a19 leftVertPrismBaseDirection:(unint64_t)a20 leftVertPrism:(float)a21 rightRXID:(unint64_t)a22 rightCalibrationRXID:(unint64_t)a23 rightDisplaySphere:(float)a24 rightDisplayCylinder:(float)a25 rightCalibrationSphere:(float)a26 rightCalibrationCylinder:(float)a27 rightAddVR:(float)a28 rightAxisID:(unint64_t)a29 rightDisplayAxis:(unint64_t)a30 rightCalibrationAxis:(unint64_t)a31 rightClamping:(unint64_t)a32 rightHorizPrismBaseDirection:(unint64_t)a33 rightHorizPrism:(float)a34 rightVertPrismBaseDirection:(unint64_t)a35 rightVertPrism:(float)a36 identifyingColor:(unint64_t)a37 secret:(id)a38 randomBits:(unint64_t)a39;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CRXFAppClipCode

- (CRXFAppClipCode)initWithVersion:(unint64_t)a3 lensType:(unint64_t)a4 cylLeftSignFlipped:(BOOL)a5 cylRightSignFlipped:(BOOL)a6 leftRXID:(unint64_t)a7 leftCalibrationRXID:(unint64_t)a8 leftDisplaySphere:(float)a9 leftDisplayCylinder:(float)a10 leftCalibrationSphere:(float)a11 leftCalibrationCylinder:(float)a12 leftAddVR:(float)a13 leftAxisID:(unint64_t)a14 leftDisplayAxis:(unint64_t)a15 leftCalibrationAxis:(unint64_t)a16 leftClamping:(unint64_t)a17 leftHorizPrismBaseDirection:(unint64_t)a18 leftHorizPrism:(float)a19 leftVertPrismBaseDirection:(unint64_t)a20 leftVertPrism:(float)a21 rightRXID:(unint64_t)a22 rightCalibrationRXID:(unint64_t)a23 rightDisplaySphere:(float)a24 rightDisplayCylinder:(float)a25 rightCalibrationSphere:(float)a26 rightCalibrationCylinder:(float)a27 rightAddVR:(float)a28 rightAxisID:(unint64_t)a29 rightDisplayAxis:(unint64_t)a30 rightCalibrationAxis:(unint64_t)a31 rightClamping:(unint64_t)a32 rightHorizPrismBaseDirection:(unint64_t)a33 rightHorizPrism:(float)a34 rightVertPrismBaseDirection:(unint64_t)a35 rightVertPrism:(float)a36 identifyingColor:(unint64_t)a37 secret:(id)a38 randomBits:(unint64_t)a39
{
  v54 = a38;
  v57.receiver = self;
  v57.super_class = CRXFAppClipCode;
  v55 = [(CRXFAppClipCode *)&v57 init];
  if (v55)
  {
    v55->_version = a3;
    v55->_lensType = a4;
    v55->_cylLeftSignFlipped = a5;
    v55->_cylRightSignFlipped = a6;
    v55->_leftRXID = a7;
    v55->_leftCalibrationRXID = a8;
    v55->_leftDisplaySphere = a9;
    v55->_leftDisplayCylinder = a10;
    v55->_leftCalibrationSphere = a11;
    v55->_leftCalibrationCylinder = a12;
    v55->_leftAxisID = a14;
    v55->_leftCalibrationAxis = a16;
    v55->_leftDisplayAxis = a15;
    v55->_leftClamping = a17;
    v55->_leftHorizPrismBaseDirection = a18;
    v55->_leftVertPrismBaseDirection = a20;
    v55->_leftHorizPrism = a19;
    v55->_leftVertPrism = a21;
    v55->_rightRXID = a22;
    v55->_rightCalibrationRXID = a23;
    v55->_leftAddVR = a13;
    v55->_rightDisplaySphere = a24;
    v55->_rightDisplayCylinder = a25;
    v55->_rightCalibrationSphere = a26;
    v55->_rightCalibrationCylinder = a27;
    v55->_rightAddVR = a28;
    v55->_rightAxisID = a29;
    v55->_rightCalibrationAxis = a31;
    v55->_rightDisplayAxis = a30;
    v55->_rightClamping = a32;
    v55->_rightHorizPrismBaseDirection = a33;
    v55->_rightVertPrismBaseDirection = a35;
    v55->_rightHorizPrism = a34;
    v55->_rightVertPrism = a36;
    v55->_identifyingColor = a37;
    objc_storeStrong(&v55->_secret, a38);
    v55->_randomBits = a39;
  }

  return v55;
}

+ (id)appClipCodeWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CRXFAppClipCodeBuilder);
  v3[2](v3, v4);

  v5 = [(CRXFAppClipCodeBuilder *)v4 build];

  return v5;
}

- (BOOL)hasLeftRX
{
  v2 = self->_leftHorizPrism != 0.0;
  if (self->_leftVertPrism != 0.0)
  {
    v2 = 1;
  }

  return self->_leftRXID || v2;
}

- (BOOL)hasRightRX
{
  v2 = self->_rightHorizPrism != 0.0;
  if (self->_rightVertPrism != 0.0)
  {
    v2 = 1;
  }

  return self->_rightRXID || v2;
}

- (BOOL)hasOnlyLeftRX
{
  v3 = [(CRXFAppClipCode *)self hasLeftRX];
  if (v3)
  {
    LOBYTE(v3) = ![(CRXFAppClipCode *)self hasRightRX];
  }

  return v3;
}

- (BOOL)hasOnlyRightRX
{
  v3 = [(CRXFAppClipCode *)self hasRightRX];
  if (v3)
  {
    LOBYTE(v3) = ![(CRXFAppClipCode *)self hasLeftRX];
  }

  return v3;
}

- (BOOL)hasSingleLensRX
{
  if ([(CRXFAppClipCode *)self hasOnlyLeftRX])
  {
    return 1;
  }

  return [(CRXFAppClipCode *)self hasOnlyRightRX];
}

- (BOOL)hasLeftAndRightRX
{
  v3 = [(CRXFAppClipCode *)self hasLeftRX];
  if (v3)
  {

    LOBYTE(v3) = [(CRXFAppClipCode *)self hasRightRX];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CRXFAppClipCode allocWithZone:?];
  version = self->_version;
  v45 = v5;
  lensType = self->_lensType;
  cylRightSignFlipped = self->_cylRightSignFlipped;
  cylLeftSignFlipped = self->_cylLeftSignFlipped;
  leftCalibrationRXID = self->_leftCalibrationRXID;
  leftRXID = self->_leftRXID;
  leftDisplayCylinder = self->_leftDisplayCylinder;
  leftDisplaySphere = self->_leftDisplaySphere;
  leftCalibrationSphere = self->_leftCalibrationSphere;
  leftCalibrationCylinder = self->_leftCalibrationCylinder;
  leftAxisID = self->_leftAxisID;
  leftCalibrationAxis = self->_leftCalibrationAxis;
  leftDisplayAxis = self->_leftDisplayAxis;
  leftHorizPrismBaseDirection = self->_leftHorizPrismBaseDirection;
  leftVertPrismBaseDirection = self->_leftVertPrismBaseDirection;
  leftClamping = self->_leftClamping;
  leftHorizPrism = self->_leftHorizPrism;
  leftVertPrism = self->_leftVertPrism;
  rightCalibrationRXID = self->_rightCalibrationRXID;
  rightRXID = self->_rightRXID;
  leftAddVR = self->_leftAddVR;
  rightDisplaySphere = self->_rightDisplaySphere;
  v34 = *&self->_rightDisplayCylinder;
  rightAxisID = self->_rightAxisID;
  rightCalibrationAxis = self->_rightCalibrationAxis;
  rightDisplayAxis = self->_rightDisplayAxis;
  rightClamping = self->_rightClamping;
  rightHorizPrismBaseDirection = self->_rightHorizPrismBaseDirection;
  rightVertPrismBaseDirection = self->_rightVertPrismBaseDirection;
  rightHorizPrism = self->_rightHorizPrism;
  rightVertPrism = self->_rightVertPrism;
  identifyingColor = self->_identifyingColor;
  v22 = [(NSData *)self->_secret copyWithZone:a3];
  *&v33 = rightVertPrism;
  *&v32 = rightHorizPrism;
  *&v23 = leftDisplayCylinder;
  *&v24 = leftCalibrationSphere;
  *&v25 = leftCalibrationCylinder;
  *&v26 = leftAddVR;
  *&v27 = leftHorizPrism;
  *&v28 = leftVertPrism;
  *&v29 = rightDisplaySphere;
  v30 = [CRXFAppClipCode initWithVersion:v45 lensType:"initWithVersion:lensType:cylLeftSignFlipped:cylRightSignFlipped:leftRXID:leftCalibrationRXID:leftDisplaySphere:leftDisplayCylinder:leftCalibrationSphere:leftCalibrationCylinder:leftAddVR:leftAxisID:leftDisplayAxis:leftCalibrationAxis:leftClamping:leftHorizPrismBaseDirection:leftHorizPrism:leftVertPrismBaseDirection:leftVertPrism:rightRXID:rightCalibrationRXID:rightDisplaySphere:rightDisplayCylinder:rightCalibrationSphere:rightCalibrationCylinder:rightAddVR:rightAxisID:rightDisplayAxis:rightCalibrationAxis:rightClamping:rightHorizPrismBaseDirection:rightHorizPrism:rightVertPrismBaseDirection:rightVertPrism:identifyingColor:secret:randomBits:" cylLeftSignFlipped:version cylRightSignFlipped:lensType leftRXID:cylLeftSignFlipped leftCalibrationRXID:cylRightSignFlipped leftDisplaySphere:leftRXID leftDisplayCylinder:leftCalibrationRXID leftCalibrationSphere:COERCE_DOUBLE(__PAIR64__(DWORD1(v34) leftCalibrationCylinder:LODWORD(leftDisplaySphere))) leftAddVR:v23 leftAxisID:v24 leftDisplayAxis:v25 leftCalibrationAxis:v26 leftClamping:v27 leftHorizPrismBaseDirection:v28 leftHorizPrism:v29 leftVertPrismBaseDirection:leftAxisID leftVertPrism:leftDisplayAxis rightRXID:leftCalibrationAxis rightCalibrationRXID:leftClamping rightDisplaySphere:leftHorizPrismBaseDirection rightDisplayCylinder:leftVertPrismBaseDirection rightCalibrationSphere:rightRXID rightCalibrationCylinder:rightCalibrationRXID rightAddVR:v34 rightAxisID:rightAxisID rightDisplayAxis:rightDisplayAxis rightCalibrationAxis:rightCalibrationAxis rightClamping:rightClamping rightHorizPrismBaseDirection:rightHorizPrismBaseDirection rightHorizPrism:v32 rightVertPrismBaseDirection:rightVertPrismBaseDirection rightVertPrism:v33 identifyingColor:identifyingColor secret:v22 randomBits:self->_randomBits];

  return v30;
}

- (id)description
{
  v47 = MEMORY[0x277CCACA8];
  v46 = objc_opt_class();
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFAppClipCode lensType](self, "lensType")}];
  v45 = [CRXUFormatters BOOLAsString:[(CRXFAppClipCode *)self cylLeftSignFlipped]];
  v44 = [CRXUFormatters BOOLAsString:[(CRXFAppClipCode *)self cylRightSignFlipped]];
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFAppClipCode leftRXID](self, "leftRXID")}];
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFAppClipCode leftCalibrationRXID](self, "leftCalibrationRXID")}];
  [(CRXFAppClipCode *)self leftDisplaySphere];
  v42 = v3;
  [(CRXFAppClipCode *)self leftDisplayCylinder];
  v41 = v4;
  [(CRXFAppClipCode *)self leftCalibrationSphere];
  v40 = v5;
  [(CRXFAppClipCode *)self leftCalibrationCylinder];
  v39 = v6;
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFAppClipCode leftAxisID](self, "leftAxisID")}];
  v37 = [(CRXFAppClipCode *)self leftDisplayAxis];
  v36 = [(CRXFAppClipCode *)self leftCalibrationAxis];
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFAppClipCode leftClamping](self, "leftClamping")}];
  v35 = CRXFPrismBaseDirectionAsString([(CRXFAppClipCode *)self leftHorizPrismBaseDirection]);
  [(CRXFAppClipCode *)self leftHorizPrism];
  v8 = v7;
  v49 = CRXFPrismBaseDirectionAsString([(CRXFAppClipCode *)self leftVertPrismBaseDirection]);
  [(CRXFAppClipCode *)self leftVertPrism];
  v10 = v9;
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFAppClipCode rightRXID](self, "rightRXID")}];
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFAppClipCode rightCalibrationRXID](self, "rightCalibrationRXID")}];
  [(CRXFAppClipCode *)self rightDisplaySphere];
  v12 = v11;
  [(CRXFAppClipCode *)self rightDisplayCylinder];
  v14 = v13;
  [(CRXFAppClipCode *)self rightCalibrationSphere];
  v16 = v15;
  [(CRXFAppClipCode *)self rightCalibrationCylinder];
  v18 = v17;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFAppClipCode rightAxisID](self, "rightAxisID")}];
  v19 = [(CRXFAppClipCode *)self rightDisplayAxis];
  v20 = [(CRXFAppClipCode *)self rightCalibrationAxis];
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFAppClipCode rightClamping](self, "rightClamping")}];
  v31 = CRXFPrismBaseDirectionAsString([(CRXFAppClipCode *)self rightHorizPrismBaseDirection]);
  [(CRXFAppClipCode *)self rightHorizPrism];
  v22 = v21;
  v30 = CRXFPrismBaseDirectionAsString([(CRXFAppClipCode *)self rightVertPrismBaseDirection]);
  [(CRXFAppClipCode *)self rightVertPrism];
  v24 = v23;
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFAppClipCode identifyingColor](self, "identifyingColor")}];
  v26 = [(CRXFAppClipCode *)self secret];
  v27 = [v26 crxu_asHexString];
  v28 = [v47 stringWithFormat:@"%@<%p> lensType:%@, cylLeftSignFlipped: %@, cylRightSignFlipped: %@, leftRXID: %@, leftCalibrationRXID: %@, leftDisplaySphere:%.02f, leftDisplayCylinder:%.02f, leftCalibrationSphere:%.02f, leftCalibrationCylinder:%.02f, leftAxisID: %@, leftDisplayAxis: %lu, leftCalibrationAxis: %lu, leftClamping: %@ leftHorizPrismDirection: %@, leftHorizPrism:%.02f, leftVertPrismDirection: %@, leftVertPrism:%.02f, rightRXID: %@, rightCalibrationRXID: %@, rightDisplaySphere: %.02f, rightDisplayCylinder: %.02f, rightCalibrationSphere:%.02f, rightCalibrationCylinder:%.02f, rightAxisID: %@, rightDisplayAxis: %lu, rightCalibrationAxis: %lu, rightClamping: %@ rightHorizPrismDirection: %@, rightHorizPrism:%.02f, rightVertPrismDirection: %@, rightVertPrism:%.02f, identifyingColor: %@, secret: %@", v46, self, v52, v45, v44, v43, v51, *&v42, *&v41, *&v40, *&v39, v38, v37, v36, v50, v35, *&v8, v49, *&v10, v48, v34, *&v12, *&v14, *&v16, *&v18, v33, v19, v20, v32, v31, *&v22, v30, *&v24, v25, v27];

  return v28;
}

@end