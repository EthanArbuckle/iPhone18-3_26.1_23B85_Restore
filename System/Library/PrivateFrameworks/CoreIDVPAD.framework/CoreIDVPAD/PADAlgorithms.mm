@interface PADAlgorithms
- (PADAlgorithms)initWithPADModelConfiguration:(id)configuration;
- (double)performIDMatching:(id)matching toFaceprints:(id)faceprints error:(id *)error;
- (id).cxx_construct;
- (id)_retrieveFaceprintsFromPredictorUsingFACInput:(id)input;
- (id)_retrieveReferenceFramesFromPredictor;
- (id)performFAC:(id)c gesture:(int64_t)gesture error:(id *)error;
- (id)processFacePoseInput:(id)input gesture:(int64_t)gesture error:(id *)error;
- (int64_t)performSC:(id)c assessmentTA:(id)a assessmentFakePRD:(id)d assessmentLivePRD:(id)rD assessmentID:(id)iD error:(id *)error;
- (unint64_t)requiredObservationSetSizeFAC:(int64_t)c;
- (void)performTA:(__CVBuffer *)a nccSignal:(double *)signal stitchDetected:(BOOL *)detected isSensitive:(BOOL)sensitive error:(id *)error;
@end

@implementation PADAlgorithms

- (PADAlgorithms)initWithPADModelConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PADAlgorithms;
  v5 = [(PADAlgorithms *)&v9 init];

  if (v5)
  {
    v6 = configurationCopy;
    operator new();
  }

  v7 = 0;

  return v7;
}

- (unint64_t)requiredObservationSetSizeFAC:(int64_t)c
{
  v3 = c == 4 || c == 9;
  v4 = 44;
  if (v3)
  {
    v4 = 48;
  }

  return *(self->_config.__ptr_ + v4);
}

