@interface VCPFullVideoAnalyzer
- (VCPFullVideoAnalyzer)initWithTransform:(CGAffineTransform *)a3;
- (VCPFullVideoAnalyzer)initWithVideoOrientation:(int)a3 preferredTransform:(CGAffineTransform *)a4 metaOrientation:(id)a5 privateResults:(id)a6 embeddings:(id)a7 isTimelapse:(BOOL)a8 isIris:(BOOL)a9 irisPhotoOffsetSec:(float)a10 irisPhotoExposureSec:(float)a11 slowMoRate:(float)a12 faceDominated:(BOOL)a13;
- (float)estimateExpressionScore:(id)a3 encodeStats:(EncodeStats *)a4 frameWidth:(int)a5 frameHeight:(int)a6;
- (float)estimateQualityScore:(void *)a3;
- (float)getSceneSwichFrequency;
- (id).cxx_construct;
- (id)clipResults:(id *)a3;
- (id)processSceneResults;
- (id)results;
- (int)addResult:(__CFArray *)a3 to:(id)a4 forKey:(id)a5 optional:(BOOL)a6;
- (int)addSceneAnalysisResult:(id)a3 to:(id)a4 clipRange:(id *)a5;
- (int)addSceneAnalysisResult:(id)a3 to:(id)a4 optional:(BOOL)a5;
- (int)analyzeFrame:(__CVBuffer *)a3 timestamp:(id *)a4 duration:(id *)a5 frameStats:(id)a6 flags:(unint64_t *)a7 cancel:(id)a8;
- (int)analyzeFrame:(__CVBuffer *)a3 timestamp:(id *)a4 duration:(id *)a5 properties:(id)a6 frameStats:(id)a7 flags:(unint64_t *)a8 cancel:(id)a9;
- (int)finishAnalysisPass:(id *)a3;
- (int)isStableMetaMotion:(id *)a3;
- (int)process:(int)a3;
- (int)seedAnalyzersWithPixelBuffer:(__CVBuffer *)a3 startTime:(id *)a4 frameStats:(id)a5;
- (void)dealloc;
- (void)prepareLivePhotoAnalysisByScenes:(id)a3;
- (void)prepareVideoAnalysisByScenes:(id)a3;
- (void)processAndEstimateQualityScore:(void *)a3;
- (void)reviseFrameTrackScore:(void *)a3 saliencyRegions:(id)a4;
@end

@implementation VCPFullVideoAnalyzer

- (VCPFullVideoAnalyzer)initWithTransform:(CGAffineTransform *)a3
{
  v39.receiver = self;
  v39.super_class = VCPFullVideoAnalyzer;
  v4 = [(VCPFullVideoAnalyzer *)&v39 init];
  v5 = v4;
  if (!v4)
  {
    v34 = 0;
    goto LABEL_30;
  }

  LOBYTE(v4->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) = 0;
  BYTE1(v4->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) = 0;
  BYTE2(v4->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) = 0;
  LODWORD(v4->_frameBuffer.buffer_[34].motion_result_.action_score_) = 3;
  v6 = +[VCPFullVideoAnalyzer enableMoflow];
  BYTE1(v5->_frameBuffer.buffer_[34].motion_result_.gmv_[1]) = v6;
  v7 = operator new(0x3C0uLL, MEMORY[0x1E69E5398]);
  v8 = v7;
  if (v7)
  {
    ma::EncodeAnalysis::EncodeAnalysis(v7, &v5->_frameBuffer, 0, 0, v6);
  }

  v5->_encodeAnalysis = v8;
  v9 = operator new(0xC0uLL, MEMORY[0x1E69E5398]);
  v10 = v9;
  if (v9)
  {
    ma::PreEncodeAnalysis::PreEncodeAnalysis(v9);
  }

  v5->_preencodeAnalysis = v10;
  v11 = operator new(0x38uLL, MEMORY[0x1E69E5398]);
  if (v11)
  {
    *v11 = 0;
    *(v11 + 1) = 0;
    *(v11 + 2) = 0;
    v12 = MEMORY[0x1E6960CC0];
    *(v11 + 24) = *MEMORY[0x1E6960CC0];
    *(v11 + 5) = *(v12 + 16);
    v11[48] = 1;
    *(v11 + 13) = 0;
  }

  v5->_obstructionAnalysis = v11;
  v13 = operator new(0x518uLL, MEMORY[0x1E69E5398]);
  if (v13)
  {
    action_score_low = LODWORD(v5->_frameBuffer.buffer_[34].motion_result_.action_score_);
    v15 = *&a3->c;
    v38[0] = *&a3->a;
    v38[1] = v15;
    v38[2] = *&a3->tx;
    v16 = angleForTransform(v38);
    ma::SceneAnalysis::SceneAnalysis(v13, action_score_low, v16, BYTE1(v5->_frameBuffer.buffer_[34].motion_result_.fine_action_score_), LOBYTE(v5->_frameBuffer.buffer_[34].motion_result_.fine_action_score_), BYTE2(v5->_frameBuffer.buffer_[34].motion_result_.fine_action_score_), &v5->_frameBuffer, +[VCPFullVideoAnalyzer useSceneprintInSceneAnalysis]);
  }

  v5->_sceneAnalysis = v13;
  v17 = operator new(0x10uLL, MEMORY[0x1E69E5398]);
  v18 = v17;
  if (v17)
  {
    ma::MotionFilter::MotionFilter(v17, &v5->_frameBuffer, BYTE1(v5->_frameBuffer.buffer_[34].motion_result_.fine_action_score_), 0);
  }

  v5->_motionFilter = v18;
  v19 = operator new(0x28uLL, MEMORY[0x1E69E5398]);
  v20 = v19;
  if (v19)
  {
    ma::MetaDataAnalysis::MetaDataAnalysis(v19, &v5->_frameBuffer);
  }

  v5->_metadataAnalysis = v20;
  v21 = [VCPFrameScoreFilter alloc];
  LODWORD(v22) = 1120403456;
  LODWORD(v23) = 1050253722;
  v24 = [(VCPFrameScoreFilter *)v21 initWithFilterTabs:5 distanceVariance:v22 diffVariance:v23];
  v25 = *&v5->_frameBuffer.buffer_[34].motion_result_.valid_mb_;
  *&v5->_frameBuffer.buffer_[34].motion_result_.valid_mb_ = v24;

  v26 = *&v5->_frameBuffer.buffer_[34].motion_result_.residual_var_;
  *&v5->_frameBuffer.buffer_[34].motion_result_.residual_var_ = 0;

  v27 = *&v5->_frameBuffer.buffer_[34].motion_result_.action_blocks_;
  *&v5->_frameBuffer.buffer_[34].motion_result_.action_blocks_ = 0;

  if ((LOBYTE(v5->_frameBuffer.buffer_[34].motion_result_.gmv_[1]) & 1) != 0 || (v28 = objc_alloc_init(VCPMotionFlowSubtleMotionAnalyzer), v29 = *&v5->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[1], *&v5->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[1] = v28, v29, (preencodeAnalysis = *&v5->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[1]) != 0))
  {
    if (BYTE1(v5->_frameBuffer.buffer_[34].motion_result_.gmv_[1]) != 1 || (v31 = objc_alloc_init(VCPMotionFlowAnalyzer), v32 = *&v5->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[3], *&v5->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[3] = v31, v32, (preencodeAnalysis = *&v5->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[3]) != 0))
    {
      v5->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[5] = 0.0;
      preencodeAnalysis = v5->_preencodeAnalysis;
      if (preencodeAnalysis)
      {
        preencodeAnalysis = v5->_encodeAnalysis;
        if (preencodeAnalysis)
        {
          preencodeAnalysis = v5->_obstructionAnalysis;
          if (preencodeAnalysis)
          {
            sceneAnalysis = v5->_sceneAnalysis;
            if (!sceneAnalysis)
            {
              goto LABEL_27;
            }

            preencodeAnalysis = v5->_motionFilter;
            if (!preencodeAnalysis)
            {
              goto LABEL_28;
            }

            preencodeAnalysis = v5->_metadataAnalysis;
            if (!preencodeAnalysis)
            {
              goto LABEL_28;
            }

            preencodeAnalysis = *&v5->_frameBuffer.buffer_[34].motion_result_.valid_mb_;
            if (!preencodeAnalysis)
            {
              goto LABEL_28;
            }

            if (ma::SceneAnalysis::Initialize(sceneAnalysis, 0, 0, 1.0) || MotionAnalysis<ma::ObstructionSegment>::Initialize(v5->_obstructionAnalysis))
            {
LABEL_27:
              preencodeAnalysis = 0;
            }

            else
            {
              BYTE1(v5->_frameBuffer.buffer_[34].motion_result_.track_score_) = 0;
              LOBYTE(v5->_frameBuffer.buffer_[34].motion_result_.track_score_) = 0;
              BYTE2(v5->_frameBuffer.buffer_[34].motion_result_.track_score_) = 1;
              v5->_frameBuffer.buffer_[34].motion_result_.motion_param_diff_.__elems_[0] = -1.0;
              v5->_frameBuffer.buffer_[34].motion_result_.motion_param_diff_.__elems_[1] = -1.0;
              v5->_frameBuffer.buffer_[34].motion_result_.motion_param_diff_.__elems_[2] = -1.0;
              v5->_frameBuffer.buffer_[34].motion_result_.motion_param_diff_.__elems_[3] = -1.0;
              v36 = *&v5->_frameBuffer.buffer_[34].motion_result_.motion_param_diff_.__elems_[5];
              *&v5->_frameBuffer.buffer_[34].motion_result_.motion_param_diff_.__elems_[5] = 0;

              value = v5->_frameBuffer.buffer_[34].motion_result_.duration_.value;
              v5->_frameBuffer.buffer_[34].motion_result_.duration_.value = 0;

              preencodeAnalysis = v5;
            }
          }
        }
      }
    }
  }

LABEL_28:
  v34 = preencodeAnalysis;
LABEL_30:

  return v34;
}

