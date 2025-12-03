@interface CAMBurstFaceScoreEntry
- (CAMBurstFaceScoreEntry)initWithScore:(float)score;
- (void)addScore:(float)score;
@end

@implementation CAMBurstFaceScoreEntry

- (CAMBurstFaceScoreEntry)initWithScore:(float)score
{
  self->maxScore = score;
  self->minScore = score;
  self->sumScores = score;
  self->sumSqScores = score * score;
  self->numScores = 1;
  return self;
}

- (void)addScore:(float)score
{
  v3 = *&self->maxScore;
  v4 = vcgt_f32(vdup_lane_s32(*&score, 0), v3);
  v5 = __PAIR64__(v3.u32[1], LODWORD(score));
  v3.f32[1] = score;
  *&self->maxScore = vbsl_s8(v4, v5, v3);
  v3.f32[0] = self->sumScores + score;
  v6 = self->sumSqScores + (score * score);
  LODWORD(self->sumScores) = v3.i32[0];
  self->sumSqScores = v6;
  ++self->numScores;
}

@end