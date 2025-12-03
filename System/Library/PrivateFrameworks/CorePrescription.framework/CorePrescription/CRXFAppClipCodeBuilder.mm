@interface CRXFAppClipCodeBuilder
- (CRXFAppClipCodeBuilder)init;
- (CRXFAppClipCodeBuilder)initWithAppClipCode:(id)code;
- (id)build;
@end

@implementation CRXFAppClipCodeBuilder

- (CRXFAppClipCodeBuilder)init
{
  v3.receiver = self;
  v3.super_class = CRXFAppClipCodeBuilder;
  result = [(CRXFAppClipCodeBuilder *)&v3 init];
  if (result)
  {
    *&result->_version = xmmword_2473694B0;
  }

  return result;
}

- (CRXFAppClipCodeBuilder)initWithAppClipCode:(id)code
{
  codeCopy = code;
  v24.receiver = self;
  v24.super_class = CRXFAppClipCodeBuilder;
  v5 = [(CRXFAppClipCodeBuilder *)&v24 init];
  if (v5)
  {
    v5->_version = [codeCopy version];
    v5->_lensType = [codeCopy lensType];
    v5->_cylLeftSignFlipped = [codeCopy cylLeftSignFlipped];
    v5->_cylRightSignFlipped = [codeCopy cylRightSignFlipped];
    v5->_leftRXID = [codeCopy leftRXID];
    v5->_leftCalibrationRXID = [codeCopy leftCalibrationRXID];
    [codeCopy leftDisplaySphere];
    v5->_leftDisplaySphere = v6;
    [codeCopy leftDisplayCylinder];
    v5->_leftDisplayCylinder = v7;
    [codeCopy leftCalibrationSphere];
    v5->_leftCalibrationSphere = v8;
    [codeCopy leftCalibrationCylinder];
    v5->_leftCalibrationCylinder = v9;
    [codeCopy leftAddVR];
    v5->_leftAddVR = v10;
    v5->_leftAxisID = [codeCopy leftAxisID];
    v5->_leftCalibrationAxis = [codeCopy leftCalibrationAxis];
    v5->_leftClamping = [codeCopy leftClamping];
    v5->_leftHorizPrismBaseDirection = [codeCopy leftHorizPrismBaseDirection];
    [codeCopy leftHorizPrism];
    v5->_leftHorizPrism = v11;
    v5->_leftVertPrismBaseDirection = [codeCopy leftVertPrismBaseDirection];
    [codeCopy leftVertPrism];
    v5->_leftVertPrism = v12;
    v5->_rightRXID = [codeCopy rightRXID];
    v5->_rightCalibrationRXID = [codeCopy rightCalibrationRXID];
    [codeCopy rightDisplaySphere];
    v5->_rightDisplaySphere = v13;
    [codeCopy rightDisplayCylinder];
    v5->_rightDisplayCylinder = v14;
    [codeCopy rightCalibrationSphere];
    v5->_rightCalibrationSphere = v15;
    [codeCopy rightCalibrationCylinder];
    v5->_rightCalibrationCylinder = v16;
    [codeCopy rightAddVR];
    v5->_rightAddVR = v17;
    v5->_rightAxisID = [codeCopy rightAxisID];
    v5->_rightDisplayAxis = [codeCopy rightDisplayAxis];
    v5->_rightCalibrationAxis = [codeCopy rightCalibrationAxis];
    v5->_rightClamping = [codeCopy rightClamping];
    v5->_rightHorizPrismBaseDirection = [codeCopy rightHorizPrismBaseDirection];
    [codeCopy rightHorizPrism];
    v5->_rightHorizPrism = v18;
    v5->_rightVertPrismBaseDirection = [codeCopy rightVertPrismBaseDirection];
    [codeCopy rightVertPrism];
    v5->_rightVertPrism = v19;
    v5->_identifyingColor = [codeCopy identifyingColor];
    secret = [codeCopy secret];
    v21 = [secret copy];
    secret = v5->_secret;
    v5->_secret = v21;

    v5->_randomBits = [codeCopy randomBits];
  }

  return v5;
}