- (VCPFullVideoAnalyzer)initWithVideoOrientation:(int)a3 preferredTransform:(CGAffineTransform *)a4 metaOrientation:(id)a5 privateResults:(id)a6 embeddings:(id)a7 isTimelapse:(BOOL)a8 isIris:(BOOL)a9 irisPhotoOffsetSec:(float)a10 irisPhotoExposureSec:(float)a11 slowMoRate:(float)a12 faceDominated:(BOOL)a13
{
  v22 = a5;
  v23 = a6;
  v52 = a7;
  v54.receiver = self;
  v54.super_class = VCPFullVideoAnalyzer;
  v24 = [(VCPFullVideoAnalyzer *)&v54 init];
  v25 = v24;
  if (v24)
  {
    v51 = v22;
    LOBYTE(v24->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) = a8;
    BYTE1(v24->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) = a9;
    BYTE2(v24->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) = a12 < 1.0;
    LODWORD(v24->_frameBuffer.buffer_[34].motion_result_.action_score_) = a3;
    v26 = +[VCPFullVideoAnalyzer enableMoflow];
    BYTE1(v25->_frameBuffer.buffer_[34].motion_result_.gmv_[1]) = v26;
    v27 = operator new(0x3C0uLL, MEMORY[0x1E69E5398]);
    v28 = v27;
    if (v27)
    {
      ma::EncodeAnalysis::EncodeAnalysis(v27, &v25->_frameBuffer, 0, 0, v26);
    }

    v25->_encodeAnalysis = v28;
    v29 = operator new(0xC0uLL, MEMORY[0x1E69E5398]);
    v30 = v29;
    if (v29)
    {
      ma::PreEncodeAnalysis::PreEncodeAnalysis(v29);
    }

    v25->_preencodeAnalysis = v30;
    v31 = operator new(0x38uLL, MEMORY[0x1E69E5398]);
    if (v31)
    {
      *v31 = 0;
      *(v31 + 1) = 0;
      *(v31 + 2) = 0;
      v32 = MEMORY[0x1E6960CC0];
      *(v31 + 24) = *MEMORY[0x1E6960CC0];
      *(v31 + 5) = *(v32 + 16);
      v31[48] = 1;
      *(v31 + 13) = 0;
    }

    v25->_obstructionAnalysis = v31;
    v33 = operator new(0x518uLL, MEMORY[0x1E69E5398]);
    if (v33)
    {
      action_score_low = LODWORD(v25->_frameBuffer.buffer_[34].motion_result_.action_score_);
      v35 = *&a4->c;
      v53[0] = *&a4->a;
      v53[1] = v35;
      v53[2] = *&a4->tx;
      v36 = angleForTransform(v53);
      ma::SceneAnalysis::SceneAnalysis(v33, action_score_low, v36, BYTE1(v25->_frameBuffer.buffer_[34].motion_result_.fine_action_score_), LOBYTE(v25->_frameBuffer.buffer_[34].motion_result_.fine_action_score_), BYTE2(v25->_frameBuffer.buffer_[34].motion_result_.fine_action_score_), &v25->_frameBuffer, +[VCPFullVideoAnalyzer useSceneprintInSceneAnalysis]);
    }

    v25->_sceneAnalysis = v33;
    v37 = operator new(0x10uLL, MEMORY[0x1E69E5398]);
    v38 = v37;
    if (v37)
    {
      ma::MotionFilter::MotionFilter(v37, &v25->_frameBuffer, BYTE1(v25->_frameBuffer.buffer_[34].motion_result_.fine_action_score_), 1);
    }

    v25->_motionFilter = v38;
    v39 = operator new(0x28uLL, MEMORY[0x1E69E5398]);
    v40 = v39;
    if (v39)
    {
      ma::MetaDataAnalysis::MetaDataAnalysis(v39, &v25->_frameBuffer);
    }

    v25->_metadataAnalysis = v40;
    objc_storeStrong(&v25->_frameBuffer.buffer_[34].motion_result_.residual_var_, a6);
    LOBYTE(v25->_frameBuffer.buffer_[34].motion_result_.gmv_[1]) = a13;
    objc_storeStrong(&v25->_frameBuffer.buffer_[34].motion_result_.action_blocks_, a7);
    if ((LOBYTE(v25->_frameBuffer.buffer_[34].motion_result_.gmv_[1]) & 1) != 0 || (v41 = objc_alloc_init(VCPMotionFlowSubtleMotionAnalyzer), v42 = *&v25->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[1], *&v25->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[1] = v41, v42, (preencodeAnalysis = *&v25->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[1]) != 0))
    {
      if (BYTE1(v25->_frameBuffer.buffer_[34].motion_result_.gmv_[1]) != 1 || (v44 = objc_alloc_init(VCPMotionFlowAnalyzer), v45 = *&v25->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[3], *&v25->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[3] = v44, v45, (preencodeAnalysis = *&v25->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[3]) != 0))
      {
        preencodeAnalysis = v25->_preencodeAnalysis;
        if (preencodeAnalysis)
        {
          preencodeAnalysis = v25->_encodeAnalysis;
          if (preencodeAnalysis)
          {
            preencodeAnalysis = v25->_obstructionAnalysis;
            if (preencodeAnalysis)
            {
              sceneAnalysis = v25->_sceneAnalysis;
              if (sceneAnalysis)
              {
                preencodeAnalysis = v25->_motionFilter;
                v22 = v51;
                if (!preencodeAnalysis)
                {
                  goto LABEL_30;
                }

                preencodeAnalysis = v25->_metadataAnalysis;
                if (!preencodeAnalysis)
                {
                  goto LABEL_30;
                }

                if (ma::SceneAnalysis::Initialize(sceneAnalysis, v51, v23, a12) || MotionAnalysis<ma::ObstructionSegment>::Initialize(v25->_obstructionAnalysis))
                {
                  goto LABEL_26;
                }

                if (BYTE1(v25->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) != 1)
                {
                  goto LABEL_35;
                }

                v49 = operator new(0x20uLL, MEMORY[0x1E69E5398]);
                if (!v49)
                {
                  preencodeAnalysis = 0;
                  v25->_irisAnalysis = 0;
                  goto LABEL_30;
                }

                v50 = v49;
                ma::IrisAnalysis::IrisAnalysis(v49);
                v25->_irisAnalysis = v50;
                if (ma::IrisAnalysis::Initialize(v50, a10, a11))
                {
LABEL_26:
                  preencodeAnalysis = 0;
                }

                else
                {
LABEL_35:
                  BYTE1(v25->_frameBuffer.buffer_[34].motion_result_.track_score_) = 0;
                  LOBYTE(v25->_frameBuffer.buffer_[34].motion_result_.track_score_) = 0;
                  BYTE2(v25->_frameBuffer.buffer_[34].motion_result_.track_score_) = 0;
                  preencodeAnalysis = v25;
                }

LABEL_30:
                v47 = preencodeAnalysis;
                goto LABEL_31;
              }

              preencodeAnalysis = 0;
            }
          }
        }
      }
    }

    v22 = v51;
    goto LABEL_30;
  }

  v47 = 0;
LABEL_31:

  return v47;
}

