@interface MRIRRouteRecommendationCandidateResult
- (BOOL)isCallToAction;
- (BOOL)isConservativeFiltered;
- (BOOL)isLockScreenControl;
- (MRIRRouteRecommendationCandidate)candidate;
- (MRIRRouteRecommendationCandidateResult)init;
- (MRIRRouteRecommendationCandidateResult)initWithClassification:(int64_t)classification classificationDescription:(id)description candidate:(id)candidate sortingHint:(id)hint isCallToAction:(BOOL)action isLockScreenControl:(BOOL)control isConservativeFiltered:(BOOL)filtered;
- (NSNumber)sortingHint;
- (int64_t)classification;
- (void)setCandidate:(id)candidate;
- (void)setClassification:(int64_t)classification;
- (void)setIsCallToAction:(BOOL)action;
- (void)setIsConservativeFiltered:(BOOL)filtered;
- (void)setIsLockScreenControl:(BOOL)control;
- (void)setSortingHint:(id)hint;
@end

@implementation MRIRRouteRecommendationCandidateResult

- (int64_t)classification
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setClassification:(int64_t)classification
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification;
  swift_beginAccess();
  *(self + v5) = classification;
}

- (MRIRRouteRecommendationCandidate)candidate
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCandidate:(id)candidate
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = candidate;
  candidateCopy = candidate;
}

- (NSNumber)sortingHint
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSortingHint:(id)hint
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = hint;
  hintCopy = hint;
}

- (BOOL)isCallToAction
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsCallToAction:(BOOL)action
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction;
  swift_beginAccess();
  *(self + v5) = action;
}

- (BOOL)isLockScreenControl
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsLockScreenControl:(BOOL)control
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl;
  swift_beginAccess();
  *(self + v5) = control;
}

- (BOOL)isConservativeFiltered
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsConservativeFiltered:(BOOL)filtered
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered;
  swift_beginAccess();
  *(self + v5) = filtered;
}

- (MRIRRouteRecommendationCandidateResult)initWithClassification:(int64_t)classification classificationDescription:(id)description candidate:(id)candidate sortingHint:(id)hint isCallToAction:(BOOL)action isLockScreenControl:(BOOL)control isConservativeFiltered:(BOOL)filtered
{
  if (description)
  {
    sub_1A22E65C8();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  candidateCopy = candidate;
  hintCopy = hint;
  return sub_1A222569C(classification, v18, v15, candidateCopy, hint, action, control, filtered);
}

- (MRIRRouteRecommendationCandidateResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end