@interface VCPFrameAnalysisStats
- (VCPFrameAnalysisStats)init;
- (void)reset;
- (void)setMotionParam:()array<float;
- (void)setMotionParamDiff:()array<float;
@end

@implementation VCPFrameAnalysisStats

- (VCPFrameAnalysisStats)init
{
  v12.receiver = self;
  v12.super_class = VCPFrameAnalysisStats;
  v2 = [(VCPFrameAnalysisStats *)&v12 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 0;
    *(v2 + 2) = 0;
    v2[11] = 0;
    *(v2 + 36) = 0;
    *(v2 + 28) = 0;
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = *(v3 + 8);
    *(v3 + 8) = v4;

    v6 = *(v3 + 10);
    *(v3 + 10) = 0;

    v3[10] = 0;
    v3[12] = 0;
    *(v3 + 6) = 0;
    *(v3 + 14) = 0;
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = *(v3 + 9);
    *(v3 + 9) = v7;

    *(v3 + 15) = 0;
    *(v3 + 11) = 0;
    *(v3 + 88) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 120) = 0u;
    v9 = *(v3 + 8);
    if (v9)
    {
      if (*(v3 + 9))
      {
        v9 = v3;
      }

      else
      {
        v9 = 0;
      }
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)reset
{
  *&self->_cameraMotionScore = 0;
  *&self->_frameProcessedByVideoAnalyzer = 0;
  self->_frameProcessedByPetsActionAnalyzer = 0;
  *&self->_interestingnessScore = 0u;
  *&self->_frameExpressionScore = 0u;
  self->_petsActionScore = 0.0;
  *self->_motionParam.__elems_ = 0u;
  *&self->_motionParam.__elems_[4] = 0u;
  *&self->_motionParamDiff.__elems_[2] = 0u;
  [(NSMutableArray *)self->_detectedFaces removeAllObjects];
  [(NSMutableArray *)self->_petsDetections removeAllObjects];
  videoActivityDescriptor = self->_videoActivityDescriptor;
  if (videoActivityDescriptor)
  {

    [(VCPVideoActivityDescriptor *)videoActivityDescriptor reset];
  }
}

- (void)setMotionParam:()array<float
{
  v3 = *a3->__elems_;
  *&self->_motionParam.__elems_[4] = *&a3->__elems_[4];
  *self->_motionParam.__elems_ = v3;
}

- (void)setMotionParamDiff:()array<float
{
  v3 = *a3->__elems_;
  *&self->_motionParamDiff.__elems_[4] = *&a3->__elems_[4];
  *self->_motionParamDiff.__elems_ = v3;
}

@end