@interface CRXFAppClipCode
+ (id)appClipCodeWithBlock:(id)block;
- (BOOL)hasLeftAndRightRX;
- (BOOL)hasLeftRX;
- (BOOL)hasOnlyLeftRX;
- (BOOL)hasOnlyRightRX;
- (BOOL)hasRightRX;
- (BOOL)hasSingleLensRX;
- (CRXFAppClipCode)initWithVersion:(unint64_t)version lensType:(unint64_t)type cylLeftSignFlipped:(BOOL)flipped cylRightSignFlipped:(BOOL)signFlipped leftRXID:(unint64_t)d leftCalibrationRXID:(unint64_t)iD leftDisplaySphere:(float)sphere leftDisplayCylinder:(float)self0 leftCalibrationSphere:(float)self1 leftCalibrationCylinder:(float)self2 leftAddVR:(float)self3 leftAxisID:(unint64_t)self4 leftDisplayAxis:(unint64_t)self5 leftCalibrationAxis:(unint64_t)self6 leftClamping:(unint64_t)self7 leftHorizPrismBaseDirection:(unint64_t)self8 leftHorizPrism:(float)self9 leftVertPrismBaseDirection:(unint64_t)baseDirection leftVertPrism:(float)vertPrism rightRXID:(unint64_t)xID rightCalibrationRXID:(unint64_t)rXID rightDisplaySphere:(float)displaySphere rightDisplayCylinder:(float)displayCylinder rightCalibrationSphere:(float)rightCalibrationSphere rightCalibrationCylinder:(float)rightCalibrationCylinder rightAddVR:(float)vR rightAxisID:(unint64_t)rightAxisID rightDisplayAxis:(unint64_t)version0 rightCalibrationAxis:(unint64_t)version1 rightClamping:(unint64_t)version2 rightHorizPrismBaseDirection:(unint64_t)version3 rightHorizPrism:(float)version4 rightVertPrismBaseDirection:(unint64_t)version5 rightVertPrism:(float)version6 identifyingColor:(unint64_t)version7 secret:(id)version8 randomBits:(unint64_t)version9;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CRXFAppClipCode

- (CRXFAppClipCode)initWithVersion:(unint64_t)version lensType:(unint64_t)type cylLeftSignFlipped:(BOOL)flipped cylRightSignFlipped:(BOOL)signFlipped leftRXID:(unint64_t)d leftCalibrationRXID:(unint64_t)iD leftDisplaySphere:(float)sphere leftDisplayCylinder:(float)self0 leftCalibrationSphere:(float)self1 leftCalibrationCylinder:(float)self2 leftAddVR:(float)self3 leftAxisID:(unint64_t)self4 leftDisplayAxis:(unint64_t)self5 leftCalibrationAxis:(unint64_t)self6 leftClamping:(unint64_t)self7 leftHorizPrismBaseDirection:(unint64_t)self8 leftHorizPrism:(float)self9 leftVertPrismBaseDirection:(unint64_t)baseDirection leftVertPrism:(float)vertPrism rightRXID:(unint64_t)xID rightCalibrationRXID:(unint64_t)rXID rightDisplaySphere:(float)displaySphere rightDisplayCylinder:(float)displayCylinder rightCalibrationSphere:(float)rightCalibrationSphere rightCalibrationCylinder:(float)rightCalibrationCylinder rightAddVR:(float)vR rightAxisID:(unint64_t)rightAxisID rightDisplayAxis:(unint64_t)version0 rightCalibrationAxis:(unint64_t)version1 rightClamping:(unint64_t)version2 rightHorizPrismBaseDirection:(unint64_t)version3 rightHorizPrism:(float)version4 rightVertPrismBaseDirection:(unint64_t)version5 rightVertPrism:(float)version6 identifyingColor:(unint64_t)version7 secret:(id)version8 randomBits:(unint64_t)version9
{
  secretCopy = secret;
  v57.receiver = self;
  v57.super_class = CRXFAppClipCode;
  v55 = [(CRXFAppClipCode *)&v57 init];
  if (v55)
  {
    v55->_version = version;
    v55->_lensType = type;
    v55->_cylLeftSignFlipped = flipped;
    v55->_cylRightSignFlipped = signFlipped;
    v55->_leftRXID = d;
    v55->_leftCalibrationRXID = iD;
    v55->_leftDisplaySphere = sphere;
    v55->_leftDisplayCylinder = cylinder;
    v55->_leftCalibrationSphere = calibrationSphere;
    v55->_leftCalibrationCylinder = calibrationCylinder;
    v55->_leftAxisID = axisID;
    v55->_leftCalibrationAxis = calibrationAxis;
    v55->_leftDisplayAxis = axis;
    v55->_leftClamping = clamping;
    v55->_leftHorizPrismBaseDirection = direction;
    v55->_leftVertPrismBaseDirection = baseDirection;
    v55->_leftHorizPrism = prism;
    v55->_leftVertPrism = vertPrism;
    v55->_rightRXID = xID;
    v55->_rightCalibrationRXID = rXID;
    v55->_leftAddVR = r;
    v55->_rightDisplaySphere = displaySphere;
    v55->_rightDisplayCylinder = displayCylinder;
    v55->_rightCalibrationSphere = rightCalibrationSphere;
    v55->_rightCalibrationCylinder = rightCalibrationCylinder;
    v55->_rightAddVR = vR;
    v55->_rightAxisID = rightAxisID;
    v55->_rightCalibrationAxis = rightCalibrationAxis;
    v55->_rightDisplayAxis = displayAxis;
    v55->_rightClamping = rightClamping;
    v55->_rightHorizPrismBaseDirection = prismBaseDirection;
    v55->_rightVertPrismBaseDirection = vertPrismBaseDirection;
    v55->_rightHorizPrism = horizPrism;
    v55->_rightVertPrism = rightVertPrism;
    v55->_identifyingColor = color;
    objc_storeStrong(&v55->_secret, secret);
    v55->_randomBits = bits;
  }

  return v55;
}