- (void)dealloc
{
  encodeAnalysis = self->_encodeAnalysis;
  if (encodeAnalysis)
  {
    ma::EncodeAnalysis::~EncodeAnalysis(encodeAnalysis);
    MEMORY[0x1CCA95C50]();
  }

  preencodeAnalysis = self->_preencodeAnalysis;
  if (preencodeAnalysis)
  {
    ma::PreEncodeAnalysis::~PreEncodeAnalysis(preencodeAnalysis);
    MEMORY[0x1CCA95C50]();
  }

  obstructionAnalysis = self->_obstructionAnalysis;
  if (obstructionAnalysis)
  {
    v6 = MotionAnalysis<ma::ObstructionSegment>::~MotionAnalysis(obstructionAnalysis);
    MEMORY[0x1CCA95C50](v6, 0x1020C40E918D4D9);
  }

  sceneAnalysis = self->_sceneAnalysis;
  if (sceneAnalysis)
  {
    ma::MotionFilter::~MotionFilter((sceneAnalysis + 1272));
    MotionAnalysis<ma::ObstructionSegment>::~MotionAnalysis((sceneAnalysis + 1200));
    ma::QualityAnalysis::~QualityAnalysis((sceneAnalysis + 984));
    ma::MotionFilter::~MotionFilter((sceneAnalysis + 952));
    MotionAnalysis<ma::ObstructionSegment>::~MotionAnalysis((sceneAnalysis + 896));
    ma::MovingObjectAnalysis::~MovingObjectAnalysis((sceneAnalysis + 832));
    ma::DescriptorAnalysis::~DescriptorAnalysis((sceneAnalysis + 760));
    ma::SubtleMotionAnalysis::~SubtleMotionAnalysis((sceneAnalysis + 672));
    ma::SubtleMotionAnalysis::~SubtleMotionAnalysis((sceneAnalysis + 584));
    ma::SubtleMotionAnalysis::~SubtleMotionAnalysis((sceneAnalysis + 496));
    ma::SubtleMotionAnalysis::~SubtleMotionAnalysis((sceneAnalysis + 408));
    ma::CameraMotionAnalysis::~CameraMotionAnalysis((sceneAnalysis + 80));
    v8 = MotionAnalysis<ma::ObstructionSegment>::~MotionAnalysis(sceneAnalysis);
    MEMORY[0x1CCA95C50](v8, 0x1060C40189E915CLL);
  }

  motionFilter = self->_motionFilter;
  if (motionFilter)
  {
    ma::MotionFilter::~MotionFilter(motionFilter);
    MEMORY[0x1CCA95C50]();
  }

  metadataAnalysis = self->_metadataAnalysis;
  if (metadataAnalysis)
  {
    ma::MotionFilter::~MotionFilter(metadataAnalysis);
    MEMORY[0x1CCA95C50]();
  }

  irisAnalysis = self->_irisAnalysis;
  if (irisAnalysis)
  {
    ma::IrisAnalysis::~IrisAnalysis(irisAnalysis);
    MEMORY[0x1CCA95C50]();
  }

  v12.receiver = self;
  v12.super_class = VCPFullVideoAnalyzer;
  [(VCPFullVideoAnalyzer *)&v12 dealloc];
}

