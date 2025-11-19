@interface VCPLightMotionAnalyzer
+ (float)autoLiveMotionScore:(id)a3;
- (VCPLightMotionAnalyzer)initWithQueue:(id)a3 turbo:(BOOL)a4;
- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6;
- (int)cameraMotionDetection:(void *)a3;
- (int)computeMotionDivScore:(EncodeStats *)a3;
- (int)generateThresholds:(float)a3[6] withConfidences:(float)a4[6];
- (int)prewarmWithWidth:(int)a3 height:(int)a4;
- (void)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 completion:(id)a6;
- (void)dealloc;
@end

@implementation VCPLightMotionAnalyzer

+ (float)autoLiveMotionScore:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v3 = [v32 count];
  v4 = v3;
  v5 = 1.0;
  if ((v3 & 0x80000000) == 0)
  {
    v6 = 0;
    if (v3 >= 5)
    {
      v7 = 5;
    }

    else
    {
      v7 = v3;
    }

    v8 = (v7 + 1);
    while (1)
    {
      v9 = [v32 objectAtIndexedSubscript:v6];
      v10 = [v9 objectForKeyedSubscript:@"flags"];
      v11 = [v10 integerValue];

      if ((v11 & 0x1000) != 0)
      {
        break;
      }

      if (v8 == ++v6)
      {
        goto LABEL_10;
      }
    }

    v5 = 0.05;
  }

LABEL_10:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = v32;
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v33 = 0;
    v14 = *v35;
    v15 = v4 / 2;
    v16 = 0.0;
    v17 = 0.0;
    do
    {
      v18 = 0;
      v19 = v33;
      v33 += v13;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v34 + 1) + 8 * v18);
        v21 = [v20 objectForKeyedSubscript:@"subjectMotionScore"];
        v22 = v21 == 0;

        if (!v22)
        {
          v23 = [v20 objectForKeyedSubscript:@"subjectMotionScore"];
          [v23 floatValue];
          v25 = v24;

          *&v26 = v5;
          if (v19 >= 6)
          {
            v27 = [v20 objectForKeyedSubscript:{@"flags", v26}];
            v28 = [v27 integerValue];

            LODWORD(v26) = 1.0;
            if ((v28 & 0x1000) != 0)
            {
              if (v19 >= v15)
              {
                *&v26 = 1.0;
              }

              else
              {
                *&v26 = 0.05;
              }
            }
          }

          v16 = v16 + *&v26;
          v17 = v17 + (*&v26 * (v25 * v25));
        }

        ++v19;
        ++v18;
      }

      while (v13 != v18);
      v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);

    v29 = 1.0;
    if (v16 > 0.0)
    {
      v30 = fabsf(sqrtf(v17 / v16));
      if ((v17 / v16) == -INFINITY)
      {
        v29 = INFINITY;
      }

      else
      {
        v29 = v30;
      }
    }
  }

  else
  {

    v29 = 1.0;
  }

  return v29;
}