+ (id)appClipCodeWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(CRXFAppClipCodeBuilder);
  blockCopy[2](blockCopy, v4);

  build = [(CRXFAppClipCodeBuilder *)v4 build];

  return build;
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
  hasLeftRX = [(CRXFAppClipCode *)self hasLeftRX];
  if (hasLeftRX)
  {
    LOBYTE(hasLeftRX) = ![(CRXFAppClipCode *)self hasRightRX];
  }

  return hasLeftRX;
}

- (BOOL)hasOnlyRightRX
{
  hasRightRX = [(CRXFAppClipCode *)self hasRightRX];
  if (hasRightRX)
  {
    LOBYTE(hasRightRX) = ![(CRXFAppClipCode *)self hasLeftRX];
  }

  return hasRightRX;
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
  hasLeftRX = [(CRXFAppClipCode *)self hasLeftRX];
  if (hasLeftRX)
  {

    LOBYTE(hasLeftRX) = [(CRXFAppClipCode *)self hasRightRX];
  }

  return hasLeftRX;
}

- (id)copyWithZone:(_NSZone *)zone
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
  v22 = [(NSData *)self->_secret copyWithZone:zone];
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
  leftDisplayAxis = [(CRXFAppClipCode *)self leftDisplayAxis];
  leftCalibrationAxis = [(CRXFAppClipCode *)self leftCalibrationAxis];
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
  rightDisplayAxis = [(CRXFAppClipCode *)self rightDisplayAxis];
  rightCalibrationAxis = [(CRXFAppClipCode *)self rightCalibrationAxis];
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFAppClipCode rightClamping](self, "rightClamping")}];
  v31 = CRXFPrismBaseDirectionAsString([(CRXFAppClipCode *)self rightHorizPrismBaseDirection]);
  [(CRXFAppClipCode *)self rightHorizPrism];
  v22 = v21;
  v30 = CRXFPrismBaseDirectionAsString([(CRXFAppClipCode *)self rightVertPrismBaseDirection]);
  [(CRXFAppClipCode *)self rightVertPrism];
  v24 = v23;
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRXFAppClipCode identifyingColor](self, "identifyingColor")}];
  secret = [(CRXFAppClipCode *)self secret];
  crxu_asHexString = [secret crxu_asHexString];
  v28 = [v47 stringWithFormat:@"%@<%p> lensType:%@, cylLeftSignFlipped: %@, cylRightSignFlipped: %@, leftRXID: %@, leftCalibrationRXID: %@, leftDisplaySphere:%.02f, leftDisplayCylinder:%.02f, leftCalibrationSphere:%.02f, leftCalibrationCylinder:%.02f, leftAxisID: %@, leftDisplayAxis: %lu, leftCalibrationAxis: %lu, leftClamping: %@ leftHorizPrismDirection: %@, leftHorizPrism:%.02f, leftVertPrismDirection: %@, leftVertPrism:%.02f, rightRXID: %@, rightCalibrationRXID: %@, rightDisplaySphere: %.02f, rightDisplayCylinder: %.02f, rightCalibrationSphere:%.02f, rightCalibrationCylinder:%.02f, rightAxisID: %@, rightDisplayAxis: %lu, rightCalibrationAxis: %lu, rightClamping: %@ rightHorizPrismDirection: %@, rightHorizPrism:%.02f, rightVertPrismDirection: %@, rightVertPrism:%.02f, identifyingColor: %@, secret: %@", v46, self, v52, v45, v44, v43, v51, *&v42, *&v41, *&v40, *&v39, v38, leftDisplayAxis, leftCalibrationAxis, v50, v35, *&v8, v49, *&v10, v48, v34, *&v12, *&v14, *&v16, *&v18, v33, rightDisplayAxis, rightCalibrationAxis, v32, v31, *&v22, v30, *&v24, v25, crxu_asHexString];

  return v28;
}

@end