- (int)seedAnalyzersWithPixelBuffer:(__CVBuffer *)a3 startTime:(id *)a4 frameStats:(id)a5
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (self->_frameBuffer.frame_count_ || !LODWORD(self->_frameBuffer.buffer_[34].motion_result_.action_score_))
  {
    return -50;
  }

  v11 = Height;
  ma::PreEncodeAnalysis::Initialize(self->_preencodeAnalysis, Width, Height);
  sceneAnalysis = self->_sceneAnalysis;
  v13 = *a4;
  ma::SceneAnalysis::SetStartTime(sceneAnalysis, &v13);
  if (ma::Histogram::InitializeAsIdealExposureHistogram(&self->_frameBuffer.buffer_[34].motion_result_, v11 * Width))
  {
    return -18;
  }

  else
  {
    return 0;
  }
}

- (void)prepareVideoAnalysisByScenes:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    BYTE1(self->_frameBuffer.buffer_[34].motion_result_.track_score_) = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([&unk_1F49BE7E8 containsObject:{v10, v14}])
          {
            v11 = [v6 objectForKeyedSubscript:v10];
            [v11 floatValue];
            v13 = v12 > 0.1;

            if (v13)
            {
              BYTE1(self->_frameBuffer.buffer_[34].motion_result_.track_score_) = 1;
              goto LABEL_13;
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

- (void)prepareLivePhotoAnalysisByScenes:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    self->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[5] = 0.0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = *v24;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          if ([&unk_1F49BE800 containsObject:{v10, v23}])
          {
            v11 = [v6 objectForKeyedSubscript:v10];
            [v11 floatValue];
            v13 = v12 > 0.1;

            if (v13)
            {
              LODWORD(self->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[5]) = 1;
              goto LABEL_13;
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v14 = [v6 objectForKey:@"flag"];
    if (v14)
    {
      v15 = [v6 objectForKeyedSubscript:@"flag"];
      [v15 floatValue];
      v17 = v16 > 0.1;

      if (v17)
      {
        v18 = 2;
LABEL_19:
        LODWORD(self->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[5]) = v18;
        goto LABEL_20;
      }
    }

    v19 = [v6 objectForKey:{@"candle", v23}];
    if (v19)
    {
      v20 = [v6 objectForKeyedSubscript:@"candle"];
      [v20 floatValue];
      v22 = v21 > 0.1;

      if (v22)
      {
        v18 = 3;
        goto LABEL_19;
      }
    }
  }

LABEL_20:
}

- (int)analyzeFrame:(__CVBuffer *)a3 timestamp:(id *)a4 duration:(id *)a5 frameStats:(id)a6 flags:(unint64_t *)a7 cancel:(id)a8
{
  v10 = *a4;
  v9 = *a5;
  return [(VCPFullVideoAnalyzer *)self analyzeFrame:a3 timestamp:&v10 duration:&v9 properties:0 frameStats:a6 flags:a7 cancel:a8];
}

- (int)analyzeFrame:(__CVBuffer *)a3 timestamp:(id *)a4 duration:(id *)a5 properties:(id)a6 frameStats:(id)a7 flags:(unint64_t *)a8 cancel:(id)a9
{
  v107 = *MEMORY[0x1E69E9840];
  v96 = a6;
  v97 = a7;
  v95 = a9;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v13 = [v97 videoActivityDescriptor];

  if (v13)
  {
    goto LABEL_82;
  }

  v14 = [VCPVideoActivityDescriptor alloc];
  v15 = Width + 15;
  if (Width < -15)
  {
    v15 = Width + 30;
  }

  v16 = (v15 >> 4);
  v17 = Height + 15;
  if (Height < -15)
  {
    v17 = Height + 30;
  }

  v18 = [(VCPVideoActivityDescriptor *)v14 initWithFrameWidthInMb:v16 heightInMb:(v17 >> 4)];
  [v97 setVideoActivityDescriptor:v18];

  v19 = [v97 videoActivityDescriptor];

  if (v19)
  {
LABEL_82:
    if (self->_frameBuffer.frame_count_ || (v103 = *a4, (Descriptor = [(VCPFullVideoAnalyzer *)self seedAnalyzersWithPixelBuffer:a3 startTime:&v103 frameStats:v97]) == 0))
    {
      Next = ma::FrameBuffer::GetNext(&self->_frameBuffer);
      v94 = [v96 objectForKeyedSubscript:@"objects"];
      if (v94)
      {
        v89 = self;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v21 = v94;
        v22 = [v21 countByEnumeratingWithState:&v99 objects:v106 count:16];
        if (v22)
        {
          v23 = *v100;
          v24 = MEMORY[0x1E69E5398];
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v100 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v99 + 1) + 8 * i);
              v27 = operator new(0x60uLL, v24);
              if (!v27)
              {
                v103.value = 0;
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf.var0) = 0;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to allocate memory", &buf, 2u);
                }

                Descriptor = -108;
                goto LABEL_38;
              }

              v28 = v27;
              *&v29 = ma::Object::Object(v27).n128_u64[0];
              v103.value = v28;
              v30 = [v21 objectForKeyedSubscript:{v26, v29}];
              v108 = NSRectFromString(v30);
              x = v108.origin.x;
              y = v108.origin.y;
              v33 = v108.size.width;
              v34 = v108.size.height;

              value = v103.value;
              *(v103.value + 8) = x;
              *(value + 16) = y;
              *(value + 24) = v33;
              *(value + 32) = v34;
              *value = [v26 intValue];
              Descriptor = Vector<ma::Object *>::PushBack(Next + 41);
              if (Descriptor)
              {
                if (v103.value)
                {
                  MEMORY[0x1CCA95C50](v103.value, 0x1000C40E841BE39);
                }

                goto LABEL_38;
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v99 objects:v106 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        self = v89;
      }

      v103 = *a4;
      buf = *a5;
      ma::Frame::Initialize(Next, &v103, &buf, a3, 1);
      Descriptor = v37;
      if (v37)
      {
        goto LABEL_39;
      }

      if (BYTE1(self->_frameBuffer.buffer_[34].motion_result_.gmv_[1]) == 1)
      {
        v38 = *&self->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[3];
        v103 = *a4;
        buf = *a5;
        [v38 analyzePixelBuffer:a3 withFrame:Next withTimestamp:&v103 andDuration:&buf cancel:v95];
      }

      v39 = *a8;
      encodeAnalysis = self->_encodeAnalysis;
      *&v103.value = *&a4->var0;
      v41 = BYTE1(self->_frameBuffer.buffer_[34].motion_result_.fine_action_score_);
      v103.epoch = a4->var3;
      Descriptor = ma::EncodeAnalysis::ProcessFrame(encodeAnalysis, &v103, a3, Next, v41, (v39 >> 5) & 1 | BYTE1(self->_frameBuffer.buffer_[34].motion_result_.track_score_));
      if (Descriptor)
      {
        goto LABEL_39;
      }

      if ((LOBYTE(self->_frameBuffer.buffer_[34].motion_result_.gmv_[1]) & 1) == 0)
      {
        v42 = *&self->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[1];
        v103 = *a4;
        buf = *a5;
        [v42 analyzePixelBuffer:a3 withFrame:Next withTimestamp:&v103 andDuration:&buf hasSubtleScene:LODWORD(self->_frameBuffer.buffer_[34].motion_result_.motion_param_.__elems_[5]) cancel:v95];
      }

      if (ma::EncodeAnalysis::getEncodeStats(self->_encodeAnalysis))
      {
        v43 = [v97 detectedFaces];
        v44 = [v43 count] == 0;

        if (!v44)
        {
          v45 = [v97 detectedFaces];
          [(VCPFullVideoAnalyzer *)self estimateExpressionScore:v45 encodeStats:ma::EncodeAnalysis::getEncodeStats(self->_encodeAnalysis) frameWidth:Width frameHeight:Height];
          v47 = v46;

          v48 = *(Next + 4);
          v103.epoch = *(Next + 20);
          *&v103.value = v48;
          if ([(VCPFullVideoAnalyzer *)self isStableMetaMotion:&v103]< 0)
          {
            Next[196] = 0;
            v50 = 0.0;
          }

          else
          {
            LOBYTE(v49) = Next[196];
            v50 = v49;
          }

          [v97 frameExpressionScore];
          if (v47 >= *&v52)
          {
            *&v52 = v47;
          }

          *&v52 = *&v52 * v50;
          [v97 setFrameExpressionScore:v52];
        }
      }

      if ((BYTE2(self->_frameBuffer.buffer_[34].motion_result_.track_score_) & 1) == 0)
      {
        v53 = [VCPSaliencyRegion salientRegionsFromPixelBuffer:a3];
        [(VCPFullVideoAnalyzer *)self reviseFrameTrackScore:Next saliencyRegions:v53];
      }

      if (BYTE2(self->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) == 1)
      {
        Descriptor = ma::SlowMotionAnalysis::ProcessFrame((self->_sceneAnalysis + 1200), Next);
        if (Descriptor)
        {
          goto LABEL_39;
        }
      }

      if (!*Next)
      {
        *(self->_sceneAnalysis + 64) = *(*(self->_encodeAnalysis + 12) + 173);
      }

      if ((BYTE1(self->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) & 1) == 0)
      {
        Descriptor = ma::DescriptorAnalysis::GenerateDescriptor((self->_sceneAnalysis + 760), a3, Next);
        if (Descriptor)
        {
          goto LABEL_39;
        }
      }

      if (BYTE2(self->_frameBuffer.buffer_[34].motion_result_.track_score_) == 1)
      {
        [(VCPFullVideoAnalyzer *)self processAndEstimateQualityScore:Next];
        frame_count = self->_frameBuffer.frame_count_;
        v55 = frame_count - 1;
        if (frame_count > 1)
        {
          v56 = ma::FrameBuffer::Get(&self->_frameBuffer, frame_count - 2);
          v57 = ma::FrameBuffer::Get(&self->_frameBuffer, v55);
          Descriptor = ma::SceneAnalysis::ProcessFrame(self->_sceneAnalysis, v56, v57);
          if (Descriptor)
          {
            goto LABEL_39;
          }
        }

        if (ma::CameraMotionAnalysis::isCurrentSegmentStable(self->_sceneAnalysis + 10) || ma::Translation::AbsSum((Next + 52)) < 25.0)
        {
          *(Next + 46) = 0;
        }
      }

      else
      {
        v58 = self->_frameBuffer.frame_count_;
        if (v58 >= 6)
        {
          Descriptor = [(VCPFullVideoAnalyzer *)self process:(v58 - 5)];
          if (Descriptor)
          {
            goto LABEL_39;
          }
        }
      }

      if (!ma::EncodeAnalysis::getEncodeStats(self->_encodeAnalysis) || self->_frameBuffer.frame_count_ < 2)
      {
LABEL_67:
        if ((BYTE1(self->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) & 1) == 0 && *(*(self->_encodeAnalysis + 12) + 32) && *Next)
        {
          v62 = [v97 videoActivityDescriptor];
          [v62 ExtractActivityDescriptorFromStats:ma::EncodeAnalysis::getEncodeStats(self->_encodeAnalysis)];
        }

        LODWORD(v59) = *(Next + 19);
        [v97 setCameraMotionScore:{v59, v89}];
        v64 = 176;
        if (!*(*(self->_encodeAnalysis + 12) + 32))
        {
          v64 = 180;
        }

        LODWORD(v63) = *&Next[v64];
        [v97 setSubjectActionScore:v63];
        LODWORD(v65) = *(Next + 48);
        [v97 setSubtleMotionScore:v65];
        LODWORD(v66) = *(Next + 86);
        [v97 setInterestingnessScore:v66];
        LODWORD(v67) = *(Next + 88);
        [v97 setColorfulnessScore:v67];
        [v97 setFrameProcessedByVideoAnalyzer:Next[208]];
        [v97 setSubMbMotionAvailable:*(*(self->_encodeAnalysis + 12) + 32) != 0];
        [(VCPFullVideoAnalyzer *)self computeExposureScoreOfFrame:Next];
        [v97 setExposureScore:?];
        v103 = *(Next + 228);
        [v97 setMotionParam:&v103];
        v103 = *(Next + 252);
        [v97 setMotionParamDiff:&v103];
        self->_frameBuffer.buffer_[34].motion_result_.motion_param_diff_.__elems_[0] = ma::QualityAnalysis::currentSegmentScore(self->_sceneAnalysis + 123);
        self->_frameBuffer.buffer_[34].motion_result_.motion_param_diff_.__elems_[1] = ma::FineSubjectMotionAnalysis::currentSegmentScore((self->_sceneAnalysis + 496), *Next);
        LODWORD(v68) = *(Next + 46);
        [*&self->_frameBuffer.buffer_[34].motion_result_.valid_mb_ processFrameScore:Next[208] validScore:v68];
        self->_frameBuffer.buffer_[34].motion_result_.motion_param_diff_.__elems_[4] = v69;
        [v97 interestingnessScore];
        v70 = self;
        self->_frameBuffer.buffer_[34].motion_result_.motion_param_diff_.__elems_[2] = v71;
        v21 = [MEMORY[0x1E695DF90] dictionary];
        for (j = 0; ; ++j)
        {
          v73 = *(Next + 41);
          v74 = v73 ? CFArrayGetCount(v73) : 0;
          if (j >= v74)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(*(Next + 41), j);
          v76 = *ValueAtIndex;
          LODWORD(v77) = (*ValueAtIndex)[21];
          v78 = [MEMORY[0x1E696AD98] numberWithFloat:v77];
          v105[0] = v78;
          LODWORD(v79) = v76[22];
          v80 = [MEMORY[0x1E696AD98] numberWithFloat:v79];
          v105[1] = v80;
          v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
          v82 = [MEMORY[0x1E696AD98] numberWithInt:*v76];
          [v21 setObject:v81 forKeyedSubscript:v82];
        }

        objc_storeStrong(&v70->_frameBuffer.buffer_[34].motion_result_.motion_param_diff_.__elems_[5], v21);
        *&v83 = *(Next + 55) * 0.25;
        v84 = [MEMORY[0x1E696AD98] numberWithFloat:v83];
        v104[0] = v84;
        *&v85 = *(Next + 56) * 0.25;
        v86 = [MEMORY[0x1E696AD98] numberWithFloat:v85];
        v104[1] = v86;
        v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
        v88 = v70->_frameBuffer.buffer_[34].motion_result_.duration_.value;
        v70->_frameBuffer.buffer_[34].motion_result_.duration_.value = v87;

        Descriptor = 0;
LABEL_38:

        goto LABEL_39;
      }

      obstructionAnalysis = self->_obstructionAnalysis;
      EncodeStats = ma::EncodeAnalysis::getEncodeStats(self->_encodeAnalysis);
      Descriptor = ma::ObstructionAnalysis::ProcessFrame(obstructionAnalysis, Next, EncodeStats);
      if (!Descriptor)
      {
        self->_frameBuffer.buffer_[34].motion_result_.motion_param_diff_.__elems_[3] = *(self->_obstructionAnalysis + 13);
        goto LABEL_67;
      }

LABEL_39:
    }
  }

  else
  {
    Descriptor = -108;
  }

  return Descriptor;
}

