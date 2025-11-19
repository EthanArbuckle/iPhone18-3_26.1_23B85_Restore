@interface VCPVideoFaceMeshAnalyzer
- (BOOL)updateFocalLengthInPixels:(float)a3;
- (VCPVideoFaceMeshAnalyzer)initWithFocalLengthInPixels:(float)a3 offline:(BOOL)a4 isFastMode:(BOOL)a5;
- (int)analyzeFrame:(__CVBuffer *)a3 withFaceRect:(CGRect)a4 withRotation:(int)a5 withTimestamp:(id *)a6;
- (int)checkResolutionChange:(__CVBuffer *)a3 withRotation:(int)a4;
- (int)setFrame:(__CVBuffer *)a3;
- (int)validateFace:(__CVBuffer *)a3 eulerAngles:(float *)a4;
- (void)dealloc;
- (void)makeValidationDecision;
- (void)mapToCameraNegativeZ;
- (void)rotateLandmarks:(int)a3 width:(int)a4 height:(int)a5 landmarks:(float *)a6 numLandmarks:(int)a7;
- (void)updateIntrinsicWhenRotated;
@end

@implementation VCPVideoFaceMeshAnalyzer

- (VCPVideoFaceMeshAnalyzer)initWithFocalLengthInPixels:(float)a3 offline:(BOOL)a4 isFastMode:(BOOL)a5
{
  v5 = a5;
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VCPVideoFaceMeshAnalyzer;
  v8 = [(VCPVideoFaceMeshAnalyzer *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_focalLengthInPixels = a3;
    v8->_offline = a4;
    v8->_initialized = 0;
    v8->_vertexCount = 0;
    *v8->_meshVertices = 0;
    v10 = [[VCPFaceShapeModel alloc] initWithMode:v5];
    shapeModel = v9->_shapeModel;
    v9->_shapeModel = v10;

    v12 = v9->_shapeModel;
    if (v12)
    {
      if ([(VCPFaceShapeModel *)v12 vertexCount])
      {
        v9->_vertexCount = [(VCPFaceShapeModel *)v9->_shapeModel vertexCount];
        operator new[]();
      }
    }
  }

  v13 = 0;

  return v13;
}

- (BOOL)updateFocalLengthInPixels:(float)a3
{
  self->_focalLengthInPixels = a3;
  shapeModel = self->_shapeModel;
  if (shapeModel)
  {
    [(VCPFaceShapeModel *)shapeModel updateFocalLengthInPixels:?];
  }

  return 1;
}

- (void)updateIntrinsicWhenRotated
{
  uc = self->_uc;
  self->_uc = self->_vc;
  self->_vc = uc;
  [VCPFaceShapeModel updateIntrinsic:"updateIntrinsic:vc:" vc:?];
  self->_bufferRotated ^= 1u;
}

- (int)setFrame:(__CVBuffer *)a3
{
  if (self->_initialized)
  {
    return -18;
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  self->_uc = vcvts_n_f32_s32(Width, 1uLL);
  self->_vc = vcvts_n_f32_s32(Height, 1uLL);
  self->_bufferRotated = 0;
  shapeModel = self->_shapeModel;
  *&v10 = self->_focalLengthInPixels;

  return [VCPFaceShapeModel setCameraIntrinsics:"setCameraIntrinsics:uc:vc:" uc:v10 vc:?];
}

- (void)dealloc
{
  prevLM = self->_prevLM;
  if (prevLM)
  {
    MEMORY[0x1CCA95C10](prevLM, 0x1000C8052888210);
  }

  curLM = self->_curLM;
  if (curLM)
  {
    MEMORY[0x1CCA95C10](curLM, 0x1000C8052888210);
  }

  valLM = self->_valLM;
  if (valLM)
  {
    MEMORY[0x1CCA95C10](valLM, 0x1000C8052888210);
  }

  v6 = *self->_meshVertices;
  if (v6)
  {
    MEMORY[0x1CCA95C10](v6, 0x1000C80451B5BE8);
  }

  valBuffer = self->_valBuffer;
  if (valBuffer)
  {
    CFRelease(valBuffer);
  }

  valBufferRotated = self->_valBufferRotated;
  if (valBufferRotated)
  {
    CFRelease(valBufferRotated);
  }

  v9.receiver = self;
  v9.super_class = VCPVideoFaceMeshAnalyzer;
  [(VCPVideoFaceMeshAnalyzer *)&v9 dealloc];
}

- (void)makeValidationDecision
{
  if (fabsf(self->_eulerAngle[1]) <= 10.0)
  {
    v2 = flt_1C9F635A0[fabsf(self->_eulerAngle[2]) > 10.0];
  }

  else
  {
    v2 = 0.1;
  }

  validateFailedOnce = self->_validateFailedOnce;
  validationScore = self->_validationScore;
  if (validationScore >= v2)
  {
    validateFailedOnce = 0;
  }

  if (validateFailedOnce || validationScore < 0.015)
  {
    self->_inDetectionMode = 1;
    *&self->_detectionModeCounter = 0;
    ++self->_lostTrackCounter;
  }

  else if (validationScore < 0.2)
  {
    self->_validateFailedOnce = 1;
  }
}

- (int)validateFace:(__CVBuffer *)a3 eulerAngles:(float *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
  v9 = CVPixelBufferGetBytesPerRowOfPlane(self->_valBuffer, 0);
  v10 = CVPixelBufferGetHeightOfPlane(self->_valBuffer, 0);
  if (self->_bufferRotated)
  {
    v9 = CVPixelBufferGetBytesPerRowOfPlane(self->_valBufferRotated, 0);
    v10 = CVPixelBufferGetHeightOfPlane(self->_valBufferRotated, 0);
  }

  if (BytesPerRowOfPlane != v9 || HeightOfPlane != v10)
  {
    return -50;
  }

  v13 = 128;
  if (self->_bufferRotated)
  {
    v13 = 136;
  }

  v14 = CFRetain(*(&self->super.isa + v13));
  v23 = 0;
  v24 = v14;
  v25 = 0;
  if (!v14)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  v15 = v14;
  v16 = CVPixelBufferLockBaseAddress(v14, 0);
  v23 = v16;
  if (!v16 || (v12 = v16, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, *pixelBuffer = v15, *&pixelBuffer[8] = 1024, *&pixelBuffer[10] = v12, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v12 = v23) == 0))
  {
    *&pixelBuffer[4] = a3;
    *&pixelBuffer[12] = 1;
    if (a3)
    {
      v12 = CVPixelBufferLockBaseAddress(a3, 1uLL);
      *buf = v12;
      if (v12)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPImageConverter convertImage:yuvFrame:];
        }
      }

      else
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
        v19 = CVPixelBufferGetBaseAddressOfPlane(v15, 0);
        memcpy(v19, BaseAddressOfPlane, HeightOfPlane * BytesPerRowOfPlane);
        v12 = CVPixelBufferLock::Unlock(buf);
        if (!v12)
        {
          v12 = CVPixelBufferLock::Unlock(&v23);
          if (!v12)
          {
            memcpy(self->_valLM, self->_curLM, 0x1F8uLL);
            validationQueue = self->_validationQueue;
            validationGroup = self->_validationGroup;
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __53__VCPVideoFaceMeshAnalyzer_validateFace_eulerAngles___block_invoke;
            v22[3] = &unk_1E8350748;
            v22[4] = self;
            v22[5] = a4;
            v22[6] = v15;
            dispatch_group_async(validationGroup, validationQueue, v22);
            CFRelease(v15);
            v12 = 0;
          }
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }

      v12 = -50;
      *buf = -50;
    }

    if (*&pixelBuffer[4] && !*buf && CVPixelBufferUnlockBaseAddress(*&pixelBuffer[4], *&pixelBuffer[12]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
    }

    if (v24 && !v23 && CVPixelBufferUnlockBaseAddress(v24, v25) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
    }
  }

  return v12;
}