- (id)processFacePoseInput:(id)input gesture:(int64_t)gesture error:(id *)error
{
  v80[1] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  facePoseValues = [inputCopy facePoseValues];
  v10 = [facePoseValues count];

  if (gesture < 0xB && ((0x73Fu >> gesture) & 1) != 0)
  {
    v11 = dword_2456CD384[gesture];
  }

  else
  {
    v74 = MEMORY[0x277D85DD0];
    v75 = 3221225472;
    v76 = ___ZL25LivenessActionFromGesture18PADLivenessGesture_block_invoke;
    v77 = &__block_descriptor_40_e5_v8__0l;
    gestureCopy = gesture;
    if (___ZL25LivenessActionFromGesture18PADLivenessGesture_block_invoke_2())
    {
      v12 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(PADAlgorithms *)&gestureCopy processFacePoseInput:v12 gesture:v13 error:v14, v15, v16, v17, v18];
      }
    }

    v11 = -1;
  }

  v74 = 0;
  v75 = 0;
  v76 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  __p = 0;
  v63 = 0;
  v64 = 0;
  if (v10)
  {
    std::vector<float>::__append(&v74, v10);
    v19 = v71;
    v20 = (v72 - v71) >> 2;
    v21 = v10 >= v20;
    if (v10 > v20)
    {
      std::vector<float>::__append(&v71, v10 - v20);
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
    v21 = 1;
  }

  if (!v21)
  {
    v72 = &v19[4 * v10];
  }

LABEL_15:
  v22 = (v69 - v68) >> 2;
  if (v10 <= v22)
  {
    if (v10 < v22)
    {
      v69 = v68 + 4 * v10;
    }
  }

  else
  {
    std::vector<float>::__append(&v68, v10 - v22);
  }

  v23 = (v66 - v65) >> 2;
  if (v10 <= v23)
  {
    if (v10 < v23)
    {
      v66 = v65 + 4 * v10;
    }
  }

  else
  {
    std::vector<float>::__append(&v65, v10 - v23);
  }

  v24 = v63;
  v25 = 0xAAAAAAAAAAAAAAABLL * ((v63 - __p) >> 3);
  if (v10 > v25)
  {
    std::vector<std::vector<float>>::__append(&__p, v10 - v25);
LABEL_33:
    v30 = 0;
    v31 = 0;
    do
    {
      facePoseValues2 = [inputCopy facePoseValues];
      v33 = [facePoseValues2 objectAtIndexedSubscript:v31];

      [v33 roll];
      *&v34 = v34;
      *(v68 + v31) = LODWORD(v34);
      [v33 pitch];
      *&v35 = v35;
      *(v71 + v31) = LODWORD(v35);
      [v33 yaw];
      *&v36 = v36;
      *(v65 + v31) = LODWORD(v36);
      [v33 smile];
      *&v37 = v37;
      *(v74 + v31) = LODWORD(v37);
      [v33 roll];
      if (fabs(v38) < 20.0)
      {
        [v33 pitch];
        if (fabs(v39) < 20.0)
        {
          [v33 yaw];
        }
      }

      landmarks = [v33 landmarks];
      v41 = landmarks == 0;

      if (v41)
      {
        v45 = __p + v30;
        v46 = *(__p + v30);
        if (v46)
        {
          v45[1] = v46;
          operator delete(v46);
          *v45 = 0;
          v45[1] = 0;
          v45[2] = 0;
        }

        *v45 = 0;
        v45[1] = 0;
        v45[2] = 0;
      }

      else
      {
        landmarks2 = [v33 landmarks];
        NSArrayAsVector(&v60, landmarks2);
        v43 = __p + v30;
        v44 = *(__p + v30);
        if (v44)
        {
          v43[1] = v44;
          operator delete(v44);
          *v43 = 0;
          v43[1] = 0;
          v43[2] = 0;
        }

        *v43 = v60;
        v43[2] = v61;
        v60 = 0uLL;
        v61 = 0;
      }

      ++v31;
      v30 += 24;
    }

    while (v10 != v31);
    goto LABEL_45;
  }

  if (v10 < v25)
  {
    v26 = __p + 24 * v10;
    if (v63 != v26)
    {
      v27 = v63;
      do
      {
        v29 = *(v27 - 3);
        v27 -= 24;
        v28 = v29;
        if (v29)
        {
          *(v24 - 2) = v28;
          operator delete(v28);
        }

        v24 = v27;
      }

      while (v27 != v26);
    }

    v63 = v26;
  }

  if (v10)
  {
    goto LABEL_33;
  }

LABEL_45:
  ptr = self->_predictor.__ptr_;
  LODWORD(v60) = v11;
  v48 = vision::mod::LivenessCheckPredictor::processFacePoseData(ptr, &v74, &v71, &v65, &v68, &__p, &v60);
  if (v48)
  {
    if (!error)
    {
      goto LABEL_50;
    }

    v49 = MEMORY[0x277CCA9B8];
    v79 = *MEMORY[0x277CCA068];
    _retrieveReferenceFramesFromPredictor = [MEMORY[0x277CCACA8] stringWithFormat:@"FAC classifier failed with status: %d", v48];
    v80[0] = _retrieveReferenceFramesFromPredictor;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:&v79 count:1];
    *error = [v49 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:3 userInfo:v51];

    error = 0;
  }

  else
  {
    error = objc_alloc_init(PADAlgorithmFACResult);
    v52 = [(PADAlgorithms *)self _retrieveFaceprintsFromPredictorUsingFACInput:inputCopy];
    [error setFaceprints:v52];

    _retrieveReferenceFramesFromPredictor = [(PADAlgorithms *)self _retrieveReferenceFramesFromPredictor];
    [error setReferenceFrameIndices:_retrieveReferenceFramesFromPredictor];
  }

LABEL_50:
  v53 = __p;
  if (__p)
  {
    v54 = v63;
    v55 = __p;
    if (v63 != __p)
    {
      v56 = v63;
      do
      {
        v58 = *(v56 - 3);
        v56 -= 24;
        v57 = v58;
        if (v58)
        {
          *(v54 - 2) = v57;
          operator delete(v57);
        }

        v54 = v56;
      }

      while (v56 != v53);
      v55 = __p;
    }

    v63 = v53;
    operator delete(v55);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  return error;
}

