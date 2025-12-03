@interface _CPFeedbackPayload
- (BOOL)isEqual:(id)equal;
- (_CPCBAEngagementFeedback)cbaEngagementFeedback;
- (_CPCacheHitFeedback)cacheHitFeedback;
- (_CPCardSectionEngagementFeedback)cardSectionEngagementFeedback;
- (_CPCardSectionFeedback)cardSectionFeedback;
- (_CPCardViewAppearFeedback)cardViewAppearFeedback;
- (_CPCardViewDisappearFeedback)cardViewDisappearFeedback;
- (_CPClearInputFeedback)clearInputFeedback;
- (_CPClientTimingFeedback)clientTimingFeedback;
- (_CPCommandEngagementFeedback)commandEngagementFeedback;
- (_CPConnectionInvalidatedFeedback)connectionInvalidatedFeedback;
- (_CPCustomFeedback)customFeedback;
- (_CPDidGoToSearchFeedback)didGoToSearchFeedback;
- (_CPDidGoToSiteFeedback)didGoToSiteFeedback;
- (_CPDynamicButtonVisibilityFeedback)dynamicButtonVisibilityFeedback;
- (_CPEndLocalSearchFeedback)endLocalSearchFeedback;
- (_CPEndNetworkSearchFeedback)endNetworkSearchFeedback;
- (_CPEndSearchFeedback)endSearchFeedback;
- (_CPErrorFeedback)errorFeedback;
- (_CPExperimentTriggeredFeedback)experimentTriggeredFeedback;
- (_CPFeedback)feedback;
- (_CPFeedbackPayload)initWithCodable:(id)codable;
- (_CPFeedbackPayload)initWithFeedback:(id)feedback;
- (_CPLateSectionsAppendedFeedback)lateSectionsAppendedFeedback;
- (_CPLookupHintRelevancyFeedback)lookupHintRelevancyFeedback;
- (_CPMapsCardSectionEngagementFeedback)mapsCardSectionEngagementFeedback;
- (_CPProcessableFeedback)codable;
- (_CPRankingFeedback)rankingFeedback;
- (_CPResultEngagementFeedback)resultEngagementFeedback;
- (_CPResultFeedback)resultFeedback;
- (_CPResultGradingFeedback)resultGradingFeedback;
- (_CPResultRankingFeedback)resultRankingFeedback;
- (_CPResultsReceivedAfterTimeoutFeedback)resultsReceivedAfterTimeoutFeedback;
- (_CPSearchViewAppearFeedback)searchViewAppearFeedback;
- (_CPSearchViewDisappearFeedback)searchViewDisappearFeedback;
- (_CPSectionEngagementFeedback)sectionEngagementFeedback;
- (_CPSectionRankingFeedback)sectionRankingFeedback;
- (_CPSessionEndFeedback)sessionEndFeedback;
- (_CPSessionMissingResultsFeedback)sessionMissingResultsFeedback;
- (_CPSessionMissingSuggestionsFeedback)sessionMissingSuggestionsFeedback;
- (_CPSkipSearchFeedback)skipSearchFeedback;
- (_CPStartLocalSearchFeedback)startLocalSearchFeedback;
- (_CPStartNetworkSearchFeedback)startNetworkSearchFeedback;
- (_CPStartSearchFeedback)startSearchFeedback;
- (_CPStoreCardSectionEngagementFeedback)storeCardSectionEngagementFeedback;
- (_CPSuggestionEngagementFeedback)suggestionEngagementFeedback;
- (_CPVisibleResultsFeedback)visibleResultsFeedback;
- (_CPVisibleSectionHeaderFeedback)visibleSectionHeaderFeedback;
- (_CPVisibleSuggestionsFeedback)visibleSuggestionsFeedback;
- (unint64_t)hash;
- (void)clearContained_Feedback;
- (void)setCacheHitFeedback:(id)feedback;
- (void)setCardSectionEngagementFeedback:(id)feedback;
- (void)setCardSectionFeedback:(id)feedback;
- (void)setCardViewAppearFeedback:(id)feedback;
- (void)setCardViewDisappearFeedback:(id)feedback;
- (void)setCbaEngagementFeedback:(id)feedback;
- (void)setClearInputFeedback:(id)feedback;
- (void)setClientTimingFeedback:(id)feedback;
- (void)setCommandEngagementFeedback:(id)feedback;
- (void)setConnectionInvalidatedFeedback:(id)feedback;
- (void)setCustomFeedback:(id)feedback;
- (void)setDidGoToSearchFeedback:(id)feedback;
- (void)setDidGoToSiteFeedback:(id)feedback;
- (void)setDynamicButtonVisibilityFeedback:(id)feedback;
- (void)setEndLocalSearchFeedback:(id)feedback;
- (void)setEndNetworkSearchFeedback:(id)feedback;
- (void)setEndSearchFeedback:(id)feedback;
- (void)setErrorFeedback:(id)feedback;
- (void)setExperimentTriggeredFeedback:(id)feedback;
- (void)setFeedback:(id)feedback;
- (void)setLateSectionsAppendedFeedback:(id)feedback;
- (void)setLookupHintRelevancyFeedback:(id)feedback;
- (void)setMapsCardSectionEngagementFeedback:(id)feedback;
- (void)setRankingFeedback:(id)feedback;
- (void)setResultEngagementFeedback:(id)feedback;
- (void)setResultFeedback:(id)feedback;
- (void)setResultGradingFeedback:(id)feedback;
- (void)setResultRankingFeedback:(id)feedback;
- (void)setResultsReceivedAfterTimeoutFeedback:(id)feedback;
- (void)setSearchViewAppearFeedback:(id)feedback;
- (void)setSearchViewDisappearFeedback:(id)feedback;
- (void)setSectionEngagementFeedback:(id)feedback;
- (void)setSectionRankingFeedback:(id)feedback;
- (void)setSessionEndFeedback:(id)feedback;
- (void)setSessionMissingResultsFeedback:(id)feedback;
- (void)setSessionMissingSuggestionsFeedback:(id)feedback;
- (void)setSkipSearchFeedback:(id)feedback;
- (void)setStartLocalSearchFeedback:(id)feedback;
- (void)setStartNetworkSearchFeedback:(id)feedback;
- (void)setStartSearchFeedback:(id)feedback;
- (void)setStoreCardSectionEngagementFeedback:(id)feedback;
- (void)setSuggestionEngagementFeedback:(id)feedback;
- (void)setVisibleResultsFeedback:(id)feedback;
- (void)setVisibleSectionHeaderFeedback:(id)feedback;
- (void)setVisibleSuggestionsFeedback:(id)feedback;
- (void)updateQueryId:(unint64_t)id;
- (void)updateResults:(id)results withId:(unint64_t)id;
- (void)writeTo:(id)to;
@end

@implementation _CPFeedbackPayload

- (void)clearContained_Feedback
{
  self->_whichContained_Feedback = 0;
  feedback = self->_feedback;
  self->_feedback = 0;

  searchViewAppearFeedback = self->_searchViewAppearFeedback;
  self->_searchViewAppearFeedback = 0;

  searchViewDisappearFeedback = self->_searchViewDisappearFeedback;
  self->_searchViewDisappearFeedback = 0;

  rankingFeedback = self->_rankingFeedback;
  self->_rankingFeedback = 0;

  sectionRankingFeedback = self->_sectionRankingFeedback;
  self->_sectionRankingFeedback = 0;

  resultRankingFeedback = self->_resultRankingFeedback;
  self->_resultRankingFeedback = 0;

  resultFeedback = self->_resultFeedback;
  self->_resultFeedback = 0;

  resultEngagementFeedback = self->_resultEngagementFeedback;
  self->_resultEngagementFeedback = 0;

  visibleResultsFeedback = self->_visibleResultsFeedback;
  self->_visibleResultsFeedback = 0;

  cardSectionFeedback = self->_cardSectionFeedback;
  self->_cardSectionFeedback = 0;

  mapsCardSectionEngagementFeedback = self->_mapsCardSectionEngagementFeedback;
  self->_mapsCardSectionEngagementFeedback = 0;

  storeCardSectionEngagementFeedback = self->_storeCardSectionEngagementFeedback;
  self->_storeCardSectionEngagementFeedback = 0;

  startSearchFeedback = self->_startSearchFeedback;
  self->_startSearchFeedback = 0;

  endSearchFeedback = self->_endSearchFeedback;
  self->_endSearchFeedback = 0;

  startNetworkSearchFeedback = self->_startNetworkSearchFeedback;
  self->_startNetworkSearchFeedback = 0;

  endNetworkSearchFeedback = self->_endNetworkSearchFeedback;
  self->_endNetworkSearchFeedback = 0;

  startLocalSearchFeedback = self->_startLocalSearchFeedback;
  self->_startLocalSearchFeedback = 0;

  endLocalSearchFeedback = self->_endLocalSearchFeedback;
  self->_endLocalSearchFeedback = 0;

  errorFeedback = self->_errorFeedback;
  self->_errorFeedback = 0;

  customFeedback = self->_customFeedback;
  self->_customFeedback = 0;

  suggestionEngagementFeedback = self->_suggestionEngagementFeedback;
  self->_suggestionEngagementFeedback = 0;

  cardViewDisappearFeedback = self->_cardViewDisappearFeedback;
  self->_cardViewDisappearFeedback = 0;

  visibleSuggestionsFeedback = self->_visibleSuggestionsFeedback;
  self->_visibleSuggestionsFeedback = 0;

  resultsReceivedAfterTimeoutFeedback = self->_resultsReceivedAfterTimeoutFeedback;
  self->_resultsReceivedAfterTimeoutFeedback = 0;

  lateSectionsAppendedFeedback = self->_lateSectionsAppendedFeedback;
  self->_lateSectionsAppendedFeedback = 0;

  clearInputFeedback = self->_clearInputFeedback;
  self->_clearInputFeedback = 0;

  sectionEngagementFeedback = self->_sectionEngagementFeedback;
  self->_sectionEngagementFeedback = 0;

  visibleSectionHeaderFeedback = self->_visibleSectionHeaderFeedback;
  self->_visibleSectionHeaderFeedback = 0;

  didGoToSiteFeedback = self->_didGoToSiteFeedback;
  self->_didGoToSiteFeedback = 0;

  didGoToSearchFeedback = self->_didGoToSearchFeedback;
  self->_didGoToSearchFeedback = 0;

  sessionMissingResultsFeedback = self->_sessionMissingResultsFeedback;
  self->_sessionMissingResultsFeedback = 0;

  sessionMissingSuggestionsFeedback = self->_sessionMissingSuggestionsFeedback;
  self->_sessionMissingSuggestionsFeedback = 0;

  resultGradingFeedback = self->_resultGradingFeedback;
  self->_resultGradingFeedback = 0;

  lookupHintRelevancyFeedback = self->_lookupHintRelevancyFeedback;
  self->_lookupHintRelevancyFeedback = 0;

  connectionInvalidatedFeedback = self->_connectionInvalidatedFeedback;
  self->_connectionInvalidatedFeedback = 0;

  cardSectionEngagementFeedback = self->_cardSectionEngagementFeedback;
  self->_cardSectionEngagementFeedback = 0;

  sessionEndFeedback = self->_sessionEndFeedback;
  self->_sessionEndFeedback = 0;

  cardViewAppearFeedback = self->_cardViewAppearFeedback;
  self->_cardViewAppearFeedback = 0;

  skipSearchFeedback = self->_skipSearchFeedback;
  self->_skipSearchFeedback = 0;

  cacheHitFeedback = self->_cacheHitFeedback;
  self->_cacheHitFeedback = 0;

  cbaEngagementFeedback = self->_cbaEngagementFeedback;
  self->_cbaEngagementFeedback = 0;

  clientTimingFeedback = self->_clientTimingFeedback;
  self->_clientTimingFeedback = 0;

  commandEngagementFeedback = self->_commandEngagementFeedback;
  self->_commandEngagementFeedback = 0;

  dynamicButtonVisibilityFeedback = self->_dynamicButtonVisibilityFeedback;
  self->_dynamicButtonVisibilityFeedback = 0;

  experimentTriggeredFeedback = self->_experimentTriggeredFeedback;
  self->_experimentTriggeredFeedback = 0;
}