_BYTE *__53__VCPVideoFaceMeshAnalyzer_validateFace_eulerAngles___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 3.4028e38;
    do
    {
      v6 = 0;
      v7 = 0.0;
      do
      {
        v8 = *(a1[5] + v6);
        v9 = [*(a1[4] + 8 * v3 + 176) orientation];
        v7 = v7 + ((v8 - *(v9 + v6)) * (v8 - *(v9 + v6)));
        v6 += 4;
      }

      while (v6 != 12);
      if (v7 < v5)
      {
        v5 = v7;
        v4 = v3;
      }

      ++v3;
    }

    while (v3 != 5);
    v2 = v4;
  }

  v10 = [*(a1[4] + 8 * v2 + 176) validateOneImage:a1[6] landmarks:*(a1[4] + 152) numofLandmarks:63 score:a1[4] + 104];
  if (v10)
  {
    v11 = v10;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109120;
      v13[1] = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPLandmarkValidator failed to validate image (%d)", v13, 8u);
    }

    *(a1[4] + 104) = 0;
  }

  result = a1[4];
  if ((result[48] & 1) == 0)
  {
    return [result makeValidationDecision];
  }

  return result;
}

- (int)checkResolutionChange:(__CVBuffer *)a3 withRotation:(int)a4
{
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  Width = CVPixelBufferGetWidth(a3);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
  p_valBuffer = &self->_valBuffer;
  v11 = CVPixelBufferGetBytesPerRowOfPlane(self->_valBuffer, 0);
  v12 = CVPixelBufferGetHeightOfPlane(self->_valBuffer, 0);
  if (a4 == 270 || a4 == 90)
  {
    [(VCPVideoFaceMeshAnalyzer *)self updateIntrinsicWhenRotated];
  }

  if (self->_bufferRotated)
  {
    v11 = CVPixelBufferGetBytesPerRowOfPlane(self->_valBufferRotated, 0);
    v12 = CVPixelBufferGetHeightOfPlane(self->_valBufferRotated, 0);
  }

  if (BytesPerRowOfPlane == v11 && HeightOfPlane == v12)
  {
    return 0;
  }

  if (*p_valBuffer)
  {
    CFRelease(*p_valBuffer);
  }

  valBufferRotated = self->_valBufferRotated;
  if (valBufferRotated)
  {
    CFRelease(valBufferRotated);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (self->_bufferRotated)
  {
    v16 = HeightOfPlane;
  }

  else
  {
    v16 = Width;
  }

  if (self->_bufferRotated)
  {
    v17 = Width;
  }

  else
  {
    v17 = HeightOfPlane;
  }

  v18 = *MEMORY[0x1E695E480];
  v19 = v16;
  v20 = v17;
  if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], v16, v17, PixelFormatType, 0, &self->_valBuffer) && !CVPixelBufferCreate(v18, v20, v19, PixelFormatType, 0, &self->_valBufferRotated))
  {
    self->_uc = vcvts_n_f32_s32(Width, 1uLL);
    self->_vc = vcvts_n_f32_s32(HeightOfPlane, 1uLL);
    [VCPFaceShapeModel updateIntrinsic:"updateIntrinsic:vc:" vc:?];
    return 0;
  }

  return -108;
}

