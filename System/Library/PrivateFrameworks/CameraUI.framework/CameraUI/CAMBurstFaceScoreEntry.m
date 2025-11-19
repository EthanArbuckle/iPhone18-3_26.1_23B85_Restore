@interface CAMBurstFaceScoreEntry
- (CAMBurstFaceScoreEntry)initWithScore:(float)a3;
- (void)addScore:(float)a3;
@end

@implementation CAMBurstFaceScoreEntry

- (CAMBurstFaceScoreEntry)initWithScore:(float)a3
{
  self->maxScore = a3;
  self->minScore = a3;
  self->sumScores = a3;
  self->sumSqScores = a3 * a3;
  self->numScores = 1;
  return self;
}

- (void)addScore:(float)a3
{
  v3 = *&self->maxScore;
  v4 = vcgt_f32(vdup_lane_s32(*&a3, 0), v3);
  v5 = __PAIR64__(v3.u32[1], LODWORD(a3));
  v3.f32[1] = a3;
  *&self->maxScore = vbsl_s8(v4, v5, v3);
  v3.f32[0] = self->sumScores + a3;
  v6 = self->sumSqScores + (a3 * a3);
  LODWORD(self->sumScores) = v3.i32[0];
  self->sumSqScores = v6;
  ++self->numScores;
}

@end