- (id)performFAC:(id)c gesture:(int64_t)gesture error:(id *)error
{
  v90[1] = *MEMORY[0x277D85DE8];
  cCopy = c;
  facePoseValues = [cCopy facePoseValues];
  v9 = [facePoseValues count];

  v10 = [(PADAlgorithms *)self requiredObservationSetSizeFAC:gesture];
  if (v9 < v10)
  {
    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v89 = *MEMORY[0x277CCA068];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Insufficient observations: %d. Expected at least: %d", v9, v10];
      v90[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:&v89 count:1];
      *error = [v11 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:3 userInfo:v13];
    }

    v14 = 0;
    goto LABEL_73;
  }

  if (gesture < 0xB && ((0x73Fu >> gesture) & 1) != 0)
  {
    v15 = dword_2456CD384[gesture];
  }

  else
  {
    v82 = MEMORY[0x277D85DD0];
    v83 = 3221225472;
    v84 = ___ZL25LivenessActionFromGesture18PADLivenessGesture_block_invoke;
    v85 = &__block_descriptor_40_e5_v8__0l;
    gestureCopy = gesture;
    if (___ZL25LivenessActionFromGesture18PADLivenessGesture_block_invoke_2())
    {
      v16 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [(PADAlgorithms *)&gestureCopy processFacePoseInput:v16 gesture:v17 error:v18, v19, v20, v21, v22];
      }
    }

    v15 = -1;
  }

  v82 = 0;
  v83 = 0;
  v84 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  __p = 0;
  v71 = 0;
  v72 = 0;
  if (v9)
  {
    std::vector<float>::__append(&v82, v9);
    v23 = v79;
    v24 = (v80 - v79) >> 2;
    v25 = v9 >= v24;
    if (v9 > v24)
    {
      std::vector<float>::__append(&v79, v9 - v24);
      goto LABEL_19;
    }
  }

  else
  {
    v23 = 0;
    v25 = 1;
  }

  if (!v25)
  {
    v80 = &v23[4 * v9];
  }

LABEL_19:
  v26 = (v77 - v76) >> 2;
  if (v9 <= v26)
  {
    if (v9 < v26)
    {
      v77 = v76 + 4 * v9;
    }
  }

  else
  {
    std::vector<float>::__append(&v76, v9 - v26);
  }

  v27 = (v74 - v73) >> 2;
  if (v9 <= v27)
  {
    if (v9 < v27)
    {
      v74 = v73 + 4 * v9;
    }
  }

  else
  {
    std::vector<float>::__append(&v73, v9 - v27);
  }

  v28 = v71;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v71 - __p) >> 3);
  if (v9 <= v29)
  {
    if (v9 < v29)
    {
      v30 = __p + 24 * v9;
      if (v71 != v30)
      {
        v31 = v71;
        do
        {
          v33 = *(v31 - 3);
          v31 -= 24;
          v32 = v33;
          if (v33)
          {
            *(v28 - 2) = v32;
            operator delete(v32);
          }

          v28 = v31;
        }

        while (v31 != v30);
      }

      v71 = v30;
    }

    if (!v9)
    {
      v36 = 0;
      goto LABEL_50;
    }
  }

  else
  {
    std::vector<std::vector<float>>::__append(&__p, v9 - v29);
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  do
  {
    facePoseValues2 = [cCopy facePoseValues];
    v38 = [facePoseValues2 objectAtIndexedSubscript:v35];

    [v38 roll];
    *&v39 = v39;
    *(v76 + v35) = LODWORD(v39);
    [v38 pitch];
    *&v40 = v40;
    *(v79 + v35) = LODWORD(v40);
    [v38 yaw];
    *&v41 = v41;
    *(v73 + v35) = LODWORD(v41);
    [v38 smile];
    *&v42 = v42;
    *(v82 + v35) = LODWORD(v42);
    [v38 roll];
    if (fabs(v43) < 20.0)
    {
      [v38 pitch];
      if (fabs(v44) < 20.0)
      {
        [v38 yaw];
        if (fabs(v45) < 20.0)
        {
          ++v36;
        }
      }
    }

    landmarks = [v38 landmarks];
    v47 = landmarks == 0;

    if (v47)
    {
      v51 = __p + v34;
      v52 = *(__p + v34);
      if (v52)
      {
        v51[1] = v52;
        operator delete(v52);
        *v51 = 0;
        v51[1] = 0;
        v51[2] = 0;
      }

      *v51 = 0;
      v51[1] = 0;
      v51[2] = 0;
    }

    else
    {
      landmarks2 = [v38 landmarks];
      NSArrayAsVector(&v68, landmarks2);
      v49 = __p + v34;
      v50 = *(__p + v34);
      if (v50)
      {
        v49[1] = v50;
        operator delete(v50);
        *v49 = 0;
        v49[1] = 0;
        v49[2] = 0;
      }

      *v49 = v68;
      v49[2] = v69;
      v68 = 0uLL;
      v69 = 0;
    }

    ++v35;
    v34 += 24;
  }

  while (v9 != v35);
LABEL_50:
  ptr = self->_predictor.__ptr_;
  LODWORD(v68) = v15;
  v54 = vision::mod::LivenessCheckPredictor::runFaceActionClassification(ptr, &v82, &v79, &v73, &v76, &__p, &v68);
  if (v54)
  {
    if (!error)
    {
      v14 = 0;
      v60 = __p;
      if (__p)
      {
        goto LABEL_58;
      }

      goto LABEL_65;
    }

    v55 = MEMORY[0x277CCA9B8];
    v87 = *MEMORY[0x277CCA068];
    _retrieveReferenceFramesFromPredictor = [MEMORY[0x277CCACA8] stringWithFormat:@"FAC classifier failed with status: %d", v54];
    v88 = _retrieveReferenceFramesFromPredictor;
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    *error = [v55 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:3 userInfo:v57];

    v14 = 0;
  }

  else
  {
    v14 = objc_alloc_init(PADAlgorithmFACResult);
    if (vision::mod::LivenessCheckPredictor::getActionFinish(self->_predictor.__ptr_))
    {
      v58 = &unk_2858784F0;
    }

    else
    {
      v58 = &unk_285878508;
    }

    [(PADAlgorithmFACResult *)v14 setAssessment:v58];
    [(PADAlgorithmFACResult *)v14 setIsHeadMovementDetected:v36 < v9 >> 1];
    v59 = [(PADAlgorithms *)self _retrieveFaceprintsFromPredictorUsingFACInput:cCopy];
    [(PADAlgorithmFACResult *)v14 setFaceprints:v59];

    _retrieveReferenceFramesFromPredictor = [(PADAlgorithms *)self _retrieveReferenceFramesFromPredictor];
    [(PADAlgorithmFACResult *)v14 setReferenceFrameIndices:_retrieveReferenceFramesFromPredictor];
  }

  v60 = __p;
  if (__p)
  {
LABEL_58:
    v61 = v71;
    v62 = v60;
    if (v71 != v60)
    {
      v63 = v71;
      do
      {
        v65 = *(v63 - 3);
        v63 -= 24;
        v64 = v65;
        if (v65)
        {
          *(v61 - 2) = v64;
          operator delete(v64);
        }

        v61 = v63;
      }

      while (v63 != v60);
      v62 = __p;
    }

    v71 = v60;
    operator delete(v62);
  }

LABEL_65:
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

LABEL_73:

  return v14;
}

