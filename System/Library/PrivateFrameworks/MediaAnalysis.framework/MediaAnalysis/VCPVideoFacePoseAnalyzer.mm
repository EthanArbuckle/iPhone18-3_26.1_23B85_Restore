@interface VCPVideoFacePoseAnalyzer
- (BOOL)updateFocalLengthInPixels:(float)pixels;
- (VCPVideoFacePoseAnalyzer)initWithFocalLengthInPixels:(float)pixels;
- (int)analyzeFrameForPose:(__CVBuffer *)pose withFaceRect:(CGRect)rect withTimestamp:(id *)timestamp;
- (void)setPose:(__n128)pose;
@end

@implementation VCPVideoFacePoseAnalyzer

- (VCPVideoFacePoseAnalyzer)initWithFocalLengthInPixels:(float)pixels
{
  v11.receiver = self;
  v11.super_class = VCPVideoFacePoseAnalyzer;
  v4 = [(VCPVideoFacePoseAnalyzer *)&v11 init];
  v5 = v4;
  if (pixels < 1.0 || v4 == 0)
  {
    v8 = 0;
  }

  else
  {
    *(v4 + 8) = pixels;
    v7 = MEMORY[0x1E6960C80];
    *(v4 + 36) = *MEMORY[0x1E6960C80];
    *(v4 + 52) = *(v7 + 16);
    *(v4 + 15) = 0;
    *(v4 + 16) = 0;
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (BOOL)updateFocalLengthInPixels:(float)pixels
{
  self->_focalLengthInPixels = pixels;
  poseEstimator = self->_poseEstimator;
  if (poseEstimator)
  {
    [(VCPPnPSolver *)poseEstimator updateFocalLengthInPixels:?];
  }

  filter = self->_filter;
  if (filter)
  {
    [(VCPVideoFacePoseFilter *)filter reset];
  }

  return 1;
}

- (int)analyzeFrameForPose:(__CVBuffer *)pose withFaceRect:(CGRect)rect withTimestamp:(id *)timestamp
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = CVPixelBufferGetWidth(pose);
  v13 = CVPixelBufferGetHeight(pose);
  if (!self->_landmarkDetector)
  {
    v14 = +[VCPCNNFaceLandmarkDetector detector];
    landmarkDetector = self->_landmarkDetector;
    self->_landmarkDetector = v14;

    if (!self->_landmarkDetector)
    {
      return -18;
    }
  }

  if (HIDWORD(self->_lastTimestamp.epoch) != v12 || self->_width != v13)
  {
    v16 = [VCPPnPSolver alloc];
    *&v17 = self->_focalLengthInPixels;
    v18 = [(VCPPnPSolver *)v16 initWithFocalLengthInPixels:0 principalPoint:v17 cameraTowardsPositiveZ:vcvts_n_f32_s32(v12, 1uLL), vcvts_n_f32_s32(v13, 1uLL)];
    poseEstimator = self->_poseEstimator;
    self->_poseEstimator = v18;

    if (self->_poseEstimator)
    {
      v20 = objc_alloc_init(VCPVideoFacePoseFilter);
      filter = self->_filter;
      self->_filter = v20;

      if (self->_filter)
      {
        HIDWORD(self->_lastTimestamp.epoch) = v12;
        self->_width = v13;
        goto LABEL_8;
      }
    }

    return -18;
  }

LABEL_8:
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  if (CGRectIsEmpty(v49))
  {
    return 0;
  }

  v47.b = 0.0;
  v47.c = 0.0;
  v47.a = v12;
  v47.d = -v13;
  v47.tx = 0.0;
  v47.ty = v13;
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v51 = CGRectApplyAffineTransform(v50, &v47);
  v22 = [(VCPCNNFaceLandmarkDetector *)self->_landmarkDetector analyzeFrame:pose withFaceBounds:v51.origin.x, v51.origin.y, v51.size.width, v51.size.height];
  if (!v22)
  {
    landmarks = [(VCPCNNFaceLandmarkDetector *)self->_landmarkDetector landmarks];
    if ([landmarks count] == 7)
    {
      v24 = 0;
      v25 = v12;
      v26 = v13;
      v27 = &self->_points2D[13];
      points2D = self->_points2D;
      v45 = &self->_points2D[13];
      do
      {
        v29 = [landmarks objectAtIndexedSubscript:{v24, v45}];
        if ([v29 count] != 3 || (objc_msgSend(v29, "objectAtIndexedSubscript:", 0), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "intValue"), v30, v31 >= 0x35))
        {

          goto LABEL_23;
        }

        v32 = [v29 objectAtIndexedSubscript:1];
        [v32 floatValue];
        v34 = v33;

        v35 = [v29 objectAtIndexedSubscript:2];
        [v35 floatValue];
        v37 = v36 * v26;

        v38 = (&VCPAnchorFace3DLandmarks + 12 * v31);
        *(points2D - 1) = v34 * v25;
        *points2D = v37;
        *v27 = *v38;
        v27[2] = v38[2];

        ++v24;
        v27 += 3;
        points2D += 2;
      }

      while (v24 != 7);
      v22 = [(VCPPnPSolver *)self->_poseEstimator estimateExtrinsicsWith:&self->_height andPoints3D:v45 andNumPoints:7];
      if (!v22)
      {
        [(VCPPnPSolver *)self->_poseEstimator pose];
        *&self->_points3D[20] = v39;
        *&self[1]._landmarkDetector = v40;
        *&self[1]._filter = v41;
        *&self[1]._lastTimestamp.value = v42;
        *&v47.a = *&timestamp->var0;
        *&v47.c = timestamp->var3;
        rhs = *(&self->_focalLengthInPixels + 1);
        CMTimeSubtract(&time, &v47, &rhs);
        if (CMTimeGetSeconds(&time) > 2.0)
        {
          [(VCPVideoFacePoseFilter *)self->_filter reset];
        }

        v22 = [(VCPVideoFacePoseFilter *)self->_filter filteringPose:&self->_points3D[20]];
        if (!v22)
        {
          v43 = *&timestamp->var0;
          *&self->_lastTimestamp.flags = timestamp->var3;
          *(&self->_focalLengthInPixels + 1) = v43;
        }
      }
    }

    else
    {
LABEL_23:
      v22 = -18;
    }
  }

  return v22;
}

- (void)setPose:(__n128)pose
{
  v5[0] = a2;
  v5[1] = pose;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((self + 208), v5, 64, 1, 0);
}

@end