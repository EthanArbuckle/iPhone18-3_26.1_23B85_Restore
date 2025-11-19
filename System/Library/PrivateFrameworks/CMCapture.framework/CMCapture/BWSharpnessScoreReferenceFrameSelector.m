@interface BWSharpnessScoreReferenceFrameSelector
+ (id)externalMemoryDescriptorWithMaxInputDimensions:(id)a3;
- (BWSharpnessScoreReferenceFrameSelector)initWithCommandQueue:(id)a3 externalMemoryResource:(id)a4 candidateCount:(int)a5;
- (opaqueCMSampleBuffer)addReferenceFrameCandidate:(opaqueCMSampleBuffer *)a3 referenceFrameOut:(opaqueCMSampleBuffer *)a4;
- (void)dealloc;
@end

@implementation BWSharpnessScoreReferenceFrameSelector

+ (id)externalMemoryDescriptorWithMaxInputDimensions:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x1E69916C8]) initWithMaxInputDimensions:a3 inputPixelFormat:0 maxOutputDimensions:0 cmiResourceEnabled:0 processorSpecificOptions:0];
  v4 = MEMORY[0x1E69916F8];

  return [v4 externalMemoryDescriptorForConfiguration:v3];
}

- (BWSharpnessScoreReferenceFrameSelector)initWithCommandQueue:(id)a3 externalMemoryResource:(id)a4 candidateCount:(int)a5
{
  v10.receiver = self;
  v10.super_class = BWSharpnessScoreReferenceFrameSelector;
  v8 = [(BWSharpnessScoreReferenceFrameSelector *)&v10 init];
  if (v8)
  {
    if (a4)
    {
      v8->_sharpnessScoreCalculator = [objc_alloc(MEMORY[0x1E69916F8]) initWithOptionalCommandQueue:a3 externalMemoryResource:a4 kernelWeights:0];
    }

    v8->_candidateFrameCount = a5;
    v8->_currentCandidateSharpnessScore = NAN;
    v8->_faceScoresEnabled = 0;
    v8->_maxNumberOfFaceScores = 1;
  }

  return v8;
}

- (void)dealloc
{
  currentCandidateFrame = self->_currentCandidateFrame;
  if (currentCandidateFrame)
  {
    CFRelease(currentCandidateFrame);
  }

  v4.receiver = self;
  v4.super_class = BWSharpnessScoreReferenceFrameSelector;
  [(BWSharpnessScoreReferenceFrameSelector *)&v4 dealloc];
}

uint64_t __87__BWSharpnessScoreReferenceFrameSelector_addReferenceFrameCandidate_referenceFrameOut___block_invoke(int a1, CFDictionaryRef dict, const __CFDictionary *a3)
{
  v4 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v4;
  v7.origin = rect.origin;
  v7.size = v4;
  if (!CGRectMakeWithDictionaryRepresentation(dict, &rect))
  {
    return -1;
  }

  v5 = CGRectMakeWithDictionaryRepresentation(a3, &v7);
  result = -1;
  if (v5 && rect.size.width * rect.size.height > v7.size.width * v7.size.height)
  {
    return 1;
  }

  return result;
}

