@interface CSSinglePhraseResult
- (CSSinglePhraseResult)initWithPhId:(unint64_t)a3 keywordDetectorDecision:(unint64_t)a4 combinedScore:(float)a5 ndapiScore:(float)a6 ndapiResult:(id)a7 recognizerScore:(float)a8 isSecondChance:(BOOL)a9 isSecondChanceCandidate:(BOOL)a10 isRunningQuasar:(BOOL)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CSSinglePhraseResult

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CSSinglePhraseResult alloc];
  phId = self->_phId;
  decision = self->_decision;
  combinedScore = self->_combinedScore;
  ndapiScore = self->_ndapiScore;
  v9 = [(CSKeywordAnalyzerNDAPIResult *)self->_ndapiResult copy];
  *&v10 = self->_recognizerScore;
  *&v11 = combinedScore;
  *&v12 = ndapiScore;
  v13 = [(CSSinglePhraseResult *)v4 initWithPhId:phId keywordDetectorDecision:decision combinedScore:v9 ndapiScore:self->_isSecondChance ndapiResult:self->_isSecondChanceCandidate recognizerScore:self->_isRunningQuasar isSecondChance:v11 isSecondChanceCandidate:v12 isRunningQuasar:v10];

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"[_phId = %lu]", self->_phId];
  [v3 appendFormat:@"[_decision = %lu]", self->_decision];
  [v3 appendFormat:@"[_combinedScore = %f]", self->_combinedScore];
  [v3 appendFormat:@"[_ndapiScore = %f]", self->_ndapiScore];
  [v3 appendFormat:@"[_ndapiResult = %@]", self->_ndapiResult];
  [v3 appendFormat:@"[_recognizerScore = %f]", self->_recognizerScore];
  [v3 appendFormat:@"[_isSecondChance = %i]", self->_isSecondChance];
  [v3 appendFormat:@"[_isSecondChanceCandidate = %i]", self->_isSecondChanceCandidate];
  [v3 appendFormat:@"[_isRunningQuasar = %i]", self->_isRunningQuasar];

  return v3;
}

- (CSSinglePhraseResult)initWithPhId:(unint64_t)a3 keywordDetectorDecision:(unint64_t)a4 combinedScore:(float)a5 ndapiScore:(float)a6 ndapiResult:(id)a7 recognizerScore:(float)a8 isSecondChance:(BOOL)a9 isSecondChanceCandidate:(BOOL)a10 isRunningQuasar:(BOOL)a11
{
  v21 = a7;
  v25.receiver = self;
  v25.super_class = CSSinglePhraseResult;
  v22 = [(CSSinglePhraseResult *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_phId = a3;
    v22->_decision = a4;
    v22->_combinedScore = a5;
    v22->_ndapiScore = a6;
    objc_storeStrong(&v22->_ndapiResult, a7);
    v23->_recognizerScore = a8;
    v23->_isSecondChance = a9;
    v23->_isSecondChanceCandidate = a10;
    v23->_isRunningQuasar = a11;
  }

  return v23;
}

@end