@interface CSSinglePhraseResult
- (CSSinglePhraseResult)initWithPhId:(unint64_t)id keywordDetectorDecision:(unint64_t)decision combinedScore:(float)score ndapiScore:(float)ndapiScore ndapiResult:(id)result recognizerScore:(float)recognizerScore isSecondChance:(BOOL)chance isSecondChanceCandidate:(BOOL)self0 isRunningQuasar:(BOOL)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CSSinglePhraseResult

- (id)copyWithZone:(_NSZone *)zone
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
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"[_phId = %lu]", self->_phId];
  [string appendFormat:@"[_decision = %lu]", self->_decision];
  [string appendFormat:@"[_combinedScore = %f]", self->_combinedScore];
  [string appendFormat:@"[_ndapiScore = %f]", self->_ndapiScore];
  [string appendFormat:@"[_ndapiResult = %@]", self->_ndapiResult];
  [string appendFormat:@"[_recognizerScore = %f]", self->_recognizerScore];
  [string appendFormat:@"[_isSecondChance = %i]", self->_isSecondChance];
  [string appendFormat:@"[_isSecondChanceCandidate = %i]", self->_isSecondChanceCandidate];
  [string appendFormat:@"[_isRunningQuasar = %i]", self->_isRunningQuasar];

  return string;
}

- (CSSinglePhraseResult)initWithPhId:(unint64_t)id keywordDetectorDecision:(unint64_t)decision combinedScore:(float)score ndapiScore:(float)ndapiScore ndapiResult:(id)result recognizerScore:(float)recognizerScore isSecondChance:(BOOL)chance isSecondChanceCandidate:(BOOL)self0 isRunningQuasar:(BOOL)self1
{
  resultCopy = result;
  v25.receiver = self;
  v25.super_class = CSSinglePhraseResult;
  v22 = [(CSSinglePhraseResult *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_phId = id;
    v22->_decision = decision;
    v22->_combinedScore = score;
    v22->_ndapiScore = ndapiScore;
    objc_storeStrong(&v22->_ndapiResult, result);
    v23->_recognizerScore = recognizerScore;
    v23->_isSecondChance = chance;
    v23->_isSecondChanceCandidate = candidate;
    v23->_isRunningQuasar = quasar;
  }

  return v23;
}

@end