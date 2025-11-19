@interface _CPFeedbackPayload
- (BOOL)isEqual:(id)a3;
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
- (_CPFeedbackPayload)initWithCodable:(id)a3;
- (_CPFeedbackPayload)initWithFeedback:(id)a3;
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
- (void)setCacheHitFeedback:(id)a3;
- (void)setCardSectionEngagementFeedback:(id)a3;
- (void)setCardSectionFeedback:(id)a3;
- (void)setCardViewAppearFeedback:(id)a3;
- (void)setCardViewDisappearFeedback:(id)a3;
- (void)setCbaEngagementFeedback:(id)a3;
- (void)setClearInputFeedback:(id)a3;
- (void)setClientTimingFeedback:(id)a3;
- (void)setCommandEngagementFeedback:(id)a3;
- (void)setConnectionInvalidatedFeedback:(id)a3;
- (void)setCustomFeedback:(id)a3;
- (void)setDidGoToSearchFeedback:(id)a3;
- (void)setDidGoToSiteFeedback:(id)a3;
- (void)setDynamicButtonVisibilityFeedback:(id)a3;
- (void)setEndLocalSearchFeedback:(id)a3;
- (void)setEndNetworkSearchFeedback:(id)a3;
- (void)setEndSearchFeedback:(id)a3;
- (void)setErrorFeedback:(id)a3;
- (void)setExperimentTriggeredFeedback:(id)a3;
- (void)setFeedback:(id)a3;
- (void)setLateSectionsAppendedFeedback:(id)a3;
- (void)setLookupHintRelevancyFeedback:(id)a3;
- (void)setMapsCardSectionEngagementFeedback:(id)a3;
- (void)setRankingFeedback:(id)a3;
- (void)setResultEngagementFeedback:(id)a3;
- (void)setResultFeedback:(id)a3;
- (void)setResultGradingFeedback:(id)a3;
- (void)setResultRankingFeedback:(id)a3;
- (void)setResultsReceivedAfterTimeoutFeedback:(id)a3;
- (void)setSearchViewAppearFeedback:(id)a3;
- (void)setSearchViewDisappearFeedback:(id)a3;
- (void)setSectionEngagementFeedback:(id)a3;
- (void)setSectionRankingFeedback:(id)a3;
- (void)setSessionEndFeedback:(id)a3;
- (void)setSessionMissingResultsFeedback:(id)a3;
- (void)setSessionMissingSuggestionsFeedback:(id)a3;
- (void)setSkipSearchFeedback:(id)a3;
- (void)setStartLocalSearchFeedback:(id)a3;
- (void)setStartNetworkSearchFeedback:(id)a3;
- (void)setStartSearchFeedback:(id)a3;
- (void)setStoreCardSectionEngagementFeedback:(id)a3;
- (void)setSuggestionEngagementFeedback:(id)a3;
- (void)setVisibleResultsFeedback:(id)a3;
- (void)setVisibleSectionHeaderFeedback:(id)a3;
- (void)setVisibleSuggestionsFeedback:(id)a3;
- (void)updateQueryId:(unint64_t)a3;
- (void)updateResults:(id)a3 withId:(unint64_t)a4;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_227;
  }

  v5 = [(_CPFeedbackPayload *)self feedback];
  v6 = [v4 feedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v7 = [(_CPFeedbackPayload *)self feedback];
  if (v7)
  {
    v8 = v7;
    v9 = [(_CPFeedbackPayload *)self feedback];
    v10 = [v4 feedback];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self searchViewAppearFeedback];
  v6 = [v4 searchViewAppearFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v12 = [(_CPFeedbackPayload *)self searchViewAppearFeedback];
  if (v12)
  {
    v13 = v12;
    v14 = [(_CPFeedbackPayload *)self searchViewAppearFeedback];
    v15 = [v4 searchViewAppearFeedback];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self searchViewDisappearFeedback];
  v6 = [v4 searchViewDisappearFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v17 = [(_CPFeedbackPayload *)self searchViewDisappearFeedback];
  if (v17)
  {
    v18 = v17;
    v19 = [(_CPFeedbackPayload *)self searchViewDisappearFeedback];
    v20 = [v4 searchViewDisappearFeedback];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self rankingFeedback];
  v6 = [v4 rankingFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v22 = [(_CPFeedbackPayload *)self rankingFeedback];
  if (v22)
  {
    v23 = v22;
    v24 = [(_CPFeedbackPayload *)self rankingFeedback];
    v25 = [v4 rankingFeedback];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self sectionRankingFeedback];
  v6 = [v4 sectionRankingFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v27 = [(_CPFeedbackPayload *)self sectionRankingFeedback];
  if (v27)
  {
    v28 = v27;
    v29 = [(_CPFeedbackPayload *)self sectionRankingFeedback];
    v30 = [v4 sectionRankingFeedback];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self resultRankingFeedback];
  v6 = [v4 resultRankingFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v32 = [(_CPFeedbackPayload *)self resultRankingFeedback];
  if (v32)
  {
    v33 = v32;
    v34 = [(_CPFeedbackPayload *)self resultRankingFeedback];
    v35 = [v4 resultRankingFeedback];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self resultFeedback];
  v6 = [v4 resultFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v37 = [(_CPFeedbackPayload *)self resultFeedback];
  if (v37)
  {
    v38 = v37;
    v39 = [(_CPFeedbackPayload *)self resultFeedback];
    v40 = [v4 resultFeedback];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self resultEngagementFeedback];
  v6 = [v4 resultEngagementFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v42 = [(_CPFeedbackPayload *)self resultEngagementFeedback];
  if (v42)
  {
    v43 = v42;
    v44 = [(_CPFeedbackPayload *)self resultEngagementFeedback];
    v45 = [v4 resultEngagementFeedback];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self visibleResultsFeedback];
  v6 = [v4 visibleResultsFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v47 = [(_CPFeedbackPayload *)self visibleResultsFeedback];
  if (v47)
  {
    v48 = v47;
    v49 = [(_CPFeedbackPayload *)self visibleResultsFeedback];
    v50 = [v4 visibleResultsFeedback];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self cardSectionFeedback];
  v6 = [v4 cardSectionFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v52 = [(_CPFeedbackPayload *)self cardSectionFeedback];
  if (v52)
  {
    v53 = v52;
    v54 = [(_CPFeedbackPayload *)self cardSectionFeedback];
    v55 = [v4 cardSectionFeedback];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self mapsCardSectionEngagementFeedback];
  v6 = [v4 mapsCardSectionEngagementFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v57 = [(_CPFeedbackPayload *)self mapsCardSectionEngagementFeedback];
  if (v57)
  {
    v58 = v57;
    v59 = [(_CPFeedbackPayload *)self mapsCardSectionEngagementFeedback];
    v60 = [v4 mapsCardSectionEngagementFeedback];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self storeCardSectionEngagementFeedback];
  v6 = [v4 storeCardSectionEngagementFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v62 = [(_CPFeedbackPayload *)self storeCardSectionEngagementFeedback];
  if (v62)
  {
    v63 = v62;
    v64 = [(_CPFeedbackPayload *)self storeCardSectionEngagementFeedback];
    v65 = [v4 storeCardSectionEngagementFeedback];
    v66 = [v64 isEqual:v65];

    if (!v66)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self startSearchFeedback];
  v6 = [v4 startSearchFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v67 = [(_CPFeedbackPayload *)self startSearchFeedback];
  if (v67)
  {
    v68 = v67;
    v69 = [(_CPFeedbackPayload *)self startSearchFeedback];
    v70 = [v4 startSearchFeedback];
    v71 = [v69 isEqual:v70];

    if (!v71)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self endSearchFeedback];
  v6 = [v4 endSearchFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v72 = [(_CPFeedbackPayload *)self endSearchFeedback];
  if (v72)
  {
    v73 = v72;
    v74 = [(_CPFeedbackPayload *)self endSearchFeedback];
    v75 = [v4 endSearchFeedback];
    v76 = [v74 isEqual:v75];

    if (!v76)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self startNetworkSearchFeedback];
  v6 = [v4 startNetworkSearchFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v77 = [(_CPFeedbackPayload *)self startNetworkSearchFeedback];
  if (v77)
  {
    v78 = v77;
    v79 = [(_CPFeedbackPayload *)self startNetworkSearchFeedback];
    v80 = [v4 startNetworkSearchFeedback];
    v81 = [v79 isEqual:v80];

    if (!v81)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self endNetworkSearchFeedback];
  v6 = [v4 endNetworkSearchFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v82 = [(_CPFeedbackPayload *)self endNetworkSearchFeedback];
  if (v82)
  {
    v83 = v82;
    v84 = [(_CPFeedbackPayload *)self endNetworkSearchFeedback];
    v85 = [v4 endNetworkSearchFeedback];
    v86 = [v84 isEqual:v85];

    if (!v86)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self startLocalSearchFeedback];
  v6 = [v4 startLocalSearchFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v87 = [(_CPFeedbackPayload *)self startLocalSearchFeedback];
  if (v87)
  {
    v88 = v87;
    v89 = [(_CPFeedbackPayload *)self startLocalSearchFeedback];
    v90 = [v4 startLocalSearchFeedback];
    v91 = [v89 isEqual:v90];

    if (!v91)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self endLocalSearchFeedback];
  v6 = [v4 endLocalSearchFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v92 = [(_CPFeedbackPayload *)self endLocalSearchFeedback];
  if (v92)
  {
    v93 = v92;
    v94 = [(_CPFeedbackPayload *)self endLocalSearchFeedback];
    v95 = [v4 endLocalSearchFeedback];
    v96 = [v94 isEqual:v95];

    if (!v96)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self errorFeedback];
  v6 = [v4 errorFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v97 = [(_CPFeedbackPayload *)self errorFeedback];
  if (v97)
  {
    v98 = v97;
    v99 = [(_CPFeedbackPayload *)self errorFeedback];
    v100 = [v4 errorFeedback];
    v101 = [v99 isEqual:v100];

    if (!v101)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self customFeedback];
  v6 = [v4 customFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v102 = [(_CPFeedbackPayload *)self customFeedback];
  if (v102)
  {
    v103 = v102;
    v104 = [(_CPFeedbackPayload *)self customFeedback];
    v105 = [v4 customFeedback];
    v106 = [v104 isEqual:v105];

    if (!v106)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self suggestionEngagementFeedback];
  v6 = [v4 suggestionEngagementFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v107 = [(_CPFeedbackPayload *)self suggestionEngagementFeedback];
  if (v107)
  {
    v108 = v107;
    v109 = [(_CPFeedbackPayload *)self suggestionEngagementFeedback];
    v110 = [v4 suggestionEngagementFeedback];
    v111 = [v109 isEqual:v110];

    if (!v111)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self cardViewDisappearFeedback];
  v6 = [v4 cardViewDisappearFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v112 = [(_CPFeedbackPayload *)self cardViewDisappearFeedback];
  if (v112)
  {
    v113 = v112;
    v114 = [(_CPFeedbackPayload *)self cardViewDisappearFeedback];
    v115 = [v4 cardViewDisappearFeedback];
    v116 = [v114 isEqual:v115];

    if (!v116)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self visibleSuggestionsFeedback];
  v6 = [v4 visibleSuggestionsFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v117 = [(_CPFeedbackPayload *)self visibleSuggestionsFeedback];
  if (v117)
  {
    v118 = v117;
    v119 = [(_CPFeedbackPayload *)self visibleSuggestionsFeedback];
    v120 = [v4 visibleSuggestionsFeedback];
    v121 = [v119 isEqual:v120];

    if (!v121)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self resultsReceivedAfterTimeoutFeedback];
  v6 = [v4 resultsReceivedAfterTimeoutFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v122 = [(_CPFeedbackPayload *)self resultsReceivedAfterTimeoutFeedback];
  if (v122)
  {
    v123 = v122;
    v124 = [(_CPFeedbackPayload *)self resultsReceivedAfterTimeoutFeedback];
    v125 = [v4 resultsReceivedAfterTimeoutFeedback];
    v126 = [v124 isEqual:v125];

    if (!v126)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self lateSectionsAppendedFeedback];
  v6 = [v4 lateSectionsAppendedFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v127 = [(_CPFeedbackPayload *)self lateSectionsAppendedFeedback];
  if (v127)
  {
    v128 = v127;
    v129 = [(_CPFeedbackPayload *)self lateSectionsAppendedFeedback];
    v130 = [v4 lateSectionsAppendedFeedback];
    v131 = [v129 isEqual:v130];

    if (!v131)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self clearInputFeedback];
  v6 = [v4 clearInputFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v132 = [(_CPFeedbackPayload *)self clearInputFeedback];
  if (v132)
  {
    v133 = v132;
    v134 = [(_CPFeedbackPayload *)self clearInputFeedback];
    v135 = [v4 clearInputFeedback];
    v136 = [v134 isEqual:v135];

    if (!v136)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self sectionEngagementFeedback];
  v6 = [v4 sectionEngagementFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v137 = [(_CPFeedbackPayload *)self sectionEngagementFeedback];
  if (v137)
  {
    v138 = v137;
    v139 = [(_CPFeedbackPayload *)self sectionEngagementFeedback];
    v140 = [v4 sectionEngagementFeedback];
    v141 = [v139 isEqual:v140];

    if (!v141)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self visibleSectionHeaderFeedback];
  v6 = [v4 visibleSectionHeaderFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v142 = [(_CPFeedbackPayload *)self visibleSectionHeaderFeedback];
  if (v142)
  {
    v143 = v142;
    v144 = [(_CPFeedbackPayload *)self visibleSectionHeaderFeedback];
    v145 = [v4 visibleSectionHeaderFeedback];
    v146 = [v144 isEqual:v145];

    if (!v146)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self didGoToSiteFeedback];
  v6 = [v4 didGoToSiteFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v147 = [(_CPFeedbackPayload *)self didGoToSiteFeedback];
  if (v147)
  {
    v148 = v147;
    v149 = [(_CPFeedbackPayload *)self didGoToSiteFeedback];
    v150 = [v4 didGoToSiteFeedback];
    v151 = [v149 isEqual:v150];

    if (!v151)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self didGoToSearchFeedback];
  v6 = [v4 didGoToSearchFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v152 = [(_CPFeedbackPayload *)self didGoToSearchFeedback];
  if (v152)
  {
    v153 = v152;
    v154 = [(_CPFeedbackPayload *)self didGoToSearchFeedback];
    v155 = [v4 didGoToSearchFeedback];
    v156 = [v154 isEqual:v155];

    if (!v156)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self sessionMissingResultsFeedback];
  v6 = [v4 sessionMissingResultsFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v157 = [(_CPFeedbackPayload *)self sessionMissingResultsFeedback];
  if (v157)
  {
    v158 = v157;
    v159 = [(_CPFeedbackPayload *)self sessionMissingResultsFeedback];
    v160 = [v4 sessionMissingResultsFeedback];
    v161 = [v159 isEqual:v160];

    if (!v161)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self sessionMissingSuggestionsFeedback];
  v6 = [v4 sessionMissingSuggestionsFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v162 = [(_CPFeedbackPayload *)self sessionMissingSuggestionsFeedback];
  if (v162)
  {
    v163 = v162;
    v164 = [(_CPFeedbackPayload *)self sessionMissingSuggestionsFeedback];
    v165 = [v4 sessionMissingSuggestionsFeedback];
    v166 = [v164 isEqual:v165];

    if (!v166)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self resultGradingFeedback];
  v6 = [v4 resultGradingFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v167 = [(_CPFeedbackPayload *)self resultGradingFeedback];
  if (v167)
  {
    v168 = v167;
    v169 = [(_CPFeedbackPayload *)self resultGradingFeedback];
    v170 = [v4 resultGradingFeedback];
    v171 = [v169 isEqual:v170];

    if (!v171)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self lookupHintRelevancyFeedback];
  v6 = [v4 lookupHintRelevancyFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v172 = [(_CPFeedbackPayload *)self lookupHintRelevancyFeedback];
  if (v172)
  {
    v173 = v172;
    v174 = [(_CPFeedbackPayload *)self lookupHintRelevancyFeedback];
    v175 = [v4 lookupHintRelevancyFeedback];
    v176 = [v174 isEqual:v175];

    if (!v176)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self connectionInvalidatedFeedback];
  v6 = [v4 connectionInvalidatedFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v177 = [(_CPFeedbackPayload *)self connectionInvalidatedFeedback];
  if (v177)
  {
    v178 = v177;
    v179 = [(_CPFeedbackPayload *)self connectionInvalidatedFeedback];
    v180 = [v4 connectionInvalidatedFeedback];
    v181 = [v179 isEqual:v180];

    if (!v181)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self cardSectionEngagementFeedback];
  v6 = [v4 cardSectionEngagementFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v182 = [(_CPFeedbackPayload *)self cardSectionEngagementFeedback];
  if (v182)
  {
    v183 = v182;
    v184 = [(_CPFeedbackPayload *)self cardSectionEngagementFeedback];
    v185 = [v4 cardSectionEngagementFeedback];
    v186 = [v184 isEqual:v185];

    if (!v186)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self sessionEndFeedback];
  v6 = [v4 sessionEndFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v187 = [(_CPFeedbackPayload *)self sessionEndFeedback];
  if (v187)
  {
    v188 = v187;
    v189 = [(_CPFeedbackPayload *)self sessionEndFeedback];
    v190 = [v4 sessionEndFeedback];
    v191 = [v189 isEqual:v190];

    if (!v191)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self cardViewAppearFeedback];
  v6 = [v4 cardViewAppearFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v192 = [(_CPFeedbackPayload *)self cardViewAppearFeedback];
  if (v192)
  {
    v193 = v192;
    v194 = [(_CPFeedbackPayload *)self cardViewAppearFeedback];
    v195 = [v4 cardViewAppearFeedback];
    v196 = [v194 isEqual:v195];

    if (!v196)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self skipSearchFeedback];
  v6 = [v4 skipSearchFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v197 = [(_CPFeedbackPayload *)self skipSearchFeedback];
  if (v197)
  {
    v198 = v197;
    v199 = [(_CPFeedbackPayload *)self skipSearchFeedback];
    v200 = [v4 skipSearchFeedback];
    v201 = [v199 isEqual:v200];

    if (!v201)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self cacheHitFeedback];
  v6 = [v4 cacheHitFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v202 = [(_CPFeedbackPayload *)self cacheHitFeedback];
  if (v202)
  {
    v203 = v202;
    v204 = [(_CPFeedbackPayload *)self cacheHitFeedback];
    v205 = [v4 cacheHitFeedback];
    v206 = [v204 isEqual:v205];

    if (!v206)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self cbaEngagementFeedback];
  v6 = [v4 cbaEngagementFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v207 = [(_CPFeedbackPayload *)self cbaEngagementFeedback];
  if (v207)
  {
    v208 = v207;
    v209 = [(_CPFeedbackPayload *)self cbaEngagementFeedback];
    v210 = [v4 cbaEngagementFeedback];
    v211 = [v209 isEqual:v210];

    if (!v211)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self clientTimingFeedback];
  v6 = [v4 clientTimingFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v212 = [(_CPFeedbackPayload *)self clientTimingFeedback];
  if (v212)
  {
    v213 = v212;
    v214 = [(_CPFeedbackPayload *)self clientTimingFeedback];
    v215 = [v4 clientTimingFeedback];
    v216 = [v214 isEqual:v215];

    if (!v216)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self commandEngagementFeedback];
  v6 = [v4 commandEngagementFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v217 = [(_CPFeedbackPayload *)self commandEngagementFeedback];
  if (v217)
  {
    v218 = v217;
    v219 = [(_CPFeedbackPayload *)self commandEngagementFeedback];
    v220 = [v4 commandEngagementFeedback];
    v221 = [v219 isEqual:v220];

    if (!v221)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self dynamicButtonVisibilityFeedback];
  v6 = [v4 dynamicButtonVisibilityFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_226;
  }

  v222 = [(_CPFeedbackPayload *)self dynamicButtonVisibilityFeedback];
  if (v222)
  {
    v223 = v222;
    v224 = [(_CPFeedbackPayload *)self dynamicButtonVisibilityFeedback];
    v225 = [v4 dynamicButtonVisibilityFeedback];
    v226 = [v224 isEqual:v225];

    if (!v226)
    {
      goto LABEL_227;
    }
  }

  else
  {
  }

  v5 = [(_CPFeedbackPayload *)self experimentTriggeredFeedback];
  v6 = [v4 experimentTriggeredFeedback];
  if ((v5 != 0) != (v6 == 0))
  {
    v227 = [(_CPFeedbackPayload *)self experimentTriggeredFeedback];
    if (!v227)
    {

LABEL_230:
      queryId = self->_queryId;
      v232 = queryId == [v4 queryId];
      goto LABEL_228;
    }

    v228 = v227;
    v229 = [(_CPFeedbackPayload *)self experimentTriggeredFeedback];
    v230 = [v4 experimentTriggeredFeedback];
    v231 = [v229 isEqual:v230];

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

- (void)writeTo:(id)a3
{
  a3;
  v4 = [(_CPFeedbackPayload *)self feedback];

  if (v4)
  {
    v5 = [(_CPFeedbackPayload *)self feedback];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_CPFeedbackPayload *)self searchViewAppearFeedback];

  if (v6)
  {
    v7 = [(_CPFeedbackPayload *)self searchViewAppearFeedback];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_CPFeedbackPayload *)self searchViewDisappearFeedback];

  if (v8)
  {
    v9 = [(_CPFeedbackPayload *)self searchViewDisappearFeedback];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_CPFeedbackPayload *)self rankingFeedback];

  if (v10)
  {
    v11 = [(_CPFeedbackPayload *)self rankingFeedback];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_CPFeedbackPayload *)self sectionRankingFeedback];

  if (v12)
  {
    v13 = [(_CPFeedbackPayload *)self sectionRankingFeedback];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_CPFeedbackPayload *)self resultRankingFeedback];

  if (v14)
  {
    v15 = [(_CPFeedbackPayload *)self resultRankingFeedback];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_CPFeedbackPayload *)self resultFeedback];

  if (v16)
  {
    v17 = [(_CPFeedbackPayload *)self resultFeedback];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_CPFeedbackPayload *)self resultEngagementFeedback];

  if (v18)
  {
    v19 = [(_CPFeedbackPayload *)self resultEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_CPFeedbackPayload *)self visibleResultsFeedback];

  if (v20)
  {
    v21 = [(_CPFeedbackPayload *)self visibleResultsFeedback];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_CPFeedbackPayload *)self cardSectionFeedback];

  if (v22)
  {
    v23 = [(_CPFeedbackPayload *)self cardSectionFeedback];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(_CPFeedbackPayload *)self mapsCardSectionEngagementFeedback];

  if (v24)
  {
    v25 = [(_CPFeedbackPayload *)self mapsCardSectionEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(_CPFeedbackPayload *)self storeCardSectionEngagementFeedback];

  if (v26)
  {
    v27 = [(_CPFeedbackPayload *)self storeCardSectionEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(_CPFeedbackPayload *)self startSearchFeedback];

  if (v28)
  {
    v29 = [(_CPFeedbackPayload *)self startSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(_CPFeedbackPayload *)self endSearchFeedback];

  if (v30)
  {
    v31 = [(_CPFeedbackPayload *)self endSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(_CPFeedbackPayload *)self startNetworkSearchFeedback];

  if (v32)
  {
    v33 = [(_CPFeedbackPayload *)self startNetworkSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(_CPFeedbackPayload *)self endNetworkSearchFeedback];

  if (v34)
  {
    v35 = [(_CPFeedbackPayload *)self endNetworkSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(_CPFeedbackPayload *)self startLocalSearchFeedback];

  if (v36)
  {
    v37 = [(_CPFeedbackPayload *)self startLocalSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(_CPFeedbackPayload *)self endLocalSearchFeedback];

  if (v38)
  {
    v39 = [(_CPFeedbackPayload *)self endLocalSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(_CPFeedbackPayload *)self errorFeedback];

  if (v40)
  {
    v41 = [(_CPFeedbackPayload *)self errorFeedback];
    PBDataWriterWriteSubmessage();
  }

  v42 = [(_CPFeedbackPayload *)self customFeedback];

  if (v42)
  {
    v43 = [(_CPFeedbackPayload *)self customFeedback];
    PBDataWriterWriteSubmessage();
  }

  v44 = [(_CPFeedbackPayload *)self suggestionEngagementFeedback];

  if (v44)
  {
    v45 = [(_CPFeedbackPayload *)self suggestionEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  v46 = [(_CPFeedbackPayload *)self cardViewDisappearFeedback];

  if (v46)
  {
    v47 = [(_CPFeedbackPayload *)self cardViewDisappearFeedback];
    PBDataWriterWriteSubmessage();
  }

  v48 = [(_CPFeedbackPayload *)self visibleSuggestionsFeedback];

  if (v48)
  {
    v49 = [(_CPFeedbackPayload *)self visibleSuggestionsFeedback];
    PBDataWriterWriteSubmessage();
  }

  v50 = [(_CPFeedbackPayload *)self resultsReceivedAfterTimeoutFeedback];

  if (v50)
  {
    v51 = [(_CPFeedbackPayload *)self resultsReceivedAfterTimeoutFeedback];
    PBDataWriterWriteSubmessage();
  }

  v52 = [(_CPFeedbackPayload *)self lateSectionsAppendedFeedback];

  if (v52)
  {
    v53 = [(_CPFeedbackPayload *)self lateSectionsAppendedFeedback];
    PBDataWriterWriteSubmessage();
  }

  v54 = [(_CPFeedbackPayload *)self clearInputFeedback];

  if (v54)
  {
    v55 = [(_CPFeedbackPayload *)self clearInputFeedback];
    PBDataWriterWriteSubmessage();
  }

  v56 = [(_CPFeedbackPayload *)self sectionEngagementFeedback];

  if (v56)
  {
    v57 = [(_CPFeedbackPayload *)self sectionEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  v58 = [(_CPFeedbackPayload *)self visibleSectionHeaderFeedback];

  if (v58)
  {
    v59 = [(_CPFeedbackPayload *)self visibleSectionHeaderFeedback];
    PBDataWriterWriteSubmessage();
  }

  v60 = [(_CPFeedbackPayload *)self didGoToSiteFeedback];

  if (v60)
  {
    v61 = [(_CPFeedbackPayload *)self didGoToSiteFeedback];
    PBDataWriterWriteSubmessage();
  }

  v62 = [(_CPFeedbackPayload *)self didGoToSearchFeedback];

  if (v62)
  {
    v63 = [(_CPFeedbackPayload *)self didGoToSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  v64 = [(_CPFeedbackPayload *)self sessionMissingResultsFeedback];

  if (v64)
  {
    v65 = [(_CPFeedbackPayload *)self sessionMissingResultsFeedback];
    PBDataWriterWriteSubmessage();
  }

  v66 = [(_CPFeedbackPayload *)self sessionMissingSuggestionsFeedback];

  if (v66)
  {
    v67 = [(_CPFeedbackPayload *)self sessionMissingSuggestionsFeedback];
    PBDataWriterWriteSubmessage();
  }

  v68 = [(_CPFeedbackPayload *)self resultGradingFeedback];

  if (v68)
  {
    v69 = [(_CPFeedbackPayload *)self resultGradingFeedback];
    PBDataWriterWriteSubmessage();
  }

  v70 = [(_CPFeedbackPayload *)self lookupHintRelevancyFeedback];

  if (v70)
  {
    v71 = [(_CPFeedbackPayload *)self lookupHintRelevancyFeedback];
    PBDataWriterWriteSubmessage();
  }

  v72 = [(_CPFeedbackPayload *)self connectionInvalidatedFeedback];

  if (v72)
  {
    v73 = [(_CPFeedbackPayload *)self connectionInvalidatedFeedback];
    PBDataWriterWriteSubmessage();
  }

  v74 = [(_CPFeedbackPayload *)self cardSectionEngagementFeedback];

  if (v74)
  {
    v75 = [(_CPFeedbackPayload *)self cardSectionEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  v76 = [(_CPFeedbackPayload *)self sessionEndFeedback];

  if (v76)
  {
    v77 = [(_CPFeedbackPayload *)self sessionEndFeedback];
    PBDataWriterWriteSubmessage();
  }

  v78 = [(_CPFeedbackPayload *)self cardViewAppearFeedback];

  if (v78)
  {
    v79 = [(_CPFeedbackPayload *)self cardViewAppearFeedback];
    PBDataWriterWriteSubmessage();
  }

  v80 = [(_CPFeedbackPayload *)self skipSearchFeedback];

  if (v80)
  {
    v81 = [(_CPFeedbackPayload *)self skipSearchFeedback];
    PBDataWriterWriteSubmessage();
  }

  v82 = [(_CPFeedbackPayload *)self cacheHitFeedback];

  if (v82)
  {
    v83 = [(_CPFeedbackPayload *)self cacheHitFeedback];
    PBDataWriterWriteSubmessage();
  }

  v84 = [(_CPFeedbackPayload *)self cbaEngagementFeedback];

  if (v84)
  {
    v85 = [(_CPFeedbackPayload *)self cbaEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  v86 = [(_CPFeedbackPayload *)self clientTimingFeedback];

  if (v86)
  {
    v87 = [(_CPFeedbackPayload *)self clientTimingFeedback];
    PBDataWriterWriteSubmessage();
  }

  v88 = [(_CPFeedbackPayload *)self commandEngagementFeedback];

  if (v88)
  {
    v89 = [(_CPFeedbackPayload *)self commandEngagementFeedback];
    PBDataWriterWriteSubmessage();
  }

  v90 = [(_CPFeedbackPayload *)self dynamicButtonVisibilityFeedback];

  if (v90)
  {
    v91 = [(_CPFeedbackPayload *)self dynamicButtonVisibilityFeedback];
    PBDataWriterWriteSubmessage();
  }

  v92 = [(_CPFeedbackPayload *)self experimentTriggeredFeedback];

  if (v92)
  {
    v93 = [(_CPFeedbackPayload *)self experimentTriggeredFeedback];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPFeedbackPayload *)self queryId])
  {
    queryId = self->_queryId;
    PBDataWriterWriteUint64Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)setExperimentTriggeredFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 45;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  experimentTriggeredFeedback = self->_experimentTriggeredFeedback;
  self->_experimentTriggeredFeedback = v4;
}

- (void)setDynamicButtonVisibilityFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 44;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  dynamicButtonVisibilityFeedback = self->_dynamicButtonVisibilityFeedback;
  self->_dynamicButtonVisibilityFeedback = v4;
}

- (void)setCommandEngagementFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 43;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  commandEngagementFeedback = self->_commandEngagementFeedback;
  self->_commandEngagementFeedback = v4;
}

- (void)setClientTimingFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 42;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  clientTimingFeedback = self->_clientTimingFeedback;
  self->_clientTimingFeedback = v4;
}

- (void)setCbaEngagementFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 41;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  cbaEngagementFeedback = self->_cbaEngagementFeedback;
  self->_cbaEngagementFeedback = v4;
}

- (void)setCacheHitFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 40;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  cacheHitFeedback = self->_cacheHitFeedback;
  self->_cacheHitFeedback = v4;
}

- (void)setSkipSearchFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 39;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  skipSearchFeedback = self->_skipSearchFeedback;
  self->_skipSearchFeedback = v4;
}

- (void)setCardViewAppearFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 38;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  cardViewAppearFeedback = self->_cardViewAppearFeedback;
  self->_cardViewAppearFeedback = v4;
}

- (void)setSessionEndFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 37;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  sessionEndFeedback = self->_sessionEndFeedback;
  self->_sessionEndFeedback = v4;
}

- (void)setCardSectionEngagementFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 36;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  cardSectionEngagementFeedback = self->_cardSectionEngagementFeedback;
  self->_cardSectionEngagementFeedback = v4;
}

- (void)setConnectionInvalidatedFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 35;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  connectionInvalidatedFeedback = self->_connectionInvalidatedFeedback;
  self->_connectionInvalidatedFeedback = v4;
}

- (void)setLookupHintRelevancyFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 34;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  lookupHintRelevancyFeedback = self->_lookupHintRelevancyFeedback;
  self->_lookupHintRelevancyFeedback = v4;
}

- (void)setResultGradingFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 33;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  resultGradingFeedback = self->_resultGradingFeedback;
  self->_resultGradingFeedback = v4;
}

- (void)setSessionMissingSuggestionsFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  self->_whichContained_Feedback = 32 * (v4 != 0);
  sessionMissingSuggestionsFeedback = self->_sessionMissingSuggestionsFeedback;
  self->_sessionMissingSuggestionsFeedback = v4;
}

- (void)setSessionMissingResultsFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 31;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  sessionMissingResultsFeedback = self->_sessionMissingResultsFeedback;
  self->_sessionMissingResultsFeedback = v4;
}

- (void)setDidGoToSearchFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 30;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  didGoToSearchFeedback = self->_didGoToSearchFeedback;
  self->_didGoToSearchFeedback = v4;
}

- (void)setDidGoToSiteFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 29;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  didGoToSiteFeedback = self->_didGoToSiteFeedback;
  self->_didGoToSiteFeedback = v4;
}

- (void)setVisibleSectionHeaderFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 28;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  visibleSectionHeaderFeedback = self->_visibleSectionHeaderFeedback;
  self->_visibleSectionHeaderFeedback = v4;
}

- (void)setSectionEngagementFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 27;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  sectionEngagementFeedback = self->_sectionEngagementFeedback;
  self->_sectionEngagementFeedback = v4;
}

- (void)setClearInputFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 26;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  clearInputFeedback = self->_clearInputFeedback;
  self->_clearInputFeedback = v4;
}

- (void)setLateSectionsAppendedFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 25;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  lateSectionsAppendedFeedback = self->_lateSectionsAppendedFeedback;
  self->_lateSectionsAppendedFeedback = v4;
}

- (void)setResultsReceivedAfterTimeoutFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 24;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  resultsReceivedAfterTimeoutFeedback = self->_resultsReceivedAfterTimeoutFeedback;
  self->_resultsReceivedAfterTimeoutFeedback = v4;
}

- (void)setVisibleSuggestionsFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 23;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  visibleSuggestionsFeedback = self->_visibleSuggestionsFeedback;
  self->_visibleSuggestionsFeedback = v4;
}

- (void)setCardViewDisappearFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 22;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  cardViewDisappearFeedback = self->_cardViewDisappearFeedback;
  self->_cardViewDisappearFeedback = v4;
}

- (void)setSuggestionEngagementFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 21;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  suggestionEngagementFeedback = self->_suggestionEngagementFeedback;
  self->_suggestionEngagementFeedback = v4;
}

- (void)setCustomFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 20;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  customFeedback = self->_customFeedback;
  self->_customFeedback = v4;
}

- (void)setErrorFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 19;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  errorFeedback = self->_errorFeedback;
  self->_errorFeedback = v4;
}

- (void)setEndLocalSearchFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 18;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  endLocalSearchFeedback = self->_endLocalSearchFeedback;
  self->_endLocalSearchFeedback = v4;
}

- (void)setStartLocalSearchFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 17;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  startLocalSearchFeedback = self->_startLocalSearchFeedback;
  self->_startLocalSearchFeedback = v4;
}

- (void)setEndNetworkSearchFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  self->_whichContained_Feedback = 16 * (v4 != 0);
  endNetworkSearchFeedback = self->_endNetworkSearchFeedback;
  self->_endNetworkSearchFeedback = v4;
}

- (void)setStartNetworkSearchFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 15;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  startNetworkSearchFeedback = self->_startNetworkSearchFeedback;
  self->_startNetworkSearchFeedback = v4;
}

- (void)setEndSearchFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 14;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  endSearchFeedback = self->_endSearchFeedback;
  self->_endSearchFeedback = v4;
}

- (void)setStartSearchFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 13;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  startSearchFeedback = self->_startSearchFeedback;
  self->_startSearchFeedback = v4;
}

- (void)setStoreCardSectionEngagementFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 12;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  storeCardSectionEngagementFeedback = self->_storeCardSectionEngagementFeedback;
  self->_storeCardSectionEngagementFeedback = v4;
}

- (void)setMapsCardSectionEngagementFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 11;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  mapsCardSectionEngagementFeedback = self->_mapsCardSectionEngagementFeedback;
  self->_mapsCardSectionEngagementFeedback = v4;
}

- (void)setCardSectionFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 10;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  cardSectionFeedback = self->_cardSectionFeedback;
  self->_cardSectionFeedback = v4;
}

- (void)setVisibleResultsFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 9;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  visibleResultsFeedback = self->_visibleResultsFeedback;
  self->_visibleResultsFeedback = v4;
}

- (void)setResultEngagementFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  self->_whichContained_Feedback = 8 * (v4 != 0);
  resultEngagementFeedback = self->_resultEngagementFeedback;
  self->_resultEngagementFeedback = v4;
}

- (void)setResultFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 7;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  resultFeedback = self->_resultFeedback;
  self->_resultFeedback = v4;
}

- (void)setResultRankingFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 6;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  resultRankingFeedback = self->_resultRankingFeedback;
  self->_resultRankingFeedback = v4;
}

- (void)setSectionRankingFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 5;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  sectionRankingFeedback = self->_sectionRankingFeedback;
  self->_sectionRankingFeedback = v4;
}

- (void)setRankingFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  self->_whichContained_Feedback = 4 * (v4 != 0);
  rankingFeedback = self->_rankingFeedback;
  self->_rankingFeedback = v4;
}

- (void)setSearchViewDisappearFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  v5 = 3;
  if (!v4)
  {
    v5 = 0;
  }

  self->_whichContained_Feedback = v5;
  searchViewDisappearFeedback = self->_searchViewDisappearFeedback;
  self->_searchViewDisappearFeedback = v4;
}

- (void)setSearchViewAppearFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  self->_whichContained_Feedback = 2 * (v4 != 0);
  searchViewAppearFeedback = self->_searchViewAppearFeedback;
  self->_searchViewAppearFeedback = v4;
}

- (void)setFeedback:(id)a3
{
  v4 = a3;
  [(_CPFeedbackPayload *)self clearContained_Feedback];
  self->_whichContained_Feedback = v4 != 0;
  feedback = self->_feedback;
  self->_feedback = v4;
}

- (_CPFeedbackPayload)initWithCodable:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _CPFeedbackPayload;
  v5 = [(_CPFeedbackPayload *)&v8 init];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSearchViewAppearFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSearchViewDisappearFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setRankingFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSectionRankingFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setResultRankingFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setResultFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setResultEngagementFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setVisibleResultsFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCardSectionFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setMapsCardSectionEngagementFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setStoreCardSectionEngagementFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setStartSearchFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setEndSearchFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setStartNetworkSearchFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setEndNetworkSearchFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setStartLocalSearchFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setEndLocalSearchFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setErrorFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCustomFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSuggestionEngagementFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCardViewDisappearFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setVisibleSuggestionsFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setResultsReceivedAfterTimeoutFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setLateSectionsAppendedFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setClearInputFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSectionEngagementFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setVisibleSectionHeaderFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setDidGoToSiteFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setDidGoToSearchFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSessionMissingResultsFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSessionMissingSuggestionsFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setResultGradingFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setLookupHintRelevancyFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setConnectionInvalidatedFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCardSectionEngagementFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSessionEndFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCardViewAppearFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setSkipSearchFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCacheHitFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCbaEngagementFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setClientTimingFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setCommandEngagementFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setDynamicButtonVisibilityFeedback:v4];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CPFeedbackPayload *)v5 setExperimentTriggeredFeedback:v4];
    }

    v6 = v5;
  }

  return v5;
}

- (_CPFeedbackPayload)initWithFeedback:(id)a3
{
  v4 = a3;
  v84.receiver = self;
  v84.super_class = _CPFeedbackPayload;
  v5 = [(_CPFeedbackPayload *)&v84 init];

  if (v5)
  {
    v6 = objc_opt_class();
    if (v6 == objc_opt_class())
    {
      v7 = [[_CPFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setFeedback:v7];
    }

    v8 = objc_opt_class();
    if (v8 == objc_opt_class())
    {
      v9 = [[_CPSearchViewAppearFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setSearchViewAppearFeedback:v9];
    }

    v10 = objc_opt_class();
    if (v10 == objc_opt_class())
    {
      v11 = [[_CPSearchViewDisappearFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setSearchViewDisappearFeedback:v11];
    }

    v12 = objc_opt_class();
    if (v12 == objc_opt_class())
    {
      v13 = [[_CPRankingFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setRankingFeedback:v13];
    }

    v14 = objc_opt_class();
    if (v14 == objc_opt_class())
    {
      v15 = [[_CPSectionRankingFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setSectionRankingFeedback:v15];
    }

    v16 = objc_opt_class();
    if (v16 == objc_opt_class())
    {
      v17 = [[_CPResultRankingFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setResultRankingFeedback:v17];
    }

    v18 = objc_opt_class();
    if (v18 == objc_opt_class())
    {
      v19 = [[_CPResultFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setResultFeedback:v19];
    }

    v20 = objc_opt_class();
    if (v20 == objc_opt_class())
    {
      v21 = [[_CPResultEngagementFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setResultEngagementFeedback:v21];
    }

    v22 = objc_opt_class();
    if (v22 == objc_opt_class())
    {
      v23 = [[_CPVisibleResultsFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setVisibleResultsFeedback:v23];
    }

    v24 = objc_opt_class();
    if (v24 == objc_opt_class())
    {
      v25 = [[_CPCardSectionFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setCardSectionFeedback:v25];
    }

    v26 = objc_opt_class();
    if (v26 == objc_opt_class())
    {
      v27 = [[_CPMapsCardSectionEngagementFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setMapsCardSectionEngagementFeedback:v27];
    }

    v28 = objc_opt_class();
    if (v28 == objc_opt_class())
    {
      v29 = [[_CPStoreCardSectionEngagementFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setStoreCardSectionEngagementFeedback:v29];
    }

    v30 = objc_opt_class();
    if (v30 == objc_opt_class())
    {
      v31 = [[_CPStartSearchFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setStartSearchFeedback:v31];
    }

    v32 = objc_opt_class();
    if (v32 == objc_opt_class())
    {
      v33 = [[_CPEndSearchFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setEndSearchFeedback:v33];
    }

    v34 = objc_opt_class();
    if (v34 == objc_opt_class())
    {
      v35 = [[_CPStartNetworkSearchFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setStartNetworkSearchFeedback:v35];
    }

    v36 = objc_opt_class();
    if (v36 == objc_opt_class())
    {
      v37 = [[_CPEndNetworkSearchFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setEndNetworkSearchFeedback:v37];
    }

    v38 = objc_opt_class();
    if (v38 == objc_opt_class())
    {
      v39 = [[_CPStartLocalSearchFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setStartLocalSearchFeedback:v39];
    }

    v40 = objc_opt_class();
    if (v40 == objc_opt_class())
    {
      v41 = [[_CPEndLocalSearchFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setEndLocalSearchFeedback:v41];
    }

    v42 = objc_opt_class();
    if (v42 == objc_opt_class())
    {
      v43 = [[_CPErrorFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setErrorFeedback:v43];
    }

    v44 = objc_opt_class();
    if (v44 == objc_opt_class())
    {
      v45 = [[_CPCustomFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setCustomFeedback:v45];
    }

    v46 = objc_opt_class();
    if (v46 == objc_opt_class())
    {
      v47 = [[_CPSuggestionEngagementFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setSuggestionEngagementFeedback:v47];
    }

    v48 = objc_opt_class();
    if (v48 == objc_opt_class())
    {
      v49 = [[_CPCardViewDisappearFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setCardViewDisappearFeedback:v49];
    }

    v50 = objc_opt_class();
    if (v50 == objc_opt_class())
    {
      v51 = [[_CPVisibleSuggestionsFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setVisibleSuggestionsFeedback:v51];
    }

    v52 = objc_opt_class();
    if (v52 == objc_opt_class())
    {
      v53 = [[_CPResultsReceivedAfterTimeoutFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setResultsReceivedAfterTimeoutFeedback:v53];
    }

    v54 = objc_opt_class();
    if (v54 == objc_opt_class())
    {
      v55 = [[_CPLateSectionsAppendedFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setLateSectionsAppendedFeedback:v55];
    }

    v56 = objc_opt_class();
    if (v56 == objc_opt_class())
    {
      v57 = [[_CPClearInputFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setClearInputFeedback:v57];
    }

    v58 = objc_opt_class();
    if (v58 == objc_opt_class())
    {
      v59 = [[_CPSectionEngagementFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setSectionEngagementFeedback:v59];
    }

    v60 = objc_opt_class();
    if (v60 == objc_opt_class())
    {
      v61 = [[_CPVisibleSectionHeaderFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setVisibleSectionHeaderFeedback:v61];
    }

    v62 = objc_opt_class();
    if (v62 == objc_opt_class())
    {
      v63 = [[_CPDidGoToSiteFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setDidGoToSiteFeedback:v63];
    }

    v64 = objc_opt_class();
    if (v64 == objc_opt_class())
    {
      v65 = [[_CPDidGoToSearchFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setDidGoToSearchFeedback:v65];
    }

    v66 = objc_opt_class();
    if (v66 == objc_opt_class())
    {
      v67 = [[_CPResultGradingFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setResultGradingFeedback:v67];
    }

    v68 = objc_opt_class();
    if (v68 == objc_opt_class())
    {
      v69 = [[_CPLookupHintRelevancyFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setLookupHintRelevancyFeedback:v69];
    }

    v70 = objc_opt_class();
    if (v70 == objc_opt_class())
    {
      v71 = [[_CPCardSectionEngagementFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setCardSectionEngagementFeedback:v71];
    }

    v72 = objc_opt_class();
    if (v72 == objc_opt_class())
    {
      v73 = [[_CPCardViewAppearFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setCardViewAppearFeedback:v73];
    }

    v74 = objc_opt_class();
    if (v74 == objc_opt_class())
    {
      v75 = [[_CPClientTimingFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setClientTimingFeedback:v75];
    }

    v76 = objc_opt_class();
    if (v76 == objc_opt_class())
    {
      v77 = [[_CPCommandEngagementFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setCommandEngagementFeedback:v77];
    }

    v78 = objc_opt_class();
    if (v78 == objc_opt_class())
    {
      v79 = [[_CPDynamicButtonVisibilityFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setDynamicButtonVisibilityFeedback:v79];
    }

    v80 = objc_opt_class();
    if (v80 == objc_opt_class())
    {
      v81 = [[_CPExperimentTriggeredFeedback alloc] initWithFacade:v4];
      [(_CPFeedbackPayload *)v5 setExperimentTriggeredFeedback:v81];
    }

    v82 = v5;
  }

  return v5;
}

- (void)updateResults:(id)a3 withId:(unint64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setQueryId:a4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateQueryId:(unint64_t)a3
{
  v48 = *MEMORY[0x1E69E9840];
  [(_CPFeedbackPayload *)self setQueryId:?];
  v5 = [(_CPFeedbackPayload *)self startLocalSearchFeedback];
  [v5 setQueryId:a3];

  v6 = [(_CPFeedbackPayload *)self startNetworkSearchFeedback];
  [v6 setQueryId:a3];

  v7 = [(_CPFeedbackPayload *)self clientTimingFeedback];
  [v7 setQueryId:a3];

  v8 = [(_CPFeedbackPayload *)self cbaEngagementFeedback];
  [v8 setQueryId:a3];

  v9 = [(_CPFeedbackPayload *)self commandEngagementFeedback];
  v10 = [v9 result];
  [v10 setQueryId:a3];

  v11 = [(_CPFeedbackPayload *)self resultEngagementFeedback];
  v12 = [v11 result];
  [v12 setQueryId:a3];

  v13 = [(_CPFeedbackPayload *)self startSearchFeedback];
  [v13 setQueryId:a3];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = [(_CPFeedbackPayload *)self rankingFeedback];
  v15 = [v14 sections];

  obj = v15;
  v16 = [v15 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
        v20 = [v19 results];
        v21 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v38 + 1) + 8 * j);
              v26 = [v25 result];
              [v26 setQueryId:a3];

              v27 = [v25 hiddenResults];
              [(_CPFeedbackPayload *)self updateResults:v27 withId:a3];

              v28 = [v25 duplicateResults];
              [(_CPFeedbackPayload *)self updateResults:v28 withId:a3];
            }

            v22 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v22);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v17);
  }

  v29 = [(_CPFeedbackPayload *)self sessionMissingResultsFeedback];
  v30 = [v29 results];
  [(_CPFeedbackPayload *)self updateResults:v30 withId:a3];

  v31 = [(_CPFeedbackPayload *)self visibleResultsFeedback];
  v32 = [v31 results];
  [(_CPFeedbackPayload *)self updateResults:v32 withId:a3];

  v33 = [(_CPFeedbackPayload *)self resultsReceivedAfterTimeoutFeedback];
  v34 = [v33 results];
  [(_CPFeedbackPayload *)self updateResults:v34 withId:a3];

  v35 = *MEMORY[0x1E69E9840];
}

@end