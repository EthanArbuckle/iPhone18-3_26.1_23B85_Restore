@interface VCPSceneChangeAnalyzer
- (BOOL)decideLensSwitchPoint:(void *)point;
- (VCPSceneChangeAnalyzer)init;
- (id)results;
- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags;
- (int)finalizeAnalysisPass:(id *)pass;
- (void)ComputeSceneDelta:(void *)delta;
- (void)PrintSegments;
@end

@implementation VCPSceneChangeAnalyzer

- (VCPSceneChangeAnalyzer)init
{
  v11.receiver = self;
  v11.super_class = VCPSceneChangeAnalyzer;
  v2 = [(VCPSceneChangeAnalyzer *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(VCPSceneChangeSegment);
    v4 = *(v2 + 1792);
    *(v2 + 1792) = v3;

    array = [MEMORY[0x1E695DF70] array];
    v6 = *(v2 + 1793);
    *(v2 + 1793) = array;

    v2[14352] = 1;
    v2[14353] = 1;
    v7 = *MEMORY[0x1E6960CA8];
    v8 = *(MEMORY[0x1E6960CA8] + 32);
    *(v2 + 14372) = *(MEMORY[0x1E6960CA8] + 16);
    *(v2 + 14388) = v8;
    *(v2 + 14356) = v7;
    v2[14404] = 0;
    v2[14405] = 0;
    *(v2 + 5) = 0;
    *(v2 + 8) = 0u;
    *(v2 + 24) = 0u;
    v9 = v2;
  }

  return v2;
}

- (void)ComputeSceneDelta:(void *)delta
{
  v3 = *delta;
  v4 = *delta - 3;
  if (*delta >= 3)
  {
    if (v3 <= 0xC)
    {
      v7 = v4;
    }

    else
    {
      v7 = 10;
    }

    v8 = ma::FrameBuffer::Get(&self->_frameBuffer, v3 - 2);
    v9 = ma::Histogram::EarthMoverDistance((delta + 360), (v8 + 360));
    if (v7)
    {
      sceneDeltaBuffer = self->_sceneDeltaBuffer;
      v11 = 0.0;
      v12 = v7;
      do
      {
        v13 = *sceneDeltaBuffer++;
        v11 = v11 + v13;
        --v12;
      }

      while (v12);
      v14 = fmaxf(v9 - (v11 / v7), 0.0) / ((v11 / v7) + 0.000001);
    }

    else
    {
      v14 = 0.0;
    }

    self->_sceneDeltaBuffer[v4 % 0xA] = v9;
    *(delta + 75) = v9;
    *(delta + 76) = v14;
  }
}

- (int)analyzeFrame:(__CVBuffer *)frame withTimestamp:(id *)timestamp andDuration:(id *)duration flags:(unint64_t *)flags
{
  v32[2] = *MEMORY[0x1E69E9840];
  v28[0] = *timestamp;
  duration = *duration;
  CMTimeRangeMake(&v29, v28, &duration);
  v10 = *&v29.start.epoch;
  *&self->_frameBuffer.buffer_[34].motion_result_.significant_values_[5] = *&v29.start.value;
  *&self->_frameBuffer.buffer_[34].motion_result_.confidence_[3] = v10;
  *&self->_frameBuffer.buffer_[34].motion_result_.action_score_ = *&v29.duration.timescale;
  Next = ma::FrameBuffer::GetNext(&self->_frameBuffer);
  v29.start = *timestamp;
  v28[0] = *duration;
  *&v12 = ma::Frame::Initialize(Next, &v29.start, v28, frame, 1).n128_u64[0];
  v14 = v13;
  if (!v13)
  {
    if (BYTE1(self->_frameBuffer.buffer_[34].motion_result_.significant_values_[4]) == 1)
    {
      v15 = *self->_frameBuffer.buffer_[34].motion_result_.significant_values_;
      *&v29.start.value = *&timestamp->var0;
      v29.start.epoch = timestamp->var3;
      [v15 resetSegment:&v29];
      BYTE1(self->_frameBuffer.buffer_[34].motion_result_.significant_values_[4]) = 0;
      *(&self->_frameBuffer.buffer_[34].motion_result_.is_stable_ + 1) = 0;
    }

    else
    {
      [(VCPSceneChangeAnalyzer *)self ComputeSceneDelta:Next, v12];
      if ([(VCPSceneChangeAnalyzer *)self decideLensSwitchPoint:Next])
      {
        *(&self->_frameBuffer.buffer_[34].motion_result_.is_stable_ + 1) = 1;
        v16 = *self->_frameBuffer.buffer_[34].motion_result_.significant_values_;
        *&v29.start.value = *&timestamp->var0;
        v29.start.epoch = timestamp->var3;
        [v16 finalizeAtTime:&v29];
        v17 = *&self->_frameBuffer.buffer_[34].motion_result_.significant_values_[2];
        v31[0] = @"start";
        v18 = *self->_frameBuffer.buffer_[34].motion_result_.significant_values_;
        if (v18)
        {
          [v18 timeRange];
        }

        else
        {
          memset(&v29, 0, sizeof(v29));
        }

        v28[0] = v29.start;
        v20 = CMTimeCopyAsDictionary(v28, 0);
        v32[0] = v20;
        v31[1] = @"duration";
        v21 = *self->_frameBuffer.buffer_[34].motion_result_.significant_values_;
        if (v21)
        {
          [v21 timeRange];
        }

        else
        {
          memset(v28, 0, sizeof(v28));
        }

        duration = v28[1];
        v22 = CMTimeCopyAsDictionary(&duration, 0);
        v32[1] = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
        [v17 addObject:v23];

        v24 = objc_alloc_init(VCPSceneChangeSegment);
        v25 = *self->_frameBuffer.buffer_[34].motion_result_.significant_values_;
        *self->_frameBuffer.buffer_[34].motion_result_.significant_values_ = v24;

        v26 = *self->_frameBuffer.buffer_[34].motion_result_.significant_values_;
        *&v29.start.value = *&timestamp->var0;
        v29.start.epoch = timestamp->var3;
        [v26 resetSegment:&v29];
      }

      else
      {
        *(&self->_frameBuffer.buffer_[34].motion_result_.is_stable_ + 1) = 0;
        v19 = *self->_frameBuffer.buffer_[34].motion_result_.significant_values_;
        *&v29.start.value = *&timestamp->var0;
        v29.start.epoch = timestamp->var3;
        [v19 updateSegment:&v29];
      }
    }
  }

  return v14;
}

- (void)PrintSegments
{
  v18 = *MEMORY[0x1E69E9840];
  if (LOBYTE(self->_frameBuffer.buffer_[34].motion_result_.significant_values_[4]) == 1)
  {
    printf("===========SceneChangeSegments=============");
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = *&self->_frameBuffer.buffer_[34].motion_result_.significant_values_[2];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = *v14;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v13 + 1) + 8 * i);
          memset(&v12, 0, sizeof(v12));
          CMTimeRangeMakeFromDictionary(&v12, v7);
          *&time.start.value = *&v12.start.value;
          time.start.epoch = v12.start.epoch;
          Seconds = CMTimeGetSeconds(&time.start);
          time = v12;
          CMTimeRangeGetEnd(&v11, &time);
          v9 = CMTimeGetSeconds(&v11);
          printf("[%f, %f]", Seconds, v9);
        }

        v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v4);
    }
  }
}

