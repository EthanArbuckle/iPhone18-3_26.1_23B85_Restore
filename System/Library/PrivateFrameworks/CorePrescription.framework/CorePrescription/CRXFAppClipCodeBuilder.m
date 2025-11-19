@interface CRXFAppClipCodeBuilder
- (CRXFAppClipCodeBuilder)init;
- (CRXFAppClipCodeBuilder)initWithAppClipCode:(id)a3;
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

- (CRXFAppClipCodeBuilder)initWithAppClipCode:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CRXFAppClipCodeBuilder;
  v5 = [(CRXFAppClipCodeBuilder *)&v24 init];
  if (v5)
  {
    v5->_version = [v4 version];
    v5->_lensType = [v4 lensType];
    v5->_cylLeftSignFlipped = [v4 cylLeftSignFlipped];
    v5->_cylRightSignFlipped = [v4 cylRightSignFlipped];
    v5->_leftRXID = [v4 leftRXID];
    v5->_leftCalibrationRXID = [v4 leftCalibrationRXID];
    [v4 leftDisplaySphere];
    v5->_leftDisplaySphere = v6;
    [v4 leftDisplayCylinder];
    v5->_leftDisplayCylinder = v7;
    [v4 leftCalibrationSphere];
    v5->_leftCalibrationSphere = v8;
    [v4 leftCalibrationCylinder];
    v5->_leftCalibrationCylinder = v9;
    [v4 leftAddVR];
    v5->_leftAddVR = v10;
    v5->_leftAxisID = [v4 leftAxisID];
    v5->_leftCalibrationAxis = [v4 leftCalibrationAxis];
    v5->_leftClamping = [v4 leftClamping];
    v5->_leftHorizPrismBaseDirection = [v4 leftHorizPrismBaseDirection];
    [v4 leftHorizPrism];
    v5->_leftHorizPrism = v11;
    v5->_leftVertPrismBaseDirection = [v4 leftVertPrismBaseDirection];
    [v4 leftVertPrism];
    v5->_leftVertPrism = v12;
    v5->_rightRXID = [v4 rightRXID];
    v5->_rightCalibrationRXID = [v4 rightCalibrationRXID];
    [v4 rightDisplaySphere];
    v5->_rightDisplaySphere = v13;
    [v4 rightDisplayCylinder];
    v5->_rightDisplayCylinder = v14;
    [v4 rightCalibrationSphere];
    v5->_rightCalibrationSphere = v15;
    [v4 rightCalibrationCylinder];
    v5->_rightCalibrationCylinder = v16;
    [v4 rightAddVR];
    v5->_rightAddVR = v17;
    v5->_rightAxisID = [v4 rightAxisID];
    v5->_rightDisplayAxis = [v4 rightDisplayAxis];
    v5->_rightCalibrationAxis = [v4 rightCalibrationAxis];
    v5->_rightClamping = [v4 rightClamping];
    v5->_rightHorizPrismBaseDirection = [v4 rightHorizPrismBaseDirection];
    [v4 rightHorizPrism];
    v5->_rightHorizPrism = v18;
    v5->_rightVertPrismBaseDirection = [v4 rightVertPrismBaseDirection];
    [v4 rightVertPrism];
    v5->_rightVertPrism = v19;
    v5->_identifyingColor = [v4 identifyingColor];
    v20 = [v4 secret];
    v21 = [v20 copy];
    secret = v5->_secret;
    v5->_secret = v21;

    v5->_randomBits = [v4 randomBits];
  }

  return v5;
}

- (id)build
{
  v64 = [CRXFAppClipCode alloc];
  v62 = [(CRXFAppClipCodeBuilder *)self version];
  v66 = [(CRXFAppClipCodeBuilder *)self lensType];
  v65 = [(CRXFAppClipCodeBuilder *)self cylLeftSignFlipped];
  v63 = [(CRXFAppClipCodeBuilder *)self cylRightSignFlipped];
  v61 = [(CRXFAppClipCodeBuilder *)self leftRXID];
  v60 = [(CRXFAppClipCodeBuilder *)self leftCalibrationRXID];
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
  v54 = [(CRXFAppClipCodeBuilder *)self leftAxisID];
  v53 = [(CRXFAppClipCodeBuilder *)self leftDisplayAxis];
  v52 = [(CRXFAppClipCodeBuilder *)self leftCalibrationAxis];
  v50 = [(CRXFAppClipCodeBuilder *)self leftClamping];
  v49 = [(CRXFAppClipCodeBuilder *)self leftHorizPrismBaseDirection];
  [(CRXFAppClipCodeBuilder *)self leftHorizPrism];
  v51 = v8;
  v48 = [(CRXFAppClipCodeBuilder *)self leftVertPrismBaseDirection];
  [(CRXFAppClipCodeBuilder *)self leftVertPrism];
  v10 = v9;
  v47 = [(CRXFAppClipCodeBuilder *)self rightRXID];
  v11 = [(CRXFAppClipCodeBuilder *)self rightCalibrationRXID];
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
  v22 = [(CRXFAppClipCodeBuilder *)self rightAxisID];
  v23 = [(CRXFAppClipCodeBuilder *)self rightDisplayAxis];
  v24 = [(CRXFAppClipCodeBuilder *)self rightCalibrationAxis];
  v25 = [(CRXFAppClipCodeBuilder *)self rightClamping];
  v26 = [(CRXFAppClipCodeBuilder *)self rightHorizPrismBaseDirection];
  [(CRXFAppClipCodeBuilder *)self rightHorizPrism];
  v28 = v27;
  v29 = [(CRXFAppClipCodeBuilder *)self rightVertPrismBaseDirection];
  [(CRXFAppClipCodeBuilder *)self rightVertPrism];
  v31 = v30;
  v32 = [(CRXFAppClipCodeBuilder *)self identifyingColor];
  v33 = [(CRXFAppClipCodeBuilder *)self secret];
  v34 = [(CRXFAppClipCodeBuilder *)self randomBits];
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
  v43 = [(CRXFAppClipCode *)v64 initWithVersion:v62 lensType:v66 cylLeftSignFlipped:v65 cylRightSignFlipped:v63 leftRXID:v61 leftCalibrationRXID:v60 leftDisplaySphere:v35 leftDisplayCylinder:v36 leftCalibrationSphere:v37 leftCalibrationCylinder:v38 leftAddVR:v39 leftAxisID:v40 leftDisplayAxis:v41 leftCalibrationAxis:v42 leftClamping:v54 leftHorizPrismBaseDirection:v53 leftHorizPrism:v52 leftVertPrismBaseDirection:v50 leftVertPrism:v49 rightRXID:v48 rightCalibrationRXID:v47 rightDisplaySphere:v11 rightDisplayCylinder:__PAIR64__(v17 rightCalibrationSphere:v15) rightCalibrationCylinder:__PAIR64__(v21 rightAddVR:v19) rightAxisID:v22 rightDisplayAxis:v23 rightCalibrationAxis:v24 rightClamping:v25 rightHorizPrismBaseDirection:v26 rightHorizPrism:v45 rightVertPrismBaseDirection:v29 rightVertPrism:v46 identifyingColor:v32 secret:v33 randomBits:v34];

  return v43;
}

@end