@interface VCPFrameScoreFilter
- (VCPFrameScoreFilter)initWithFilterTabs:(int)tabs distanceVariance:(float)variance diffVariance:(float)diffVariance;
- (float)processFrameScore:(float)score validScore:(BOOL)validScore;
- (void)dealloc;
@end

@implementation VCPFrameScoreFilter

- (VCPFrameScoreFilter)initWithFilterTabs:(int)tabs distanceVariance:(float)variance diffVariance:(float)diffVariance
{
  v10.receiver = self;
  v10.super_class = VCPFrameScoreFilter;
  v8 = [(VCPFrameScoreFilter *)&v10 init];
  if (v8)
  {
    v8->_numFilterTabs = tabs;
    v8->_distanceVariance = variance;
    v8->_diffVariance = diffVariance;
    v8->_numOfScores = 0;
    operator new[]();
  }

  return 0;
}

- (void)dealloc
{
  scoreArray = self->_scoreArray;
  if (scoreArray)
  {
    MEMORY[0x1CCA95C10](scoreArray, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPFrameScoreFilter;
  [(VCPFrameScoreFilter *)&v4 dealloc];
}

- (float)processFrameScore:(float)score validScore:(BOOL)validScore
{
  validScoreCopy = validScore;
  numOfScores = self->_numOfScores;
  if (numOfScores < 1)
  {
    v14 = 0.0;
    v13 = 0.0;
  }

  else
  {
    v9 = vmul_f32(*&self->_distanceVariance, *&self->_distanceVariance);
    scoreArray = self->_scoreArray;
    v11 = 1;
    v12 = self->_numOfScores;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      v15 = *scoreArray++;
      v16 = v15;
      v17 = vabds_f32(score, v15);
      if (!validScoreCopy)
      {
        v17 = 0.0;
      }

      v18.f32[1] = v17;
      v18.f32[0] = v11;
      v19 = vdiv_f32(vmul_f32(vmul_f32(v18, 0xBF000000BF000000), v18), v9);
      v32 = v19.f32[1];
      v4.i32[0] = expf(v19.f32[0]);
      v20 = vmul_n_f32(v4, expf(v32)).f32[0];
      v13 = v13 + (v16 * v20);
      v14 = v14 + v20;
      ++v11;
      --v12;
    }

    while (v12);
  }

  numFilterTabs = self->_numFilterTabs;
  v22 = self->_scoreArray;
  if (numFilterTabs > 1)
  {
    v23 = numFilterTabs + 1;
    v24 = &v22[numFilterTabs - 1];
    v25 = v24;
    do
    {
      v26 = *(v25-- - 1);
      *v24 = v26;
      --v23;
      v24 = v25;
    }

    while (v23 > 2);
  }

  v27 = v14 + 1.0;
  if (!validScoreCopy)
  {
    v27 = v14;
  }

  v28 = v13 + score;
  if (!validScoreCopy)
  {
    v28 = v13;
  }

  v29 = v28 / v27;
  if (v27 <= 0.0)
  {
    result = score;
  }

  else
  {
    result = v29;
  }

  if (validScoreCopy)
  {
    scoreCopy = score;
  }

  else
  {
    scoreCopy = result;
  }

  *v22 = scoreCopy;
  if (numFilterTabs >= numOfScores + 1)
  {
    LODWORD(numFilterTabs) = numOfScores + 1;
  }

  self->_numOfScores = numFilterTabs;
  return result;
}

@end