- (int)isStableMetaMotion:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [*&self->_frameBuffer.buffer_[34].motion_result_.residual_var_ objectForKeyedSubscript:@"MetaMotionResults"];

  if (!v5)
  {
    return 0;
  }

  [*&self->_frameBuffer.buffer_[34].motion_result_.residual_var_ objectForKeyedSubscript:@"MetaMotionResults"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        memset(&v18, 0, sizeof(v18));
        CMTimeRangeMakeFromDictionary(&v18, v10);
        range = v18;
        v16 = *a3;
        if (CMTimeRangeContainsTime(&range, &v16))
        {
          v12 = [(__CFDictionary *)v10 objectForKeyedSubscript:@"quality"];
          [v12 floatValue];
          v14 = v13;

          if (v14 < 10.0)
          {
            v11 = 1;
          }

          else
          {
            v11 = -1;
          }

          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (float)estimateExpressionScore:(id)a3 encodeStats:(EncodeStats *)a4 frameWidth:(int)a5 frameHeight:(int)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  var25 = a4->var25;
  var26 = a4->var26;
  v11 = var25 + 15;
  v10 = var25 < -15;
  v12 = var25 + 30;
  if (!v10)
  {
    v12 = v11;
  }

  v33 = v12;
  v13 = var26 + 15;
  v34 = 0u;
  v35 = 0u;
  if (var26 >= -15)
  {
    v14 = var26 + 15;
  }

  else
  {
    v14 = var26 + 30;
  }

  v36 = 0uLL;
  v37 = 0uLL;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v16)
  {
    v17 = *v35;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v34 + 1) + 8 * i) bounds];
        v38.b = 0.0;
        v38.c = 0.0;
        v38.a = 1.0;
        *&v38.d = xmmword_1C9F60600;
        v38.ty = 1.0;
        v42 = CGRectApplyAffineTransform(v41, &v38);
      }

      v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:{16, v42.origin.x, v42.origin.y, v42.size.width, v42.size.height}];
    }

    while (v16);
  }

  v19 = v13 / 64;
  if (v13 / 64 >= 3 * (v14 >> 4) / 4)
  {
    v31 = NAN;
  }

  else
  {
    v20 = v33 >> 4;
    v21 = v11 / 64;
    if (3 * (v33 >> 4) >= 0)
    {
      v22 = 3 * v20;
    }

    else
    {
      v22 = 3 * v20 + 3;
    }

    v23 = v19;
    v24 = 2 * v19 * v20 + 2 * v21;
    v25 = 2 * v20;
    v26 = 0.0;
    v27 = 0.0;
    do
    {
      if (v21 < v22 >> 2)
      {
        v28 = (a4->var19 + v24);
        v29 = (v22 >> 2) - v21;
        do
        {
          v30 = *v28++;
          v27 = v27 + (v30 / 1000.0);
          v26 = v26 + 1.0;
          --v29;
        }

        while (v29);
      }

      ++v23;
      v24 += v25;
    }

    while (v23 != 3 * (v14 >> 4) / 4);
    v31 = (v27 / v26) + -1000.0;
  }

  return v31 / 2500.0;
}