- (void)rotateLandmarks:(int)a3 width:(int)a4 height:(int)a5 landmarks:(float *)a6 numLandmarks:(int)a7
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a3 && a3 != 360)
  {
    v9 = a6;
    v12 = (v24 - ((4 * (2 * a7) + 15) & 0x7FFFFFFF0));
    memcpy(v12, a6, 8 * a7);
    if (a3 == 270)
    {
      if (a7 >= 1)
      {
        v20 = a7;
        v21 = v12 + 1;
        v22 = v9 + 1;
        do
        {
          v23 = (a5 - 1) - *(v21 - 1);
          *(v22 - 1) = *v21;
          *v22 = v23;
          v21 += 2;
          v22 += 2;
          --v20;
        }

        while (v20);
      }
    }

    else if (a3 == 180)
    {
      if (a7 >= 1)
      {
        v17 = vcvt_f32_s32(vadd_s32(__PAIR64__(a5, a4), -1));
        v18 = a7;
        do
        {
          v19 = *v12++;
          *v9++ = vsub_f32(v17, v19);
          --v18;
        }

        while (v18);
      }
    }

    else if (a3 == 90 && a7 >= 1)
    {
      v13 = a7;
      v14 = v12 + 1;
      v15 = v9 + 1;
      do
      {
        v16 = *(v14 - 1);
        *(v15 - 1) = (a4 - 1) - *v14;
        *v15 = v16;
        v14 += 2;
        v15 += 2;
        --v13;
      }

      while (v13);
    }
  }
}