- (VCPLightMotionAnalyzer)initWithQueue:(id)a3 turbo:(BOOL)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = VCPLightMotionAnalyzer;
  v8 = [(VCPLightMotionAnalyzer *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a3);
    v9->_frame.histogram_.moments_hist_[1] = 0;
    LOBYTE(v9->_flags) = a4;
    v10 = operator new(0x3C0uLL, MEMORY[0x1E69E5398]);
    v11 = v10;
    if (v10)
    {
      ma::EncodeAnalysis::EncodeAnalysis(v10, 0, a4, 1, 0);
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v9->_encodeAnalysis = v11;
    v9->_frame.frame_idx_ = 0;
    *&v9->_cameraMotionConfidences[5][3] = 0;
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int)prewarmWithWidth:(int)a3 height:(int)a4
{
  if (self->_frame.histogram_.moments_hist_[1])
  {
    return 0;
  }

  result = 0;
  if (a4 >= 1 && a3 >= 1 && self->_queue)
  {
    Async = ma::EncodeStatsHW::CreateAsync(*&a3, *&a4, LOBYTE(self->_flags), 1);
    self->_frame.histogram_.moments_hist_[1] = Async;
    if (Async)
    {
      *(self->_encodeAnalysis + 12) = Async;
      encodeAnalysis = self->_encodeAnalysis;
      v8 = self->_frame.histogram_.moments_hist_[1];
      v10 = v8[44];
      v9 = v8[45];
      v12 = v10 + 15;
      v11 = v10 < -15;
      v13 = v10 + 30;
      if (!v11)
      {
        v13 = v12;
      }

      v14 = v13 >> 4;
      v15 = v9 + 15;
      v11 = v9 < -15;
      v16 = v9 + 30;
      if (!v11)
      {
        v16 = v15;
      }

      return ma::EncodeAnalysis::Initialize(encodeAnalysis, v14, v16 >> 4);
    }

    else
    {
      return -108;
    }
  }

  return result;
}

- (void)dealloc
{
  encodeAnalysis = self->_encodeAnalysis;
  if (encodeAnalysis)
  {
    ma::EncodeAnalysis::~EncodeAnalysis(encodeAnalysis);
    MEMORY[0x1CCA95C50]();
  }

  v4.receiver = self;
  v4.super_class = VCPLightMotionAnalyzer;
  [(VCPLightMotionAnalyzer *)&v4 dealloc];
}

- (int)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 flags:(unint64_t *)a6
{
  if (self->_queue)
  {
    return -18;
  }

  v18 = v6;
  v19 = v7;
  p_frame = &self->_frame;
  v17 = *a4;
  v16 = *a5;
  ma::Frame::Initialize(&self->_frame, &v17, &v16, a3, 0);
  if (!result)
  {
    encodeAnalysis = self->_encodeAnalysis;
    v17 = *a4;
    result = ma::EncodeAnalysis::ProcessFrame(encodeAnalysis, &v17, a3, p_frame, 0, 0);
    if (!result)
    {
      result = [(VCPLightMotionAnalyzer *)self cameraMotionDetection:&p_frame->acc_var_.z_];
      if (!result)
      {
        result = [(VCPLightMotionAnalyzer *)self computeMotionDivScore:ma::EncodeAnalysis::getEncodeStats(self->_encodeAnalysis)];
        if (!result)
        {
          if (a6)
          {
            *a6 |= *&self->_cameraMotionConfidences[5][3];
          }

          result = 0;
          HIDWORD(self->_flags) = LODWORD(p_frame->motion_result_.confidence_[5]);
          if (p_frame->frame_idx_ == 2147483646)
          {
            v15 = 0;
          }

          else
          {
            v15 = p_frame->frame_idx_ + 1;
          }

          p_frame->frame_idx_ = v15;
        }
      }
    }
  }

  return result;
}

- (int)generateThresholds:(float)a3[6] withConfidences:(float)a4[6]
{
  for (i = 0; i != 6; ++i)
  {
    v5 = a4[i];
    v6 = -4.5;
    if (v5 >= 0.1)
    {
      v6 = -0.1;
      if (v5 <= 0.9)
      {
        v6 = (v5 * 5.5) + -5.05;
      }
    }

    a3[i] = v6;
  }

  return 0;
}

- (int)cameraMotionDetection:(void *)a3
{
  v27[3] = *MEMORY[0x1E69E9840];
  p_stats = &self->_stats;
  frame_idx = self->_frame.frame_idx_;
  v7 = &self->_cameraMotionParams[5][3];
  v8 = 4 * (frame_idx % 5) + 440;
  v9 = 4 * (frame_idx % 5) + 560;
  v10 = 6;
  do
  {
    *(&self->super.super.isa + v8) = *a3;
    *(&self->super.super.isa + v9) = *(a3 + 6);
    a3 = a3 + 4;
    v8 += 20;
    v9 += 20;
    --v10;
  }

  while (v10);
  memset(v27, 0, 24);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (frame_idx >= 5)
  {
    for (i = 0; i != 6; ++i)
    {
      v12 = 0;
      v13 = *(&v24 + i);
      v14 = *(v27 + i);
      do
      {
        v13 = *(p_stats + v12 * 4) + v13;
        v14 = v7[v12++] + v14;
      }

      while (v12 != 5);
      *(&v24 + i) = v13;
      *(v27 + i) = v14;
      p_stats = (p_stats + 20);
      v7 += 5;
    }

    v15 = 0;
    LODWORD(v3) = 5.0;
    do
    {
      *(&v24 + v15) = *(&v24 + v15) / 5.0;
      *(v27 + v15) = *(v27 + v15) / 5.0;
      v15 += 4;
    }

    while (v15 != 24);
    [(VCPLightMotionAnalyzer *)self generateThresholds:&v21 withConfidences:v27, v3];
    v16 = 0;
    v17 = 3.4028e38;
    do
    {
      if (*(&v24 + v16) < v17)
      {
        v17 = *(&v24 + v16);
      }

      v16 += 4;
    }

    while (v16 != 24);
    v18 = *&v25 < (v17 * 0.5) && *&v25 < *&v22;
    v19 = 4096;
    if (!v18)
    {
      v19 = 0;
    }

    *&self->_cameraMotionConfidences[5][3] = *&self->_cameraMotionConfidences[5][3] & 0xFFFFFFFFFFFFEFFFLL | v19;
  }

  return 0;
}

- (int)computeMotionDivScore:(EncodeStats *)a3
{
  if (!a3)
  {
    return -18;
  }

  var25 = a3->var25;
  var26 = a3->var26;
  v6 = var25 + 15;
  v5 = var25 < -15;
  v7 = var25 + 30;
  if (!v5)
  {
    v7 = v6;
  }

  v8 = v7 >> 4;
  v9 = var26 + 15;
  v5 = var26 < -15;
  v10 = var26 + 30;
  if (!v5)
  {
    v10 = v9;
  }

  v11 = (v10 >> 4) * v8;
  v12 = 0.0;
  v13 = 0.0;
  if (v11 >= 1)
  {
    v14 = 0;
    var1 = a3->var1;
    v16 = 2 * v11;
    v17 = 0.0;
    do
    {
      if (*var1++)
      {
        v19 = HIBYTE(a3->var15[v14 / 2]) + HIBYTE(a3->var16[v14 / 2]);
        v13 = v13 + (v19 * (vabds_f32(*(a3->var3 + v14), *&self->_frame.motion_result_.support_size_) + vabds_f32(*(a3->var3 + v14 + 1), self->_frame.motion_result_.residual_var_)));
        v17 = v17 + (v19 + 2);
      }

      v14 += 2;
    }

    while (v16 != v14);
    v13 = v13 / (v17 + 10.0);
  }

  v20 = 0;
  v21 = v13 / 40.0;
  v22 = 1.0;
  if (v21 < 1.0)
  {
    v22 = v21;
  }

  if (v21 > 0.0)
  {
    v12 = v22;
  }

  *&self->_turbo = v12;
  return v20;
}

- (void)analyzeFrame:(__CVBuffer *)a3 withTimestamp:(id *)a4 andDuration:(id *)a5 completion:(id)a6
{
  v10 = a6;
  CFRetain(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (!self->_queue)
  {
LABEL_9:
    v15 = 4294967278;
    goto LABEL_10;
  }

  v13 = Height;
  v22 = *a4;
  v21 = *a5;
  ma::Frame::Initialize(&self->_frame, &v22, &v21, a3, 0);
  v15 = v14;
  if (!v14)
  {
    Async = self->_frame.histogram_.moments_hist_[1];
    if (Async || (Async = ma::EncodeStatsHW::CreateAsync(Width, v13, LOBYTE(self->_flags), 1), (self->_frame.histogram_.moments_hist_[1] = Async) != 0))
    {
      if (Async[44] == Width && Async[45] == v13)
      {
        v22 = *a4;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __76__VCPLightMotionAnalyzer_analyzeFrame_withTimestamp_andDuration_completion___block_invoke;
        v17[3] = &unk_1E834D288;
        v20 = v22;
        v17[4] = self;
        v19 = a3;
        v18 = v10;
        v15 = ma::EncodeStatsHW::ProcessFrameAsync(Async, &v22, a3, v17);

        if (!v15)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  if (a3)
  {
    CFRelease(a3);
  }

  (*(v10 + 2))(v10, 0, v15, -1.0, -1.0);
LABEL_13:
}

void __76__VCPLightMotionAnalyzer_analyzeFrame_withTimestamp_andDuration_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__VCPLightMotionAnalyzer_analyzeFrame_withTimestamp_andDuration_completion___block_invoke_2;
  block[3] = &unk_1E834D260;
  block[4] = v2;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = a2;
  v9 = v4;
  v7 = v5;
  dispatch_async(v3, block);
}

uint64_t __76__VCPLightMotionAnalyzer_analyzeFrame_withTimestamp_andDuration_completion___block_invoke_2(uint64_t a1, __n128 a2, __n128 a3)
{
  v4 = *(*(a1 + 32) + 432);
  v5 = *(v4 + 46);
  if (!v5)
  {
    v6 = ma::EncodeStatsHW::ParseStatsFromSampleBuffer(v4, *(a1 + 48));
    if (v6 || (v7 = *(a1 + 32), v8 = v7[1], v9 = v7[54], v15 = *(a1 + 64), (v6 = ma::EncodeAnalysis::AnalyzeFrame(v8, v9, &v15, *(a1 + 56), (v7 + 3), 0, 0)) != 0) || (v6 = [*(a1 + 32) cameraMotionDetection:*(a1 + 32) + 152]) != 0 || (v6 = objc_msgSend(*(a1 + 32), "computeMotionDivScore:", *(*(a1 + 32) + 432))) != 0)
    {
      v5 = v6;
    }

    else
    {
      *(*(a1 + 32) + 692) = *(*(a1 + 32) + 204);
      ++*(*(a1 + 32) + 24);
      v14 = *(a1 + 32);
      v5 = 0;
      if (*(v14 + 24) == 0x7FFFFFFF)
      {
        *(v14 + 24) = 0;
      }
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v5)
  {
    a2.n128_u32[1] = -1074790400;
    a2.n128_f32[0] = -1.0;
    a3.n128_f32[0] = -1.0;
  }

  else
  {
    v13 = *(a1 + 32);
    a2.n128_u32[0] = *(v13 + 692);
    a3.n128_u32[0] = *(v13 + 696);
  }

  return (*(*(a1 + 40) + 16))(a2, a3);
}

@end