- (int)finishAnalysisPass:(id *)a3
{
  frame_count = self->_frameBuffer.frame_count_;
  if (!frame_count || (LOBYTE(self->_frameBuffer.buffer_[34].motion_result_.track_score_) & 1) != 0)
  {
    return -18;
  }

  if (frame_count <= 5)
  {
    v6 = 5;
  }

  else
  {
    v6 = self->_frameBuffer.frame_count_;
  }

  v7 = (v6 - 4);
  if (v7 >= frame_count)
  {
LABEL_11:
    v8 = ma::FrameBuffer::Get(&self->_frameBuffer, frame_count - 1);
    result = ma::PreEncodeAnalysis::Finalize(self->_preencodeAnalysis, v8);
    if (!result)
    {
      result = ma::ObstructionAnalysis::Finalize(self->_obstructionAnalysis, v8);
      if (!result)
      {
        result = ma::SceneAnalysis::Finalize(self->_sceneAnalysis, v8, frame_count, self->_obstructionAnalysis);
        if (!result)
        {
          LOBYTE(self->_frameBuffer.buffer_[34].motion_result_.track_score_) = 1;
          v9 = [MEMORY[0x1E695DF90] dictionary];
          v10 = *&self->_frameBuffer.buffer_[34].motion_result_.subtle_motion_score_;
          *&self->_frameBuffer.buffer_[34].motion_result_.subtle_motion_score_ = v9;

          if (BYTE1(self->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) == 1)
          {
            result = [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"MetaMotionProcessedResults" to:*&self->_frameBuffer.buffer_[34].motion_result_.subtle_motion_score_ optional:1];
            if (!result)
            {
              return result;
            }

            v11 = *&self->_frameBuffer.buffer_[34].motion_result_.subtle_motion_score_;
            *&self->_frameBuffer.buffer_[34].motion_result_.subtle_motion_score_ = 0;
          }

          return 0;
        }
      }
    }
  }

  else
  {
    while (1)
    {
      result = [(VCPFullVideoAnalyzer *)self process:v7];
      if (result)
      {
        break;
      }

      v7 = (v7 + 1);
      if (frame_count == v7)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

- (int)process:(int)a3
{
  if (a3 < 1 || self->_frameBuffer.frame_count_ <= a3)
  {
    return -50;
  }

  v5 = ma::FrameBuffer::Get(&self->_frameBuffer, a3 - 1);
  v6 = ma::FrameBuffer::Get(&self->_frameBuffer, a3);
  if ((LOBYTE(self->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) & 1) == 0)
  {
    ma::MotionFilter::ProcessMotion(self->_motionFilter, a3, (v6 + 52), 2);
  }

  ma::MetaDataAnalysis::EstimateMetadataFromMotion(self->_metadataAnalysis, a3, (v6 + 52), BYTE1(self->_frameBuffer.buffer_[34].motion_result_.fine_action_score_));
  if (BYTE1(self->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) != 1 || (result = ma::IrisAnalysis::UpdateStats(self->_irisAnalysis, v5, v6)) == 0)
  {
    ma::PreEncodeAnalysis::ProcessFrame(self->_preencodeAnalysis, v6);
    sceneAnalysis = self->_sceneAnalysis;

    return ma::SceneAnalysis::ProcessFrame(sceneAnalysis, v5, v6);
  }

  return result;
}

- (void)processAndEstimateQualityScore:(void *)a3
{
  if ((LOBYTE(self->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) & 1) == 0)
  {
    frame_count = self->_frameBuffer.frame_count_;
    if (frame_count >= 1)
    {
      ma::MotionFilter::ProcessMotion(self->_motionFilter, frame_count - 1, (a3 + 52), 2);
    }
  }

  ma::MetaDataAnalysis::EstimateMetadataFromMotion(self->_metadataAnalysis, self->_frameBuffer.frame_count_ - 1, (a3 + 52), 1);
  [(VCPFullVideoAnalyzer *)self estimateQualityScore:a3];
  *(a3 + 19) = v6;
}

- (id)processSceneResults
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"SceneResults" to:v3 optional:0];
  v4 = [v3 objectForKeyedSubscript:@"SceneResults"];
  for (i = 0; i < [v4 count]; ++i)
  {
    memset(&v13, 0, sizeof(v13));
    v6 = [v4 objectAtIndexedSubscript:i];
    CMTimeRangeMakeFromDictionary(&v13, v6);

    v7 = *&self->_frameBuffer.buffer_[34].motion_result_.action_blocks_;
    v12 = v13;
    v8 = [v7 getEmbeddingsForRange:&v12 useFP16:1];
    if (v8)
    {
      v9 = [v4 objectAtIndexedSubscript:i];
      v10 = [v9 objectForKeyedSubscript:@"attributes"];

      [v10 setObject:v8 forKeyedSubscript:@"embeddings"];
    }
  }

  return v4;
}

- (float)estimateQualityScore:(void *)a3
{
  if (ma::Histogram::NoInfo((a3 + 360)) || (*(a3 + 108) & 1) != 0)
  {
    return 0.0;
  }

  v5 = ma::Translation::AbsSum((a3 + 52));
  v6 = expf(v5 * -0.07);
  v7 = ma::Translation::AbsSum((a3 + 112));
  return (fmaxf(v6, 0.0) * 0.7) + (fmaxf(expf(v7 * -10.0), 0.0) * 0.3);
}

- (id)results
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"CameraMotionResults" to:v3 optional:0]|| [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"SubjectMotionResults" to:v3 optional:0]|| [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"QualityResults" to:v3 optional:0])
  {
    goto LABEL_4;
  }

  if (*&self->_frameBuffer.buffer_[34].motion_result_.action_blocks_)
  {
    v7 = [(VCPFullVideoAnalyzer *)self processSceneResults];
    [v3 setObject:v7 forKeyedSubscript:@"SceneResults"];
  }

  else if ([(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"SceneResults" to:v3 optional:0])
  {
    goto LABEL_4;
  }

  if ((BYTE1(self->_frameBuffer.buffer_[34].motion_result_.fine_action_score_) & 1) == 0)
  {
    if (![(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"FeatureVectorResults" to:v3 optional:0])
    {
      v8 = [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"SceneprintResults" to:v3 optional:0];
      goto LABEL_12;
    }

LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  v8 = [(VCPFullVideoAnalyzer *)self addResult:ma::IrisAnalysis::GetBoundBoxResults(self->_irisAnalysis) to:v3 forKey:@"IrisObjectsResults" optional:1];
LABEL_12:
  if (v8 || [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"FineSubjectMotionResults" to:v3 optional:1]|| [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"SubtleMotionResults" to:v3 optional:1]|| [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"MovingObjectsResults" to:v3 optional:1]|| [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"OrientationResults" to:v3 optional:1]|| [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"InterestingnessResults" to:v3 optional:1]|| [(VCPFullVideoAnalyzer *)self addResult:*(self->_obstructionAnalysis + 2) to:v3 forKey:@"ObstructionResults" optional:1])
  {
    goto LABEL_4;
  }

  if ([(VCPFullVideoAnalyzer *)self addResult:ma::PreEncodeAnalysis::GetResults(self->_preencodeAnalysis) to:v3 forKey:@"PreEncodeResults" optional:1])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

LABEL_5:
  v5 = v4;

  return v4;
}

- (int)addSceneAnalysisResult:(id)a3 to:(id)a4 optional:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  cf = 0;
  v10 = ma::SceneAnalysis::CopyProperty(self->_sceneAnalysis, v8, 0, &cf);
  if (!v10)
  {
    v10 = [(VCPFullVideoAnalyzer *)self addResult:cf to:v9 forKey:v8 optional:v5];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

- (int)addSceneAnalysisResult:(id)a3 to:(id)a4 clipRange:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v15 = 0;
  sceneAnalysis = self->_sceneAnalysis;
  v11 = *&a5->var0.var3;
  *&v14.start.value = *&a5->var0.var0;
  *&v14.start.epoch = v11;
  *&v14.duration.timescale = *&a5->var1.var1;
  v12 = ma::SceneAnalysis::CopyProperty(sceneAnalysis, &v14, v8, 0, &v15);
  if (!v12)
  {
    v12 = [(VCPFullVideoAnalyzer *)self addResult:v15 to:v9 forKey:v8 optional:0];
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v12;
}

- (int)addResult:(__CFArray *)a3 to:(id)a4 forKey:(id)a5 optional:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a5;
  if (a3)
  {
    v11 = 1;
  }

  else
  {
    v11 = v6;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = -50;
  }

  if (a3)
  {
    Copy = CFArrayCreateCopy(0, a3);
    [v9 setObject:Copy forKey:v10];

    v12 = 0;
  }

  return v12;
}

- (float)getSceneSwichFrequency
{
  sceneAnalysis = self->_sceneAnalysis;
  if (sceneAnalysis)
  {
    return sceneAnalysis[14];
  }

  else
  {
    return 0.0;
  }
}

- (void)reviseFrameTrackScore:(void *)a3 saliencyRegions:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = *(a3 + 39);
    v9 = v8 ? CFArrayGetCount(v8) : 0;
    if (v6 >= v9)
    {
      break;
    }

    v10 = *CFArrayGetValueAtIndex(*(a3 + 39), v6);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v12)
    {
      v13 = *v16;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v15 + 1) + 8 * i) bound];
          if (CGRectIntersectsRect(v21, *(v10 + 8)))
          {
            v7 = 1;
            goto LABEL_16;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    ++v6;
  }

  if ((v7 & 1) == 0)
  {
    *(a3 + 46) = 0;
  }
}