- (BOOL)decideLensSwitchPoint:(void *)point
{
  v4 = *(point + 76);
  is_stable = self->_frameBuffer.buffer_[34].motion_result_.is_stable_;
  if (is_stable)
  {
    if (v4 < 1.0)
    {
      numOfFrames = [*self->_frameBuffer.buffer_[34].motion_result_.significant_values_ numOfFrames];
      v7 = 0;
      if (numOfFrames >= 4)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

  if (v4 <= 6.8 || *(point + 75) <= 3.5)
  {
    return 0;
  }

  v7 = 1;
LABEL_11:
  result = !is_stable;
  self->_frameBuffer.buffer_[34].motion_result_.is_stable_ = v7;
  return result;
}

- (int)finalizeAnalysisPass:(id *)pass
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = *self->_frameBuffer.buffer_[34].motion_result_.significant_values_;
  v5 = *&self->_frameBuffer.buffer_[34].motion_result_.confidence_[3];
  *&range.start.value = *&self->_frameBuffer.buffer_[34].motion_result_.significant_values_[5];
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&self->_frameBuffer.buffer_[34].motion_result_.action_score_;
  CMTimeRangeGetEnd(v13, &range);
  [v4 finalizeAtTime:v13];
  v6 = *&self->_frameBuffer.buffer_[34].motion_result_.significant_values_[2];
  v16[0] = @"start";
  v7 = *self->_frameBuffer.buffer_[34].motion_result_.significant_values_;
  if (v7)
  {
    [v7 timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  v13[0] = range.start;
  v8 = CMTimeCopyAsDictionary(v13, 0);
  v17[0] = v8;
  v16[1] = @"duration";
  v9 = *self->_frameBuffer.buffer_[34].motion_result_.significant_values_;
  if (v9)
  {
    [v9 timeRange];
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  time = v13[1];
  v10 = CMTimeCopyAsDictionary(&time, 0);
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v6 addObject:v11];

  [(VCPSceneChangeAnalyzer *)self PrintSegments];
  return 0;
}

- (id)results
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [*&self->_frameBuffer.buffer_[34].motion_result_.significant_values_[2] count];
  if (v3)
  {
    v4 = *&self->_frameBuffer.buffer_[34].motion_result_.significant_values_[2];
    v6 = @"SceneChangeResults";
    v7[0] = v4;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  return v3;
}

@end