- (_CPProcessableFeedback)codable
{
  feedback = self->_feedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_searchViewAppearFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_searchViewDisappearFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_rankingFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_sectionRankingFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_resultRankingFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_resultFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_resultEngagementFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_visibleResultsFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_cardSectionFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_mapsCardSectionEngagementFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_storeCardSectionEngagementFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_startSearchFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_endSearchFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_startNetworkSearchFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_endNetworkSearchFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_startLocalSearchFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_endLocalSearchFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_errorFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_customFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_suggestionEngagementFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_cardViewDisappearFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_visibleSuggestionsFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_resultsReceivedAfterTimeoutFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_lateSectionsAppendedFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_clearInputFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_sectionEngagementFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_visibleSectionHeaderFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_didGoToSiteFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_didGoToSearchFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_sessionMissingResultsFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_sessionMissingSuggestionsFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_resultGradingFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_lookupHintRelevancyFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_connectionInvalidatedFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_cardSectionEngagementFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_sessionEndFeedback;
  if (feedback)
  {
    goto LABEL_38;
  }

  feedback = self->_cardViewAppearFeedback;
  if (feedback || (feedback = self->_skipSearchFeedback) != 0 || (feedback = self->_cacheHitFeedback) != 0 || (feedback = self->_cbaEngagementFeedback) != 0 || (feedback = self->_clientTimingFeedback) != 0 || (feedback = self->_commandEngagementFeedback) != 0 || (feedback = self->_dynamicButtonVisibilityFeedback) != 0 || (feedback = self->_experimentTriggeredFeedback) != 0)
  {
LABEL_38:
    v4 = feedback;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_CPFeedback)feedback
{
  if (self->_whichContained_Feedback == 1)
  {
    v3 = self->_feedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPSearchViewAppearFeedback)searchViewAppearFeedback
{
  if (self->_whichContained_Feedback == 2)
  {
    v3 = self->_searchViewAppearFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPSearchViewDisappearFeedback)searchViewDisappearFeedback
{
  if (self->_whichContained_Feedback == 3)
  {
    v3 = self->_searchViewDisappearFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPRankingFeedback)rankingFeedback
{
  if (self->_whichContained_Feedback == 4)
  {
    v3 = self->_rankingFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPSectionRankingFeedback)sectionRankingFeedback
{
  if (self->_whichContained_Feedback == 5)
  {
    v3 = self->_sectionRankingFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPResultRankingFeedback)resultRankingFeedback
{
  if (self->_whichContained_Feedback == 6)
  {
    v3 = self->_resultRankingFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPResultFeedback)resultFeedback
{
  if (self->_whichContained_Feedback == 7)
  {
    v3 = self->_resultFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPResultEngagementFeedback)resultEngagementFeedback
{
  if (self->_whichContained_Feedback == 8)
  {
    v3 = self->_resultEngagementFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPVisibleResultsFeedback)visibleResultsFeedback
{
  if (self->_whichContained_Feedback == 9)
  {
    v3 = self->_visibleResultsFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPCardSectionFeedback)cardSectionFeedback
{
  if (self->_whichContained_Feedback == 10)
  {
    v3 = self->_cardSectionFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPMapsCardSectionEngagementFeedback)mapsCardSectionEngagementFeedback
{
  if (self->_whichContained_Feedback == 11)
  {
    v3 = self->_mapsCardSectionEngagementFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPStoreCardSectionEngagementFeedback)storeCardSectionEngagementFeedback
{
  if (self->_whichContained_Feedback == 12)
  {
    v3 = self->_storeCardSectionEngagementFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPStartSearchFeedback)startSearchFeedback
{
  if (self->_whichContained_Feedback == 13)
  {
    v3 = self->_startSearchFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPEndSearchFeedback)endSearchFeedback
{
  if (self->_whichContained_Feedback == 14)
  {
    v3 = self->_endSearchFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPStartNetworkSearchFeedback)startNetworkSearchFeedback
{
  if (self->_whichContained_Feedback == 15)
  {
    v3 = self->_startNetworkSearchFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPEndNetworkSearchFeedback)endNetworkSearchFeedback
{
  if (self->_whichContained_Feedback == 16)
  {
    v3 = self->_endNetworkSearchFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPStartLocalSearchFeedback)startLocalSearchFeedback
{
  if (self->_whichContained_Feedback == 17)
  {
    v3 = self->_startLocalSearchFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPEndLocalSearchFeedback)endLocalSearchFeedback
{
  if (self->_whichContained_Feedback == 18)
  {
    v3 = self->_endLocalSearchFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPErrorFeedback)errorFeedback
{
  if (self->_whichContained_Feedback == 19)
  {
    v3 = self->_errorFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPCustomFeedback)customFeedback
{
  if (self->_whichContained_Feedback == 20)
  {
    v3 = self->_customFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPSuggestionEngagementFeedback)suggestionEngagementFeedback
{
  if (self->_whichContained_Feedback == 21)
  {
    v3 = self->_suggestionEngagementFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPCardViewDisappearFeedback)cardViewDisappearFeedback
{
  if (self->_whichContained_Feedback == 22)
  {
    v3 = self->_cardViewDisappearFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPVisibleSuggestionsFeedback)visibleSuggestionsFeedback
{
  if (self->_whichContained_Feedback == 23)
  {
    v3 = self->_visibleSuggestionsFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPResultsReceivedAfterTimeoutFeedback)resultsReceivedAfterTimeoutFeedback
{
  if (self->_whichContained_Feedback == 24)
  {
    v3 = self->_resultsReceivedAfterTimeoutFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPLateSectionsAppendedFeedback)lateSectionsAppendedFeedback
{
  if (self->_whichContained_Feedback == 25)
  {
    v3 = self->_lateSectionsAppendedFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPClearInputFeedback)clearInputFeedback
{
  if (self->_whichContained_Feedback == 26)
  {
    v3 = self->_clearInputFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPSectionEngagementFeedback)sectionEngagementFeedback
{
  if (self->_whichContained_Feedback == 27)
  {
    v3 = self->_sectionEngagementFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPVisibleSectionHeaderFeedback)visibleSectionHeaderFeedback
{
  if (self->_whichContained_Feedback == 28)
  {
    v3 = self->_visibleSectionHeaderFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPDidGoToSiteFeedback)didGoToSiteFeedback
{
  if (self->_whichContained_Feedback == 29)
  {
    v3 = self->_didGoToSiteFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPDidGoToSearchFeedback)didGoToSearchFeedback
{
  if (self->_whichContained_Feedback == 30)
  {
    v3 = self->_didGoToSearchFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPSessionMissingResultsFeedback)sessionMissingResultsFeedback
{
  if (self->_whichContained_Feedback == 31)
  {
    v3 = self->_sessionMissingResultsFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPSessionMissingSuggestionsFeedback)sessionMissingSuggestionsFeedback
{
  if (self->_whichContained_Feedback == 32)
  {
    v3 = self->_sessionMissingSuggestionsFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPResultGradingFeedback)resultGradingFeedback
{
  if (self->_whichContained_Feedback == 33)
  {
    v3 = self->_resultGradingFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPLookupHintRelevancyFeedback)lookupHintRelevancyFeedback
{
  if (self->_whichContained_Feedback == 34)
  {
    v3 = self->_lookupHintRelevancyFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPConnectionInvalidatedFeedback)connectionInvalidatedFeedback
{
  if (self->_whichContained_Feedback == 35)
  {
    v3 = self->_connectionInvalidatedFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPCardSectionEngagementFeedback)cardSectionEngagementFeedback
{
  if (self->_whichContained_Feedback == 36)
  {
    v3 = self->_cardSectionEngagementFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPSessionEndFeedback)sessionEndFeedback
{
  if (self->_whichContained_Feedback == 37)
  {
    v3 = self->_sessionEndFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPCardViewAppearFeedback)cardViewAppearFeedback
{
  if (self->_whichContained_Feedback == 38)
  {
    v3 = self->_cardViewAppearFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPSkipSearchFeedback)skipSearchFeedback
{
  if (self->_whichContained_Feedback == 39)
  {
    v3 = self->_skipSearchFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPCacheHitFeedback)cacheHitFeedback
{
  if (self->_whichContained_Feedback == 40)
  {
    v3 = self->_cacheHitFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPCBAEngagementFeedback)cbaEngagementFeedback
{
  if (self->_whichContained_Feedback == 41)
  {
    v3 = self->_cbaEngagementFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPClientTimingFeedback)clientTimingFeedback
{
  if (self->_whichContained_Feedback == 42)
  {
    v3 = self->_clientTimingFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPCommandEngagementFeedback)commandEngagementFeedback
{
  if (self->_whichContained_Feedback == 43)
  {
    v3 = self->_commandEngagementFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPDynamicButtonVisibilityFeedback)dynamicButtonVisibilityFeedback
{
  if (self->_whichContained_Feedback == 44)
  {
    v3 = self->_dynamicButtonVisibilityFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_CPExperimentTriggeredFeedback)experimentTriggeredFeedback
{
  if (self->_whichContained_Feedback == 45)
  {
    v3 = self->_experimentTriggeredFeedback;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_CPFeedback *)self->_feedback hash];
  v4 = [(_CPSearchViewAppearFeedback *)self->_searchViewAppearFeedback hash]^ v3;
  v5 = [(_CPSearchViewDisappearFeedback *)self->_searchViewDisappearFeedback hash];
  v6 = v4 ^ v5 ^ [(_CPRankingFeedback *)self->_rankingFeedback hash];
  v7 = [(_CPSectionRankingFeedback *)self->_sectionRankingFeedback hash];
  v8 = v7 ^ [(_CPResultRankingFeedback *)self->_resultRankingFeedback hash];
  v9 = v6 ^ v8 ^ [(_CPResultFeedback *)self->_resultFeedback hash];
  v10 = [(_CPResultEngagementFeedback *)self->_resultEngagementFeedback hash];
  v11 = v10 ^ [(_CPVisibleResultsFeedback *)self->_visibleResultsFeedback hash];
  v12 = v11 ^ [(_CPCardSectionFeedback *)self->_cardSectionFeedback hash];
  v13 = v9 ^ v12 ^ [(_CPMapsCardSectionEngagementFeedback *)self->_mapsCardSectionEngagementFeedback hash];
  v14 = [(_CPStoreCardSectionEngagementFeedback *)self->_storeCardSectionEngagementFeedback hash];
  v15 = v14 ^ [(_CPStartSearchFeedback *)self->_startSearchFeedback hash];
  v16 = v15 ^ [(_CPEndSearchFeedback *)self->_endSearchFeedback hash];
  v17 = v16 ^ [(_CPStartNetworkSearchFeedback *)self->_startNetworkSearchFeedback hash];
  v18 = v13 ^ v17 ^ [(_CPEndNetworkSearchFeedback *)self->_endNetworkSearchFeedback hash];
  v19 = [(_CPStartLocalSearchFeedback *)self->_startLocalSearchFeedback hash];
  v20 = v19 ^ [(_CPEndLocalSearchFeedback *)self->_endLocalSearchFeedback hash];
  v21 = v20 ^ [(_CPErrorFeedback *)self->_errorFeedback hash];
  v22 = v21 ^ [(_CPCustomFeedback *)self->_customFeedback hash];
  v23 = v22 ^ [(_CPSuggestionEngagementFeedback *)self->_suggestionEngagementFeedback hash];
  v24 = v18 ^ v23 ^ [(_CPCardViewDisappearFeedback *)self->_cardViewDisappearFeedback hash];
  v25 = [(_CPVisibleSuggestionsFeedback *)self->_visibleSuggestionsFeedback hash];
  v26 = v25 ^ [(_CPResultsReceivedAfterTimeoutFeedback *)self->_resultsReceivedAfterTimeoutFeedback hash];
  v27 = v26 ^ [(_CPLateSectionsAppendedFeedback *)self->_lateSectionsAppendedFeedback hash];
  v28 = v27 ^ [(_CPClearInputFeedback *)self->_clearInputFeedback hash];
  v29 = v28 ^ [(_CPSectionEngagementFeedback *)self->_sectionEngagementFeedback hash];
  v30 = v29 ^ [(_CPVisibleSectionHeaderFeedback *)self->_visibleSectionHeaderFeedback hash];
  v31 = v24 ^ v30 ^ [(_CPDidGoToSiteFeedback *)self->_didGoToSiteFeedback hash];
  v32 = [(_CPDidGoToSearchFeedback *)self->_didGoToSearchFeedback hash];
  v33 = v32 ^ [(_CPSessionMissingResultsFeedback *)self->_sessionMissingResultsFeedback hash];
  v34 = v33 ^ [(_CPSessionMissingSuggestionsFeedback *)self->_sessionMissingSuggestionsFeedback hash];
  v35 = v34 ^ [(_CPResultGradingFeedback *)self->_resultGradingFeedback hash];
  v36 = v35 ^ [(_CPLookupHintRelevancyFeedback *)self->_lookupHintRelevancyFeedback hash];
  v37 = v36 ^ [(_CPConnectionInvalidatedFeedback *)self->_connectionInvalidatedFeedback hash];
  v38 = v37 ^ [(_CPCardSectionEngagementFeedback *)self->_cardSectionEngagementFeedback hash];
  v39 = v31 ^ v38 ^ [(_CPSessionEndFeedback *)self->_sessionEndFeedback hash];
  v40 = [(_CPCardViewAppearFeedback *)self->_cardViewAppearFeedback hash];
  v41 = v40 ^ [(_CPSkipSearchFeedback *)self->_skipSearchFeedback hash];
  v42 = v41 ^ [(_CPCacheHitFeedback *)self->_cacheHitFeedback hash];
  v43 = v42 ^ [(_CPCBAEngagementFeedback *)self->_cbaEngagementFeedback hash];
  v44 = v43 ^ [(_CPClientTimingFeedback *)self->_clientTimingFeedback hash];
  v45 = v44 ^ [(_CPCommandEngagementFeedback *)self->_commandEngagementFeedback hash];
  v46 = v45 ^ [(_CPDynamicButtonVisibilityFeedback *)self->_dynamicButtonVisibilityFeedback hash];
  return v39 ^ v46 ^ [(_CPExperimentTriggeredFeedback *)self->_experimentTriggeredFeedback hash]^ (2654435761u * self->_queryId);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_227;
  }

  feedback = [(_CPFeedbackPayload *)self feedback];
  feedback2 = [equalCopy feedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  feedback3 = [(_CPFeedbackPayload *)self feedback];
  if (feedback3)
  {
    v8 = feedback3;
    feedback4 = [(_CPFeedbackPayload *)self feedback];
    feedback5 = [equalCopy feedback];
    v11 = [feedback4 isEqual:feedback5];

    if (!v11)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self searchViewAppearFeedback];
  feedback2 = [equalCopy searchViewAppearFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  searchViewAppearFeedback = [(_CPFeedbackPayload *)self searchViewAppearFeedback];
  if (searchViewAppearFeedback)
  {
    v13 = searchViewAppearFeedback;
    searchViewAppearFeedback2 = [(_CPFeedbackPayload *)self searchViewAppearFeedback];
    searchViewAppearFeedback3 = [equalCopy searchViewAppearFeedback];
    v16 = [searchViewAppearFeedback2 isEqual:searchViewAppearFeedback3];

    if (!v16)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self searchViewDisappearFeedback];
  feedback2 = [equalCopy searchViewDisappearFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  searchViewDisappearFeedback = [(_CPFeedbackPayload *)self searchViewDisappearFeedback];
  if (searchViewDisappearFeedback)
  {
    v18 = searchViewDisappearFeedback;
    searchViewDisappearFeedback2 = [(_CPFeedbackPayload *)self searchViewDisappearFeedback];
    searchViewDisappearFeedback3 = [equalCopy searchViewDisappearFeedback];
    v21 = [searchViewDisappearFeedback2 isEqual:searchViewDisappearFeedback3];

    if (!v21)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self rankingFeedback];
  feedback2 = [equalCopy rankingFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  rankingFeedback = [(_CPFeedbackPayload *)self rankingFeedback];
  if (rankingFeedback)
  {
    v23 = rankingFeedback;
    rankingFeedback2 = [(_CPFeedbackPayload *)self rankingFeedback];
    rankingFeedback3 = [equalCopy rankingFeedback];
    v26 = [rankingFeedback2 isEqual:rankingFeedback3];

    if (!v26)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self sectionRankingFeedback];
  feedback2 = [equalCopy sectionRankingFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  sectionRankingFeedback = [(_CPFeedbackPayload *)self sectionRankingFeedback];
  if (sectionRankingFeedback)
  {
    v28 = sectionRankingFeedback;
    sectionRankingFeedback2 = [(_CPFeedbackPayload *)self sectionRankingFeedback];
    sectionRankingFeedback3 = [equalCopy sectionRankingFeedback];
    v31 = [sectionRankingFeedback2 isEqual:sectionRankingFeedback3];

    if (!v31)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self resultRankingFeedback];
  feedback2 = [equalCopy resultRankingFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  resultRankingFeedback = [(_CPFeedbackPayload *)self resultRankingFeedback];
  if (resultRankingFeedback)
  {
    v33 = resultRankingFeedback;
    resultRankingFeedback2 = [(_CPFeedbackPayload *)self resultRankingFeedback];
    resultRankingFeedback3 = [equalCopy resultRankingFeedback];
    v36 = [resultRankingFeedback2 isEqual:resultRankingFeedback3];

    if (!v36)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self resultFeedback];
  feedback2 = [equalCopy resultFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  resultFeedback = [(_CPFeedbackPayload *)self resultFeedback];
  if (resultFeedback)
  {
    v38 = resultFeedback;
    resultFeedback2 = [(_CPFeedbackPayload *)self resultFeedback];
    resultFeedback3 = [equalCopy resultFeedback];
    v41 = [resultFeedback2 isEqual:resultFeedback3];

    if (!v41)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self resultEngagementFeedback];
  feedback2 = [equalCopy resultEngagementFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  resultEngagementFeedback = [(_CPFeedbackPayload *)self resultEngagementFeedback];
  if (resultEngagementFeedback)
  {
    v43 = resultEngagementFeedback;
    resultEngagementFeedback2 = [(_CPFeedbackPayload *)self resultEngagementFeedback];
    resultEngagementFeedback3 = [equalCopy resultEngagementFeedback];
    v46 = [resultEngagementFeedback2 isEqual:resultEngagementFeedback3];

    if (!v46)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self visibleResultsFeedback];
  feedback2 = [equalCopy visibleResultsFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  visibleResultsFeedback = [(_CPFeedbackPayload *)self visibleResultsFeedback];
  if (visibleResultsFeedback)
  {
    v48 = visibleResultsFeedback;
    visibleResultsFeedback2 = [(_CPFeedbackPayload *)self visibleResultsFeedback];
    visibleResultsFeedback3 = [equalCopy visibleResultsFeedback];
    v51 = [visibleResultsFeedback2 isEqual:visibleResultsFeedback3];

    if (!v51)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self cardSectionFeedback];
  feedback2 = [equalCopy cardSectionFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  cardSectionFeedback = [(_CPFeedbackPayload *)self cardSectionFeedback];
  if (cardSectionFeedback)
  {
    v53 = cardSectionFeedback;
    cardSectionFeedback2 = [(_CPFeedbackPayload *)self cardSectionFeedback];
    cardSectionFeedback3 = [equalCopy cardSectionFeedback];
    v56 = [cardSectionFeedback2 isEqual:cardSectionFeedback3];

    if (!v56)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self mapsCardSectionEngagementFeedback];
  feedback2 = [equalCopy mapsCardSectionEngagementFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  mapsCardSectionEngagementFeedback = [(_CPFeedbackPayload *)self mapsCardSectionEngagementFeedback];
  if (mapsCardSectionEngagementFeedback)
  {
    v58 = mapsCardSectionEngagementFeedback;
    mapsCardSectionEngagementFeedback2 = [(_CPFeedbackPayload *)self mapsCardSectionEngagementFeedback];
    mapsCardSectionEngagementFeedback3 = [equalCopy mapsCardSectionEngagementFeedback];
    v61 = [mapsCardSectionEngagementFeedback2 isEqual:mapsCardSectionEngagementFeedback3];

    if (!v61)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self storeCardSectionEngagementFeedback];
  feedback2 = [equalCopy storeCardSectionEngagementFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  storeCardSectionEngagementFeedback = [(_CPFeedbackPayload *)self storeCardSectionEngagementFeedback];
  if (storeCardSectionEngagementFeedback)
  {
    v63 = storeCardSectionEngagementFeedback;
    storeCardSectionEngagementFeedback2 = [(_CPFeedbackPayload *)self storeCardSectionEngagementFeedback];
    storeCardSectionEngagementFeedback3 = [equalCopy storeCardSectionEngagementFeedback];
    v66 = [storeCardSectionEngagementFeedback2 isEqual:storeCardSectionEngagementFeedback3];

    if (!v66)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self startSearchFeedback];
  feedback2 = [equalCopy startSearchFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  startSearchFeedback = [(_CPFeedbackPayload *)self startSearchFeedback];
  if (startSearchFeedback)
  {
    v68 = startSearchFeedback;
    startSearchFeedback2 = [(_CPFeedbackPayload *)self startSearchFeedback];
    startSearchFeedback3 = [equalCopy startSearchFeedback];
    v71 = [startSearchFeedback2 isEqual:startSearchFeedback3];

    if (!v71)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self endSearchFeedback];
  feedback2 = [equalCopy endSearchFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  endSearchFeedback = [(_CPFeedbackPayload *)self endSearchFeedback];
  if (endSearchFeedback)
  {
    v73 = endSearchFeedback;
    endSearchFeedback2 = [(_CPFeedbackPayload *)self endSearchFeedback];
    endSearchFeedback3 = [equalCopy endSearchFeedback];
    v76 = [endSearchFeedback2 isEqual:endSearchFeedback3];

    if (!v76)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self startNetworkSearchFeedback];
  feedback2 = [equalCopy startNetworkSearchFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  startNetworkSearchFeedback = [(_CPFeedbackPayload *)self startNetworkSearchFeedback];
  if (startNetworkSearchFeedback)
  {
    v78 = startNetworkSearchFeedback;
    startNetworkSearchFeedback2 = [(_CPFeedbackPayload *)self startNetworkSearchFeedback];
    startNetworkSearchFeedback3 = [equalCopy startNetworkSearchFeedback];
    v81 = [startNetworkSearchFeedback2 isEqual:startNetworkSearchFeedback3];

    if (!v81)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self endNetworkSearchFeedback];
  feedback2 = [equalCopy endNetworkSearchFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  endNetworkSearchFeedback = [(_CPFeedbackPayload *)self endNetworkSearchFeedback];
  if (endNetworkSearchFeedback)
  {
    v83 = endNetworkSearchFeedback;
    endNetworkSearchFeedback2 = [(_CPFeedbackPayload *)self endNetworkSearchFeedback];
    endNetworkSearchFeedback3 = [equalCopy endNetworkSearchFeedback];
    v86 = [endNetworkSearchFeedback2 isEqual:endNetworkSearchFeedback3];

    if (!v86)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self startLocalSearchFeedback];
  feedback2 = [equalCopy startLocalSearchFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  startLocalSearchFeedback = [(_CPFeedbackPayload *)self startLocalSearchFeedback];
  if (startLocalSearchFeedback)
  {
    v88 = startLocalSearchFeedback;
    startLocalSearchFeedback2 = [(_CPFeedbackPayload *)self startLocalSearchFeedback];
    startLocalSearchFeedback3 = [equalCopy startLocalSearchFeedback];
    v91 = [startLocalSearchFeedback2 isEqual:startLocalSearchFeedback3];

    if (!v91)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self endLocalSearchFeedback];
  feedback2 = [equalCopy endLocalSearchFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  endLocalSearchFeedback = [(_CPFeedbackPayload *)self endLocalSearchFeedback];
  if (endLocalSearchFeedback)
  {
    v93 = endLocalSearchFeedback;
    endLocalSearchFeedback2 = [(_CPFeedbackPayload *)self endLocalSearchFeedback];
    endLocalSearchFeedback3 = [equalCopy endLocalSearchFeedback];
    v96 = [endLocalSearchFeedback2 isEqual:endLocalSearchFeedback3];

    if (!v96)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self errorFeedback];
  feedback2 = [equalCopy errorFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  errorFeedback = [(_CPFeedbackPayload *)self errorFeedback];
  if (errorFeedback)
  {
    v98 = errorFeedback;
    errorFeedback2 = [(_CPFeedbackPayload *)self errorFeedback];
    errorFeedback3 = [equalCopy errorFeedback];
    v101 = [errorFeedback2 isEqual:errorFeedback3];

    if (!v101)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self customFeedback];
  feedback2 = [equalCopy customFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  customFeedback = [(_CPFeedbackPayload *)self customFeedback];
  if (customFeedback)
  {
    v103 = customFeedback;
    customFeedback2 = [(_CPFeedbackPayload *)self customFeedback];
    customFeedback3 = [equalCopy customFeedback];
    v106 = [customFeedback2 isEqual:customFeedback3];

    if (!v106)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self suggestionEngagementFeedback];
  feedback2 = [equalCopy suggestionEngagementFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  suggestionEngagementFeedback = [(_CPFeedbackPayload *)self suggestionEngagementFeedback];
  if (suggestionEngagementFeedback)
  {
    v108 = suggestionEngagementFeedback;
    suggestionEngagementFeedback2 = [(_CPFeedbackPayload *)self suggestionEngagementFeedback];
    suggestionEngagementFeedback3 = [equalCopy suggestionEngagementFeedback];
    v111 = [suggestionEngagementFeedback2 isEqual:suggestionEngagementFeedback3];

    if (!v111)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self cardViewDisappearFeedback];
  feedback2 = [equalCopy cardViewDisappearFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  cardViewDisappearFeedback = [(_CPFeedbackPayload *)self cardViewDisappearFeedback];
  if (cardViewDisappearFeedback)
  {
    v113 = cardViewDisappearFeedback;
    cardViewDisappearFeedback2 = [(_CPFeedbackPayload *)self cardViewDisappearFeedback];
    cardViewDisappearFeedback3 = [equalCopy cardViewDisappearFeedback];
    v116 = [cardViewDisappearFeedback2 isEqual:cardViewDisappearFeedback3];

    if (!v116)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self visibleSuggestionsFeedback];
  feedback2 = [equalCopy visibleSuggestionsFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  visibleSuggestionsFeedback = [(_CPFeedbackPayload *)self visibleSuggestionsFeedback];
  if (visibleSuggestionsFeedback)
  {
    v118 = visibleSuggestionsFeedback;
    visibleSuggestionsFeedback2 = [(_CPFeedbackPayload *)self visibleSuggestionsFeedback];
    visibleSuggestionsFeedback3 = [equalCopy visibleSuggestionsFeedback];
    v121 = [visibleSuggestionsFeedback2 isEqual:visibleSuggestionsFeedback3];

    if (!v121)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self resultsReceivedAfterTimeoutFeedback];
  feedback2 = [equalCopy resultsReceivedAfterTimeoutFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  resultsReceivedAfterTimeoutFeedback = [(_CPFeedbackPayload *)self resultsReceivedAfterTimeoutFeedback];
  if (resultsReceivedAfterTimeoutFeedback)
  {
    v123 = resultsReceivedAfterTimeoutFeedback;
    resultsReceivedAfterTimeoutFeedback2 = [(_CPFeedbackPayload *)self resultsReceivedAfterTimeoutFeedback];
    resultsReceivedAfterTimeoutFeedback3 = [equalCopy resultsReceivedAfterTimeoutFeedback];
    v126 = [resultsReceivedAfterTimeoutFeedback2 isEqual:resultsReceivedAfterTimeoutFeedback3];

    if (!v126)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self lateSectionsAppendedFeedback];
  feedback2 = [equalCopy lateSectionsAppendedFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  lateSectionsAppendedFeedback = [(_CPFeedbackPayload *)self lateSectionsAppendedFeedback];
  if (lateSectionsAppendedFeedback)
  {
    v128 = lateSectionsAppendedFeedback;
    lateSectionsAppendedFeedback2 = [(_CPFeedbackPayload *)self lateSectionsAppendedFeedback];
    lateSectionsAppendedFeedback3 = [equalCopy lateSectionsAppendedFeedback];
    v131 = [lateSectionsAppendedFeedback2 isEqual:lateSectionsAppendedFeedback3];

    if (!v131)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self clearInputFeedback];
  feedback2 = [equalCopy clearInputFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  clearInputFeedback = [(_CPFeedbackPayload *)self clearInputFeedback];
  if (clearInputFeedback)
  {
    v133 = clearInputFeedback;
    clearInputFeedback2 = [(_CPFeedbackPayload *)self clearInputFeedback];
    clearInputFeedback3 = [equalCopy clearInputFeedback];
    v136 = [clearInputFeedback2 isEqual:clearInputFeedback3];

    if (!v136)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self sectionEngagementFeedback];
  feedback2 = [equalCopy sectionEngagementFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  sectionEngagementFeedback = [(_CPFeedbackPayload *)self sectionEngagementFeedback];
  if (sectionEngagementFeedback)
  {
    v138 = sectionEngagementFeedback;
    sectionEngagementFeedback2 = [(_CPFeedbackPayload *)self sectionEngagementFeedback];
    sectionEngagementFeedback3 = [equalCopy sectionEngagementFeedback];
    v141 = [sectionEngagementFeedback2 isEqual:sectionEngagementFeedback3];

    if (!v141)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self visibleSectionHeaderFeedback];
  feedback2 = [equalCopy visibleSectionHeaderFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  visibleSectionHeaderFeedback = [(_CPFeedbackPayload *)self visibleSectionHeaderFeedback];
  if (visibleSectionHeaderFeedback)
  {
    v143 = visibleSectionHeaderFeedback;
    visibleSectionHeaderFeedback2 = [(_CPFeedbackPayload *)self visibleSectionHeaderFeedback];
    visibleSectionHeaderFeedback3 = [equalCopy visibleSectionHeaderFeedback];
    v146 = [visibleSectionHeaderFeedback2 isEqual:visibleSectionHeaderFeedback3];

    if (!v146)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self didGoToSiteFeedback];
  feedback2 = [equalCopy didGoToSiteFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  didGoToSiteFeedback = [(_CPFeedbackPayload *)self didGoToSiteFeedback];
  if (didGoToSiteFeedback)
  {
    v148 = didGoToSiteFeedback;
    didGoToSiteFeedback2 = [(_CPFeedbackPayload *)self didGoToSiteFeedback];
    didGoToSiteFeedback3 = [equalCopy didGoToSiteFeedback];
    v151 = [didGoToSiteFeedback2 isEqual:didGoToSiteFeedback3];

    if (!v151)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self didGoToSearchFeedback];
  feedback2 = [equalCopy didGoToSearchFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  didGoToSearchFeedback = [(_CPFeedbackPayload *)self didGoToSearchFeedback];
  if (didGoToSearchFeedback)
  {
    v153 = didGoToSearchFeedback;
    didGoToSearchFeedback2 = [(_CPFeedbackPayload *)self didGoToSearchFeedback];
    didGoToSearchFeedback3 = [equalCopy didGoToSearchFeedback];
    v156 = [didGoToSearchFeedback2 isEqual:didGoToSearchFeedback3];

    if (!v156)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self sessionMissingResultsFeedback];
  feedback2 = [equalCopy sessionMissingResultsFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  sessionMissingResultsFeedback = [(_CPFeedbackPayload *)self sessionMissingResultsFeedback];
  if (sessionMissingResultsFeedback)
  {
    v158 = sessionMissingResultsFeedback;
    sessionMissingResultsFeedback2 = [(_CPFeedbackPayload *)self sessionMissingResultsFeedback];
    sessionMissingResultsFeedback3 = [equalCopy sessionMissingResultsFeedback];
    v161 = [sessionMissingResultsFeedback2 isEqual:sessionMissingResultsFeedback3];

    if (!v161)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self sessionMissingSuggestionsFeedback];
  feedback2 = [equalCopy sessionMissingSuggestionsFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  sessionMissingSuggestionsFeedback = [(_CPFeedbackPayload *)self sessionMissingSuggestionsFeedback];
  if (sessionMissingSuggestionsFeedback)
  {
    v163 = sessionMissingSuggestionsFeedback;
    sessionMissingSuggestionsFeedback2 = [(_CPFeedbackPayload *)self sessionMissingSuggestionsFeedback];
    sessionMissingSuggestionsFeedback3 = [equalCopy sessionMissingSuggestionsFeedback];
    v166 = [sessionMissingSuggestionsFeedback2 isEqual:sessionMissingSuggestionsFeedback3];

    if (!v166)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self resultGradingFeedback];
  feedback2 = [equalCopy resultGradingFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  resultGradingFeedback = [(_CPFeedbackPayload *)self resultGradingFeedback];
  if (resultGradingFeedback)
  {
    v168 = resultGradingFeedback;
    resultGradingFeedback2 = [(_CPFeedbackPayload *)self resultGradingFeedback];
    resultGradingFeedback3 = [equalCopy resultGradingFeedback];
    v171 = [resultGradingFeedback2 isEqual:resultGradingFeedback3];

    if (!v171)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self lookupHintRelevancyFeedback];
  feedback2 = [equalCopy lookupHintRelevancyFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  lookupHintRelevancyFeedback = [(_CPFeedbackPayload *)self lookupHintRelevancyFeedback];
  if (lookupHintRelevancyFeedback)
  {
    v173 = lookupHintRelevancyFeedback;
    lookupHintRelevancyFeedback2 = [(_CPFeedbackPayload *)self lookupHintRelevancyFeedback];
    lookupHintRelevancyFeedback3 = [equalCopy lookupHintRelevancyFeedback];
    v176 = [lookupHintRelevancyFeedback2 isEqual:lookupHintRelevancyFeedback3];

    if (!v176)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self connectionInvalidatedFeedback];
  feedback2 = [equalCopy connectionInvalidatedFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  connectionInvalidatedFeedback = [(_CPFeedbackPayload *)self connectionInvalidatedFeedback];
  if (connectionInvalidatedFeedback)
  {
    v178 = connectionInvalidatedFeedback;
    connectionInvalidatedFeedback2 = [(_CPFeedbackPayload *)self connectionInvalidatedFeedback];
    connectionInvalidatedFeedback3 = [equalCopy connectionInvalidatedFeedback];
    v181 = [connectionInvalidatedFeedback2 isEqual:connectionInvalidatedFeedback3];

    if (!v181)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self cardSectionEngagementFeedback];
  feedback2 = [equalCopy cardSectionEngagementFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  cardSectionEngagementFeedback = [(_CPFeedbackPayload *)self cardSectionEngagementFeedback];
  if (cardSectionEngagementFeedback)
  {
    v183 = cardSectionEngagementFeedback;
    cardSectionEngagementFeedback2 = [(_CPFeedbackPayload *)self cardSectionEngagementFeedback];
    cardSectionEngagementFeedback3 = [equalCopy cardSectionEngagementFeedback];
    v186 = [cardSectionEngagementFeedback2 isEqual:cardSectionEngagementFeedback3];

    if (!v186)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self sessionEndFeedback];
  feedback2 = [equalCopy sessionEndFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  sessionEndFeedback = [(_CPFeedbackPayload *)self sessionEndFeedback];
  if (sessionEndFeedback)
  {
    v188 = sessionEndFeedback;
    sessionEndFeedback2 = [(_CPFeedbackPayload *)self sessionEndFeedback];
    sessionEndFeedback3 = [equalCopy sessionEndFeedback];
    v191 = [sessionEndFeedback2 isEqual:sessionEndFeedback3];

    if (!v191)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self cardViewAppearFeedback];
  feedback2 = [equalCopy cardViewAppearFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  cardViewAppearFeedback = [(_CPFeedbackPayload *)self cardViewAppearFeedback];
  if (cardViewAppearFeedback)
  {
    v193 = cardViewAppearFeedback;
    cardViewAppearFeedback2 = [(_CPFeedbackPayload *)self cardViewAppearFeedback];
    cardViewAppearFeedback3 = [equalCopy cardViewAppearFeedback];
    v196 = [cardViewAppearFeedback2 isEqual:cardViewAppearFeedback3];

    if (!v196)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self skipSearchFeedback];
  feedback2 = [equalCopy skipSearchFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  skipSearchFeedback = [(_CPFeedbackPayload *)self skipSearchFeedback];
  if (skipSearchFeedback)
  {
    v198 = skipSearchFeedback;
    skipSearchFeedback2 = [(_CPFeedbackPayload *)self skipSearchFeedback];
    skipSearchFeedback3 = [equalCopy skipSearchFeedback];
    v201 = [skipSearchFeedback2 isEqual:skipSearchFeedback3];

    if (!v201)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self cacheHitFeedback];
  feedback2 = [equalCopy cacheHitFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  cacheHitFeedback = [(_CPFeedbackPayload *)self cacheHitFeedback];
  if (cacheHitFeedback)
  {
    v203 = cacheHitFeedback;
    cacheHitFeedback2 = [(_CPFeedbackPayload *)self cacheHitFeedback];
    cacheHitFeedback3 = [equalCopy cacheHitFeedback];
    v206 = [cacheHitFeedback2 isEqual:cacheHitFeedback3];

    if (!v206)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self cbaEngagementFeedback];
  feedback2 = [equalCopy cbaEngagementFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  cbaEngagementFeedback = [(_CPFeedbackPayload *)self cbaEngagementFeedback];
  if (cbaEngagementFeedback)
  {
    v208 = cbaEngagementFeedback;
    cbaEngagementFeedback2 = [(_CPFeedbackPayload *)self cbaEngagementFeedback];
    cbaEngagementFeedback3 = [equalCopy cbaEngagementFeedback];
    v211 = [cbaEngagementFeedback2 isEqual:cbaEngagementFeedback3];

    if (!v211)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self clientTimingFeedback];
  feedback2 = [equalCopy clientTimingFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  clientTimingFeedback = [(_CPFeedbackPayload *)self clientTimingFeedback];
  if (clientTimingFeedback)
  {
    v213 = clientTimingFeedback;
    clientTimingFeedback2 = [(_CPFeedbackPayload *)self clientTimingFeedback];
    clientTimingFeedback3 = [equalCopy clientTimingFeedback];
    v216 = [clientTimingFeedback2 isEqual:clientTimingFeedback3];

    if (!v216)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self commandEngagementFeedback];
  feedback2 = [equalCopy commandEngagementFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  commandEngagementFeedback = [(_CPFeedbackPayload *)self commandEngagementFeedback];
  if (commandEngagementFeedback)
  {
    v218 = commandEngagementFeedback;
    commandEngagementFeedback2 = [(_CPFeedbackPayload *)self commandEngagementFeedback];
    commandEngagementFeedback3 = [equalCopy commandEngagementFeedback];
    v221 = [commandEngagementFeedback2 isEqual:commandEngagementFeedback3];

    if (!v221)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self dynamicButtonVisibilityFeedback];
  feedback2 = [equalCopy dynamicButtonVisibilityFeedback];
  if ((feedback != 0) == (feedback2 == 0))
  {
    goto LABEL_226;
  }

  dynamicButtonVisibilityFeedback = [(_CPFeedbackPayload *)self dynamicButtonVisibilityFeedback];
  if (dynamicButtonVisibilityFeedback)
  {
    v223 = dynamicButtonVisibilityFeedback;
    dynamicButtonVisibilityFeedback2 = [(_CPFeedbackPayload *)self dynamicButtonVisibilityFeedback];
    dynamicButtonVisibilityFeedback3 = [equalCopy dynamicButtonVisibilityFeedback];
    v226 = [dynamicButtonVisibilityFeedback2 isEqual:dynamicButtonVisibilityFeedback3];

    if (!v226)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  feedback = [(_CPFeedbackPayload *)self experimentTriggeredFeedback];
  feedback2 = [equalCopy experimentTriggeredFeedback];
  if ((feedback != 0) != (feedback2 == 0))
  {
    experimentTriggeredFeedback = [(_CPFeedbackPayload *)self experimentTriggeredFeedback];
    if (!experimentTriggeredFeedback)
    {

LABEL_230:
      queryId = self->_queryId;
      v232 = queryId == [equalCopy queryId];
      goto LABEL_228;
    }

    v228 = experimentTriggeredFeedback;
    experimentTriggeredFeedback2 = [(_CPFeedbackPayload *)self experimentTriggeredFeedback];
    experimentTriggeredFeedback3 = [equalCopy experimentTriggeredFeedback];
    v231 = [experimentTriggeredFeedback2 isEqual:experimentTriggeredFeedback3];

    if (v231)
    {
      goto LABEL_230;
    }
  }

  else
  {
LABEL_226:
  }

LABEL_227:
  v232 = 0;
LABEL_228:

  return v232;
}

- (void)writeTo:(id)to
{
  to;
  feedback = [(_CPFeedbackPayload *)self feedback];

  if (feedback)
  {
    feedback2 = [(_CPFeedbackPayload *)self feedback];
    PBDataWriterWriteSubmessage();
  }

  searchViewAppearFeedback = [(_CPFeedbackPayload *)self searchViewAppearFeedback];

  if (searchViewAppearFeedback)
  {
    searchViewAppearFeedback2 = [(_CPFeedbackPayload *)self searchViewAppearFeedback];
    PBDataWriterWriteSubmessage();
  }

  searchViewDisappearFeedback = [(_CPFeedbackPayload *)self searchViewDisappearFeedback];

  if (searchViewDisappearFeedback)
  {
    searchViewDisappearFeedback2 = [(_CPFeedbackPayload *)self searchViewDisappearFeedback];
    PBDataWriterWriteSubmessage();
  }

  rankingFeedback = [(_CPFeedbackPayload *)self rankingFeedback];

  if (rankingFeedback)
  {
    rankingFeedback2 = [(_CPFeedbackPayload *)self rankingFeedback];
    PBDataWriterWriteSubmessage();
  }

  sectionRankingFeedback = [(_CPFeedbackPayload *)self sectionRankingFeedback];

  if (sectionRankingFeedback)
  {
    sectionRankingFeedback2 = [(_CPFeedbackPayload *)self sectionRankingFeedback];
    PBDataWriterWriteSubmessage();
  }

  resultRankingFeedback = [(_CPFeedbackPayload *)self resultRankingFeedback];

  if (resultRankingFeedback)
  {
    resultRankingFeedback2 = [(_CPFeedbackPayload *)self resultRankingFeedback];
    PBDataWriterWriteSubmessage();
  }

  resultFeedback = [(_CPFeedbackPayload *)self resultFeedback];

  if (resultFeedback)
  {
    resultFeedback2 = [(_CPFeedbackPayload *)self resultFeedback];
    PBDataWriterWriteSubmessage();
  }

  resultEngagementFeedback = [(_CPFeedbackPayload *)self resultEngagementFeedback];

  if (resultEngagementFeedback)
  {
    resultEngagementFeedback2 = [(_CPFeedbackPayload *)self resultEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  visibleResultsFeedback = [(_CPFeedbackPayload *)self visibleResultsFeedback];

  if (visibleResultsFeedback)
  {
    visibleResultsFeedback2 = [(_CPFeedbackPayload *)self visibleResultsFeedback];
    PBDataWriterWriteSubmessage();
  }

  cardSectionFeedback = [(_CPFeedbackPayload *)self cardSectionFeedback];

  if (cardSectionFeedback)
  {
    cardSectionFeedback2 = [(_CPFeedbackPayload *)self cardSectionFeedback];
    PBDataWriterWriteSubmessage();
  }

  mapsCardSectionEngagementFeedback = [(_CPFeedbackPayload *)self mapsCardSectionEngagementFeedback];

  if (mapsCardSectionEngagementFeedback)
  {
    mapsCardSectionEngagementFeedback2 = [(_CPFeedbackPayload *)self mapsCardSectionEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  storeCardSectionEngagementFeedback = [(_CPFeedbackPayload *)self storeCardSectionEngagementFeedback];

  if (storeCardSectionEngagementFeedback)
  {
    storeCardSectionEngagementFeedback2 = [(_CPFeedbackPayload *)self storeCardSectionEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  startSearchFeedback = [(_CPFeedbackPayload *)self startSearchFeedback];

  if (startSearchFeedback)
  {
    startSearchFeedback2 = [(_CPFeedbackPayload *)self startSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  endSearchFeedback = [(_CPFeedbackPayload *)self endSearchFeedback];

  if (endSearchFeedback)
  {
    endSearchFeedback2 = [(_CPFeedbackPayload *)self endSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  startNetworkSearchFeedback = [(_CPFeedbackPayload *)self startNetworkSearchFeedback];

  if (startNetworkSearchFeedback)
  {
    startNetworkSearchFeedback2 = [(_CPFeedbackPayload *)self startNetworkSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  endNetworkSearchFeedback = [(_CPFeedbackPayload *)self endNetworkSearchFeedback];

  if (endNetworkSearchFeedback)
  {
    endNetworkSearchFeedback2 = [(_CPFeedbackPayload *)self endNetworkSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  startLocalSearchFeedback = [(_CPFeedbackPayload *)self startLocalSearchFeedback];

  if (startLocalSearchFeedback)
  {
    startLocalSearchFeedback2 = [(_CPFeedbackPayload *)self startLocalSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  endLocalSearchFeedback = [(_CPFeedbackPayload *)self endLocalSearchFeedback];

  if (endLocalSearchFeedback)
  {
    endLocalSearchFeedback2 = [(_CPFeedbackPayload *)self endLocalSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  errorFeedback = [(_CPFeedbackPayload *)self errorFeedback];

  if (errorFeedback)
  {
    errorFeedback2 = [(_CPFeedbackPayload *)self errorFeedback];
    PBDataWriterWriteSubmessage();
  }

  customFeedback = [(_CPFeedbackPayload *)self customFeedback];

  if (customFeedback)
  {
    customFeedback2 = [(_CPFeedbackPayload *)self customFeedback];
    PBDataWriterWriteSubmessage();
  }

  suggestionEngagementFeedback = [(_CPFeedbackPayload *)self suggestionEngagementFeedback];

  if (suggestionEngagementFeedback)
  {
    suggestionEngagementFeedback2 = [(_CPFeedbackPayload *)self suggestionEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  cardViewDisappearFeedback = [(_CPFeedbackPayload *)self cardViewDisappearFeedback];

  if (cardViewDisappearFeedback)
  {
    cardViewDisappearFeedback2 = [(_CPFeedbackPayload *)self cardViewDisappearFeedback];
    PBDataWriterWriteSubmessage();
  }

  visibleSuggestionsFeedback = [(_CPFeedbackPayload *)self visibleSuggestionsFeedback];

  if (visibleSuggestionsFeedback)
  {
    visibleSuggestionsFeedback2 = [(_CPFeedbackPayload *)self visibleSuggestionsFeedback];
    PBDataWriterWriteSubmessage();
  }

  resultsReceivedAfterTimeoutFeedback = [(_CPFeedbackPayload *)self resultsReceivedAfterTimeoutFeedback];

  if (resultsReceivedAfterTimeoutFeedback)
  {
    resultsReceivedAfterTimeoutFeedback2 = [(_CPFeedbackPayload *)self resultsReceivedAfterTimeoutFeedback];
    PBDataWriterWriteSubmessage();
  }

  lateSectionsAppendedFeedback = [(_CPFeedbackPayload *)self lateSectionsAppendedFeedback];

  if (lateSectionsAppendedFeedback)
  {
    lateSectionsAppendedFeedback2 = [(_CPFeedbackPayload *)self lateSectionsAppendedFeedback];
    PBDataWriterWriteSubmessage();
  }

  clearInputFeedback = [(_CPFeedbackPayload *)self clearInputFeedback];

  if (clearInputFeedback)
  {
    clearInputFeedback2 = [(_CPFeedbackPayload *)self clearInputFeedback];
    PBDataWriterWriteSubmessage();
  }

  sectionEngagementFeedback = [(_CPFeedbackPayload *)self sectionEngagementFeedback];

  if (sectionEngagementFeedback)
  {
    sectionEngagementFeedback2 = [(_CPFeedbackPayload *)self sectionEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  visibleSectionHeaderFeedback = [(_CPFeedbackPayload *)self visibleSectionHeaderFeedback];

  if (visibleSectionHeaderFeedback)
  {
    visibleSectionHeaderFeedback2 = [(_CPFeedbackPayload *)self visibleSectionHeaderFeedback];
    PBDataWriterWriteSubmessage();
  }

  didGoToSiteFeedback = [(_CPFeedbackPayload *)self didGoToSiteFeedback];

  if (didGoToSiteFeedback)
  {
    didGoToSiteFeedback2 = [(_CPFeedbackPayload *)self didGoToSiteFeedback];
    PBDataWriterWriteSubmessage();
  }

  didGoToSearchFeedback = [(_CPFeedbackPayload *)self didGoToSearchFeedback];

  if (didGoToSearchFeedback)
  {
    didGoToSearchFeedback2 = [(_CPFeedbackPayload *)self didGoToSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  sessionMissingResultsFeedback = [(_CPFeedbackPayload *)self sessionMissingResultsFeedback];

  if (sessionMissingResultsFeedback)
  {
    sessionMissingResultsFeedback2 = [(_CPFeedbackPayload *)self sessionMissingResultsFeedback];
    PBDataWriterWriteSubmessage();
  }

  sessionMissingSuggestionsFeedback = [(_CPFeedbackPayload *)self sessionMissingSuggestionsFeedback];

  if (sessionMissingSuggestionsFeedback)
  {
    sessionMissingSuggestionsFeedback2 = [(_CPFeedbackPayload *)self sessionMissingSuggestionsFeedback];
    PBDataWriterWriteSubmessage();
  }

  resultGradingFeedback = [(_CPFeedbackPayload *)self resultGradingFeedback];

  if (resultGradingFeedback)
  {
    resultGradingFeedback2 = [(_CPFeedbackPayload *)self resultGradingFeedback];
    PBDataWriterWriteSubmessage();
  }

  lookupHintRelevancyFeedback = [(_CPFeedbackPayload *)self lookupHintRelevancyFeedback];

  if (lookupHintRelevancyFeedback)
  {
    lookupHintRelevancyFeedback2 = [(_CPFeedbackPayload *)self lookupHintRelevancyFeedback];
    PBDataWriterWriteSubmessage();
  }

  connectionInvalidatedFeedback = [(_CPFeedbackPayload *)self connectionInvalidatedFeedback];

  if (connectionInvalidatedFeedback)
  {
    connectionInvalidatedFeedback2 = [(_CPFeedbackPayload *)self connectionInvalidatedFeedback];
    PBDataWriterWriteSubmessage();
  }

  cardSectionEngagementFeedback = [(_CPFeedbackPayload *)self cardSectionEngagementFeedback];

  if (cardSectionEngagementFeedback)
  {
    cardSectionEngagementFeedback2 = [(_CPFeedbackPayload *)self cardSectionEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  sessionEndFeedback = [(_CPFeedbackPayload *)self sessionEndFeedback];

  if (sessionEndFeedback)
  {
    sessionEndFeedback2 = [(_CPFeedbackPayload *)self sessionEndFeedback];
    PBDataWriterWriteSubmessage();
  }

  cardViewAppearFeedback = [(_CPFeedbackPayload *)self cardViewAppearFeedback];

  if (cardViewAppearFeedback)
  {
    cardViewAppearFeedback2 = [(_CPFeedbackPayload *)self cardViewAppearFeedback];
    PBDataWriterWriteSubmessage();
  }

  skipSearchFeedback = [(_CPFeedbackPayload *)self skipSearchFeedback];

  if (skipSearchFeedback)
  {
    skipSearchFeedback2 = [(_CPFeedbackPayload *)self skipSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  cacheHitFeedback = [(_CPFeedbackPayload *)self cacheHitFeedback];

  if (cacheHitFeedback)
  {
    cacheHitFeedback2 = [(_CPFeedbackPayload *)self cacheHitFeedback];
    PBDataWriterWriteSubmessage();
  }

  cbaEngagementFeedback = [(_CPFeedbackPayload *)self cbaEngagementFeedback];

  if (cbaEngagementFeedback)
  {
    cbaEngagementFeedback2 = [(_CPFeedbackPayload *)self cbaEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  clientTimingFeedback = [(_CPFeedbackPayload *)self clientTimingFeedback];

  if (clientTimingFeedback)
  {
    clientTimingFeedback2 = [(_CPFeedbackPayload *)self clientTimingFeedback];
    PBDataWriterWriteSubmessage();
  }

  commandEngagementFeedback = [(_CPFeedbackPayload *)self commandEngagementFeedback];

  if (commandEngagementFeedback)
  {
    commandEngagementFeedback2 = [(_CPFeedbackPayload *)self commandEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  dynamicButtonVisibilityFeedback = [(_CPFeedbackPayload *)self dynamicButtonVisibilityFeedback];

  if (dynamicButtonVisibilityFeedback)
  {
    dynamicButtonVisibilityFeedback2 = [(_CPFeedbackPayload *)self dynamicButtonVisibilityFeedback];
    PBDataWriterWriteSubmessage();
  }

  experimentTriggeredFeedback = [(_CPFeedbackPayload *)self experimentTriggeredFeedback];

  if (experimentTriggeredFeedback)
  {
    experimentTriggeredFeedback2 = [(_CPFeedbackPayload *)self experimentTriggeredFeedback];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPFeedbackPayload *)self queryId])
  {
    queryId = self->_queryId;
    PBDataWriterWriteUint64Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)setExperimentTriggeredFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 45;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  experimentTriggeredFeedback = self->_experimentTriggeredFeedback;
  self->_experimentTriggeredFeedback = feedbackCopy;
}

- (void)setDynamicButtonVisibilityFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 44;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  dynamicButtonVisibilityFeedback = self->_dynamicButtonVisibilityFeedback;
  self->_dynamicButtonVisibilityFeedback = feedbackCopy;
}

- (void)setCommandEngagementFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 43;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  commandEngagementFeedback = self->_commandEngagementFeedback;
  self->_commandEngagementFeedback = feedbackCopy;
}

- (void)setClientTimingFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 42;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  clientTimingFeedback = self->_clientTimingFeedback;
  self->_clientTimingFeedback = feedbackCopy;
}

- (void)setCbaEngagementFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 41;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  cbaEngagementFeedback = self->_cbaEngagementFeedback;
  self->_cbaEngagementFeedback = feedbackCopy;
}

- (void)setCacheHitFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 40;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  cacheHitFeedback = self->_cacheHitFeedback;
  self->_cacheHitFeedback = feedbackCopy;
}

- (void)setSkipSearchFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 39;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  skipSearchFeedback = self->_skipSearchFeedback;
  self->_skipSearchFeedback = feedbackCopy;
}

- (void)setCardViewAppearFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 38;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  cardViewAppearFeedback = self->_cardViewAppearFeedback;
  self->_cardViewAppearFeedback = feedbackCopy;
}

- (void)setSessionEndFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 37;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  sessionEndFeedback = self->_sessionEndFeedback;
  self->_sessionEndFeedback = feedbackCopy;
}

- (void)setCardSectionEngagementFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 36;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  cardSectionEngagementFeedback = self->_cardSectionEngagementFeedback;
  self->_cardSectionEngagementFeedback = feedbackCopy;
}

- (void)setConnectionInvalidatedFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 35;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  connectionInvalidatedFeedback = self->_connectionInvalidatedFeedback;
  self->_connectionInvalidatedFeedback = feedbackCopy;
}

- (void)setLookupHintRelevancyFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 34;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  lookupHintRelevancyFeedback = self->_lookupHintRelevancyFeedback;
  self->_lookupHintRelevancyFeedback = feedbackCopy;
}

- (void)setResultGradingFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 33;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  resultGradingFeedback = self->_resultGradingFeedback;
  self->_resultGradingFeedback = feedbackCopy;
}

- (void)setSessionMissingSuggestionsFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  self->_whichContained_Feedback = 32 * (feedbackCopy != 0);
  sessionMissingSuggestionsFeedback = self->_sessionMissingSuggestionsFeedback;
  self->_sessionMissingSuggestionsFeedback = feedbackCopy;
}

- (void)setSessionMissingResultsFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 31;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  sessionMissingResultsFeedback = self->_sessionMissingResultsFeedback;
  self->_sessionMissingResultsFeedback = feedbackCopy;
}

- (void)setDidGoToSearchFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 30;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  didGoToSearchFeedback = self->_didGoToSearchFeedback;
  self->_didGoToSearchFeedback = feedbackCopy;
}

- (void)setDidGoToSiteFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 29;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  didGoToSiteFeedback = self->_didGoToSiteFeedback;
  self->_didGoToSiteFeedback = feedbackCopy;
}

- (void)setVisibleSectionHeaderFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 28;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  visibleSectionHeaderFeedback = self->_visibleSectionHeaderFeedback;
  self->_visibleSectionHeaderFeedback = feedbackCopy;
}

- (void)setSectionEngagementFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 27;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  sectionEngagementFeedback = self->_sectionEngagementFeedback;
  self->_sectionEngagementFeedback = feedbackCopy;
}

- (void)setClearInputFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 26;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  clearInputFeedback = self->_clearInputFeedback;
  self->_clearInputFeedback = feedbackCopy;
}

- (void)setLateSectionsAppendedFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 25;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  lateSectionsAppendedFeedback = self->_lateSectionsAppendedFeedback;
  self->_lateSectionsAppendedFeedback = feedbackCopy;
}

- (void)setResultsReceivedAfterTimeoutFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 24;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  resultsReceivedAfterTimeoutFeedback = self->_resultsReceivedAfterTimeoutFeedback;
  self->_resultsReceivedAfterTimeoutFeedback = feedbackCopy;
}

- (void)setVisibleSuggestionsFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 23;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  visibleSuggestionsFeedback = self->_visibleSuggestionsFeedback;
  self->_visibleSuggestionsFeedback = feedbackCopy;
}

- (void)setCardViewDisappearFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 22;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  cardViewDisappearFeedback = self->_cardViewDisappearFeedback;
  self->_cardViewDisappearFeedback = feedbackCopy;
}

- (void)setSuggestionEngagementFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 21;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  suggestionEngagementFeedback = self->_suggestionEngagementFeedback;
  self->_suggestionEngagementFeedback = feedbackCopy;
}

- (void)setCustomFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 20;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  customFeedback = self->_customFeedback;
  self->_customFeedback = feedbackCopy;
}

- (void)setErrorFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 19;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  errorFeedback = self->_errorFeedback;
  self->_errorFeedback = feedbackCopy;
}

- (void)setEndLocalSearchFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 18;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  endLocalSearchFeedback = self->_endLocalSearchFeedback;
  self->_endLocalSearchFeedback = feedbackCopy;
}

- (void)setStartLocalSearchFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 17;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  startLocalSearchFeedback = self->_startLocalSearchFeedback;
  self->_startLocalSearchFeedback = feedbackCopy;
}

- (void)setEndNetworkSearchFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  self->_whichContained_Feedback = 16 * (feedbackCopy != 0);
  endNetworkSearchFeedback = self->_endNetworkSearchFeedback;
  self->_endNetworkSearchFeedback = feedbackCopy;
}

- (void)setStartNetworkSearchFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 15;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  startNetworkSearchFeedback = self->_startNetworkSearchFeedback;
  self->_startNetworkSearchFeedback = feedbackCopy;
}

- (void)setEndSearchFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 14;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  endSearchFeedback = self->_endSearchFeedback;
  self->_endSearchFeedback = feedbackCopy;
}

- (void)setStartSearchFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 13;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  startSearchFeedback = self->_startSearchFeedback;
  self->_startSearchFeedback = feedbackCopy;
}

- (void)setStoreCardSectionEngagementFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 12;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  storeCardSectionEngagementFeedback = self->_storeCardSectionEngagementFeedback;
  self->_storeCardSectionEngagementFeedback = feedbackCopy;
}

- (void)setMapsCardSectionEngagementFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 11;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  mapsCardSectionEngagementFeedback = self->_mapsCardSectionEngagementFeedback;
  self->_mapsCardSectionEngagementFeedback = feedbackCopy;
}

- (void)setCardSectionFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 10;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  cardSectionFeedback = self->_cardSectionFeedback;
  self->_cardSectionFeedback = feedbackCopy;
}

- (void)setVisibleResultsFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 9;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  visibleResultsFeedback = self->_visibleResultsFeedback;
  self->_visibleResultsFeedback = feedbackCopy;
}

- (void)setResultEngagementFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  self->_whichContained_Feedback = 8 * (feedbackCopy != 0);
  resultEngagementFeedback = self->_resultEngagementFeedback;
  self->_resultEngagementFeedback = feedbackCopy;
}

- (void)setResultFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 7;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  resultFeedback = self->_resultFeedback;
  self->_resultFeedback = feedbackCopy;
}

- (void)setResultRankingFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 6;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  resultRankingFeedback = self->_resultRankingFeedback;
  self->_resultRankingFeedback = feedbackCopy;
}

- (void)setSectionRankingFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 5;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  sectionRankingFeedback = self->_sectionRankingFeedback;
  self->_sectionRankingFeedback = feedbackCopy;
}

- (void)setRankingFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  self->_whichContained_Feedback = 4 * (feedbackCopy != 0);
  rankingFeedback = self->_rankingFeedback;
  self->_rankingFeedback = feedbackCopy;
}

- (void)setSearchViewDisappearFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 3;
  if (!feedbackCopy)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  searchViewDisappearFeedback = self->_searchViewDisappearFeedback;
  self->_searchViewDisappearFeedback = feedbackCopy;
}

- (void)setSearchViewAppearFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  self->_whichContained_Feedback = 2 * (feedbackCopy != 0);
  searchViewAppearFeedback = self->_searchViewAppearFeedback;
  self->_searchViewAppearFeedback = feedbackCopy;
}

- (void)setFeedback:(id)feedback
{
  feedbackCopy = feedback;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  self->_whichContained_Feedback = feedbackCopy != 0;
  feedback = self->_feedback;
  self->_feedback = feedbackCopy;
}

- (_CPFeedbackPayload)initWithCodable:(id)codable
{
  codableCopy = codable;
  v8.receiver = self;
  v8.super_class = _CPFeedbackPayload;
  v5 = [(_CPFeedbackPayload *)&v8 init];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSearchViewAppearFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSearchViewDisappearFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setRankingFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSectionRankingFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setResultRankingFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setResultFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setResultEngagementFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setVisibleResultsFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCardSectionFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setMapsCardSectionEngagementFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setStoreCardSectionEngagementFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setStartSearchFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setEndSearchFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setStartNetworkSearchFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setEndNetworkSearchFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setStartLocalSearchFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setEndLocalSearchFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setErrorFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCustomFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSuggestionEngagementFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCardViewDisappearFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setVisibleSuggestionsFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setResultsReceivedAfterTimeoutFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setLateSectionsAppendedFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setClearInputFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSectionEngagementFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setVisibleSectionHeaderFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setDidGoToSiteFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setDidGoToSearchFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSessionMissingResultsFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSessionMissingSuggestionsFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setResultGradingFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setLookupHintRelevancyFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setConnectionInvalidatedFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCardSectionEngagementFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSessionEndFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCardViewAppearFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSkipSearchFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCacheHitFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCbaEngagementFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setClientTimingFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCommandEngagementFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setDynamicButtonVisibilityFeedback:codableCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setExperimentTriggeredFeedback:codableCopy];
    }

    v6 = v5;
  }

  return v5;
}

- (_CPFeedbackPayload)initWithFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v84.receiver = self;
  v84.super_class = _CPFeedbackPayload;
  v5 = [(_CPFeedbackPayload *)&v84 init];

  if (v5)
  {
    v6 = objc_opt_class();
    if (v6 == objc_opt_class())
    {
      v7 = [[_CPFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setFeedback:v7];
    }

    v8 = objc_opt_class();
    if (v8 == objc_opt_class())
    {
      v9 = [[_CPSearchViewAppearFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setSearchViewAppearFeedback:v9];
    }

    v10 = objc_opt_class();
    if (v10 == objc_opt_class())
    {
      v11 = [[_CPSearchViewDisappearFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setSearchViewDisappearFeedback:v11];
    }

    v12 = objc_opt_class();
    if (v12 == objc_opt_class())
    {
      v13 = [[_CPRankingFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setRankingFeedback:v13];
    }

    v14 = objc_opt_class();
    if (v14 == objc_opt_class())
    {
      v15 = [[_CPSectionRankingFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setSectionRankingFeedback:v15];
    }

    v16 = objc_opt_class();
    if (v16 == objc_opt_class())
    {
      v17 = [[_CPResultRankingFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setResultRankingFeedback:v17];
    }

    v18 = objc_opt_class();
    if (v18 == objc_opt_class())
    {
      v19 = [[_CPResultFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setResultFeedback:v19];
    }

    v20 = objc_opt_class();
    if (v20 == objc_opt_class())
    {
      v21 = [[_CPResultEngagementFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setResultEngagementFeedback:v21];
    }

    v22 = objc_opt_class();
    if (v22 == objc_opt_class())
    {
      v23 = [[_CPVisibleResultsFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setVisibleResultsFeedback:v23];
    }

    v24 = objc_opt_class();
    if (v24 == objc_opt_class())
    {
      v25 = [[_CPCardSectionFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setCardSectionFeedback:v25];
    }

    v26 = objc_opt_class();
    if (v26 == objc_opt_class())
    {
      v27 = [[_CPMapsCardSectionEngagementFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setMapsCardSectionEngagementFeedback:v27];
    }

    v28 = objc_opt_class();
    if (v28 == objc_opt_class())
    {
      v29 = [[_CPStoreCardSectionEngagementFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setStoreCardSectionEngagementFeedback:v29];
    }

    v30 = objc_opt_class();
    if (v30 == objc_opt_class())
    {
      v31 = [[_CPStartSearchFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setStartSearchFeedback:v31];
    }

    v32 = objc_opt_class();
    if (v32 == objc_opt_class())
    {
      v33 = [[_CPEndSearchFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setEndSearchFeedback:v33];
    }

    v34 = objc_opt_class();
    if (v34 == objc_opt_class())
    {
      v35 = [[_CPStartNetworkSearchFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setStartNetworkSearchFeedback:v35];
    }

    v36 = objc_opt_class();
    if (v36 == objc_opt_class())
    {
      v37 = [[_CPEndNetworkSearchFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setEndNetworkSearchFeedback:v37];
    }

    v38 = objc_opt_class();
    if (v38 == objc_opt_class())
    {
      v39 = [[_CPStartLocalSearchFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setStartLocalSearchFeedback:v39];
    }

    v40 = objc_opt_class();
    if (v40 == objc_opt_class())
    {
      v41 = [[_CPEndLocalSearchFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setEndLocalSearchFeedback:v41];
    }

    v42 = objc_opt_class();
    if (v42 == objc_opt_class())
    {
      v43 = [[_CPErrorFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setErrorFeedback:v43];
    }

    v44 = objc_opt_class();
    if (v44 == objc_opt_class())
    {
      v45 = [[_CPCustomFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setCustomFeedback:v45];
    }

    v46 = objc_opt_class();
    if (v46 == objc_opt_class())
    {
      v47 = [[_CPSuggestionEngagementFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setSuggestionEngagementFeedback:v47];
    }

    v48 = objc_opt_class();
    if (v48 == objc_opt_class())
    {
      v49 = [[_CPCardViewDisappearFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setCardViewDisappearFeedback:v49];
    }

    v50 = objc_opt_class();
    if (v50 == objc_opt_class())
    {
      v51 = [[_CPVisibleSuggestionsFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setVisibleSuggestionsFeedback:v51];
    }

    v52 = objc_opt_class();
    if (v52 == objc_opt_class())
    {
      v53 = [[_CPResultsReceivedAfterTimeoutFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setResultsReceivedAfterTimeoutFeedback:v53];
    }

    v54 = objc_opt_class();
    if (v54 == objc_opt_class())
    {
      v55 = [[_CPLateSectionsAppendedFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setLateSectionsAppendedFeedback:v55];
    }

    v56 = objc_opt_class();
    if (v56 == objc_opt_class())
    {
      v57 = [[_CPClearInputFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setClearInputFeedback:v57];
    }

    v58 = objc_opt_class();
    if (v58 == objc_opt_class())
    {
      v59 = [[_CPSectionEngagementFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setSectionEngagementFeedback:v59];
    }

    v60 = objc_opt_class();
    if (v60 == objc_opt_class())
    {
      v61 = [[_CPVisibleSectionHeaderFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setVisibleSectionHeaderFeedback:v61];
    }

    v62 = objc_opt_class();
    if (v62 == objc_opt_class())
    {
      v63 = [[_CPDidGoToSiteFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setDidGoToSiteFeedback:v63];
    }

    v64 = objc_opt_class();
    if (v64 == objc_opt_class())
    {
      v65 = [[_CPDidGoToSearchFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setDidGoToSearchFeedback:v65];
    }

    v66 = objc_opt_class();
    if (v66 == objc_opt_class())
    {
      v67 = [[_CPResultGradingFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setResultGradingFeedback:v67];
    }

    v68 = objc_opt_class();
    if (v68 == objc_opt_class())
    {
      v69 = [[_CPLookupHintRelevancyFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setLookupHintRelevancyFeedback:v69];
    }

    v70 = objc_opt_class();
    if (v70 == objc_opt_class())
    {
      v71 = [[_CPCardSectionEngagementFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setCardSectionEngagementFeedback:v71];
    }

    v72 = objc_opt_class();
    if (v72 == objc_opt_class())
    {
      v73 = [[_CPCardViewAppearFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setCardViewAppearFeedback:v73];
    }

    v74 = objc_opt_class();
    if (v74 == objc_opt_class())
    {
      v75 = [[_CPClientTimingFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setClientTimingFeedback:v75];
    }

    v76 = objc_opt_class();
    if (v76 == objc_opt_class())
    {
      v77 = [[_CPCommandEngagementFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setCommandEngagementFeedback:v77];
    }

    v78 = objc_opt_class();
    if (v78 == objc_opt_class())
    {
      v79 = [[_CPDynamicButtonVisibilityFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setDynamicButtonVisibilityFeedback:v79];
    }

    v80 = objc_opt_class();
    if (v80 == objc_opt_class())
    {
      v81 = [[_CPExperimentTriggeredFeedback alloc] initWithFacade:feedbackCopy];
      [(_CPFeedbackPayload *)v5 setExperimentTriggeredFeedback:v81];
    }

    v82 = v5;
  }

  return v5;
}

- (void)updateResults:(id)results withId:(unint64_t)id
{
  v16 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [resultsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(resultsCopy);
        }

        [*(*(&v11 + 1) + 8 * v9++) setQueryId:id];
      }

      while (v7 != v9);
      v7 = [resultsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateQueryId:(unint64_t)id
{
  v48 = *MEMORY[0x1E69E9840];
  [(_CPFeedbackPayload *)self setQueryId:?];
  startLocalSearchFeedback = [(_CPFeedbackPayload *)self startLocalSearchFeedback];
  [startLocalSearchFeedback setQueryId:id];

  startNetworkSearchFeedback = [(_CPFeedbackPayload *)self startNetworkSearchFeedback];
  [startNetworkSearchFeedback setQueryId:id];

  clientTimingFeedback = [(_CPFeedbackPayload *)self clientTimingFeedback];
  [clientTimingFeedback setQueryId:id];

  cbaEngagementFeedback = [(_CPFeedbackPayload *)self cbaEngagementFeedback];
  [cbaEngagementFeedback setQueryId:id];

  commandEngagementFeedback = [(_CPFeedbackPayload *)self commandEngagementFeedback];
  result = [commandEngagementFeedback result];
  [result setQueryId:id];

  resultEngagementFeedback = [(_CPFeedbackPayload *)self resultEngagementFeedback];
  result2 = [resultEngagementFeedback result];
  [result2 setQueryId:id];

  startSearchFeedback = [(_CPFeedbackPayload *)self startSearchFeedback];
  [startSearchFeedback setQueryId:id];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  rankingFeedback = [(_CPFeedbackPayload *)self rankingFeedback];
  sections = [rankingFeedback sections];

  obj = sections;
  v16 = [sections countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v37 = *v43;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v42 + 1) + 8 * i);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        results = [v19 results];
        v21 = [results countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v39;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v39 != v23)
              {
                objc_enumerationMutation(results);
              }

              v25 = *(*(&v38 + 1) + 8 * j);
              result3 = [v25 result];
              [result3 setQueryId:id];

              hiddenResults = [v25 hiddenResults];
              [(_CPFeedbackPayload *)self updateResults:hiddenResults withId:id];

              duplicateResults = [v25 duplicateResults];
              [(_CPFeedbackPayload *)self updateResults:duplicateResults withId:id];
            }

            v22 = [results countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v22);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v17);
  }

  sessionMissingResultsFeedback = [(_CPFeedbackPayload *)self sessionMissingResultsFeedback];
  results2 = [sessionMissingResultsFeedback results];
  [(_CPFeedbackPayload *)self updateResults:results2 withId:id];

  visibleResultsFeedback = [(_CPFeedbackPayload *)self visibleResultsFeedback];
  results3 = [visibleResultsFeedback results];
  [(_CPFeedbackPayload *)self updateResults:results3 withId:id];

  resultsReceivedAfterTimeoutFeedback = [(_CPFeedbackPayload *)self resultsReceivedAfterTimeoutFeedback];
  results4 = [resultsReceivedAfterTimeoutFeedback results];
  [(_CPFeedbackPayload *)self updateResults:results4 withId:id];

  v35 = *MEMORY[0x1E69E9840];
}

@end