- (id)clipResults:(id *)a3
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = *&a3->var0.var3;
  v14 = *&a3->var0.var0;
  v15 = v6;
  v16 = *&a3->var1.var1;
  if ([(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"QualityResults" to:v5 clipRange:&v14]|| (v7 = *&a3->var0.var3, v14 = *&a3->var0.var0, v15 = v7, v16 = *&a3->var1.var1, [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"FineSubjectMotionResults" to:v5 clipRange:&v14]) || (v8 = *&a3->var0.var3, v14 = *&a3->var0.var0, v15 = v8, v16 = *&a3->var1.var1, [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"SubtleMotionResults" to:v5 clipRange:&v14]) || (v9 = *&a3->var0.var3, v14 = *&a3->var0.var0, v15 = v9, v16 = *&a3->var1.var1, [(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"CameraMotionResults" to:v5 clipRange:&v14]))
  {
    v10 = 0;
  }

  else
  {
    v13 = *&a3->var0.var3;
    v14 = *&a3->var0.var0;
    v15 = v13;
    v16 = *&a3->var1.var1;
    if ([(VCPFullVideoAnalyzer *)self addSceneAnalysisResult:@"InterestingnessResults" to:v5 clipRange:&v14])
    {
      v10 = 0;
    }

    else
    {
      v10 = v5;
    }
  }

  v11 = v10;

  return v10;
}

- (id).cxx_construct
{
  ma::FrameBuffer::FrameBuffer(&self->_frameBuffer);
  ma::Histogram::Histogram(&self->_frameBuffer.buffer_[34].motion_result_);
  return self;
}

@end