@interface MRIRRouteRecommendationCandidateResult
- (BOOL)isCallToAction;
- (BOOL)isConservativeFiltered;
- (BOOL)isLockScreenControl;
- (MRIRRouteRecommendationCandidate)candidate;
- (MRIRRouteRecommendationCandidateResult)init;
- (MRIRRouteRecommendationCandidateResult)initWithClassification:(int64_t)a3 classificationDescription:(id)a4 candidate:(id)a5 sortingHint:(id)a6 isCallToAction:(BOOL)a7 isLockScreenControl:(BOOL)a8 isConservativeFiltered:(BOOL)a9;
- (NSNumber)sortingHint;
- (int64_t)classification;
- (void)setCandidate:(id)a3;
- (void)setClassification:(int64_t)a3;
- (void)setIsCallToAction:(BOOL)a3;
- (void)setIsConservativeFiltered:(BOOL)a3;
- (void)setIsLockScreenControl:(BOOL)a3;
- (void)setSortingHint:(id)a3;
@end

@implementation MRIRRouteRecommendationCandidateResult

- (int64_t)classification
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setClassification:(int64_t)a3
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (MRIRRouteRecommendationCandidate)candidate
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCandidate:(id)a3
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSNumber)sortingHint
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSortingHint:(id)a3
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (BOOL)isCallToAction
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsCallToAction:(BOOL)a3
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isLockScreenControl
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsLockScreenControl:(BOOL)a3
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isConservativeFiltered
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsConservativeFiltered:(BOOL)a3
{
  v5 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (MRIRRouteRecommendationCandidateResult)initWithClassification:(int64_t)a3 classificationDescription:(id)a4 candidate:(id)a5 sortingHint:(id)a6 isCallToAction:(BOOL)a7 isLockScreenControl:(BOOL)a8 isConservativeFiltered:(BOOL)a9
{
  if (a4)
  {
    sub_1A22E65C8();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = a5;
  v17 = a6;
  return sub_1A222569C(a3, v18, v15, v16, a6, a7, a8, a9);
}

- (MRIRRouteRecommendationCandidateResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end