- (id)build
{
  v64 = [CRXFAppClipCode alloc];
  version = [(CRXFAppClipCodeBuilder *)self version];
  lensType = [(CRXFAppClipCodeBuilder *)self lensType];
  cylLeftSignFlipped = [(CRXFAppClipCodeBuilder *)self cylLeftSignFlipped];
  cylRightSignFlipped = [(CRXFAppClipCodeBuilder *)self cylRightSignFlipped];
  leftRXID = [(CRXFAppClipCodeBuilder *)self leftRXID];
  leftCalibrationRXID = [(CRXFAppClipCodeBuilder *)self leftCalibrationRXID];
  [(CRXFAppClipCodeBuilder *)self leftDisplaySphere];
  v59 = v3;
  [(CRXFAppClipCodeBuilder *)self leftDisplayCylinder];
  v58 = v4;
  [(CRXFAppClipCodeBuilder *)self leftCalibrationSphere];
  v57 = v5;
  [(CRXFAppClipCodeBuilder *)self leftCalibrationCylinder];
  v56 = v6;
  [(CRXFAppClipCodeBuilder *)self leftAddVR];
  v55 = v7;
  leftAxisID = [(CRXFAppClipCodeBuilder *)self leftAxisID];
  leftDisplayAxis = [(CRXFAppClipCodeBuilder *)self leftDisplayAxis];
  leftCalibrationAxis = [(CRXFAppClipCodeBuilder *)self leftCalibrationAxis];
  leftClamping = [(CRXFAppClipCodeBuilder *)self leftClamping];
  leftHorizPrismBaseDirection = [(CRXFAppClipCodeBuilder *)self leftHorizPrismBaseDirection];
  [(CRXFAppClipCodeBuilder *)self leftHorizPrism];
  v51 = v8;
  leftVertPrismBaseDirection = [(CRXFAppClipCodeBuilder *)self leftVertPrismBaseDirection];
  [(CRXFAppClipCodeBuilder *)self leftVertPrism];
  v10 = v9;
  rightRXID = [(CRXFAppClipCodeBuilder *)self rightRXID];
  rightCalibrationRXID = [(CRXFAppClipCodeBuilder *)self rightCalibrationRXID];
  [(CRXFAppClipCodeBuilder *)self rightDisplaySphere];
  v13 = v12;
  [(CRXFAppClipCodeBuilder *)self rightDisplayCylinder];
  v15 = v14;
  [(CRXFAppClipCodeBuilder *)self rightCalibrationSphere];
  v17 = v16;
  [(CRXFAppClipCodeBuilder *)self rightCalibrationCylinder];
  v19 = v18;
  [(CRXFAppClipCodeBuilder *)self rightAddVR];
  v21 = v20;
  rightAxisID = [(CRXFAppClipCodeBuilder *)self rightAxisID];
  rightDisplayAxis = [(CRXFAppClipCodeBuilder *)self rightDisplayAxis];
  rightCalibrationAxis = [(CRXFAppClipCodeBuilder *)self rightCalibrationAxis];
  rightClamping = [(CRXFAppClipCodeBuilder *)self rightClamping];
  rightHorizPrismBaseDirection = [(CRXFAppClipCodeBuilder *)self rightHorizPrismBaseDirection];
  [(CRXFAppClipCodeBuilder *)self rightHorizPrism];
  v28 = v27;
  rightVertPrismBaseDirection = [(CRXFAppClipCodeBuilder *)self rightVertPrismBaseDirection];
  [(CRXFAppClipCodeBuilder *)self rightVertPrism];
  v31 = v30;
  identifyingColor = [(CRXFAppClipCodeBuilder *)self identifyingColor];
  secret = [(CRXFAppClipCodeBuilder *)self secret];
  randomBits = [(CRXFAppClipCodeBuilder *)self randomBits];
  LODWORD(v46) = v31;
  LODWORD(v45) = v28;
  LODWORD(v36) = v58;
  LODWORD(v35) = v59;
  LODWORD(v38) = v56;
  LODWORD(v37) = v57;
  LODWORD(v39) = v55;
  LODWORD(v40) = v51;
  LODWORD(v41) = v10;
  LODWORD(v42) = v13;
  v43 = [(CRXFAppClipCode *)v64 initWithVersion:version lensType:lensType cylLeftSignFlipped:cylLeftSignFlipped cylRightSignFlipped:cylRightSignFlipped leftRXID:leftRXID leftCalibrationRXID:leftCalibrationRXID leftDisplaySphere:v35 leftDisplayCylinder:v36 leftCalibrationSphere:v37 leftCalibrationCylinder:v38 leftAddVR:v39 leftAxisID:v40 leftDisplayAxis:v41 leftCalibrationAxis:v42 leftClamping:leftAxisID leftHorizPrismBaseDirection:leftDisplayAxis leftHorizPrism:leftCalibrationAxis leftVertPrismBaseDirection:leftClamping leftVertPrism:leftHorizPrismBaseDirection rightRXID:leftVertPrismBaseDirection rightCalibrationRXID:rightRXID rightDisplaySphere:rightCalibrationRXID rightDisplayCylinder:__PAIR64__(v17 rightCalibrationSphere:v15) rightCalibrationCylinder:__PAIR64__(v21 rightAddVR:v19) rightAxisID:rightAxisID rightDisplayAxis:rightDisplayAxis rightCalibrationAxis:rightCalibrationAxis rightClamping:rightClamping rightHorizPrismBaseDirection:rightHorizPrismBaseDirection rightHorizPrism:v45 rightVertPrismBaseDirection:rightVertPrismBaseDirection rightVertPrism:v46 identifyingColor:identifyingColor secret:secret randomBits:randomBits];

  return v43;
}

@end