- (id)_retrieveFaceprintsFromPredictorUsingFACInput:(id)input
{
  inputCopy = input;
  vision::mod::LivenessCheckPredictor::getIDmatchingFrameIndex(self->_predictor.__ptr_, &__p);
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = __p;
  if (v20 != __p)
  {
    v7 = 0;
    while (1)
    {
      v8 = v6[v7];
      facePoseValues = [inputCopy facePoseValues];
      v10 = [facePoseValues count];

      if (v10 <= v8)
      {
        break;
      }

      facePoseValues2 = [inputCopy facePoseValues];
      v12 = [facePoseValues2 objectAtIndexedSubscript:v8];
      faceprint = [v12 faceprint];

      if (faceprint)
      {
        v17 = faceprint;
        v18 = v8;
        v14 = objc_alloc_init(PADAlgorithmFACFaceprintResult);
        [(PADAlgorithmFACFaceprintResult *)v14 setFaceprint:v17];
        [(PADAlgorithmFACFaceprintResult *)v14 setIndex:v18];
        [v5 addObject:v14];
      }

      ++v7;
      v6 = __p;
      if (v7 >= (v20 - __p) >> 2)
      {
        goto LABEL_10;
      }
    }

    v15 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PADAlgorithms _retrieveFaceprintsFromPredictorUsingFACInput:];
    }

    v6 = __p;
  }

LABEL_10:
  if (v6)
  {
    v20 = v6;
    operator delete(v6);
  }

  return v5;
}

PADAlgorithmFACFaceprintResult *__63__PADAlgorithms__retrieveFaceprintsFromPredictorUsingFACInput___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(PADAlgorithmFACFaceprintResult);
  [(PADAlgorithmFACFaceprintResult *)v2 setFaceprint:*(a1 + 32)];
  [(PADAlgorithmFACFaceprintResult *)v2 setIndex:*(a1 + 40)];

  return v2;
}