- (opaqueCMSampleBuffer)addReferenceFrameCandidate:(opaqueCMSampleBuffer *)a3 referenceFrameOut:(opaqueCMSampleBuffer *)a4
{
  v5 = a3;
  if (!a3 || (candidateFrameCount = self->_candidateFrameCount, receivedCandidateFrameCount = self->_receivedCandidateFrameCount, v9 = receivedCandidateFrameCount + 1, self->_receivedCandidateFrameCount = receivedCandidateFrameCount + 1, receivedCandidateFrameCount >= candidateFrameCount))
  {
LABEL_41:
    v10 = 0;
    if (!a4)
    {
      return v5;
    }

    goto LABEL_39;
  }

  if (candidateFrameCount <= 1)
  {
    v10 = CFRetain(a3);
    v5 = 0;
    if (!a4)
    {
      return v5;
    }

    goto LABEL_39;
  }

  if (self->_sharpnessScoreCalculator)
  {
    if (self->_faceScoresEnabled && self->_maxNumberOfFaceScores >= 1 && (v11 = [objc_msgSend(objc_msgSend(CMGetAttachment(a3 *off_1E798A3C8], objc_msgSend(v11, "count")))
    {
      v12 = [MEMORY[0x1E695DF70] array];
      v13 = BWPixelBufferDimensionsFromSampleBuffer(v5);
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v21 = OUTLINED_FUNCTION_7_71(v13, v14, v15, v16, v17, v18, v19, v20, v66, *(&v66 + 1), v69, *(&v69 + 1), v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v107, v109, v111, v113, v115, v117, v119, v121, *(&v121 + 1), v122, *(&v122 + 1), v123);
      if (v21)
      {
        v22 = v21;
        v23 = *v125;
        v66 = *(MEMORY[0x1E695F050] + 16);
        v69 = *MEMORY[0x1E695F050];
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v125 != v23)
            {
              objc_enumerationMutation(v11);
            }

            v121 = v69;
            v122 = v66;
            CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
            if (CGRectIfPresent)
            {
              FigCaptureMetadataUtilitiesDenormalizeCropRect(*&v121, *(&v121 + 1), *&v122, *(&v122 + 1));
              DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v128);
              [v12 addObject:DictionaryRepresentation];
            }
          }

          v22 = OUTLINED_FUNCTION_7_71(CGRectIfPresent, v26, v27, v28, v29, v30, v31, v32, v66, *(&v66 + 1), v69, *(&v69 + 1), v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v105, v108, v110, v112, v114, v116, v118, v120, v121, *(&v121 + 1), v122, *(&v122 + 1), v123);
        }

        while (v22);
      }

      [v12 sortedArrayUsingComparator:&__block_literal_global_119];
      v34 = [v12 count];
      if (v34 >= self->_maxNumberOfFaceScores)
      {
        maxNumberOfFaceScores = self->_maxNumberOfFaceScores;
      }

      else
      {
        maxNumberOfFaceScores = v34;
      }

      v36 = [v12 subarrayWithRange:{0, maxNumberOfFaceScores}];
    }

    else
    {
      v36 = 0;
    }

    *&v121 = 0;
    v37 = [(CMISharpnessScore *)self->_sharpnessScoreCalculator calculateFromPixelBuffer:CMSampleBufferGetImageBuffer(v5) andFromRoi:v36 sourceComponent:0 toResult:&v121];
    [v121 fullImageScore];
    v39 = v38;
    v40 = [v121 facesScores];
    if (v37)
    {
      v39 = 1.1755e-38;
    }

    else
    {
      v44 = v40;
      v45 = [v40 count];
      if (v45)
      {
        v53 = OUTLINED_FUNCTION_21_30(v45, v46, v47, v48, v49, v50, v51, v52, v66, *(&v66 + 1), v69, *(&v69 + 1), v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, 0);
        if (v53)
        {
          v54 = v53;
          v55 = MEMORY[0];
          do
          {
            for (j = 0; j != v54; ++j)
            {
              if (MEMORY[0] != v55)
              {
                objc_enumerationMutation(v44);
              }

              v57 = [*(8 * j) floatValue];
              if (v39 < v65)
              {
                v39 = v65;
              }
            }

            v54 = OUTLINED_FUNCTION_21_30(v57, v58, v59, v60, v61, v62, v63, v64, v67, v68, v70, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v106);
          }

          while (v54);
        }
      }
    }

    candidateFrameCount = self->_candidateFrameCount;
    v9 = self->_receivedCandidateFrameCount;
  }

  else if (receivedCandidateFrameCount <= 0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 1.1755e-38;
  }

  currentCandidateSharpnessScore = self->_currentCandidateSharpnessScore;
  if (v9 != candidateFrameCount)
  {
    if (v39 > currentCandidateSharpnessScore)
    {
      currentCandidateFrame = self->_currentCandidateFrame;
      v10 = 0;
      self->_currentCandidateFrame = CFRetain(v5);
      self->_currentCandidateSharpnessScore = v39;
      v5 = currentCandidateFrame;
      if (!a4)
      {
        return v5;
      }

      goto LABEL_39;
    }

    v5 = CFRetain(v5);
    goto LABEL_41;
  }

  if (v39 <= currentCandidateSharpnessScore)
  {
    v10 = self->_currentCandidateFrame;
    v5 = CFRetain(v5);
  }

  else
  {
    v10 = CFRetain(v5);
    v5 = self->_currentCandidateFrame;
  }

  self->_currentCandidateFrame = 0;
  if (a4)
  {
LABEL_39:
    *a4 = v10;
  }

  return v5;
}

@end