- (int)analyzeFrame:(__CVBuffer *)a3 withFaceRect:(CGRect)a4 withRotation:(int)a5 withTimestamp:(id *)a6
{
  v6 = *&a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v67 = *MEMORY[0x1E69E9840];
  blendShapes = self->_blendShapes;
  self->_blendShapes = 0;

  v14 = MEMORY[0x1E69E9B18];
  v15 = *(MEMORY[0x1E69E9B18] + 16);
  *&self[1].super.isa = *MEMORY[0x1E69E9B18];
  self[1]._faceBounds.origin = v15;
  v16 = *(v14 + 48);
  self[1]._faceBounds.size = *(v14 + 32);
  *&self[1]._inDetectionMode = v16;
  v17 = x;
  *&v16 = y;
  v18 = width;
  v19 = height;
  if (CGRectIsEmpty(*(&v16 - 8)) && self->_inDetectionMode)
  {
    a_low = 0;
    ++self->_lostTrackCounter;
    return a_low;
  }

  self->_faceCount = 1;
  if (self->_initialized)
  {
    [(VCPVideoFaceMeshAnalyzer *)self checkResolutionChange:a3 withRotation:v6];
  }

  else
  {
    a_low = [(VCPVideoFaceMeshAnalyzer *)self setFrame:a3];
    if (a_low)
    {
      return a_low;
    }

    self->_initialized = 1;
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  v22 = CVPixelBufferGetWidth(a3);
  v23 = CVPixelBufferGetHeight(a3);
  if (!self->_valBuffer)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    if (CVPixelBufferCreate(*MEMORY[0x1E695E480], v22, v23, PixelFormatType, 0, &self->_valBuffer))
    {
      return -108;
    }
  }

  if (!self->_valBufferRotated)
  {
    v32 = CVPixelBufferGetPixelFormatType(a3);
    if (CVPixelBufferCreate(*MEMORY[0x1E695E480], v23, v22, v32, 0, &self->_valBufferRotated))
    {
      return -108;
    }
  }

  v61.b = 0.0;
  v61.c = 0.0;
  v61.a = v22;
  v61.d = -v23;
  v61.tx = 0.0;
  v61.ty = v23;
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  v69 = CGRectApplyAffineTransform(v68, &v61);
  v24 = v69.origin.y;
  v25 = v69.origin.x;
  *v62 = v24;
  *&v62[1] = v25;
  v26 = v69.size.height;
  v27 = v24 + v26;
  v28 = v69.size.width;
  *&v62[2] = v27;
  *&v62[3] = v25 + v28;
  if (!self->_inDetectionMode)
  {
    [(VCPVideoFaceMeshAnalyzer *)self rotateLandmarks:v6 width:v22 height:v23 landmarks:self->_prevLM numLandmarks:63];
    [(VCPRTLandmarkDetector *)self->_lmTracker calculateFaceRectFromPrevLM:self->_prevLM result:v62 numOfLandmarks:63];
    *buf = 0;
    *&pixelBuffer[4] = a3;
    if (a3)
    {
      a_low = CVPixelBufferLockBaseAddress(a3, 0);
      *buf = a_low;
      if (a_low && (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) || (*v63 = 134218240, v64 = *&pixelBuffer[4], v65 = 1024, v66 = a_low, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v63, 0x12u), (a_low = *buf) != 0)) || ([(VCPRTLandmarkDetector *)self->_lmTracker detectLandmark:CVPixelBufferGetBaseAddressOfPlane(a3 width:0) height:v22 stride:v23 facerect:BytesPerRowOfPlane prevResult:v62 result:self->_prevLM, self->_curLM], (a_low = CVPixelBufferLock::Unlock(buf)) != 0))
      {
        v30 = 0;
      }

      else
      {
        [(VCPFaceShapeModel *)self->_shapeModel moveBoundaryLandmarks:self->_curLM output:&v61 isInput:1];
        curLM = self->_curLM;
        *&v47 = *curLM;
        if (*curLM == 0.0)
        {
          self->_validationScore = 0.0;
          v49 = 1;
          self->_inDetectionMode = 1;
          [(VCPFaceShapeModel *)self->_shapeModel resetIdentityAndExpressions];
          v48 = 0;
        }

        else
        {
          if (self->_lostTrackCounter > 0 || self->_validateFailedOnce)
          {
            [(VCPVideoFaceMeshAnalyzer *)self validateFace:a3 eulerAngles:self->_eulerAngle, v47];
            curLM = self->_curLM;
            v48 = 1;
          }

          else
          {
            v48 = 0;
          }

          if ([(VCPFaceShapeModel *)self->_shapeModel trackFaceMesh:curLM])
          {
            v49 = 0;
          }

          else
          {
            self->_validationScore = 0.0;
            [(VCPFaceShapeModel *)self->_shapeModel resetIdentityAndExpressions];
            v48 = 0;
            v49 = 1;
            self->_inDetectionMode = 1;
          }
        }

        v53 = (self->_trackingModeCounter + 1) % 600;
        if (self->_offline)
        {
          v53 = 0;
        }

        self->_trackingModeCounter = v53;
        if ((v49 & 1) == 0 && (v48 & 1) == 0 && !(v53 % 3))
        {
          [(VCPVideoFaceMeshAnalyzer *)self validateFace:a3 eulerAngles:self->_eulerAngle];
        }

        if (v48)
        {
          dispatch_group_wait(self->_validationGroup, 0xFFFFFFFFFFFFFFFFLL);
        }

        validationScore = self->_validationScore;
        if (validationScore > 0.2)
        {
          self->_lostTrackCounter = 0;
          self->_validateFailedOnce = 0;
          if (validationScore > 0.9)
          {
            [(VCPFaceShapeModel *)self->_shapeModel setDetectionModeCounterShapeModel:0];
            [(VCPFaceShapeModel *)self->_shapeModel updateIdentityShape:&v61];
          }
        }

        if (self->_inDetectionMode)
        {
          a_low = 0;
        }

        else
        {
          memcpy(self->_prevLM, self->_curLM, 0x1F8uLL);
          a_low = 0;
          prevLM = self->_prevLM;
          *&v56 = *(prevLM + 62);
          *(prevLM + 63) = v56;
          *(&v56 + 1) = v56;
          *(prevLM + 32) = v56;
          *(prevLM + 33) = 0u;
        }

        v30 = 1;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }

      v30 = 0;
      a_low = -50;
      *buf = -50;
    }

    if (*&pixelBuffer[4] && !*buf && CVPixelBufferUnlockBaseAddress(*&pixelBuffer[4], *&pixelBuffer[12]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  if (self->_faceCount < 1)
  {
    self->_detectionModeCounter = 0;
    lostTrackCounter = self->_lostTrackCounter;
    if (lostTrackCounter >= 1)
    {
      self->_lostTrackCounter = lostTrackCounter + 1;
      if (lostTrackCounter >= 0x1E)
      {
        [(VCPFaceShapeModel *)self->_shapeModel resetIdentityAndExpressions];
      }
    }

    goto LABEL_49;
  }

  if (CGRectIsEmpty(v69))
  {
    return -18;
  }

  LODWORD(v61.a) = 0;
  *&v61.b = a3;
  v61.c = 0.0;
  if (a3)
  {
    a_low = CVPixelBufferLockBaseAddress(a3, 0);
    LODWORD(v61.a) = a_low;
    if (a_low && (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) || (*buf = 134218240, *pixelBuffer = v61.b, *&pixelBuffer[8] = 1024, *&pixelBuffer[10] = a_low, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (a_low = LODWORD(v61.a)) != 0)) || ([(VCPRTLandmarkDetector *)self->_lmDetector detectLandmark:CVPixelBufferGetBaseAddressOfPlane(a3 width:0) height:v22 stride:v23 facerect:BytesPerRowOfPlane prevResult:v62 result:0, self->_curLM], (a_low = CVPixelBufferLock::Unlock(&v61)) != 0))
    {
      v30 = 0;
      goto LABEL_43;
    }

    *&v29 = *self->_curLM;
    shapeModel = self->_shapeModel;
    if (*&v29 == 0.0)
    {
      [(VCPFaceShapeModel *)shapeModel resetIdentityAndExpressions];
      self->_detectionModeCounter = 0;
    }

    else
    {
      v51 = [(VCPFaceShapeModel *)shapeModel isIdentityInit];
      v52 = v51;
      if (v51)
      {
        [(VCPVideoFaceMeshAnalyzer *)self validateFace:a3 eulerAngles:self->_eulerAngle];
      }

      if ([(VCPFaceShapeModel *)self->_shapeModel fitOneImage:self->_curLM])
      {
        if (!v52)
        {
          a_low = 0;
          ++self->_detectionModeCounter;
LABEL_92:
          v30 = 1;
          goto LABEL_43;
        }

LABEL_88:
        dispatch_group_wait(self->_validationGroup, 0xFFFFFFFFFFFFFFFFLL);
        if (self->_validationScore > 0.2)
        {
          self->_inDetectionMode = 0;
          *&self->_detectionModeCounter = 0;
          self->_validateFailedOnce = 0;
          memcpy(self->_prevLM, self->_curLM, 0x1F8uLL);
          a_low = 0;
          v57 = self->_prevLM;
          *&v58 = *(v57 + 62);
          *(v57 + 63) = v58;
          *(&v58 + 1) = v58;
          *(v57 + 32) = v58;
          *(v57 + 33) = 0u;
        }

        else
        {
          a_low = 0;
          ++self->_lostTrackCounter;
        }

        goto LABEL_92;
      }

      [(VCPFaceShapeModel *)self->_shapeModel resetIdentityAndExpressions];
      self->_detectionModeCounter = 0;
      if (v52)
      {
        goto LABEL_88;
      }
    }

    a_low = 0;
    v30 = 1;
    self->_detectionModeCounter = 1;
    ++self->_lostTrackCounter;
    goto LABEL_43;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
  }

  v30 = 0;
  a_low = -50;
  LODWORD(v61.a) = -50;
LABEL_43:
  if (*&v61.b && !LODWORD(v61.a) && CVPixelBufferUnlockBaseAddress(*&v61.b, *&v61.c) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
LABEL_47:
    [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
  }

LABEL_48:
  if ((v30 & 1) == 0)
  {
    return a_low;
  }

LABEL_49:
  [(VCPFaceShapeModel *)self->_shapeModel getEulerAngle:self->_eulerAngle];
  [(VCPFaceShapeModel *)self->_shapeModel getPose];
  *&self[1].super.isa = v34;
  self[1]._faceBounds.origin = v35;
  self[1]._faceBounds.size = v36;
  *&self[1]._inDetectionMode = v37;
  [(VCPFaceShapeModel *)self->_shapeModel updateMeshVertices];
  vertexCount = self->_vertexCount;
  if (vertexCount != [(VCPFaceShapeModel *)self->_shapeModel vertexCount]|| !self->_vertexCount)
  {
    return -18;
  }

  memcpy(*self->_meshVertices, [(VCPFaceShapeModel *)self->_shapeModel meshVertices], 16 * self->_vertexCount);
  [(VCPVideoFaceMeshAnalyzer *)self mapToCameraNegativeZ];
  v39 = [(VCPFaceShapeModel *)self->_shapeModel blendShapes];
  v40 = v39 == 0;

  if (!v40)
  {
    v41 = MEMORY[0x1E695DF20];
    v42 = [(VCPFaceShapeModel *)self->_shapeModel blendShapes];
    v43 = [v41 dictionaryWithDictionary:v42];
    v44 = self->_blendShapes;
    self->_blendShapes = v43;
  }

  return 0;
}

- (void)mapToCameraNegativeZ
{
  v2 = *&self[1].super.isa;
  origin = self[1]._faceBounds.origin;
  size = self[1]._faceBounds.size;
  v4 = *&self[1]._inDetectionMode;
  v6 = vnegq_f32(size);
  *&v7 = vdiv_f32(*v4.i8, 0xC47A0000447A0000);
  HIDWORD(v7) = vextq_s8(v4, v4, 8uLL).i32[1];
  size.i32[1] = v6.i32[1];
  size.i32[2] = v6.i32[2];
  *(v2.i64 + 4) = vnegq_f32(vextq_s8(v2, v2, 4uLL)).u64[0];
  v6.i64[0] = vnegq_f32(vextq_s8(origin, v2, 4uLL)).u64[0];
  origin.i32[1] = v6.i32[0];
  *v4.i32 = COERCE_FLOAT(self[1]._lmDetector);
  origin.i32[2] = v6.i32[1];
  *&self[1].super.isa = v2;
  self[1]._faceBounds.origin = origin;
  *(&v7 + 2) = *v4.i32 / -1000.0;
  self[1]._faceBounds.size = size;
  *&self[1]._inDetectionMode = v7;
}

@end