- (id)_retrieveReferenceFramesFromPredictor
{
  v12 = *MEMORY[0x277D85DE8];
  vision::mod::LivenessCheckPredictor::getRaiseEyebrowsReferenceIndex(self->_predictor.__ptr_, &__p);
  v2 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (v9 != __p)
  {
    v3 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v11 = (v9 - __p) >> 2;
      _os_log_impl(&dword_245686000, v3, OS_LOG_TYPE_INFO, "FAC used %lu frames as reference frames for the current gesture.", buf, 0xCu);
    }

    v4 = __p;
    if (v9 != __p)
    {
      v5 = 0;
      do
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4[v5]];
        [v2 addObject:v6];

        ++v5;
        v4 = __p;
      }

      while (v5 < (v9 - __p) >> 2);
    }
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v2;
}

- (void)performTA:(__CVBuffer *)a nccSignal:(double *)signal stitchDetected:(BOOL *)detected isSensitive:(BOOL)sensitive error:(id *)error
{
  sensitiveCopy = sensitive;
  v28[1] = *MEMORY[0x277D85DE8];
  PlaneCount = CVPixelBufferGetPlaneCount(a);
  v14 = CVPixelBufferLockBaseAddress(a, 1uLL);
  if (PlaneCount)
  {
    if (v14 || (src.data = CVPixelBufferGetBaseAddressOfPlane(a, 0), src.height = CVPixelBufferGetHeightOfPlane(a, 0), src.width = CVPixelBufferGetWidthOfPlane(a, 0), src.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(a, 0), CVPixelBufferUnlockBaseAddress(a, 1uLL)))
    {
      if (error)
      {
        v15 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA068];
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"TA could not convert image to required type."];
        v28[0] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
        *error = [v15 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:3 userInfo:v17];
      }

      return;
    }
  }

  else
  {
    src.data = CVPixelBufferGetBaseAddress(a);
    src.height = CVPixelBufferGetHeight(a);
    src.width = CVPixelBufferGetWidth(a);
    src.rowBytes = CVPixelBufferGetBytesPerRow(a);
    CVPixelBufferUnlockBaseAddress(a, 1uLL);
  }

  v23 = 0;
  v22 = 0.0;
  v18 = vision::mod::LivenessCheckPredictor::runStitchDetector(self->_predictor.__ptr_, &src, &v23, &v22, sensitiveCopy);
  if (v18)
  {
    if (error)
    {
      v19 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA068];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"TA model failed with status: %d", v18];
      v26 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      *error = [v19 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:3 userInfo:v21];
    }
  }

  else
  {
    *signal = v22;
    *detected = v23;
  }
}

- (int64_t)performSC:(id)c assessmentTA:(id)a assessmentFakePRD:(id)d assessmentLivePRD:(id)rD assessmentID:(id)iD error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  cCopy = c;
  aCopy = a;
  dCopy = d;
  rDCopy = rD;
  iDCopy = iD;
  ptr = self->_predictor.__ptr_;
  [cCopy floatValue];
  v35 = v20;
  [aCopy floatValue];
  v34 = v21;
  [dCopy floatValue];
  v33 = v22;
  [rDCopy floatValue];
  v32 = v23;
  [iDCopy floatValue];
  v31 = v24;
  v25 = vision::mod::LivenessCheckPredictor::runSpoofingClassification(ptr, &v35, &v34, &v33, &v32, &v31);
  if (v25)
  {
    if (error)
    {
      v26 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA068];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"SC model failed with status: %d", v25];
      v37[0] = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      *error = [v26 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:3 userInfo:v28];

      error = 0;
    }
  }

  else
  {
    SpoofType = vision::mod::LivenessCheckPredictor::getSpoofType(self->_predictor.__ptr_);
    if (SpoofType == 2)
    {
      error = 2;
    }

    else
    {
      error = (SpoofType == 1);
    }
  }

  return error;
}

uint64_t __95__PADAlgorithms_performSC_assessmentTA_assessmentFakePRD_assessmentLivePRD_assessmentID_error___block_invoke(uint64_t a1)
{
  SpoofType = vision::mod::LivenessCheckPredictor::getSpoofType(*(*(a1 + 32) + 24));
  if (SpoofType == 2)
  {
    return 2;
  }

  else
  {
    return SpoofType == 1;
  }
}

- (double)performIDMatching:(id)matching toFaceprints:(id)faceprints error:(id *)error
{
  v58[1] = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  faceprintsCopy = faceprints;
  if (![faceprintsCopy count])
  {
    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v57 = *MEMORY[0x277CCA068];
      v58[0] = @"Faceprints must contain at least 1 value.";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
      *error = [v11 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:3 userInfo:v12];
    }

    v13 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PADAlgorithms performIDMatching:toFaceprints:error:];
    }

    goto LABEL_15;
  }

  if (![matchingCopy count])
  {
    if (error)
    {
      v14 = MEMORY[0x277CCA9B8];
      v55 = *MEMORY[0x277CCA068];
      v56 = @"Baseline faceprint must contain at least 1 dimension.";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      *error = [v14 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:3 userInfo:v15];
    }

    v16 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PADAlgorithms performIDMatching:toFaceprints:error:];
    }

LABEL_15:
    IDmatchingScore = 0.0;
    goto LABEL_47;
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  v10 = [faceprintsCopy count];
  if (v10)
  {
    std::vector<std::vector<float>>::__append(&v48, v10);
  }

  v18 = 0;
  for (i = 0; i < [faceprintsCopy count]; ++i)
  {
    v20 = [faceprintsCopy objectAtIndexedSubscript:i];
    v21 = [v20 count];
    LOBYTE(v21) = v21 == [matchingCopy count];

    if ((v21 & 1) == 0)
    {
      if (error)
      {
        v27 = MEMORY[0x277CCA9B8];
        v53 = *MEMORY[0x277CCA068];
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dimension mismatch on faceprint %d.", i];
        v54 = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        *error = [v27 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:3 userInfo:v29];
      }

      v30 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [PADAlgorithms performIDMatching:toFaceprints:error:];
      }

      IDmatchingScore = 0.0;
      goto LABEL_39;
    }

    v22 = [faceprintsCopy objectAtIndexedSubscript:i];
    NSArrayAsVector(__p, v22);
    v23 = v48 + v18;
    v24 = *(v48 + v18);
    if (v24)
    {
      v23[1] = v24;
      operator delete(v24);
      *v23 = 0;
      v23[1] = 0;
      v23[2] = 0;
    }

    *v23 = *__p;
    v23[2] = v47;
    __p[0] = 0;
    __p[1] = 0;
    v47 = 0;

    v18 += 24;
  }

  __p[0] = 0;
  __p[1] = 0;
  v47 = 0;
  v25 = [matchingCopy count];
  v26 = (__p[1] - __p[0]) >> 2;
  if (v25 <= v26)
  {
    if (v25 < v26)
    {
      __p[1] = __p[0] + 4 * v25;
    }
  }

  else
  {
    std::vector<float>::__append(__p, v25 - v26);
  }

  for (j = 0; j < [matchingCopy count]; ++j)
  {
    v32 = [matchingCopy objectAtIndexedSubscript:j];
    [v32 floatValue];
    *(__p[0] + j) = v33;
  }

  v34 = vision::mod::LivenessCheckPredictor::runIDMatching(self->_predictor.__ptr_, &v48, __p);
  if (!v34)
  {
    IDmatchingScore = vision::mod::LivenessCheckPredictor::getIDmatchingScore(self->_predictor.__ptr_);
    v38 = __p[0];
    if (!__p[0])
    {
      goto LABEL_39;
    }

LABEL_38:
    __p[1] = v38;
    operator delete(v38);
    goto LABEL_39;
  }

  IDmatchingScore = 0.0;
  if (error)
  {
    v35 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277CCA068];
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"ID model failed with status: %d", v34];
    v52 = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    *error = [v35 errorWithDomain:@"com.apple.coreidv.CoreIDVPAD.PADErrorDomain" code:3 userInfo:v37];
  }

  v38 = __p[0];
  if (__p[0])
  {
    goto LABEL_38;
  }

LABEL_39:
  v39 = v48;
  if (v48)
  {
    v40 = v49;
    v41 = v48;
    if (v49 != v48)
    {
      v42 = v49;
      do
      {
        v44 = *(v42 - 3);
        v42 -= 24;
        v43 = v44;
        if (v44)
        {
          *(v40 - 2) = v43;
          operator delete(v43);
        }

        v40 = v42;
      }

      while (v42 != v39);
      v41 = v48;
    }

    v49 = v39;
    operator delete(v41);
  }

LABEL_47:

  return IDmatchingScore;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end